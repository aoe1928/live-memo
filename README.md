[日本語](README.ja.md)

# Live Memo

A minimal Max for Live audio effect with one editable memo field. Designed for the device panel in Ableton Live 11 Suite; 260 pixels wide, with no external dependencies.

**Version 0.1.0 — prototype / runtime unverified.** [Download](https://github.com/aoe1928/live-memo/releases/tag/v0.1.0)

Requires Live Suite or Live Standard with Max for Live. Standard Max objects are used, so Windows and macOS are intended targets, including supported Intel/Apple Silicon environments; neither platform has been runtime-verified. The requested Yu Gothic UI font may be substituted on Mac, changing line wrapping. This is not a standalone app or a Logic plugin.

## Use

1. Drag `Live Memo.amxd` into an audio effect chain. On a MIDI track, place it after the instrument.
2. Click the blank field and type. Enter adds a new line; long lines wrap.
3. Finish editing with Tab or click outside the field, then save the Live Set with Ctrl+S.

The field is configured as a stored Blob parameter so that Live can save it with the Set. This is Set saving, not independent automatic file saving. Stereo input connects directly to stereo output.

## Validation and limitations

AMXD header, payload length, JSON, stereo connections and parameter configuration have been checked. Loading in Live, Japanese IME input, long-text scrolling, audio playback and saved-Set reopening have **not** been tested. Before relying on it, enter a multiline Japanese memo, save a test Set, reopen it and confirm the complete text remains. No formatting, file export or cloud sync.

`Live Memo.maxpat` is the editable source. The AMXD is self-contained.

## License

Original patch code and documentation are MIT licensed; see [LICENSE](LICENSE). Images, characters, icons and logos are outside that license. No such assets are included. Third-party applications and fonts retain their respective licenses.

Reference: [Cycling '74 textedit documentation](https://docs.cycling74.com/legacy/max8/refpages/textedit).
