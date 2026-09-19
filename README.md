# omarchy-wallpapers

300 original 16:9 desktop wallpapers in the [Omarchy](https://omarchy.org) art language: cinematic, limited-palette, uncluttered illustrated scenes. Not copies of stock Omarchy theme backgrounds.

Made for a 2560×1440 Omarchy/Hyprland machine; files themselves are 5120×2880 so they match the shipped Omarchy 16:9 class (`ethereal/1-cosmic.jpg`, `tokyo-night/1-quattro.jpg`).

## How these were made

1. **Generation** — [xAI Grok 4.6](https://x.ai) image generation (Imagine), 16:9 masters at 1280×720. Prompts follow the stock Omarchy wallpaper look: painterly or graphic illustration, fog/glow, dark foreground, no UI, no logos, no readable text.
2. **Upscale** — [Real-ESRGAN](https://github.com/xinntao/Real-ESRGAN) via the [Real-ESRGAN-ncnn-vulkan](https://github.com/xinntao/Real-ESRGAN-ncnn-vulkan) binary, model `realesrgan-x4plus-anime`, scale 4. That is the neural upscaler. Output converted to JPEG sRGB quality 95.

These are **AI-generated images**. They are not photographs, not official Omarchy artwork, and not affiliated with DHH or the Omarchy project beyond matching that visual language.

## Spec

| | |
|---|---|
| Count | 300 |
| Aspect | 16:9 |
| Deliverable | `backgrounds/` · **5120×2880** JPEG sRGB Q95 |
| Masters | `src/` · 1280×720 JPEG (pre-upscale) |
| Names | `NN-short-kebab.jpg` (`01`–`09` zero-padded) |

`176`–`300` are eight worlds, split evenly: abyssal biolume, cislunar, monsoon tropics night, aurora towns, sky-harbor / cloud sea, Aegean limestone dusk, undercity, fog-harbor North Sea.

## Layout

```
backgrounds/   5120×2880 wallpapers (use these)
src/           1280×720 generation masters
scripts/       upscale.sh, install-omarchy.sh
```

## Use on Omarchy

```bash
# browse full-screen, ←/→ to walk the set
imv-dir backgrounds/01-jade-night-alley.jpg

# install into the current theme's user-backgrounds (symlinks, this repo stays the copy)
bash scripts/install-omarchy.sh
omarchy theme bg next
```

`install-omarchy.sh` only writes `~/.config/omarchy/backgrounds/<current-theme>/`. It never touches `/usr/share/omarchy/`.

## License

[CC BY 4.0](LICENSE). Credit Grok 4.6, Omarchy's art direction, and Real-ESRGAN if you redistribute.

## Not in this repo

Local session files (`session_compact.md`, `session_transcript.md`) stay on the machine that made the set. They are gitignored on purpose.
