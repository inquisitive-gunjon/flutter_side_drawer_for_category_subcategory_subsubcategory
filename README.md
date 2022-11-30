# complex_drawer_for_category_subcategory_subsubcategory

![Screenshot 2022-11-30 at 9 34 45 AM](https://user-images.githubusercontent.com/118876490/204708337-348f59db-993e-4525-85e1-2178999dcb10.png)

# Flutter drawer showing
 Category 
 Sub Category
 Sub Sub Category

Using Expansion Tile widget  

## Requirement : 
A model class contains some static list of data
Flutter Drawer Widget
Flutter ExpansionTile Widget
Listview Builder 


## Step 1 :  
Create two dart file in your lib folder
	1.model.dart
	2.category_screen.dart

## Step 2 :  
In your model.dart file create a model class and make different list of data for
category
sub category
sub sub category

## Step 3 :  
In your category_screen dart file design your ui 
	1.Create a class extend with stateful widget
	2.In your scaffold take an appbar
	3,take a drawer
	4.drawer child property contains listview builder which return expansion tile
	5.Expansion tile has a lot of property..here we will use title and children   property in our app. 

