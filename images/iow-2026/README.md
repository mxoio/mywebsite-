# IOW 2026 Photo Assets

This folder contains photos for the Isle of Wight Takeover 2026 event.

## Recommended Filenames

Use these consistent naming conventions:

- `iow2026-hero.jpg` — Main hero image for homepage
- `iow2026-1.jpg` — Gallery image 1
- `iow2026-2.jpg` — Gallery image 2
- `iow2026-3.jpg` — Gallery image 3
- `iow2026-group.jpg` — Group photo
- `iow2026-venue.jpg` — Venue shot

## Image Specifications

### Size Guidelines
- **Max width:** 1600px for hero images
- **Gallery images:** Provide at 1200px, 800px, and 400px widths
- **Aspect ratio:** 16:9 preferred for consistency
- **File size:** Target 80-120KB per image

### Format
- Primary format: **JPEG** (for photos)
- Optimized format: **WebP** (for better compression)
- Provide both formats for progressive enhancement

### Optimization
Use one of these tools to optimize images before committing:

```bash
# Using ImageMagick
convert input.jpg -resize 1600x -quality 85 iow2026-hero.jpg
convert input.jpg -resize 1600x -quality 85 -define webp:lossless=false iow2026-hero.webp

# Using cwebp (for WebP)
cwebp -q 85 iow2026-hero.jpg -o iow2026-hero.webp
```

### Alt Text Recommendations
When updating images in HTML, use descriptive alt text:

- Hero: "Crowd gathering at Isle of Wight Takeover 2026"
- Group: "IOW Takeover 2026 attendees group photo"
- Venue: "Event venue at Isle of Wight"
- Generic: "IOW Takeover 2026 moment"

## How to Update Photos in the Site

1. Place optimized images in this folder
2. Update image references in `index.html`:
   - Update slideshow images in the Swiper section (lines ~247-264)
   - Update meta og:image tag (line ~17)
3. Test locally using `scripts/preview.sh`
4. Commit with message: `docs: update photos for IOW 2026`
