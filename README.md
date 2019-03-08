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

## Styles
To style the app, Bootstrap was used.

## Maps
Google maps API is a very complete API and it was used to display maps and get locations coords. I was also used to calculate if a timetracking is inside a geofence.

### API KEY
Before you run the app, replace 'MY_API_KEY' on ```app/views/shared/_maps.html.erb```

## Instructions

To run the application follow the steps:
 1. clone the repo ```git clone ```
 2. enter the project directory ```cd timetracking-challenge```
 3. install the dependencies ```bundle install```
 4. execute the migrations ```rails db:migrate```
 5. start the server ```rails s```
 6. access the ap in http://localhost:3000/timetracking
