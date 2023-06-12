//
//  Home.swift
//  Elastic Scroll
//
//  Created by Erif Fanani on 05/06/23.
//

import SwiftUI

struct Home: View {
    
    @State private var scrollRect: CGRect = .zero
    
    var body: some View {
        
        GeometryReader {
            
            let size = $0.size
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(sampleMessage) {
                        MessageRow($0)
                            .elasticScroll(scrollRect: scrollRect, screenSize: size)
                    }
                }
                .offsetExtractor(coordinateSpace: "SCROLLVIEW") {
                    scrollRect = $0
                }
                
            }
            .coordinateSpace(name: "SCROLLVIEW")
            
        }
        
    }
    
    @ViewBuilder
    func MessageRow(_ message: Message) -> some View {
        
        VStack(spacing: 0) {
            Button {
                
            } label: {
                HStack(spacing: 15) {
                    Image(message.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                        .overlay(alignment: .bottomTrailing) {
                            Circle()
                                .fill(.white)
                                .frame(width: 16, height: 16)
                                .overlay(
                                    Circle()
                                        .fill(.green)
                                        .frame(width: 12, height: 12)
                                )
                                .opacity(message.online ? 1 : 0)
                        }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        
                        Text(message.name)
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                        Text(message.message)
                            .font(.caption)
                            .foregroundColor(message.read ?.gray : .black)
                            .lineLimit(1)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .overlay(alignment: .topTrailing) {
                    Text("\(message.notification)")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                        .background(
                            Circle()
                                .fill(.red)
                        )
                        .padding(.trailing, 8)
                        .padding(.top, 15)
                        .opacity(message.notification > 0 ? 1 : 0)
                }
            }
            .buttonStyle(ButtonTap())
            
            Divider()
                .padding(.leading, 80)
            
        }
        
    }
    
    private struct ButtonTap: ButtonStyle {
        
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .contentShape(Rectangle())
                .background(
                    configuration.isPressed ? .gray.opacity(0.4) : .clear
                )
        }
        
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
