# ⬇️ yt-dlp Bangla

**Download videos with Bangla-friendly defaults — 1080p MP4, Bangla + English subtitles embedded.**

## ✨ Features

- `yt-dlp-bangla.conf` — ready config: best video up to 1080p + best audio merged to MP4, Bangla + English subtitles embedded when available, metadata embedded, files saved to `~/Downloads/yt-dlp/`.
- `download.sh` — wrapper: `./download.sh "<URL>"`.
- `presets.sh` — one-word presets: `audio` (MP3), `video1080`, `video720`, `shorts`, `playlist-audio`.

## 🚀 How to use

```bash
# Install
python -m pip install -U "yt-dlp[default]"

# Download one video
chmod +x download.sh
./download.sh "https://www.youtube.com/watch?v=..."

# Or use the config directly
yt-dlp --config-location yt-dlp-bangla.conf "<URL>"

# Or use a preset
./presets.sh audio "https://www.youtube.com/watch?v=..."
./presets.sh video720 "https://www.youtube.com/watch?v=..."
```

## ⚠️ Honest limits

- Only download videos you have the right to keep — respect each site's terms and copyright.
- Some sites block downloads, change their pages, or need login/cookies — the tool cannot download what the site does not serve.
- The exact format you get depends on what the site offers; 1080p is the ceiling in the config, not a guarantee.

## 🇧🇩 বাংলা

**yt-dlp বাংলা — বাংলায় ভিডিও ডাউনলোড।**

- 1080p MP4, বাংলা + ইংরেজি সাবটাইটেল ভেতরে বসানো থাকে
- `./download.sh "লিংক"` — এক কমান্ডেই ডাউনলোড
- `presets.sh` দিয়ে অডিও, 720p, শর্টস, প্লেলিস্ট-অডিও — সব আলাদা করে নামানো যায়

## 📄 License

MIT — use it however you like.
