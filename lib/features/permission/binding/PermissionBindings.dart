import 'package:ashirvadpipes/features/meeting/controller/Meeting_DashboardController.dart';
import 'package:ashirvadpipes/features/meeting/services/Meeting_services.dart';
import 'package:ashirvadpipes/features/permission/controller/PermissionController.dart';
import 'package:get/get.dart';

class PermissionBindings extends Bindings {


  @override
  void dependencies() {
    Get.lazyPut<PermissionController>(() => PermissionController());
    // Get.lazyPut<MeetingServices>(
    //       () => MeetingServices(),
    // );
  }


}