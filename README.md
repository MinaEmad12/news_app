# News Cloud

![News Cloud Banner](screenshots/banner.png)

A Flutter news application that fetches real-time headlines and categorized news articles using REST API integration with Dio, featuring a clean and responsive UI.

## Features
- **Top Headlines:** Displays the latest breaking news on the Home screen.
- **News Categories:** Browse articles filtered by category (Business, Entertainment, Sports, Technology, etc.).
- **Secure API Configuration:** Protects API keys using `flutter_dotenv` and environment variables.

## Tech Stack
- **Flutter & Dart**
- **Networking:** Dio (REST API)
- **Environment Security:** `flutter_dotenv`

## App Showcase

### Home Screen
![Home Screen](screenshots/home_screen.png)

### Category News
![Category News](screenshots/category_screen.png)

## Getting Started
1. Clone the repository.
2. Create a `.env` file in the project root based on `.env.example`.
3. Add your News API key inside `.env`:
   ```env
   API_KEY=your_api_key_here