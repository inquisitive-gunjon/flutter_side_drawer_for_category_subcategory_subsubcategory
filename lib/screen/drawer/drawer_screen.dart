import 'package:complex_drawer_for_category_subcategory_subsubcategory/model/drawer_data_model.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        //appbar
        appBar: AppBar(
          title: const Text('appsShops'),
        ),

        //drawer
        drawer: Drawer(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Special Offers',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 25,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors
                            .orange, //                   <--- border color
                        width: 1.0,
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      '25',
                      style: TextStyle(fontSize: 16, letterSpacing: 1),
                    )),
                  )
                ],
              ),
            ),

            //for main category
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: DrawerDataModel.categoryList.length,
                shrinkWrap: true,
                itemBuilder: (context, categoryIndex) {

                  //for sub Category
                  List<SubCategory> subCategoryList = DrawerDataModel
                      .subCategoryList
                      .where((element) =>
                          DrawerDataModel.categoryList[categoryIndex].id ==
                          element.categoryId)
                      .toList();

                  //for sub sub Category
                  List<SubSubCategory> subSubCategoryList = DrawerDataModel
                      .subSubCategoryList
                      .where((element) =>
                          DrawerDataModel
                              .subSubCategoryList[categoryIndex].id ==
                          element.subCategoryId)
                      .toList();


                  //for main category
                  return Column(
                    children: [
                      ExpansionTile(
                        leading: const Icon(Icons.shopping_bag),
                        title: Text(
                            "${DrawerDataModel.categoryList[categoryIndex].title}"
                        ),

                        //for sub category

                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                              itemCount: subCategoryList.length,
                              itemBuilder: (context,sIndex){
                            return
                              ExpansionTile(
                                leading: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 90,
                                    width: 1,
                                    color: Colors.orange,
                                  ),
                                ),
                              title: Text(
                                  "${DrawerDataModel.subCategoryList[sIndex].title}"
                              ),

                                //for sub sub category

                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                      itemCount: subSubCategoryList.length,
                                      itemBuilder: (context,ssIndex){
                                    return Card(
                                      elevation: 0.10,
                                      child: Container(
                                        color: Colors.white,
                                        height: 30,
                                        width: width,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                "${DrawerDataModel.subSubCategoryList[ssIndex].title}"
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                                ],
                            );

                          })
                        ],

                      ),

                    ],
                  );

                }),
          ],
        )),
      ),
    );
  }
}


