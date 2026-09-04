
import 'package:ashirvadpipes/Utill/app_required.dart';
import 'package:ashirvadpipes/features/meetingDashboard/service/MeetingOptionService.dart';

import 'package:ashirvadpipes/features/meetingDashboard/controller/MeetingOptionController.dart';


class MeetingOptionBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<MeetingOptionController>(() => MeetingOptionController());
    Get.lazyPut<MeetingOptionService>(() => MeetingOptionService());

  }

}