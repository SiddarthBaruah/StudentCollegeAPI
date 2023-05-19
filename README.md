# Insti App
This app is created using flutter and it shows the names of student and thier respective college.

# Routes
Actually all the screens in the app is reached by using different Routes.\
The Loading Screen : '/'\
The Home Screen: '/Home'\
The Sortting Screen: '/Sort'\
These sceens are connected to loading.dart, Home.dart and Sort.dart respectively.
And by default firstle the loading screen will be shown. Lets see how it looks.

# Loading Screen 
Firstly, a loading screen will appear where it will first collect all the required data from the API. The loading screen should look like this:\
<img width="198" alt="image" src="https://github.com/SiddarthBaruah/StudentCollegeAPI/assets/95840068/ae4437f1-ea55-4f6a-bb8e-4538bc9ccd27">

After collecting all the date, it will send the data to the route '/Home'

# Home Screen
The Home screen should look something like this. \
<img width="198" alt="image" src="https://github.com/SiddarthBaruah/StudentCollegeAPI/assets/95840068/59468696-6f55-49d7-9965-7d027776dd37">\
The Home screen is made of **Scaffold widget**, and has a **SingleChildScrollView** widght as its child.\
The SingleSchildScrollView again has **Column** as a child and children of Column has a **function that returns list of StudentCard**.\
The StudentCard widget is defined in **StudentCard.dart**.\
<img width="169" alt="image" src="https://github.com/SiddarthBaruah/StudentCollegeAPI/assets/95840068/fe1dabe3-34b4-4a0f-b6d6-697124ac79d3">\
Each Card is divided in row and column and formated for proper display of data.

The Home screen is built using a stateful widget and it has all the functions of sort, which was actually expected to be in the sort.dart. But it was seen that passing the function of sort in the home itself and using it in the SortScreen was much simpler and compact way of sorting the items.\

So in order to reach the sort menu click this,\
<img width="161" alt="image" src="https://github.com/SiddarthBaruah/StudentCollegeAPI/assets/95840068/d2c34b83-2987-49c6-a47b-ed3888cc83f2">

# Sort Menu

SO HERE I PRESENT THE SORT MENU\
<img width="194" alt="image" src="https://github.com/SiddarthBaruah/StudentCollegeAPI/assets/95840068/f381122b-bf0b-42d7-ab75-e996092f72a9">\
This is the sort menu, and as per the buttons shown, it triggers the function that was given to it from the HOMESCREEN. 

# Built Apk Version

So, I have updated the required apk manifesto file and you can safely download the apk file from the below link.\
[Download me I am safe!](https://drive.google.com/file/d/1USx0xRTxUGGv63z4jGkN4sTRiWJUrUql/view?usp=share_link)






