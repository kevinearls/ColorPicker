//
//  ColorPickerSlider.swift
//  ColorPicker
//
//  Created by Kevin Earls on 11/12/2023.
//

import SwiftUI

struct ColorPickerSlider: View {
  var color: Color
  @Binding var colorValue: Double

  var colorRange = 0.0...255.0

  var body: some View {
    Text(color.description.capitalized)
    HStack {
      Slider(value: $colorValue, in: colorRange)
        .tint(color)
      Text("\(Int(colorValue.rounded()))")
        .bold()
    }
  }
}

#Preview {
  ColorPickerSlider(color: .blue, colorValue: .constant(142.0))
}
