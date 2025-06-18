📱 AI Psychology Balance
AI Psychology Balance is a mobile Flutter application that helps users assess their emotional state and receive mental health support through AI-based interaction with a virtual psychologist.

✨ Features
🧠 Take a quick mental balance quiz

📊 Get immediate results with interpretation

🤖 Chat with a professional AI psychologist

👤 Secure login & registration via Firebase

💎 Premium access for unlimited AI consultations

📸 Screenshots
Add screenshots here for Auth Screen, Quiz Screen, Chat Screen, etc.

🔧 Technologies Used
Flutter (cross-platform mobile framework)

Firebase Authentication (user login & registration)

Cloud Firestore (user & subscription data)

OpenAI API (chat with GPT-3.5 as psychologist)

HTTP package for API communication

🚀 Getting Started

1. Clone the repo
bash
Copy
Edit
git clone https://github.com/yourusername/ai-psychology-balance.git
cd ai-psychology-balance

2. Install dependencies
bash
Copy
Edit
flutter pub get

3. Firebase setup
Add your google-services.json to /android/app/

Make sure Firebase is initialized in firebase_options.dart

4. Run the app
bash
Copy
Edit
flutter run

🔐 Environment
Make sure to replace the placeholder API key in chat_screen.dart:

dart
Copy
Edit
final String _apiKey = 'sk-...'; // Replace with your OpenAI API Key

💡 Premium Access
To test premium functionality, you can manually set the isPremium field in Firestore for a test user.

📦 Build APK
bash
Copy
Edit
flutter build apk

📩 Contact
For support or inquiries, contact 0xl10nz@disroot.org
