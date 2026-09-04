import 'package:ashirvadpipes/features/meeting/controller/Meeting_DashboardController.dart';
import 'package:ashirvadpipes/features/meeting/services/Meeting_services.dart';
import 'package:get/get.dart';

class MeetingBindings extends Bindings {


  @override
  void dependencies() {
    Get.lazyPut<MeetingDashboardController>(() => MeetingDashboardController());
    Get.lazyPut<MeetingServices>(
          () => MeetingServices(),
    );
  }


}