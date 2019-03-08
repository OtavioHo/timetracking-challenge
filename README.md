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

## Mandatory Items

 - Views
  - Timetracking
   - New/Create timetracking - should contain at least a clock that updates every second, a comment field and a button
    There is a clock made in Javascript. The coords data is required by HTML5 geolocalization and displayed using Google Maps API.
   - Show timetracking - shows database information on a particular timetracking
    The timetracking data is displayed in a table and its location in a map.
   - Index timetrackings - table with timetrackings, 1 line per item
    All timetrackings are shown in a table.
  - Geofence
   - New/Create - should contain at least latitude, longitude and radius
    The coords data are selected by clicking in the map, and the radius is inputed by the user in the form.
   - Show - shows database information on a particular geofence
    Display the data in a table and illustrate in the map.
   - Index - table with geofences, 1 line per item
    All geofences are displayed in a table.

 - Timetrackings and Geofences should be stored in the database
 - Disable timetracking button if the user is not inside any of the geofences
 - At least one front-end and one back-end validation
 - Timetrackings should be stored with geolocalization information - latitude and longitude are enough and don't need to be precise, but you are expected to implement browser HTML5 geolocalization
 - Unit tests. RSpec is recommended. If you are writing tests, make sure they test something meaningful. All written tests should be working and pass when ran.

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
