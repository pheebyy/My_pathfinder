import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // Import the WelcomeScreen widget

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Map<String, String>> _pages = [
    {
      'title': 'Personalised guidance',
      'description': 'Welcome to MyApp! Get started by...',
      'imagePath': 'assets/images/officcy.jpg',
    },
    {
      'title': 'Networking community',
      'description': 'Explore the amazing features of MyApp...',
      'imagePath': 'assets/images/Social Network.jpg',
    },
    {
      'title': 'Connect with mentor',
      'description': 'Ready to get started? ...',
      'imagePath': 'assets/images/connect.jpg',
    },
    {
      'title': 'Chatbot for tutor',
      'description': 'Ready to get started? Let\'s dive in!',
      'imagePath': 'assets/images/chatbot.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                title: _pages[index]['title']!,
                description: _pages[index]['description']!,
                imagePath: _pages[index]['imagePath']!,
              );
            },
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSkipButton(),
                _buildPageIndicator(),
                _buildNextButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkipButton() {
    return TextButton(
      onPressed: () {
        // Handle skipping the onboarding screens
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const WelcomeScreen()),
        );
      },
      child: const Text(
        'Skip',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: () {
        if (_currentPage < _pages.length - 1) {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        } else {
          // Navigate to the WelcomeScreen when reaching the last page
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const WelcomeScreen()),
          );
        }
      },
      child: Text(
        _currentPage < _pages.length - 1 ? 'Next' : 'Start',
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      children: _pages.map((page) {
        int pageIndex = _pages.indexOf(page);
        return Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: pageIndex == _currentPage
                ? const Color.fromARGB(255, 102, 15, 208)
                : Colors.grey,
          ),
        );
      }).toList(),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 20.0),
          Text(
            title,
            style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
