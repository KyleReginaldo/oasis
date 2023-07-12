import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:oasis/core/constants/constants.dart';
import 'package:oasis/presentation/widgets/custom.text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            'Welcome to Oasis: Your Ultimate Destination for Entertainment',
            size: 16.sp,
          ).animate().fadeIn(),
          SizedBox(height: 1.h),
          CustomText(
            'At Oasis, we bring the world of entertainment right to your fingertips. Immerse yourself in an incredible streaming experience that rivals the likes of Netflix, as we proudly present our portfolio website inspired by the popular streaming giant.',
            size: 12.sp,
            color: Colors.grey,
          ).animate().fadeIn(),
          CustomText(
            'Discover a vast collection of movies, TV shows, documentaries, and more, carefully curated to cater to every taste and interest. With a user-friendly interface and seamless navigation, Oasis offers an intuitive platform for you to explore and indulge in the world of entertainment.',
            size: 12.sp,
            color: Colors.grey,
          ).animate().fadeIn(),
          SizedBox(height: 2.h),
          CustomText(
            'Key Features:',
            size: 13.sp,
          ).animate().fadeIn(),
          CustomText(
            'Extensive Content Library: Dive into a diverse selection of movies and TV shows across various genres, ensuring there\'s something for everyone. From action-packed blockbusters to captivating dramas, side-splitting comedies to thought-provoking documentaries, Oasis has it all.\n\nPersonalized Recommendations: Our advanced recommendation engine takes into account your viewing habits, preferences, and ratings to suggest content tailored specifically to your taste. Sit back and let Oasis be your virtual entertainment guide, helping you discover hidden gems you might have otherwise missed.\n\nSeamless User Experience: Oasis is designed to provide a smooth and enjoyable browsing experience. The sleek and modern interface makes it easy to search for specific titles, explore different categories, and navigate through your personalized watchlist effortlessly.\n\nMultiple Device Accessibility: Whether you prefer streaming on your computer, smartphone, or tablet, Oasis is accessible across multiple devices. Enjoy uninterrupted entertainment wherever you go, without compromising on quality or convenience.\n\nSocial Integration: Connect with friends, share your favorite movies and shows, and engage in discussions within the Oasis community. Stay up to date with the latest trends and get recommendations from like-minded entertainment enthusiasts.\n\nHigh-Quality Streaming: Oasis ensures an exceptional streaming experience with high-definition video playback and crystal-clear audio. Immerse yourself in stunning visuals and immerse yourself in the captivating narratives brought to life on your screen.\n\nOffline Viewing: Planning a trip or commuting in areas with limited internet access? No problem. Oasis allows you to download your favorite content to enjoy offline, ensuring you never miss a moment of entertainment, even on the go.',
            size: 11.sp,
            color: Colors.grey,
          ).animate().fadeIn(),
          const Divider(
            color: PRIMARY_COLOR,
          ),
          CustomText(
            'Oasis brings the magic of streaming right to your doorstep, offering a portfolio website that replicates the immersive experience of Netflix. Prepare to lose yourself in a world of captivating stories, engaging characters, and endless entertainment possibilities. Join us on Oasis and embark on an unforgettable journey through the realm of movies and TV shows. Start exploring today!',
            size: 12.sp,
            color: Colors.grey.shade300,
          ).animate().fadeIn(),
        ],
      ),
    );
  }
}
