# README

- Task Scheduler

- Ruby version 3.3.0

- Rails version 7.1.3

- Website - https://114d-95-215-158-37.ngrok-free.app/

Task: Implement a Task Scheduler

Description:

  - Create a Ruby on Rails application that serves as a simple task scheduler. 
  - The application should have the following features:
  - User Authentication:
  - Users should be able to register, log in, and log out.
  - Only authenticated users should be able to create and manage tasks.
  - Task Creation and Display:
  - Authenticated users should be able to create tasks with a title, description, due date, and priority level.
  - Display a paginated list of tasks on the homepage, showing the title, due date, and priority.
  - Task Status:
  - Implement task statuses (e.g., To Do, In Progress, Done) to track the progress of each task.
  - Allow users to update the status of their tasks.
  - Task Notifications:
  - Send email notifications to users when a task is approaching its due date or when a task is overdue.
  - Requirements:
  - Use Ruby on Rails for the backend.
  - Utilize a relational database to store data.
  - Implement basic authentication for user management.
  - Include error handling and validation for task creation and updates.
  - Add a short doc on how to set up and run the application.
  - Bonus (Optional):
  - Include testing using RSpec or MiniTest.
  - Implement a search functionality for tasks based on title, status, or due date.
  - Add the ability for users to set recurring tasks.
  - Implement AJAX for asynchronous task updates.
  - Submission:
  - Provide the source code, database schema, and any additional instructions or documentation necessary to set up and run the application.
  - Submission bonus - deploy an app and provide a link for review.

How to setup project:

Requirements:
- Need install Ruby 3.3.0
- Need install PostgreSQL 16

To install all Gems use: 
- bundle install

To start server use :
- rails s

To run RSpec tests use:
- rspec 

Global info:
- Email letters is opened by LetterOpener gem in new window, in future will be great to add background worker like Sidekiq for Email sending events. 