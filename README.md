Grade Book is an easy to use Rails application that allows a teacher to enter a list of student names
along with his/her test score so they can see a summary of the class performance.
The summary includes the min grade, max grade, and average grade.
Students with a grade < 65 are highlighted.
Student names and grades can be edited inline.

### To Install:
1. Make sure you have Ruby and Bundler installed
2. Clone this repository (Git Clone)
3. cd teacher_gradebook_ruby
4. bundle install
5. rake db:create 
6. rake db:migrate
7. rake db:seed (loads starting data)
8. rspec (make sure all tests pass)
9. rails s (start Rails server)
10. open web browser and enter localhost:3000 as the URL
