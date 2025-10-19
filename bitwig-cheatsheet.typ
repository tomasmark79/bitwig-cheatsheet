#set page(
  width: 3840pt,
  height: 2160pt,
  margin: (x: 60pt, y: 50pt),
  background: image("back01.jpg", width: 100%, height: 100%, fit: "stretch"),
  fill: none,
)

#set text(
  font: "Inter",
  fill: rgb("#e8e8e8"),
  size: 19pt,
)

// Barevné schéma
#let accent-orange = rgb("#ff6b35")
#let accent-blue = rgb("#00d4ff")
#let accent-purple = rgb("#9d4edd")
#let bg-dark = rgb("#0a0e27")
#let bg-card = rgb("#1a1f3a")
#let bg-highlight = rgb("#252d4a")
#let text-primary = rgb("#e8e8e8")
#let text-secondary = rgb("#a8a8b8")
#let grid-line = rgb("#404060")

// Funkce pro hlavičku
#let header() = {
  block(
    width: 100%,
    fill: none,
    inset: 25pt,
    radius: 15pt,
    [
      #align(center)[
        #text(size: 52pt, weight: "black", fill: white)[BITWIG STUDIO SHORTCUTS]
        #v(2pt)
      ]
    ]
  )
}

// Funkce pro kartičku se zkratkami s kolečkem pro nadpis
#let shortcut-card(title, shortcuts, color: accent-blue) = {
  box(
    width: 100%,
    height: 100%,
    {
      // Hlavní kontejner se zkratkami
      rect(
        width: 100%,
        height: 100%,
        fill: none,
        stroke: none,
        radius: 0pt,
        inset: (x: 20pt, y: 15pt),
        [
          #grid(
            columns: (auto, 1fr),
            column-gutter: 15pt,
            align: (left, horizon),
            text(size: 28pt, weight: "bold", fill: color)[#title],
            line(length: 100%, stroke: 0.5pt + color.transparentize(70%))
          )
          #v(10pt)
          #v(1fr)
          #align(center)[
            #table(
              columns: (auto, auto),
              stroke: none,
              row-gutter: 8pt,
              column-gutter: 30pt,
              align: (right, left),
              ..shortcuts.flatten()
            )
          ]
          #v(1fr)
        ]
      )
    }
  )
}

// Funkce pro klávesovou zkratku
#let key(content) = {
  box(
    fill: bg-highlight,
    inset: (x: 12pt, y: 6pt),
    radius: 5pt,
    stroke: 1pt + rgb("#404060"),
    text(weight: "semibold", fill: accent-orange, size: 22pt)[#content]
  )
}

// Funkce pro popis zkratky
#let desc(content) = {
  text(fill: text-secondary, size: 22pt)[#content]
}

// Hlavní obsah
#header()
#v(8pt)

// Layout - plně vyplněná mřížka
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: (1fr, 1fr, 1fr, 1fr),
  gutter: 0pt,
  row-gutter: 0pt,
  
  shortcut-card("Transport & Playback", (
    desc("Play/Pause"), key("Space"),
    desc("Stop"), key("Enter"),
    desc("Record"), key("F9"),
    desc("Loop On/Off"), key("L"),
    desc("Jump to Start"), key("W"),
    desc("Jump to End"), key("E"),
    desc("Tap Tempo"), key("T"),
    desc("Metronome On/Off"), key("Shift + M"),
  ), color: accent-orange),
  
  shortcut-card("Navigation", (
    desc("Track Up"), key("↑"),
    desc("Track Down"), key("↓"),
    desc("Device Left"), key("←"),
    desc("Device Right"), key("→"),
    desc("Zoom In"), key("Ctrl + +"),
    desc("Zoom Out"), key("Ctrl + -"),
    desc("Zoom to Fit"), key("Z"),
    desc("Follow Playback"), key("F"),
  ), color: accent-blue),
  
  shortcut-card("Tracks", (
    desc("Insert Audio Track"), key("Ctrl + T"),
    desc("Insert Instrument Track"), key("Ctrl + Shift + T"),
    desc("Duplicate Track"), key("Ctrl + D"),
    desc("Delete Track"), key("Ctrl + Backspace"),
    desc("Arm Track"), key("A"),
    desc("Mute Track"), key("M"),
    desc("Solo Track"), key("S"),
    desc("Group Tracks"), key("Ctrl + G"),
    desc("Color Track"), key("Ctrl + Alt + C"),
    desc("Rename Track"), key("Ctrl + R"),
  ), color: accent-purple),
  
  shortcut-card("Selection", (
    desc("Select All"), key("Ctrl + A"),
    desc("Select None"), key("Ctrl + Shift + A"),
    desc("Invert Selection"), key("Ctrl + I"),
    desc("Select Next"), key("Tab"),
    desc("Select Previous"), key("Shift + Tab"),
    desc("Extend Selection"), key("Shift + Arrow"),
    desc("Add to Selection"), key("Ctrl + Click"),
  ), color: accent-blue),
  
  shortcut-card("Editing", (
    desc("Cut"), key("Ctrl + X"),
    desc("Copy"), key("Ctrl + C"),
    desc("Paste"), key("Ctrl + V"),
    desc("Duplicate"), key("Ctrl + D"),
    desc("Delete"), key("Delete"),
    desc("Undo"), key("Ctrl + Z"),
    desc("Redo"), key("Ctrl + Y"),
    desc("Split at Playhead"), key("Ctrl + B"),
    desc("Join Clips"), key("Ctrl + J"),
    desc("Reverse Clip"), key("Ctrl + Shift + R"),
  ), color: accent-purple),
  
  shortcut-card("Grid & Snap", (
    desc("Toggle Snap"), key("Ctrl + Shift + S"),
    desc("Adaptive Grid"), key("Alt + 4"),
    desc("1 Bar Grid"), key("Alt + 1"),
    desc("1/4 Grid"), key("Alt + 2"),
    desc("1/16 Grid"), key("Alt + 3"),
    desc("Triplet Grid"), key("Ctrl + 3"),
  ), color: accent-orange),
  
  shortcut-card("Clips & Launcher", (
    desc("Create Clip"), key("Ctrl + Shift + U"),
    desc("Bounce in Place"), key("Alt + B"),
    desc("Launch Scene"), key("Shift + Space"),
    desc("Record Clip"), key("Shift + F9"),
    desc("Quantize"), key("Q"),
    desc("Double Loop Length"), key("Ctrl + L"),
    desc("Halve Loop Length"), key("Ctrl + Shift + L"),
    desc("Consolidate"), key("Ctrl + Alt + B"),
    desc("Crop Clip"), key("Shift + Ctrl + Alt + C"),
  ), color: accent-blue),
  
  shortcut-card("MIDI & Notes", (
    desc("Draw Mode"), key("D"),
    desc("Select Mode"), key("S"),
    desc("Erase Mode"), key("Shift + E"),
    desc("Audition Mode"), key("Shift + A"),
    desc("Fold/Unfold Notes"), key("N"),
    desc("Transpose Up"), key("Ctrl + ↑"),
    desc("Transpose Down"), key("Ctrl + ↓"),
    desc("Velocity Up"), key("Alt + ↑"),
    desc("Velocity Down"), key("Alt + ↓"),
    desc("Duplicate Notes"), key("Ctrl + D"),
    desc("Legato"), key("L"),
  ), color: accent-purple),
  
  shortcut-card("Mixer & Automation", (
    desc("Show Mixer"), key("F11"),
    desc("Toggle Automation"), key("U"),
    desc("Write Automation"), key("Shift + U"),
    desc("Touch Automation"), key("T"),
    desc("Clear Automation"), key("Ctrl + Shift + U"),
    desc("Add Automation Point"), key("Ctrl + Click"),
    desc("Reset Parameter"), key("Alt + Click"),
    desc("Pan Left"), key("Ctrl + Alt + ←"),
    desc("Pan Right"), key("Ctrl + Alt + →"),
  ), color: accent-blue),
  
  shortcut-card("Devices & Browser", (
    desc("Show Browser"), key("Alt + B"),
    desc("Show Device Panel"), key("F3"),
    desc("Add Device"), key("Ctrl + Alt + D"),
    desc("Replace Device"), key("Shift + Drag"),
    desc("Bypass Device"), key("Ctrl + Shift + D"),
    desc("Show Presets"), key("P"),
    desc("Next Preset"), key("]"),
    desc("Previous Preset"), key("["),
    desc("Expand/Collapse Device"), key("Alt + Click"),
    desc("Delete Device"), key("Backspace"),
  ), color: accent-purple),
  
  shortcut-card("Windows & Views", (
    desc("Full Screen"), key("F11"),
    desc("Inspector Panel"), key("I"),
    desc("Detail Editor"), key("Shift + F3"),
    desc("Arranger View"), key("F1"),
    desc("Mix View"), key("F2"),
    desc("Edit View"), key("F3"),
    desc("Hide/Show Panel"), key("Shift + F1-F4"),
    desc("Toggle Fullscreen"), key("Alt + Enter"),
    desc("Note Editor"), key("Shift + F2"),
    desc("Automation Editor"), key("Shift + F1"),
  ), color: accent-orange),
  
  shortcut-card("Essential Modifiers", (
    desc("Fine Adjust"), key("Shift + Drag"),
    desc("Reset to Default"), key("Alt + Click"),
    desc("Relative Mode"), key("Ctrl + Drag"),
    desc("Copy Value"), key("Ctrl + C"),
    desc("Paste Value"), key("Ctrl + V"),
  ), color: accent-blue),
  
  shortcut-card("Markers & Arranger", (
    desc("Add Marker"), key("Ctrl + M"),
    desc("Jump to Marker"), key("Ctrl + 1-9"),
    desc("Create Scene"), key("Ctrl + Enter"),
    desc("Duplicate Scene"), key("Ctrl + Shift + D"),
    desc("Select Time"), key("Ctrl + Shift + T"),
  ), color: accent-purple),
  
  shortcut-card("Audio & Recording", (
    desc("Bounce Track"), key("Alt + Shift + B"),
    desc("Render Track"), key("Ctrl + Alt + R"),
    desc("Audio Comping"), key("C"),
    desc("Create Fade In"), key("Alt + F"),
    desc("Create Fade Out"), key("Alt + G"),
    desc("Toggle Monitoring"), key("Alt + M"),
  ), color: accent-purple),
  
  shortcut-card("Pro Tips & Workflow", (
    desc("Multi-Edit Tracks"), key("Shift + Select"),
    desc("Quick Browser"), key("Shift + F7"),
    desc("Duplicate & Edit"), key("Ctrl + D + Edit"),
    desc("Context Menu"), key("Right Click"),
    desc("Inspector Toggle"), key("I"),
    desc("Floating Window"), key("Shift + Drag"),
  ), color: accent-orange),
  
  rect(
    width: 100%,
    height: 100%,
    fill: none,
    stroke: none,
    radius: 0pt,
    inset: 15pt,
    [
      #align(center + horizon)[
        #text(size: 42pt, weight: "black", fill: white)[
          by DotName
        ]
        #v(10pt)
        #text(size: 18pt, fill: accent-blue, style: "italic")[
          dotname\@digitalspace.name
        ]
        #v(15pt)
        #text(size: 14pt, fill: rgb("#ffffff88"), style: "italic")[
          Bitwig Studio Shortcuts Reference
        ]
        #v(8pt)
        #text(size: 12pt, fill: rgb("#ffffff66"))[
          2025 Edition
        ]
      ]
    ]
  ),
)

