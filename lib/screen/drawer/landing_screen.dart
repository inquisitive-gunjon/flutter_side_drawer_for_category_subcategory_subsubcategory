import 'package:complex_drawer_for_category_subcategory_subsubcategory/model/category_data.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/model/drawer_data_model.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/model/product_data.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/provider/category_provider.dart';
import 'package:complex_drawer_for_category_subcategory_subsubcategory/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<CategoryProvider>(context, listen: false).getCategoryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context, listen: false);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        //appbar
        appBar: AppBar(
          title: const Text('appsShops'),
        ),

        //drawer
        //
        //   ListView.builder(
        //       physics: const NeverScrollableScrollPhysics(),
        //       itemCount: snapshot.hasData ? snapshot.data?.length : 0,
        //       shrinkWrap: true,
        //       itemBuilder: (context, index) {
        //         List<Childes>? subCategory;
        //         if(snapshot.data![index].childes!.isNotEmpty){
        //           subCategory = snapshot.data![index].childes;
        //         }
        //         return ExpansionTile(
        //           title: Text("${snapshot.data![index].name}"),
        //           children: [
        //             // Text("${snapshot.data![index].name}"),
        //             ListView.builder(
        //                 shrinkWrap: true,
        //                 itemCount: subCategory != null ? subCategory?.length : 0,
        //                 itemBuilder: (context,sunCategoryIndex){
        //                   return ExpansionTile(
        //                     title: Text("${subCategory![sunCategoryIndex]?.name}"),
        //                   );
        //                 })
        //           ],
        //         );
        //       }),
        //   Padding(
        //     padding: EdgeInsets.only(
        //         left: height * 0.015, top: height * 0.20),
        //     child: ListTileSwitch(
        //       value: themeChange.darkTheme,
        //       leading: const Icon(
        //         Icons.shield_moon,
        //         color: Colors.grey,
        //       ),
        //       onChanged: (value) {
        //         setState(() {
        //           themeChange.darkTheme = value;
        //         });
        //       },
        //       visualDensity: VisualDensity.comfortable,
        //       switchType: SwitchType.cupertino,
        //       switchActiveColor: Colors.indigo,
        //       title: const Text('Dark theme'),
        //     ),
        //   )
        drawer: Drawer(child: Consumer<CategoryProvider>(
          builder: (context, categoryProvider, c) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: categoryProvider.categoryList.isNotEmpty
                          ? categoryProvider.categoryList.length
                          : 0,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {

                        List<Childes>? subCategory;
                        if (categoryProvider
                            .categoryList[index].childes!.isNotEmpty) {
                          subCategory =
                              categoryProvider.categoryList[index].childes;
                        }


                        return ExpansionTile(
                          title: Text(
                              "${categoryProvider.categoryList[index].name}"),
                          children: [
                            // Text("${snapshot.data![index].name}"),
                            ListView.builder(
                                shrinkWrap: true,
                                itemCount:
                                    subCategory != null ? subCategory.length : 0,
                                itemBuilder: (context, sunCategoryIndex) {
                                  return ExpansionTile(
                                    title: Text(
                                        "${subCategory![sunCategoryIndex].name}"),
                                  );
                                })
                          ],
                        );
                      }),
                  Padding(
                    padding:
                        EdgeInsets.only(left: height * 0.015, top: height * 0.20),
                    child: ListTileSwitch(
                      value: themeChange.darkTheme,
                      leading: const Icon(
                        Icons.shield_moon,
                        color: Colors.grey,
                      ),
                      onChanged: (value) {
                        setState(() {
                          themeChange.darkTheme = value;
                        });
                      },
                      visualDensity: VisualDensity.comfortable,
                      switchType: SwitchType.cupertino,
                      switchActiveColor: Colors.indigo,
                      title: const Text('Dark theme'),
                    ),
                  )
                ],
              ),
            );
          },
        )),

        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 0.72,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: productList.length,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, //                   <--- border color
                      width: 0.8,
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "${productList[index].image}",
                        height: 112,
                        width: 100,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${productList[index].name}",
                        style: TextStyle(letterSpacing: 0.5),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${productList[index].quantity}",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "\$ ${productList[index].price} ",
                        style: TextStyle(color: Colors.green),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Icon(
                                  Icons.shopping_bag,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Add to Bag",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
