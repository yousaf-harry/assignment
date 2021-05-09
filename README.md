# Technical Assignment Using Lumen

`PHP (7.3.12)`
`MYSQL (8.0.18)`
`APACHE (2.4.41)`
`LUMEN (8.2.3)`
`Laravel Components ^8.0`

In this application make some APIs using **Lumen 8.0.18**. 
There is webpage in which ***Google map*** configured and using Lumen APIs draw ***Polygons*** on map and show vehicles current locations. which is updated every 20 seconds.

## Configuration Instructions

1- WEB PAGE
> If you run lumen APIs other then http://localhost:8000/ than try to change `Var api_url` inside **function.js** for webpage.
File path = webpage/js/function.js
-------------------------------
2- DATABASE
> Import **joyrid_lumen.sql** file, This database dump contain some data to draw geofences on map and vehicle locaitons.
-----------------------------------
3-API CALLS
> All API call are exported in json file you can find file by name joyrid.postman_collection
------------------------------
4-TEST CASE
> To check vehicle locations and to update those locations, for test purpose i just add 4 vehicles and every vehicels inside and outside locations points are given in **Test_Case.txt** file
------------------------------
5-EMAIL NOTIFCAITON
> For vehicle notifcaiton try to define credentials inside .evn file and fix email inside VehicleController@sendEmail() this functions body is comment at this time for testing purpose.
