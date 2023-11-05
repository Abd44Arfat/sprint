part of 'widgets.dart';

class SocialMediaSignup extends StatelessWidget {
  const SocialMediaSignup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(ImageAssets.facebook),
        SizedBox(width: 16.w),
        SvgPicture.asset(ImageAssets.google),
      ],
    );
  }
}
