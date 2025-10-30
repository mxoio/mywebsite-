# Isle of Wight Takeover 2026

A static countdown website for the Isle of Wight Takeover 2026 event.

## Overview

This site provides:
- Countdown timer to the event (tentative date)
- Photo gallery from previous events
- Event information and WhatsApp group link
- Responsive design optimized for mobile and desktop

## IOW Takeover 2026 Updates

### Event Details
- **Expected timeframe:** Summer 2026 (exact dates TBC)
- **Current tentative date:** July 1, 2026 at 3:00 PM BST
- **Status:** Date not yet confirmed

### Updating the Event Date

When the official date is confirmed:

1. Edit `index.html` (line ~316-317):
   ```javascript
   const targetDate = new Date('2026-07-01T15:00:00+01:00').getTime();
   const confirmed = false; // Change this to true
   ```

2. Update the date in `targetDate` to the confirmed date
3. Change `confirmed` from `false` to `true`
4. Update the text in the event-date paragraph (line ~272-273)
5. Commit and push changes

### Photo Update Process

Photos are organized in the `images/` directory:
- `images/iow-2025/` — Previous year's photos (currently shown)
- `images/iow-2026/` — New photos for 2026 event (to be added)

#### Recommended Photo Names
- `iow2026-hero.jpg` — Main hero image
- `iow2026-1.jpg`, `iow2026-2.jpg`, etc. — Gallery images
- `iow2026-group.jpg` — Group photo

#### Image Optimization

Before adding photos, optimize them:

```bash
# Resize and compress (requires ImageMagick)
convert input.jpg -resize 1600x -quality 85 iow2026-hero.jpg

# Create WebP version for better performance
convert input.jpg -resize 1600x -quality 85 -define webp:lossless=false iow2026-hero.webp
```

**Target specifications:**
- Max width: 1600px
- File size: 80-120KB
- Format: JPEG + WebP (progressive enhancement)

#### Updating Gallery Images

1. Place optimized images in `images/iow-2026/`
2. Edit `index.html` slideshow section (lines ~247-264)
3. Update image `src` attributes to point to new photos
4. Update `alt` attributes with descriptive text
5. Update Open Graph image (line ~17): `<meta property="og:image" content="images/iow-2026/iow2026-hero.jpg">`

See `images/iow-2026/README.md` for detailed guidance.

## Local Development

### Quick Preview

Run the preview script to test locally:

```bash
./scripts/preview.sh
```

This starts a simple HTTP server on port 8000. Open http://localhost:8000 in your browser.

### Alternative Preview Methods

If you have Node.js:
```bash
npx serve
```

If you have Python 3:
```bash
python3 -m http.server 8000
```

## Deployment

This site is configured for GitHub Pages:

1. Ensure the `CNAME` file contains your custom domain (if using one)
2. Push changes to the `main` branch
3. GitHub Pages will automatically deploy the site
4. HTTPS is enforced (recommended for security)

## Technologies Used

- **HTML5** with semantic markup
- **Tailwind CSS** (via CDN) for styling
- **Swiper.js** for photo carousel
- **Vanilla JavaScript** for countdown logic
- **Cloudflare Turnstile** for bot protection

## File Structure

```
.
├── index.html              # Main countdown page
├── privy.html             # Privacy policy page
├── manifest.json          # PWA manifest
├── robots.txt             # Search engine directives
├── sitemap.xml            # Site map for SEO
├── CNAME                  # Custom domain configuration
├── images/
│   ├── iow-2025/         # Previous event photos
│   ├── iow-2026/         # New event photos (to be added)
│   └── slideshow/        # Current slideshow images
└── scripts/
    └── preview.sh        # Local preview server script
```

## Accessibility

The site includes:
- ARIA labels for countdown timer
- Semantic HTML structure
- Alt text for all images
- Keyboard navigation support
- Responsive design for all screen sizes
- High contrast color scheme

## Security

- Content Security Policy (CSP) headers
- HTTPS enforcement (via GitHub Pages)
- Bot protection via Cloudflare Turnstile
- No external form submissions

## Browser Support

Tested and working on:
- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Contributing

1. Create a feature branch: `git checkout -b feat/your-feature`
2. Make your changes
3. Test locally using preview script
4. Commit with descriptive messages
5. Push and create a pull request

## License

© Isle of Wight Takeover community. All rights reserved.
