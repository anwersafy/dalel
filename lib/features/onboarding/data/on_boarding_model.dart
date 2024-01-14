import '../../../core/utilis/app_assets.dart';

class OnBoardingModel {
  final String title;
  final String description;
  final String image;

  OnBoardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}
List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Explore The History With Us',
    description: 'Using our app’s history libraries-you can find many historical periods ',
    image: AppAssets.onBoarding1,
  ),
  OnBoardingModel(
    title: 'From every place on earth',
    description: 'A big variety of ancient places from all over the world',
    image: AppAssets.onBoarding2,
  ),
  OnBoardingModel(
    title: 'Using modern AI technology for better user experience',
    description: 'AI provide recommendations and helpsyou to continue the search journey',
    image: AppAssets.onBoarding3,
  ),
];