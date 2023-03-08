import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:save_in_local_flutter/controller/save_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SaveController saveController = Get.put(SaveController());

    saveController.data.value =
        saveController.box.read("data") ?? "valor inical";

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          saveController.data.value = "este es un NUEVO valor guardo en local";
          saveController.box.write("data", saveController.data.value);
        },
      ),
      body: Center(
        child: Obx(
          () => Text(saveController.data.value),
        ),
      ),
    );
  }
}
