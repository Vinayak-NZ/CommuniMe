# Communime

## The process - frontend

1. Start
    * The first page loads all the scripts and has an ng-view element
    that changes its content for each stage of the process. The different
    stages are descibed below.
    
2. Choose
  * Create a list from the selected preferences
  * Use an angular service to:
    * store the Store the choose list, filter the stored list leaving only selected preferences, get the filtered list for ranking.

3. Rank
  * Display the filtered preferences to be ranked
    * Implement drag and drop functionality
    * When the next button is clicked,	send an array of the ranked preferences to the server

4. Compare
  * Receive array of top six recommended suburbs from server and display these in order, showing a generic image for suburbs that do not have one.

## Starting the server

To start the server on Cloud 9:

1. Run server.js
2. On the bash command line, type "mysql-ctl start"