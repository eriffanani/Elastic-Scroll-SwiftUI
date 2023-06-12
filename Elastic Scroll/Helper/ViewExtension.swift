//
//  ViewExtension.swift
//  Elastic Scroll
//
//  Created by Erif Fanani on 05/06/23.
//

import SwiftUI

extension View {
    // Enable elastic scroll
    @ViewBuilder
    func elasticScroll(scrollRect: CGRect, screenSize: CGSize) -> some View {
        self.modifier(ElasticScrollHelper(scrollRect: scrollRect, screenSize: screenSize))
    }
}

fileprivate struct ElasticScrollHelper: ViewModifier {
    var scrollRect: CGRect
    var screenSize: CGSize
    @State private var viewRect: CGRect = .zero
    func body(content: Content) -> some View {
        let progress = scrollRect.minY / scrollRect.maxY
        let elasticMultiplier = 1.5
        let elasticOffset = (progress * viewRect.minY) * elasticMultiplier
        let bottomProgress = max(1 - (scrollRect.maxY / screenSize.height), 0)
        let bottomElasticOffset = (viewRect.maxY * bottomProgress) * (elasticMultiplier * 0.5)
        content
            .offset(y: scrollRect.minY > 0 ? elasticOffset : 0)
            .offset(y: scrollRect.minY > 0 ? -(progress * scrollRect.minY) : 0)
            .offset(y: scrollRect.maxY < screenSize.height ? bottomElasticOffset : 0)
            .offsetExtractor(coordinateSpace: "SCROLLVIEW") {
                viewRect = $0
            }
    }
}
