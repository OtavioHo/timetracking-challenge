# Timetracking Challenge

This is a solution for the [Timetracking Challenge](https://github.com/mywork/mywork-challenge) from mywork.

## About

The solution was built with Ruby on Rails and it uses SQLite for its relational database.
 - Ruby 2.5.1
 - Rails 5.2.2

## Models
 ### Timetracking
  - latitude: number
  - longitude: number
  - created_at: date
  - comments: text

 ### Geofence
  - latitude: number
  - longitude: number
  - radius: number

 ### Testing
 The models were tested using the Rails TestCase

 You can run the test running the commands
 ```rails test test/models/timetracking_test.rb```
 and
 ```rails test test/models/geofence_test.rb```

## Maps
To display the maps in the views the Google Maps JS API was used.

## Instructions

To run the application follow the steps:
 1- clone the repo ```git clone ```
 2- enter the project directory ```cd timetracking-challenge```
 3- install the dependencies ```bundle install```
 4- execute the migrations ```rails db:migrate```
 5- start the server ```rails s```
 6- access the ap in http://localhost:3000/timetracking
