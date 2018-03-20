When you first run the project you will encounter form where you will have to enter the name which takes you to the values.jsp which contains values of each question from 100-500.
Once you click the value it will take you to the questions.jsp which will show the question according to the value chosen. And daily doubles appear randomly during the selection of value.
It can appear once/ twice or none. I am not able to disable the links so they can be clicked as many times you want.

Login Page
![Login page](https://github.com/sing5745/Jeopardy/raw/master/jeopardyL.PNG)

/** About daily doubles **/
1. They can appear multiple times or none.
2. If you enter a amount which is greater than your winnings my application will consider the actual value of the question.
3. Daily double is designed beautifully which also includes audio./* also part of own addition */

![Daily Double](https://github.com/sing5745/Jeopardy/raw/master/DD.PNG)

/** Additional Info **/
1. First of all, daliy double and win page has audio enabled when page pops up.
2. If you skips question 3 times it will directly takes you to the win page.
3. If you score is less than zero my jsp will show do better next time and if your score is greater than zero jsp will show congratulations with css and audio working.

Questions Page
![Questions](https://github.com/sing5745/Jeopardy/raw/master/question.PNG)

Values Page
![home](https://github.com/sing5745/Jeopardy/raw/master/Home.PNG)

/** About win page **/
1. As i am not able to disable the links my win page works differently, i am having counter which counts number of questions answered, if questions answered is equal to 25 it will dispatch to the win page.
2. if you skip question 3 tmes it will dispatch to the jsp.
 ![Win Page](https://github.com/sing5745/UberEats/raw/master/Win.PNG)
 
 


           My project runs as: localhost:8080/Jeopardy/login.html
