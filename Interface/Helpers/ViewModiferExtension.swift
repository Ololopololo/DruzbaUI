//
//  ViewModiferExtension.swift
//  Interface
//
//  Created by Владислав Положай on 27.07.2021.
//

import Foundation
import SwiftUI
import UIKit

struct ListSeparatorStyle: ViewModifier {
  let style: UITableViewCell.SeparatorStyle
  func body(content: Content) -> some View {
    content
      .onAppear() {
        UITableView.appearance().separatorStyle = self.style
      }
  }
}

struct HideRowSeparatorModifier: ViewModifier {
  static let defaultListRowHeight: CGFloat = 44

  var insets: EdgeInsets
  var background: Color

  init(insets: EdgeInsets, background: Color) {
    self.insets = insets
    var alpha: CGFloat = 0
    UIColor(background).getWhite(nil, alpha: &alpha)
    assert(alpha == 1, "Setting background to a non-opaque color will result in separators remaining visible.")
    self.background = background
  }


  func body(content: Content) -> some View {
    content
      .padding(insets)
      .frame(
        minWidth: 0, maxWidth: .infinity,
        minHeight: Self.defaultListRowHeight,
        alignment: .leading
      )
      .listRowInsets(EdgeInsets())
      .background(background)
  }
}

extension EdgeInsets {
  static let defaultListRowInsets = Self(top: 0, leading: 16, bottom: 0, trailing: 16)
}

