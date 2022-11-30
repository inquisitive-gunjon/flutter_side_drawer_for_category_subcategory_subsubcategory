# complex_drawer_for_category_subcategory_subsubcategory

![Screenshot 2022-11-30 at 9 34 45 AM](https://user-images.githubusercontent.com/118876490/204708337-348f59db-993e-4525-85e1-2178999dcb10.png)

# Flutter drawer showing
 Category<br> 
 Sub Category<br> 
 Sub Sub Category<br> 

Using Expansion Tile widget  <br> 

## Requirement : <br> 
A model class contains some static list of data<br> 
Flutter Drawer Widget<br> 
Flutter ExpansionTile Widget<br> 
Listview Builder <br> 


## Step 1 :  <br> 
Create two dart file in your lib folder<br> 
	1.model.dart<br> 
	2.category_screen.dart<br> 

## Step 2 :  <br> 
In your model.dart file create a model class and make different list of data for<br> 
category<br> 
sub category<br> 
sub sub category<br> 

## Step 3 :  <br> 
In your category_screen dart file design your ui <br> 
	1.Create a class extend with stateful widget<br> 
	2.In your scaffold take an appbar<br> 
	3,take a drawer<br> 
	4.drawer child property contains listview builder which return expansion tile<br> 
	5.Expansion tile has a lot of property..here we will use title and children   property in our app. <br> 

