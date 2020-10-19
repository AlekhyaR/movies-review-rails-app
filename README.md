1. Run rails new movies_review_rails_app
2. Add search kick gem to gem file
3. Run bundle install
4. Create Movies model(rails g model Movie title:string description:text director:string year:integer actor:string filming_location:string country:string)
5. Create Review Model (rails g model Review rating:integer movie_id:integer)
6. Add downloaded movies and reviews .csv files to db/data folder
7. Update database.yml with postgresql
8. Add 'pg' gem to gem file and install pg 
9. create role in postgres 
  run rails db:setup -> Creates databases defined in database.yml file
  run rails db:migrate -> creates schema.rb file and updates database
10. Create rake task
  - create one import_movies_csv.task file under lib/tasks
  - create one import_review_csv.task file under lib/tasks
  - run both the tasks 
11. Create movies, reviews controller and view file 
12. Used simple search form and sort
