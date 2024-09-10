import 'package:carnagef_charlie/config/theme/app_themes.dart';
import 'package:carnagef_charlie/main/data/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTile extends StatelessWidget {

  final TodoModel todoItem;
  final Widget deleteWidgetState;
  final dynamic controller;

  const CustomTile({
    super.key,
    required this.todoItem,
    required this.deleteWidgetState,
    this.controller
    // required this.buttonCallback
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 0),
          padding: const EdgeInsets.all(10),
          // height: 160,
          decoration: const BoxDecoration(
            color: AppThemes.customGrey,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            // border: Border(
            //   top: BorderSide(
            //       width: 1,
            //       color: AppThemes.cerise
            //   ),
            //   bottom: BorderSide(
            //       width: 1,
            //       color: AppThemes.cerise
            //   ),
            //   left: BorderSide(
            //       width: 1,
            //       color: AppThemes.cerise
            //   ),
            //   right: BorderSide(
            //       width: 1,
            //       color: AppThemes.cerise
            //   ),
            // )
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Obx(() => Checkbox(
                            side: const BorderSide(
                              color: AppThemes.cerise,
                              width: 2,
                            ),
                            activeColor: AppThemes.cerise,
                            value: todoItem.isTaskFinished?.value,
                            onChanged: (value) {
                              if (todoItem.isTaskFinished?.value == false) {
                                todoItem.isTaskFinished?.value = true;
                              } else {
                                todoItem.isTaskFinished?.value = false;
                              }
                            }
                        )),

                        Obx(() => Expanded(
                          child: Text(
                            todoItem.todoTitle.toString(),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize:18,
                                color: AppThemes.cerise,
                              decoration: todoItem.isTaskFinished?.value == true ?
                              TextDecoration.lineThrough : TextDecoration.none
                            ),
                          ),
                        )),
                      ],
                    ),

                    Container(
                        margin: const EdgeInsets.only(left: 14, top: 4),
                        child: Text(
                          todoItem.todoDueDate.toString(),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                          style: const TextStyle(fontSize: 10),
                        )
                    ),


                    Obx(() => Container(
                      margin: const EdgeInsets.only(left: 14, top: 4, right: 14),
                      child: Text(
                          todoItem.todoDescription.toString().trim(),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                        style: TextStyle(
                          fontSize: 10,
                          decoration: todoItem.isTaskFinished?.value == true ?
                          TextDecoration.lineThrough : TextDecoration.none
                        ),
                      ),
                    )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      deleteWidgetState
                    ])
                  ],
                ),
              )
            ],
          )
        ),
      ],
    );
  }
}
