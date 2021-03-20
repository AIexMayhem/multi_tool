import 'package:magic_ball/story.dart';

class StoryLogic {
  List<Story> stories = [
    Story(
        title: "Python топ?",
        variantA: "Да №1",
        variantB: "Да №2",
        nextIndexVarA: 2,
        nextIndexVarB: 3),
    Story(
        title: "Первый выбор",
        variantA: "К 4",
        variantB: "К 5",
        nextIndexVarA: 4,
        nextIndexVarB: 5),
    Story(
        title: "Второй выбор",
        variantA: "К 1",
        variantB: "К 3",
        nextIndexVarA: 1,
        nextIndexVarB: 3),
    Story(
        title: "Третий выбор",
        variantA: "К 5",
        variantB: "К 1",
        nextIndexVarA: 5,
        nextIndexVarB: 1),
    Story(
        title: "Четвертый выбор",
        variantA: "К 1",
        variantB: "К 5",
        nextIndexVarA: 1,
        nextIndexVarB: 5),
    Story(
        title: "Что делать дальше?",
        variantA: "Вернуться\n в начало",
        variantB: "Вернуться\n в меню",
        nextIndexVarA: 0,
        nextIndexVarB: 6),
  ];

  int storyNumber = 0;
  String getStoryTitle() {
    return stories[storyNumber].title;
  }

  String getStoryVariantA() {
    return stories[storyNumber].variantA;
  }

  String getStoryVariantB() {
    return stories[storyNumber].variantB;
  }

  void nextStory(int variantOfChosenAnswer) {
    if (variantOfChosenAnswer == 1 &&
        stories[storyNumber].nextIndexVarA < stories.length) {
      storyNumber = stories[storyNumber].nextIndexVarA;
    } else if (variantOfChosenAnswer == 2 &&
        stories[storyNumber].nextIndexVarB < stories.length) {
      storyNumber = stories[storyNumber].nextIndexVarB;
    }
  }
}
