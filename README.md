# NewsCloud

A modern news application built with Flutter that allows users to browse the latest news articles across various categories.

## Features

- View breaking news headlines from reliable sources
- Browse news by categories (general, business, sports, technology, etc.)
- Clean and modern UI with a responsive design
- Article preview with image and description
- Smooth scrolling and navigation experience

## Screenshots

[Add screenshots of your app here]

## Technologies Used

- Flutter SDK
- Dio for HTTP requests
- NewsAPI.org for news data
- Extended Image for advanced image handling

## Getting Started

### Prerequisites

- Flutter (v3.7.2 or higher)
- Dart SDK
- An API key from [NewsAPI.org](https://newsapi.org/)

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/newscloud.git
   ```

2. Navigate to the project directory:
   ```
   cd newscloud
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Replace the API key in `lib/services/get_news.dart` with your own NewsAPI key.

5. Run the app:
   ```
   flutter run
   ```

## Project Structure

- `lib/models` - Data models for the application
- `lib/services` - API communication and data fetching
- `lib/views` - Screen layouts and navigation
- `lib/widget` - Reusable UI components

## Future Enhancements

- Article bookmarking functionality
- Dark/Light theme toggle
- Search functionality
- Detailed article view
- Offline reading capability

## License

[Your License Here]

## Acknowledgements

- [NewsAPI](https://newsapi.org/) for providing the news data
- Flutter team for the amazing framework
