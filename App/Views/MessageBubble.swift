import SwiftUI

struct MessageBubble: View {
    let message: ChatMessage
    
    var body: some View {
        HStack {
            if message.isUser { Spacer() }
            
            Text(message.content)
                .padding()
                .background(message.isUser ? Color.blue : Color.gray.opacity(0.3))
                .foregroundColor(message.isUser ? Color.white : Color.black)
                .cornerRadius(12)
            
            if !message.isUser { Spacer() }
        }
        .padding(.horizontal)
        .padding(.vertical, 2)
    }
}
