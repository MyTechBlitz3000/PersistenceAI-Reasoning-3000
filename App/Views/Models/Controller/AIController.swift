import Foundation

class AIController {
    static let shared = AIController()
    
    private init() {}
    
    // Replace with your actual API endpoint
    private let apiURL = URL(string: "http://localhost:3000")!
    
    func getResponse(for input: String, completion: @escaping (String) -> Void) {
        var request = URLRequest(url: apiURL)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let payload: [String: Any] = [
            "prompt": input
        ]
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: payload, options: [])
        } catch {
            completion("Error encoding request: \(error.localizedDescription)")
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion("API Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                completion("No data received from API")
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                   let text = json["response"] as? String {
                    completion(text)
                } else {
                    completion("Invalid response format")
                }
            } catch {
                completion("JSON parsing error: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
}
