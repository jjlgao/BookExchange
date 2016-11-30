# BookExchange

BookExchange is a Rails application that is meant to be used to exchange textbooks after semesters are over. 
Contributors: Adam Sebti, Maruf Rahman, Muluken Habtamu, Jason Gao, Franklin Heng

There are 2 models representing humans:
* Buyers
* Sellers

There are additionally 2 models representing everything else needed for the app:
* Book
* Course

The relationships between the models are:
* Courses have many books
* Sellers have many books
* A book belongs to one course

The application works by displaying the books for sale on the home page. A potential buyer 
enters the application, and searches for a course or a book. Once the book is found, the 
buyer can view the information on the book as well as a picture, and personally contact a 
seller for the book if they wish.



Sellers, on the other hand, have a more complicated interface where they upload 
information about their own books to the website using a web form. They provide the 
necessary information about the books, which gets submitted and then put into the 
database linked to the seller and the course they choose, which is created if 
it doesn't already exist in the database. This book is then listed in the home 
page when a new buyer appears who wants a textbook for their class.
