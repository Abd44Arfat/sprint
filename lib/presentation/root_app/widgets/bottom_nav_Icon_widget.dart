part of 'widgets.dart';

class BottomNavIconWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;
  const BottomNavIconWidget({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: isSelected
            ? AppColors.primaryColor
            : AppColors.unselectedBottomNavItemColor,
      ),
    );
  }
}
