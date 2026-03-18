#!/bin/bash
# Clean PRD — Extract embedded base64 images from markdown
# Usage: ./clean-prd.sh
#
# Google Docs exports markdown with base64-encoded images embedded inline.
# These bloat the file (200KB+) and cause token issues for AI coding agents.
# This script extracts images to docs/images/ and replaces base64 with file paths.

set -e

PRD_FILE="docs/PRD.md"
IMAGES_DIR="docs/images"

if [ ! -f "$PRD_FILE" ]; then
  echo "❌ No docs/PRD.md found. Make sure you're in your project folder."
  exit 1
fi

# Check if PRD has base64 images
if ! grep -q 'data:image.*base64' "$PRD_FILE" 2>/dev/null; then
  echo "✅ No embedded images found in PRD.md — nothing to clean."
  exit 0
fi

echo "🖼️  Found embedded images in PRD.md — extracting..."

mkdir -p "$IMAGES_DIR"

python3 -c "
import re, base64, os

with open('$PRD_FILE', 'r') as f:
    content = f.read()

original_size = len(content)

# Find all base64 image definitions: [imageN]: <data:image/png;base64,...>
pattern = r'\[image(\d+)\]: <data:image/(png|jpeg|jpg|gif);base64,([^>]+)>'
matches = re.findall(pattern, content)

if not matches:
    # Try alternate format: ![alt](data:image/png;base64,...)
    pattern2 = r'!\[([^\]]*)\]\(data:image/(png|jpeg|jpg|gif);base64,([^)]+)\)'
    matches2 = re.findall(pattern2, content)
    for i, (alt, fmt, data) in enumerate(matches2, 1):
        ext = 'png' if fmt == 'png' else 'jpg'
        filename = f'$IMAGES_DIR/image{i}.{ext}'
        with open(filename, 'wb') as f:
            f.write(base64.b64decode(data))
        old = f'![{alt}](data:image/{fmt};base64,{data})'
        new = f'![{alt}]($IMAGES_DIR/image{i}.{ext})'
        content = content.replace(old, new)
        print(f'  Extracted image{i}.{ext}')
else:
    for num, fmt, data in matches:
        ext = 'png' if fmt == 'png' else 'jpg'
        filename = f'$IMAGES_DIR/image{num}.{ext}'
        with open(filename, 'wb') as f:
            f.write(base64.b64decode(data))
        old = f'[image{num}]: <data:image/{fmt};base64,{data}>'
        new = f'[image{num}]: $IMAGES_DIR/image{num}.{ext}'
        content = content.replace(old, new)
        print(f'  Extracted image{num}.{ext}')

with open('$PRD_FILE', 'w') as f:
    f.write(content)

new_size = len(content)
saved = original_size - new_size
print(f'')
print(f'  PRD.md: {original_size:,} → {new_size:,} bytes (saved {saved:,} bytes)')
"

echo ""
echo "✅ Done! Images saved to $IMAGES_DIR/"
echo "   PRD.md is now clean and ready for Claude Code."
