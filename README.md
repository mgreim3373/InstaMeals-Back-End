InstaMeals: Back-end

This app represents my second live project with General Assembly. It is a custom built interactive web application for storing and sharing instapot recipes. It utilizes Saas and a custom built API.

Instalation:

List of Technologies Used: Postgresql, and Ruby on Rails

Planning and Creation Process: This project was started with the goal of building a custom API using Ruby on Rails and Postgresql that had at least 4 RESTful routes for handling GET, POST, PUT/PATCH, and DELETE requests. The requirements also specified that any actions that change data must be authenticated (data must be "owned" by the user performing the change) and that the user must have a relationship with at least one resource. The project began by creating entity relationship diagrams to ensure that the project met requirements. I then built out the application using Ruby on Rails. The next stage of the project was to validate the inputs using Postgresql, and ensuring that the Serializer was formating data correctly. Finally, I tested the API using curl scripts and interacted with it using my javascript webapp.

Unsolved Issues: I plan on updating this project in the future by adding ingredients as an additional resource. I plan on joining this resource to my recipes table using a many to many relationship. During the project I ran into some issues validating data using Postgresql.

ERD: https://github.com/mgreim3373/Rails-Application/blob/master/ERD.jpg

Back-end site: https://rails-application.herokuapp.com/
Front-end site: https://mgreim3373.github.io/Rails-Application-Front-End/

Back-end repo: https://github.com/mgreim3373/Rails-Application
Front-end repo: https://github.com/mgreim3373/Rails-Application-Front-End
