# PersistenceAI

PersistenceAI is a personal AI companion designed to assist with school, work, and life tasks. It combines short-term “flash” memory with long-term learning, powered by a fine-tuned large language model (LLM). The app is built in **SwiftUI** for iOS/iPadOS and integrates seamlessly with a GitHub-trained AI model.

---

## Features

- **Conversational AI:** Ask questions, get explanations, and chat naturally.
- **Task Assistance:** Generate emails, code snippets, summaries, and more.
- **Memory Management:** Short-term context (flash) plus long-term storage for user preferences.
- **Customizable AI:** Fine-tune your own LLM using Python and PyTorch.
- **iOS Features:** Smooth SwiftUI interface with message bubbles, timestamps, and profile support.
- **Optional Expansion:** Vision/image support, notifications, and reminders.

---

## Project Structure
PersistenceAI/
├─ .gitignore
├─ LICENSE
├─ README.md
├─ SwiftApp/ # iOS SwiftUI app
├─ PythonModel/ # LLM training scripts and datasets

---

## Installation

### Swift App
1. Clone the repository:
```bash
git clone https://github.com/yourusername/PersistenceAI.git
Open SwiftApp/PersistenceAI.xcodeproj in Xcode 18+.
Build and run on iPhone/iPad.
Python Model (Optional)
Navigate to PythonModel/.
Install dependencies:
pip install torch transformers datasets accelerate
Train or fine-tune your model (example script included in train_model.py).
Usage
On-device: Use Core ML model (PersistenceAI.mlmodel) for offline inference.
API: Alternatively, run your GitHub-trained model as a REST API and connect via Swift.
License
This project is licensed under the MIT License. See the LICENSE file for details.
Contact
Created by PersistenceAI Team. For questions, contributions, or issues, please open a GitHub issue.

---

You can now **save this as `README.md`** in your repo root—it’s fully ready to go.  

If you want, I can **:contentReference[oaicite:0]{index=0}** next.
