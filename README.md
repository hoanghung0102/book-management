# Book Management Application about technical & features
 - Springboot web app base on MVC pattern.
 - Using H2 database
 - Authentication user login by username and password
 - Authorization link access by role
 - Create new user with defualt role is "USER"
 - CRUD Book
 
# How to use 
 - git clone https://github.com/hoanghung0102/book-management.gituth
 - cd book-management
 - mvn package
 - copy book-management/target/book-management.war into $TOMCAT/webapps/
 - start Tomcat
 - localhost:8080/book-management
 - localhost:8080/h2-console (Database using for book management)
 - Login page display
 - Create new user with default role is "User"
 - After success auto redirect to book list page.
 - At book list click create new book list
 - After book list create success display book list with book had created
 - User can view, edit, delete book in book list page
 
 # Next step will be improvement
 - Apply less/ sass css
 - Move on inline style to external css file
 - Improvement the style for application
 - Apply display dialog when click create or edit book item in book list
 - List of book using ajax to display all book list when using dialog for create, edit and delete book item.
 - Adding role management for admin page.
 
 
