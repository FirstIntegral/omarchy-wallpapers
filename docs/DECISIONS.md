# Decisions & Rationale (ADRs)

Append an entry (date + decision + why + rejected alternatives) in the same turn a meaningful choice is made.

## 2026-09-19 Project owns the files, Omarchy gets symlinks
- Decision: keepers and all new art live in `~/Projects/omarchy-wallpapers`. Omarchy user-backgrounds folder only gets symlinks via `scripts/install-omarchy.sh`.
- Why: user asked to move every picture into a Projects folder. Theme cycle still works if we symlink, not copy.
- Rejected: leaving copies in `~/Pictures/omarchy-wallpapers` and `~/.config/omarchy/backgrounds/` (drift). Rejected copying into `/usr/share/omarchy/themes/` (package-owned).

## 2026-09-19 Deliverable spec = shipped 16:9 5120x2880 JPEG
- Decision: generate 16:9, Real-ESRGAN 4x from 1280x720 → **5120x2880**, JPEG sRGB Q95.
- Why: that exact size already ships (`ethereal/1-cosmic.jpg`, `tokyo-night/1-quattro.jpg`). Dominant shipped aspect is 16:9; median shipped is ~4K–5K class, not 720p. Monitor is 2560x1440 so 5120x2880 is 2x native.
- Rejected: Lanczos to 2560x1440 (soft, not shipped-class). Rejected 7680x4320 8K (overkill, 4x from 720p is already 5120). Rejected PNG as default (most shipped 16:9 are JPEG).

## 2026-09-19 Real-ESRGAN anime weights
- Decision: `~/Apps/realesrgan/realesrgan-ncnn-vulkan -n realesrgan-x4plus-anime -s 4`.
- Why: house look is illustrated / Osaka-Jade anime painting, not photo. Binary and models already on the machine.
- Rejected: ImageMagick Lanczos as the deliverable. Rejected `realesrgan-x4plus` as default (photo model).

## 2026-09-19 Drop Rainbow Six Siege
- Decision: delete `14-siege-breach` and `15-siege-drone-rain`. Leave 14–15 unused. Do not generate more Siege.
- Why: user asked to remove the Siege ones. Skipping numbers avoids colliding with keepers 10–13, 16–19.
- Rejected: compacting the whole catalog to 01–N (would rename keepers the user already liked).

## 2026-09-19 Numbers start at 10; 01-09 filled later
- Decision: original batch used 10–19 so filenames sorted after stock Omarchy `1-glowing-city.jpg` / `2-shaded-entrance.jpg` / `3-mountain-moon.jpg` when they still lived in the theme backgrounds folder. 1–9 were never generated. v3 fills `01`–`09` (zero-padded so they sort before `10`) and continues at `40`–`80`. Do not renumber 10–39. 14–15 stay unused (Siege).
- Why: user asked where 1–9 went. Zero-pad avoids `1-` sorting between `10-` and `2-`.
- Rejected: renaming the whole catalog to 01–N (breaks names the user already likes). Rejected unpadded `1-`–`9-`.

## 2026-09-20 Drop 147 / 163 / 171, compact 01–175, public repo
- Decision: delete old `147-darkroom-red` (safelight looked like blood), `163-bauhaus-blocks`, `171-mondrian-city-dusk`. Compact **all** holes (including retired 14–15 Siege slots) to sequential `01`–`175`. Rename `blood-moon-marsh` → `red-moon-marsh`. Publish `github.com/FirstIntegral/omarchy-wallpapers` (public, CC BY 4.0). Session files stay gitignored.
- Why: user asked to remove those three, keep order, create a public GitHub repo, credit Grok 4.6 + Omarchy art language + Real-ESRGAN, then checkpoint.
- Rejected: leaving 14–15 empty in a public catalog. Rejected Bauhaus/Mondrian as a style going forward. Rejected putting session_transcript in git.

## 2026-09-20 v4: 100 new scenes, no repeats
- Decision: numbers `81`–`180`. New biomes and places, not another Japan-night / lockin-desk / synth-grid pass. No Siege. Same 5120×2880 JPEG pipeline.
- Why: user loved the set and asked for 100 more with ideas not tried yet.
- Rejected: filling 14–15. Rejected more torii/CRT/wireframe-coast clones.

## 2026-09-20 imv stays; Hyprland was the size bug
- Decision: keep `imv` / `imv-dir`. Override `~/.config/hypr/hyprland.lua` so class `^imv$` loses `floating-window` and opens fullscreen. `~/.config/imv/config`: `fullscreen=true`, `scaling_mode=full`. MIME default `imv-dir.desktop`.
- Why: user said pictures were not full size. Root cause was Omarchy's stock 875×600 float on `imv`, not a weak viewer. Files are 5120×2880 on a 2560×1440 panel — fill-screen is correct; `a` is 1:1 pan.
- Rejected: switching to nsxiv/qimgv/feh (would only look bigger because they are not in the float regex). Rejected editing `/usr/share/omarchy/`.

## 2026-09-19 Local only, no git
- Decision: `## Repo` is `none (local only)`. No `git init`.
- Why: `create_project` never creates a repo. User did not ask for GitHub.
- Rejected: initializing a repo so checkpoint can push.
