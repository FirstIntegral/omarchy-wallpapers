# omarchy-wallpapers

Original Omarchy desktop wallpapers. Illustrated, cinematic, limited-palette. Not copies of stock theme art. AI-generated with xAI Grok 4.6, upscaled with Real-ESRGAN-ncnn-vulkan (`realesrgan-x4plus-anime` ×4).

## Stack / Conventions

- Generate 16:9 masters at `src/` (Grok 4.6 Imagine, 1280x720).
- Deliver `backgrounds/` at **5120x2880 JPEG sRGB Q95** — matches shipped Omarchy 16:9 set (`ethereal/1-cosmic.jpg`, `tokyo-night/1-quattro.jpg`).
- Upscale only with `~/Apps/realesrgan` (`realesrgan-x4plus-anime`, scale 4). Never Lanczos as the deliverable.
- No text, no logos, no UI. No blood/gore. No Bauhaus/Mondrian primary-block style.
- Numbered filenames: `NN-short-kebab.jpg` (`01`–`09` zero-padded). Catalog is sequential **01–175** with no holes.

## Commands

- Upscale missing: `bash scripts/upscale.sh`
- Install into current Omarchy theme cycle: `bash scripts/install-omarchy.sh`
- Set one live: `omarchy theme bg set ~/Projects/omarchy-wallpapers/backgrounds/<file>.jpg`
- Browse full-screen: `imv-dir ~/Projects/omarchy-wallpapers/backgrounds/01-jade-night-alley.jpg` (←/→ next; `a` = 1:1 pixels; `q` quit). Omarchy's default 875x600 imv float is overridden in `~/.config/hypr/hyprland.lua`.

## Repo

- Remote: `git@github.com:FirstIntegral/omarchy-wallpapers.git`

Documentation, not authorisation: `checkpoint.sh` cross-checks this against `git remote get-url --push` and warns on a mismatch, but git config is what actually decides where a push goes. Keep this line current when the remote changes; never treat it as permission to push.

## Layout

| Path | What |
|------|------|
| `src/` | 1280x720 generation masters |
| `backgrounds/` | 5120x2880 JPEG deliverables |
| `scripts/upscale.sh` | Real-ESRGAN 4x → JPEG |
| `scripts/install-omarchy.sh` | Symlink `backgrounds/` into `~/.config/omarchy/backgrounds/<current-theme>/` |

## Catalog (175 files)

- `01-jade-night-alley.jpg`
- `02-lockin-terminal-glow.jpg`
- `03-apocalypse-overgrown-overpass.jpg`
- `04-solitude-lone-tree.jpg`
- `05-synth-moon-grid.jpg`
- `06-jade-torii-rain.jpg`
- `07-lockin-empty-office.jpg`
- `08-apocalypse-sunken-city.jpg`
- `09-solitude-salt-flats.jpg`
- `10-apocalypse-last-train.jpg`
- `11-apocalypse-ember-sun.jpg`
- `12-lockin-one-lamp.jpg`
- `13-lockin-vanishing-point.jpg`
- `14-jade-canal.jpg`
- `15-jade-overpass.jpg`
- `16-void-tower.jpg`
- `17-synth-torii.jpg`
- `18-apocalypse-overgrown-shrine.jpg`
- `19-apocalypse-flooded-platform.jpg`
- `20-apocalypse-rust-wheel.jpg`
- `21-apocalypse-glass-cathedral.jpg`
- `22-apocalypse-last-bridge.jpg`
- `23-lockin-3am-library.jpg`
- `24-lockin-server-aisle.jpg`
- `25-lockin-night-train.jpg`
- `26-lockin-dawn-rooftop.jpg`
- `27-lockin-overhead-lamp.jpg`
- `28-jade-bamboo-path.jpg`
- `29-jade-sento-steam.jpg`
- `30-jade-rain-tram.jpg`
- `31-jade-temple-stairs.jpg`
- `32-jade-phone-booth.jpg`
- `33-solitude-lighthouse.jpg`
- `34-solitude-radio-telescope.jpg`
- `35-solitude-frozen-pier.jpg`
- `36-synth-grid-nave.jpg`
- `37-synth-wireframe-coast.jpg`
- `38-apocalypse-melted-cars.jpg`
- `39-apocalypse-dead-mall.jpg`
- `40-apocalypse-cracked-dam.jpg`
- `41-apocalypse-ship-graveyard.jpg`
- `42-apocalypse-sand-highway.jpg`
- `43-apocalypse-ivy-skyscraper.jpg`
- `44-apocalypse-dry-fountain.jpg`
- `45-apocalypse-power-plant.jpg`
- `46-lockin-green-crt.jpg`
- `47-lockin-rain-loft.jpg`
- `48-lockin-monastery-desk.jpg`
- `49-lockin-basement-lab.jpg`
- `50-lockin-airport-night.jpg`
- `51-lockin-study-fireplace.jpg`
- `52-lockin-mezzanine-stacks.jpg`
- `53-lockin-capsule-hotel.jpg`
- `54-jade-lantern-bridge.jpg`
- `55-jade-onsen-outdoor.jpg`
- `56-jade-fish-market.jpg`
- `57-jade-shrine-forest.jpg`
- `58-jade-rooftop-antenna.jpg`
- `59-jade-train-crossing.jpg`
- `60-jade-harbor-cranes.jpg`
- `61-jade-paper-walls.jpg`
- `62-jade-moon-pond.jpg`
- `63-solitude-grain-silo.jpg`
- `64-solitude-icebreaker.jpg`
- `65-solitude-canyon-moon.jpg`
- `66-solitude-wind-farm.jpg`
- `67-solitude-chapel-hill.jpg`
- `68-solitude-desert-motel.jpg`
- `69-solitude-cliff-rail.jpg`
- `70-solitude-fog-orchard.jpg`
- `71-synth-arcology-gate.jpg`
- `72-synth-data-waterfall.jpg`
- `73-synth-neon-stairs.jpg`
- `74-synth-orbit-station.jpg`
- `75-synth-wire-forest.jpg`
- `76-synth-horizon-monolith.jpg`
- `77-synth-undersea-grid.jpg`
- `78-synth-pagoda-wire.jpg`
- `79-volcano-caldera.jpg`
- `80-lava-river-bridge.jpg`
- `81-obsidian-beach.jpg`
- `82-ash-plains-lightning.jpg`
- `83-magma-chamber.jpg`
- `84-cinder-cone-dawn.jpg`
- `85-black-sand-geyser.jpg`
- `86-crater-lake.jpg`
- `87-ice-cave-blue.jpg`
- `88-glacier-serac.jpg`
- `89-frozen-waterfall.jpg`
- `90-pack-ice-ridges.jpg`
- `91-snow-dunes-night.jpg`
- `92-icehotel-corridor.jpg`
- `93-antarctica-runway.jpg`
- `94-frost-fen-reeds.jpg`
- `95-slot-canyon-gold.jpg`
- `96-badlands-stripes.jpg`
- `97-tepui-tabletop.jpg`
- `98-white-cliffs-fog.jpg`
- `99-karst-towers-mist.jpg`
- `100-salt-mine-cathedral.jpg`
- `101-geode-cavern.jpg`
- `102-petrified-forest.jpg`
- `103-rice-terraces-night.jpg`
- `104-tidepool-moon.jpg`
- `105-underground-river.jpg`
- `106-cenote-shaft.jpg`
- `107-behind-waterfall.jpg`
- `108-mangrove-roots.jpg`
- `109-thermal-pool-rings.jpg`
- `110-empty-canal-lock.jpg`
- `111-redwood-cathedral.jpg`
- `112-mushroom-canopy.jpg`
- `113-cloud-forest-bridge.jpg`
- `114-baobab-avenue.jpg`
- `115-saguaro-night.jpg`
- `116-kelp-forest.jpg`
- `117-lily-pad-dawn.jpg`
- `118-fern-grotto.jpg`
- `119-brutalist-plaza-noon.jpg`
- `120-art-deco-lobby.jpg`
- `121-clocktower-gears.jpg`
- `122-planetarium-dome.jpg`
- `123-observatory-slit.jpg`
- `124-hangar-airships.jpg`
- `125-submarine-pen.jpg`
- `126-roundhouse-night.jpg`
- `127-stepwell-geometry.jpg`
- `128-adobe-casbah-dusk.jpg`
- `129-medina-lanterns.jpg`
- `130-cappadocia-night.jpg`
- `131-fjord-still.jpg`
- `132-hill-town-dusk.jpg`
- `133-stilt-village-fog.jpg`
- `134-himalaya-monastery.jpg`
- `135-sauna-lakeside.jpg`
- `136-windmill-polder.jpg`
- `137-drydock-night.jpg`
- `138-refinery-flare.jpg`
- `139-quarry-amphitheater.jpg`
- `140-cooling-pond-steam.jpg`
- `141-cable-car-terminus.jpg`
- `142-grain-elevator-row.jpg`
- `143-signal-box-empty.jpg`
- `144-foundry-idle.jpg`
- `145-organ-loft.jpg`
- `146-pottery-kiln.jpg`
- `147-print-atelier.jpg`
- `148-map-room.jpg`
- `149-herbarium-drawers.jpg`
- `150-orangerie-winter.jpg`
- `151-anatomy-theatre.jpg`
- `152-solar-eclipse-plain.jpg`
- `153-milkyway-arch.jpg`
- `154-comet-over-mesa.jpg`
- `155-red-moon-marsh.jpg`
- `156-noctilucent-cloud.jpg`
- `157-meteor-lake.jpg`
- `158-rainbow-valley.jpg`
- `159-planet-rise.jpg`
- `160-ink-wash-mountain.jpg`
- `161-topographic-gold.jpg`
- `162-stained-glass-nave.jpg`
- `163-origami-fold-light.jpg`
- `164-charcoal-wave.jpg`
- `165-north-light-room.jpg`
- `166-ukiyo-fog-banks.jpg`
- `167-rorschach-lake.jpg`
- `168-lighthouse-lens.jpg`
- `169-piano-empty-hall.jpg`
- `170-empty-amphitheater.jpg`
- `171-chess-endgame.jpg`
- `172-well-and-bucket.jpg`
- `173-stone-circle-dawn.jpg`
- `174-last-streetlamp.jpg`
- `175-salt-harvest-ponds.jpg`

## Session files

- `session_compact.md` — AI handoff state. Read FIRST at session start; rewrite at end of session / milestone. Local-only (gitignored): never commit unless the user says otherwise.
- `session_transcript.md` — human-ONLY narrative log. Append at milestones; AI NEVER reads it unless the user explicitly asks. Local-only (gitignored): never commit unless the user says otherwise.
- `docs/DECISIONS.md` — ADR log; append decision + why in the same turn it is made. Versioned (committed in repos).
- `.gitignore` — ignores the session files above, `claude_memory_import.md`, `logs/`, and legacy session paths.
