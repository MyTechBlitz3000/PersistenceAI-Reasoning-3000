import SwiftUI

struct ChatView: View {
    @State private var messages: [ChatMessage] = []
    @State private var inputText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(messages) { message in
                    MessageBubble(message: message)
                }
            }
            HStack {
                TextField("Type a message...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Send") {
                    sendMessage()
                }
            }
            .padding()
        }
    }
    
    func sendMessage() {
        guard !inputText.isEmpty else { return }
        
        let userMessage = ChatMessage(id: UUID(), content: inputText, isUser: true, timestamp: Date())
        messages.append(userMessage)
        
        // Call AI controller to get response
        AIController.shared.getResponse(for: inputText) { response in
            let aiMessage = ChatMessage(id: UUID(), content: response, isUser: false, timestamp: Date())
            messages.append(aiMessage)
        }
        
        inputText = ""
    }
}
