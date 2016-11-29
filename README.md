RAILS DECAL PROJECT 2 WRITE UP 


Title:​ Study Session Calendar 


Team Members:​ Lauren Benitez, Lai Wei, Seth Rainha, Zhitong Qiu, Tasnim Khandakat 


Demo Link:​ 


Idea: ​An application where students can attend and create events and study sessions based on what classes they are taking. 


Models and Description:


User


● has name, email, and many courses


Course


● has many users


Location


● has many events 


Resource


● has many users
Event
Belongs to user
Belongs to location
Belongs to course


Features:


● Users can log in


● They can go on their profile and see:
A way to create events and study sessions
View which courses they are taking
Which events they have already made


● They can view people who are also using the site and have accounts made.


	● Users can view the courses other people are taking and see their profiles. 




Division of Labor:


● Tasnim Khandakar: Made users


● Lauren Benitez: Made locations


● Lai Wei: Made courses and implemented devise


● Seth Rainha: Made events and video and seeds file


● Zhitong Qiu: Made resources








