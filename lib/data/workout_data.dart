import 'package:fitness/components/workout_card.dart';

class WorkoutData {
  //follow along workout
  static List<WorkoutCard> getFollowAlongWorkouts() {
    return [
      WorkoutCard(
        title: 'FOLLOW ALONG WORKOUT',
        duration: '15 MIN',
        type: 'FULL BODY',
        equipment: 'USING CHAIRS ONLY',
        proTag: 'PRO',
        imagePath: 'assets/images/follow_along_workout/full_bodyWorkout.jpg',
      ),
      WorkoutCard(
        title: 'FOLLOW ALONG WORKOUT',
        duration: '20 MIN',
        type: 'UPPER BODY',
        equipment: 'NO EQUIPMENT',
        proTag: 'PRO',
        imagePath: 'assets/images/follow_along_workout/upperBody.jpg',
      ),
      WorkoutCard(
        title: 'FOLLOW ALONG WORKOUT',
        duration: '30 MIN',
        type: 'CORE & ABS',
        equipment: 'BODYWEIGHT',
        proTag: 'PRO',
        imagePath: 'assets/images/follow_along_workout/coreWorkout.jpg',
      ),
    ];
  }
//youtube workout
  static List<WorkoutCard> getYouTubeWorkouts() {
    return [
      WorkoutCard(
        title: 'YOUTUBE WORKOUTS',
        duration: '15 MIN',
        type: 'FULL BODY',
        equipment: 'USING CHAIRS ONLY',
        proTag: 'FREE',
        isYouTube: true,
        imagePath: 'assets/images/youtube_workout/FullWorkout.jpg',
      ),
      WorkoutCard(
        title: 'YOUTUBE WORKOUTS',
        duration: '20 MIN',
        type: 'UPPER BODY',
        equipment: 'NO EQUIPMENT',
        proTag: 'FREE',
        isYouTube: true,
        imagePath: 'assets/images/youtube_workout/UPperbody.jpg',
      ),
      WorkoutCard(
        title: 'YOUTUBE WORKOUTS',
        duration: '10 MIN',
        type: 'ABS',
        equipment: 'BODYWEIGHT',
        proTag: 'FREE',
        isYouTube: true,
        imagePath: 'assets/images/youtube_workout/abs.jpg',
      ),
    ];
  }
// no equipment workout
  static List<WorkoutCard> getNoEquipmentWorkouts() {
    return [
      WorkoutCard(
        title: 'NO EQUIPMENT WORKOUT',
        duration: '25 MIN',
        type: 'FULL BODY',
        equipment: 'BODYWEIGHT',
        proTag: 'PRO',
        imagePath: 'assets/images/no_equipment/noequipment1.jpg',
      ),
      WorkoutCard(
        title: 'NO EQUIPMENT WORKOUT',
        duration: '15 MIN',
        type: 'HIIT',
        equipment: 'BODYWEIGHT',
        proTag: 'PRO',
        imagePath: 'assets/images/no_equipment/noequipment2.jpg',
      ),
      WorkoutCard(
        title: 'NO EQUIPMENT WORKOUT',
        duration: '20 MIN',
        type: 'CARDIO',
        equipment: 'BODYWEIGHT',
        proTag: 'PRO',
        imagePath: 'assets/images/no_equipment/noequipment3.jpg',
      ),
    ];
  }
} 