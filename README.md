# Quiz Application
The Quiz Application in PHP is a simple project for taking quiz online. The project contains an admin side and the user side. The purpose of taking the quiz online is to save time. And this online method needs less manpower to execute the examination. 
# User Side
The users are the one who take part in the quiz. In the user side, a user has to login to enter the quiz competition. User can be able to login using google.
Quiz have multiple Topics – Sports, Science & Technology, Arts, Politics, etc..
Each subject would have 3 levels (Beginner, Intermediate, Professional)
Once the user chooses a subjects to take a quiz, he would get 10 questions, 4 of beginner level, 3 of intermediate level, 3 of professional level in that order.
One question is visible each time and each question would have 4 Multiple choice answers and only one answer would be right. There would not be any time limit. Next question is visible after the first question is answered.
After the quiz is complete the score will be displayed to the user.
# Admin Side
The admin can manage the quiz topics and add questions.
# About System
This Quiz Application is in PHP, CSS, JavaScript, Bootstrap and Vue JS. Talking about the features of the Quiz Application, it just contains both the admin section and the user section. The user can log in using Google Account to take the quiz, while the admin can manage topics and questions. The design of this project is pretty simple so that the user won’t find any difficulties while working on it.
# How To Run The Project?
To run this project, you must have installed a virtual server eg. XAMPP on your PC (for Windows).
After Starting Apache and MySQL in XAMPP/WAMP, follow the following steps.

1st Step: Download ZIP file and Extract files.

2nd Step: Copy the main project folder

3rd Step: Paste in root folder. eg. xampp/htdocs/

4th Step: Open a browser and go to URL “http://localhost/phpmyadmin/”

5th Step: Then, click on the databases tab

6th Step: Create a database naming “exam” and then click on the import tab

7th Step: Click on browse file and select “exam.sql” file which is inside the “quiz” folder

8th Step: Click on go.

You can notice 'admin','answer', 'history', 'options', 'questions', 'quiz' tables in the database.
'admin' - table used for admin login details
'quiz' - table used for saving the quiz topics with details
'questions' - table used for saving questions of all topics with related details
'options' - table used for saving the options for questions
'answer' - table used for saving the answer of the question
'history' - table used for calculating the score of the quiz for a perticular user

9th Step: Open a browser and go to URL “http://localhost/quiz/”

Note: User can restart the quiz topic which he already attended.

Note: For admin panel, go to URL ” http://localhost/quiz/admin.php” and login with email id 'admin@example.com' and password 'admin'

Note: Vue JS framework is used in dashboard.php for the form validation of Quiz Topic and Questions. 

# Refernces
1. https://www.youtube.com/watch?v=hazMyK_cnzk - Login With Google Account Using PHP & Client API & Bootstrap Design
2. https://code-projects.org/online-quiz-system-in-php-with-source-code/ - Reference for quiz application code and database
3.https://www.digitalocean.com/community/tutorials/template-driven-form-validation-in-vuejs - Reference for the Vue JS form validation
