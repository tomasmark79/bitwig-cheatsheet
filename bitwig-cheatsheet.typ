#set page(
  width: 3840pt,
  height: 2160pt,
  margin: (x: 30pt, y: 30pt),
  background: none,
  fill: rgb("#0d1117"),
)

#set text(
  font: ("Segoe UI", "Arial"),
  fill: rgb("#e8e8e8"),
  size: 17pt,
)

#let accent-orange = rgb("#ff6b35")
#let accent-blue   = rgb("#00d4ff")
#let accent-purple = rgb("#9d4edd")
#let bg-highlight  = rgb("#1e2333")
#let text-secondary = rgb("#a8a8b8")

#let key(content) = box(
  fill: bg-highlight,
  inset: (x: 6pt, y: 2pt),
  radius: 3pt,
  stroke: 0.75pt + rgb("#404060"),
  text(weight: "semibold", fill: accent-orange, size: 17pt)[#content]
)

#let desc(content) = text(fill: text-secondary, size: 17pt)[#content]

#let card(title, shortcuts, color: accent-blue) = block(
  width: 100%,
  breakable: false,
  below: 10pt,
  {
    text(size: 17pt, weight: "bold", fill: color)[#title]
    v(2pt)
    line(length: 100%, stroke: 0.5pt + color.transparentize(55%))
    v(3pt)
    table(
      columns: (auto, auto),
      stroke: none,
      row-gutter: 1pt,
      column-gutter: 8pt,
      align: (right, left),
      ..shortcuts.flatten()
    )
  }
)

#v(1fr)
#columns(6, gutter: 18pt)[

  #card("File", (
    desc("New Project"), key("Ctrl+N"),
    desc("New From Template..."), key("Ctrl+Shift+N"),
    desc("Open..."), key("Ctrl+O"),
    desc("Close"), key("Ctrl+W"),
    desc("Save"), key("Ctrl+S"),
    desc("Save as..."), key("Ctrl+Shift+S"),
    desc("Quit"), key("Ctrl+Q"),
  ), color: accent-orange)

  #card("General", (
    desc("Pointer tool"), key("1"),
    desc("Time Selection tool"), key("2"),
    desc("Pencil tool"), key("3"),
    desc("Spray Can tool"), key("4"),
    desc("Knife tool"), key("5"),
    desc("Eraser tool"), key("6"),
    desc("Audition tool"), key("7"),
    desc("Step Input tool"), key("8"),
    desc("Pencil tool (Curve Editor)"), key("2"),
    desc("Ramp tool (Curve Editor)"), key("5"),
    desc("Step tool (Curve Editor)"), key("3"),
    desc("Triangle tool (Curve Editor)"), key("7"),
    desc("Adaptive Beat Grid"), key("/"),
    desc("Larger Beat Grid"), key("."),
    desc("Smaller Beat Grid"), key(","),
    desc("Larger Beat Grid Subdivision"), key("Alt+,"),
    desc("Smaller Beat Grid Subdivision"), key("Alt+."),
    desc("Time Snapping"), key("S"),
    desc("Snap to Beat Grid"), key("Shift+,"),
    desc("Snap to Other Events"), key("Shift+/"),
    desc("Snap Relative to Original Event"), key("Shift+."),
    desc("Bounce In Place (Pre-FX)"), key("Ctrl+B"),
    desc("Bounce In Place (Pre-Fader)"), key("Ctrl+Alt+B"),
    desc("Bounce In Place (Post-Fader)"), key("Ctrl+Shift+Alt+B"),
    desc("Auto-Fade"), key("Ctrl+F"),
    desc("Auto-Crossfade"), key("Ctrl+Shift+F"),
    desc("Reset Fades"), key("Ctrl+Alt+F"),
    desc("Fade In to Here"), key("Shift+7"),
    desc("Fade Out from Here"), key("Shift+0"),
    desc("Gain +6dB"), key("Alt+Up"),
    desc("Gain +1dB"), key("Shift+Alt+Up"),
    desc("Gain -6dB"), key("Alt+Down"),
    desc("Gain -1dB"), key("Shift+Alt+Down"),
    desc("Transpose Semitone Up"), key("Alt++"),
    desc("Transpose Semitone Down"), key("Alt+-"),
    desc("Transpose Octave Up"), key("Shift+Alt++"),
    desc("Transpose Octave Down"), key("Shift+Alt+-"),
    desc("Quantize"), key("Q"),
    desc("Quantize..."), key("Alt+Q"),
    desc("Quantize Length"), key("Ctrl+Alt+L"),
    desc("Make Legato"), key("Ctrl+Shift+Alt+L"),
    desc("Split"), key("Ctrl+E"),
    desc("Consolidate"), key("Ctrl+J"),
    desc("Loop Selected Region"), key("Ctrl+L"),
    desc("Double Content"), key("Ctrl+2"),
    desc("Insert Silence"), key("Ctrl+Shift+P"),
    desc("Cut Time"), key("Ctrl+Shift+X"),
    desc("Paste Time"), key("Ctrl+Shift+V"),
    desc("Remove Time"), key("Shift+Backspace"),
    desc("Duplicate Time"), key("Ctrl+Shift+D"),
    desc("Slide Content Left"), key("Alt+Left"),
    desc("Slide Content Right"), key("Alt+Right"),
    desc("Set Object Start"), key("Shift+8"),
    desc("Set Object End"), key("Shift+9"),
    desc("Nudge One Step Backward"), key("Left"),
    desc("Nudge One Step Forward"), key("Right"),
    desc("Nudge Fine Backward"), key("Shift+Left"),
    desc("Nudge Fine Forward"), key("Shift+Right"),
    desc("Make Events One Step Longer"), key("Up"),
    desc("Make Events One Step Shorter"), key("Down"),
    desc("Make Events Fine Amount Longer"), key("Shift+Up"),
    desc("Make Events Fine Amount Shorter"), key("Shift+Down"),
    desc("Select Next Track"), key("Page Down"),
    desc("Select Previous Track"), key("Page Up"),
    desc("Add Automation Lane"), key("Enter"),
    desc("Launch"), key("Enter"),
    desc("Focus/toggle Browser Panel"), key("Alt+B"),
    desc("Insert from Library..."), key("B"),
    desc("Commander..."), key("Ctrl+Enter"),
    desc("Wrap Related Automation as Clips"), key("Ctrl+G"),
    desc("Settings"), key("Ctrl+,"),
  ), color: accent-blue)

  #card("Editing", (
    desc("Copy"), key("Ctrl+C"),
    desc("Cut"), key("Ctrl+X"),
    desc("Paste"), key("Ctrl+V"),
    desc("Paste as Alias"), key("Ctrl+Alt+V"),
    desc("Duplicate"), key("Ctrl+D"),
    desc("Duplicate as Alias"), key("Ctrl+Alt+D"),
    desc("Delete"), key("Backspace"),
    desc("Undo"), key("Ctrl+Z"),
    desc("Redo"), key("Ctrl+Y"),
    desc("Rename"), key("Ctrl+R"),
    desc("Group"), key("Ctrl+G"),
    desc("Ungroup"), key("Ctrl+Shift+G"),
    desc("Flatten as Track Automation"), key("Ctrl+Shift+G"),
    desc("Wrap as Automation Clip"), key("Ctrl+G"),
    desc("Toggle Active/Mute State"), key("Alt+A"),
    desc("Toggle Hold"), key("H"),
    desc("Switch Object / Time Selection"), key("Ctrl+T"),
  ), color: accent-purple)

  #card("Navigation", (
    desc("Collapse Item"), key("Left"),
    desc("Expand Item"), key("Right"),
    desc("Focus next field"), key("Tab"),
    desc("Focus previous field"), key("Shift+Tab"),
    desc("Focus panel above"), key("Ctrl+Shift+Up"),
    desc("Focus panel below"), key("Ctrl+Shift+Down"),
    desc("Focus panel to the left"), key("Ctrl+Shift+Left"),
    desc("Focus panel to the right"), key("Ctrl+Shift+Right"),
    desc("Focus widget above"), key("Up"),
    desc("Focus widget below"), key("Down"),
    desc("Focus widget to the left"), key("Left"),
    desc("Focus widget to the right"), key("Right"),
    desc("Open in Editor"), key("Enter"),
    desc("Select Next Project"), key("Ctrl+Tab"),
    desc("Select Previous Project"), key("Ctrl+Shift+Tab"),
    desc("Select Next Tab"), key("Ctrl+Down"),
    desc("Select Previous Tab"), key("Ctrl+Up"),
    desc("Toggle children expanded state"), key("Ctrl+Enter"),
    desc("Toggle siblings expanded state"), key("Shift+Enter"),
  ), color: accent-orange)

  #card("Selection", (
    desc("Select All"), key("Ctrl+A"),
    desc("Deselect All"), key("Ctrl+Shift+A"),
    desc("Toggle selection at cursor"), key("Ctrl+Space"),
    desc("Select first item"), key("Home"),
    desc("Select last item"), key("End"),
    desc("Select item above"), key("Up"),
    desc("Select item below"), key("Down"),
    desc("Select item to left"), key("Left"),
    desc("Select item to right"), key("Right"),
    desc("Select Item in Next Lane"), key("Down / Right"),
    desc("Select Item in Previous Lane"), key("Up / Left"),
    desc("Select Next Item"), key("Down"),
    desc("Select Previous Item"), key("Up"),
    desc("Extend range to item above"), key("Shift+Up"),
    desc("Extend range to item below"), key("Shift+Down"),
    desc("Extend range to item to left"), key("Shift+Left"),
    desc("Extend range to item to right"), key("Shift+Right"),
    desc("Extend range to first item"), key("Ctrl+Shift+Up"),
    desc("Extend range to last item"), key("Ctrl+Shift+Down"),
    desc("Extend selection to first item"), key("Ctrl+Shift+Home"),
    desc("Extend selection to last item"), key("Ctrl+Shift+End"),
    desc("Extend selection to item above"), key("Ctrl+Shift+Up"),
    desc("Extend selection to item below"), key("Ctrl+Shift+Down"),
    desc("Extend selection to item to left"), key("Ctrl+Shift+Left"),
    desc("Extend selection to item to right"), key("Ctrl+Shift+Right"),
    desc("Move cursor up"), key("Ctrl+Up"),
    desc("Move cursor down"), key("Ctrl+Down"),
    desc("Move cursor left"), key("Ctrl+Left"),
    desc("Move cursor right"), key("Ctrl+Right"),
    desc("Move cursor to first item"), key("Ctrl+Up"),
    desc("Move cursor to last item"), key("Ctrl+Down"),
    desc("Move Cursor to Next Lane"), key("Ctrl+Right"),
    desc("Move Cursor to Previous Lane"), key("Ctrl+Left"),
  ), color: accent-blue)

  #card("Help", (
    desc("Show Item Help"), key("F1"),
  ), color: accent-orange)

  #card("Window Management", (
    desc("Full screen"), key("F11"),
    desc("Maximize window"), key("Ctrl+M"),
    desc("Minimize window"), key("Ctrl+Shift+M"),
  ), color: accent-blue)

  #card("Dialogs", (
    desc("OK"), key("Enter"),
    desc("Cancel Dialog"), key("Escape"),
    desc("Yes"), key("Y"),
    desc("No"), key("N"),
  ), color: accent-purple)

  #card("Text Editing", (
    desc("Commit Text"), key("Enter"),
    desc("Stop Editing Text"), key("Escape"),
    desc("Insert new line"), key("Numpad Enter"),
    desc("Delete char left"), key("Backspace"),
    desc("Delete char right"), key("Delete"),
    desc("Move cursor left"), key("Left"),
    desc("Move cursor right"), key("Right"),
    desc("Move cursor up"), key("Up"),
    desc("Move cursor down"), key("Down"),
    desc("Move cursor word left"), key("Ctrl+Left"),
    desc("Move cursor word right"), key("Ctrl+Right"),
    desc("Move cursor to start of line"), key("Ctrl+A / Home"),
    desc("Move cursor to end of line"), key("Ctrl+E / End"),
    desc("Move cursor to start of doc"), key("Ctrl+Home"),
    desc("Move cursor to end of doc"), key("Ctrl+End"),
    desc("Extend selection left"), key("Shift+Left"),
    desc("Extend selection right"), key("Shift+Right"),
    desc("Extend selection up"), key("Shift+Up"),
    desc("Extend selection down"), key("Shift+Down"),
    desc("Extend selection word left"), key("Ctrl+Shift+Left"),
    desc("Extend selection word right"), key("Ctrl+Shift+Right"),
    desc("Extend selection to start of line"), key("Ctrl+Shift+A"),
    desc("Extend selection to end of line"), key("Ctrl+Shift+E"),
    desc("Extend selection to start of doc"), key("Ctrl+Shift+Home"),
    desc("Extend selection to end of doc"), key("Ctrl+Shift+End"),
    desc("Reload"), key("Ctrl+R"),
  ), color: accent-orange)

  #card("Search", (
    desc("Invoke search-field action"), key("Tab"),
  ), color: accent-blue)

  #card("Zooming", (
    desc("Zoom In Horizontally"), key("Ctrl++"),
    desc("Zoom Out Horizontally"), key("Ctrl+-"),
    desc("Zoom In Vertically"), key("Ctrl+Shift++"),
    desc("Zoom Out Vertically"), key("Ctrl+Shift+-"),
    desc("Zoom to Fit"), key("Ctrl+0"),
    desc("Zoom to Fit Selection Or All"), key("Z"),
  ), color: accent-purple)

  #card("Project", (
    desc("Add Instrument Track"), key("Ctrl+T"),
    desc("Add Audio Track"), key("Ctrl+Shift+T"),
    desc("Add FX Track"), key("Ctrl+Alt+T"),
    desc("Add Group Track"), key("Ctrl+Alt+G"),
    desc("Add Scene"), key("Ctrl+I"),
    desc("Play or Stop Transport"), key("P / Space"),
    desc("Play from Start, or Stop"), key("Alt+P / Alt+Space"),
    desc("Continue Playback or Stop"), key("Shift+P / Shift+Space"),
    desc("Stop Transport"), key("Stop"),
    desc("Toggle Record"), key("F9"),
    desc("Tap Tempo"), key("Ctrl+Alt+Space"),
    desc("Toggle Metronome"), key("Shift+M"),
    desc("Toggle Track Arm"), key("Shift+A"),
    desc("Toggle Track Mute"), key("Shift+X"),
    desc("Toggle Track Solo / Cue"), key("Shift+S"),
    desc("Toggle Global Automation Behavior"), key("0"),
    desc("View follows playhead"), key("Shift+F"),
    desc("Export Audio..."), key("Ctrl+Shift+B"),
    desc("Activate Engine for Project"), key("F12"),
  ), color: accent-orange)

  #card("Clip Launcher", (
    desc("Add Scene from Playing Clips"), key("Ctrl+Shift+I"),
  ), color: accent-blue)

  #card("Panel Management", (
    desc("Focus Track Header Area"), key("T / Alt+T"),
    desc("Focus/toggle Arranger Timeline"), key("O / Alt+O"),
    desc("Focus/toggle Clip Editor"), key("E / Alt+E"),
    desc("Focus/toggle Clip Launcher"), key("L / Alt+L"),
    desc("Focus/toggle Device Panel"), key("D / Alt+D"),
    desc("Focus/toggle Inspector Panel"), key("I / Alt+I"),
    desc("Focus/toggle Mixer Panel"), key("M / Alt+M"),
    desc("Toggle Device Panel"), key("F3"),
    desc("Toggle Mixer Panel"), key("F4"),
    desc("Toggle Edit View"), key("Shift+Tab"),
    desc("Toggle Track-timeline vs. Clip-content"), key("Alt+C"),
    desc("Select Sub-panel 1"), key("F5"),
    desc("Select Sub-panel 2"), key("F6"),
    desc("Select Sub-panel 3"), key("F7"),
    desc("Select Sub-panel 4"), key("F8"),
    desc("Select Next Mode"), key("Tab"),
    desc("Select Next Sub-panel"), key("`"),
    desc("Select Previous Sub-panel"), key("Shift+`"),
    desc("Auto Zoom Selected Track"), key("Shift+Z"),
    desc("Show Cue Markers"), key("Shift+Alt+C"),
  ), color: accent-purple)

  #card("Arranger", (
    desc("Toggle Automation Mode"), key("A"),
    desc("Toggle Automation Lanes (All Tracks)"), key("Ctrl+Alt+A"),
    desc("Toggle Flying Automation Lane"), key("Shift+Alt+A"),
    desc("Zoom In Lane Heights (All Tracks)"), key("Ctrl+Shift+Page Down"),
    desc("Zoom In Lane Heights (Selected)"), key("Shift+Page Down"),
    desc("Zoom Out Lane Heights (All Tracks)"), key("Ctrl+Shift+Page Up"),
    desc("Zoom Out Lane Heights (Selected)"), key("Shift+Page Up"),
  ), color: accent-orange)

  #card("Mixer", (
    desc("Mixer Zoom In (All Tracks)"), key("Ctrl++"),
    desc("Mixer Zoom Out (All Tracks)"), key("Ctrl+-"),
  ), color: accent-blue)

  #card("Detail Editor", (
    desc("Show next editor mode"), key("F / Alt+F"),
    desc("Snap to Key"), key("K"),
    desc("Toggle Automation Lane"), key("A"),
    desc("Toggle Edit Audio Expression"), key("X"),
    desc("Toggle Edit Audio Gain"), key("G"),
    desc("Toggle Edit Audio Transpose"), key("T"),
    desc("Toggle Edit Note Expression"), key("X"),
    desc("Toggle Edit Note Gain"), key("G"),
    desc("Toggle Edit Note Transpose"), key("P"),
    desc("Toggle Note Expression Lane"), key("V"),
  ), color: accent-purple)

  #card("Multisample", (
    desc("Nudge Up"), key("Up"),
    desc("Nudge Down"), key("Down"),
    desc("Nudge Left"), key("Left"),
    desc("Nudge Right"), key("Right"),
    desc("Nudge Up (coarse)"), key("Shift+Up"),
    desc("Nudge Down (coarse)"), key("Shift+Down"),
    desc("Nudge Left (coarse)"), key("Shift+Left"),
    desc("Nudge Right (coarse)"), key("Shift+Right"),
  ), color: accent-blue)

  #card("Browser", (
    desc("Clear Focused Filter"), key("X"),
    desc("Focus Browser File List"), key("Ctrl+R / Down / Ctrl+Down / Right"),
    desc("Focus Browser Search Field"), key("S / Ctrl+Up / Page Up"),
    desc("Focus Category or Creator Column"), key("C"),
    desc("Focus Device Column"), key("D"),
    desc("Focus File Kind Or Type Column"), key("F"),
    desc("Focus Filters"), key("Ctrl+Up / Ctrl+Down / Left / Ctrl+Left / Page Up"),
    desc("Focus Location Column"), key("L"),
    desc("Focus Tags Column"), key("T"),
    desc("Focus Vendor Column"), key("V"),
    desc("Remove from all Collections"), key("Alt+0 / Alt+Numpad 0"),
    desc("Select Everything"), key("F1"),
    desc("Select Next Filter Column"), key("Ctrl+Alt+Down / Ctrl+Alt+Right"),
    desc("Select Next Palette Item"), key("Ctrl+Alt+Down / Ctrl+Alt+Right"),
    desc("Select Prev Filter Column"), key("Ctrl+Alt+Up / Ctrl+Alt+Left"),
    desc("Select Prev Palette Item"), key("Ctrl+Alt+Up / Ctrl+Alt+Left"),
    desc("Show Presets for Device"), key("Right"),
    desc("Stop Showing Presets for Device"), key("Left"),
    desc("Toggle All Sources view"), key("Ctrl+0"),
    desc("Toggle Favorite"), key("0 / Numpad 0"),
    desc("Toggle Preview Playback of Selected File"), key("Right"),
    desc("Toggle Show Favorites"), key("`"),
  ), color: accent-orange)

  #card("Comping", (
    desc("Select Next Take"), key("Up"),
    desc("Select Previous Take"), key("Down"),
  ), color: accent-purple)

]
#v(1fr)










