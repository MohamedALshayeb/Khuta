import 'package:flutter/material.dart';
import 'package:khuta_app/core/utils/assest_data.dart';
import 'package:khuta_app/features/on_boarding/views/onboarding_view.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingView(
            img: AssetsData.welcome1Img,
            title: 'مرحبًا بك في تطبيقنا',
            desc: 'أداة سهلة ودقيقة للكشف المبكر عن اضطراب خطى',
          ),
          OnboardingView(
            img: AssetsData.welcome2Img,
            title: 'تسجيل الدخول الآمن',
            desc: 'أمان حسابك هو أولويتنا',
          ),
          OnboardingView(
            img: AssetsData.welcome3Img,
            title: 'تقييم مبني على أسس علمية',
            desc: 'مقياس كونرز للتقييم يساعدك في اكتشاف الأعراض مبكرًا',
          ),
        ],
      ),
    );
  }
}
