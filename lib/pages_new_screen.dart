import 'package:flutter/material.dart';

class demostrate_page_view extends StatefulWidget {
  const demostrate_page_view({super.key});

  @override
  State<demostrate_page_view> createState() => _demonstrate_page_view();
}

class _demonstrate_page_view extends State<demostrate_page_view> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // return Stack( // added stack here.
    //   children: [
    //     Positioned.fill(
    //       child: Image.asset(
    //         'assets/dogy.png',
    //         fit: BoxFit.cover,
    //       ),
    //     ),
        return Scaffold(
          backgroundColor: Colors.transparent, // add transparent background to scaffold.
          body: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              buildPage(
                title: 'Hey! Welcome',
                description: 'While you sit and stay-we\'ll go out and play',
              ),
              buildPage(
                title: 'Explore',
                description: 'This is the second page of onboarding.',
              ),
              buildPage(
                title: 'Get Started',
                description: 'This is the third page of onboarding.',
              ),
            ],
          ),
          bottomSheet: _currentPage == 2
              ? TextButton(
            onPressed: () {
            },
            child: const Text('Get Started'),
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  _pageController.animateToPage(
                    _currentPage - 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: const Text('Previous'),
              ),
              TextButton(
                onPressed: () {
                  _pageController.animateToPage(
                    _currentPage + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: const Text('Next'),
              ),
            ],
          ),
        );
      // ],
    // );
  }

  Widget buildPage({
    required String title,
    required String description,
  }) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Colors.white,
                  // width: 4,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              height: 200,
              // color: Colors.white70,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Container(
                    child: Image.asset(
                        'assets/dog.png',
                      height: 180,
                    ),

                  ),
                  // const SizedBox(height: 5),
                  Text(
                    textAlign: TextAlign.center,
                    title,
                    style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Fredo',
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    width: 300,
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}