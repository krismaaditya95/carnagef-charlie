import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:carnagef_charlie/main/presentation/todo_list_screen/getx/todolist_screen_controller.dart';
import 'package:carnagef_charlie/main/presentation/widgets/bordered_button.dart';
import 'package:carnagef_charlie/main/presentation/widgets/custom_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoListScreenPage extends GetView<TodolistScreenController> {

  static const String routeName = '/todolist-screen-page';
  const TodoListScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        decoration: const BoxDecoration(
            // color: AppThemes.cerise
            color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
                margin: const EdgeInsets.only(top: 40, bottom: 6),
                child: const Text("Hi, Pengguna Aplikasi",
                    style: TextStyle(color: AppThemes.cerise, fontSize: 18)
                )
            ),
            Container(
                margin: const EdgeInsets.only(top: 2, bottom: 10),
                child: const Text("This is Your To-DOs for today...",
                    style: TextStyle(color: Colors.black87, fontSize: 14))
            ),

            Container(
              margin: const EdgeInsets.only(top: 2, bottom: 10),
              child: TextField(
                controller: controller.searchController ,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                  hintText: "Cari to-do kamu di sini...",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                style: const TextStyle(
                  fontSize: 12
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                // itemCount: controller.moviesResponseEntity.results!.length,
                  itemCount: controller.todosDummyData.length,
                  itemBuilder: (context, index){
                    return CustomTile(
                      todoItem: controller.todosDummyData[index],
                      controller: controller,
                      deleteWidgetState: BorderedButton(
                          icon: Icons.delete_forever_sharp,
                          text: "Hapus",
                          textColor: AppThemes.cerise,
                          borderColor: AppThemes.cerise,
                          callback: () async {

                          }
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                width: 2.4,
                color: AppThemes.cerise
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        onPressed: (){

        },
        tooltip: 'Buat Task baru',
        child: const Icon(
          Icons.edit_note_sharp,
          color: AppThemes.cerise,
        ),
      ),
    );
  }
}
