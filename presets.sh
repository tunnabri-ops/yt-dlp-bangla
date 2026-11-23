#!/bin/bash
# presets.sh — yt-dlp download presets (Bangla-friendly)
# Usage: ./presets.sh <preset> <video-URL> [extra yt-dlp options]
# Presets: audio | video1080 | video720 | shorts | playlist-audio
# Needs: yt-dlp installed. Uses yt-dlp-bangla.conf as the base config.
set -e
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
if [ $# -lt 2 ]; then
  echo "Usage: $0 <audio|video1080|video720|shorts|playlist-audio> <video-URL>"
  exit 1
fi
PRESET="$1"; shift
case "$PRESET" in
  audio)
    yt-dlp --config-location "$SCRIPT_DIR/yt-dlp-bangla.conf" -x --audio-format mp3 --audio-quality 0 "$@"
    ;;
  video1080)
    yt-dlp --config-location "$SCRIPT_DIR/yt-dlp-bangla.conf" -f "bestvideo[height<=1080]+bestaudio/best[height<=1080]" "$@"
    ;;
  video720)
    yt-dlp --config-location "$SCRIPT_DIR/yt-dlp-bangla.conf" -f "bestvideo[height<=720]+bestaudio/best[height<=720]" "$@"
    ;;
  shorts)
    yt-dlp --config-location "$SCRIPT_DIR/yt-dlp-bangla.conf" -f "best[height<=720]" --output "$HOME/Downloads/yt-dlp/shorts/%(title)s.%(ext)s" "$@"
    ;;
  playlist-audio)
    yt-dlp --config-location "$SCRIPT_DIR/yt-dlp-bangla.conf" -x --audio-format mp3 --audio-quality 0 --yes-playlist --output "$HOME/Downloads/yt-dlp/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s" "$@"
    ;;
  *)
    echo "Unknown preset: $PRESET (audio, video1080, video720, shorts, playlist-audio)"
    exit 1
    ;;
esac
