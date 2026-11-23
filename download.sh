#!/bin/bash
# download.sh — download a video with Bangla-friendly defaults
# Usage: ./download.sh <video-URL> [extra yt-dlp options]
# Example: ./download.sh "https://www.youtube.com/watch?v=..."
# Needs: yt-dlp installed (pip install -U "yt-dlp[default]" — see README)
set -e
if [ $# -lt 1 ]; then
  echo "Usage: $0 <video-URL>"
  exit 1
fi
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
yt-dlp --config-location "$SCRIPT_DIR/yt-dlp-bangla.conf" "$@"
