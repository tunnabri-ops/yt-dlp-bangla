# yt-dlp Bangla — বাংলায় ভিডিও ডাউনলোড

Bangla-friendly yt-dlp setup, built on **yt-dlp/yt-dlp**.

- **Original repo:** https://github.com/yt-dlp/yt-dlp (a feature-rich command-line audio/video downloader)

## কী আছে / What is inside

- `yt-dlp-bangla.conf` — ready config: best video up to 1080p + best audio merged to MP4, Bangla + English subtitles embedded when available, files saved to `~/Downloads/yt-dlp/`.
- `download.sh` — wrapper: `./download.sh "<URL>"`.

## যা ঠিক করা হয়েছে / What was fixed

- Upstream's defaults download whatever format the site offers first, with no subtitles and files scattered in the current folder. This config pins 1080p MP4, embeds `bn` + `en` subtitles and metadata, and uses a fixed download folder.
- The install command is taken from the upstream README: `python -m pip install -U --pre "yt-dlp[default]"` (nightly) or the stable release from the repo.

## ব্যবহার / How to use

```bash
# Install (from the upstream README)
python -m pip install -U "yt-dlp[default]"

# Download one video
chmod +x download.sh
./download.sh "https://www.youtube.com/watch?v=..."

# Or use the config directly
yt-dlp --config-location yt-dlp-bangla.conf "<URL>"
```

Only download videos you have the right to keep — respect each site's terms and copyright.
