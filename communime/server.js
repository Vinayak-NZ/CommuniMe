var http = require('http');
var express = require('express');
var app = express();
var mysql = require('mysql');
var path = require('path');
var bodyParser = require('body-parser');

// This fixes the public files access problem
app.use(express.static(__dirname + '/public'));

// default front end- loads index page
app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

// make sure we can parse JSON
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// set API paths


//(classifcationas)
app.get('/classification', function(req, res) {

 var callback = function(err, result) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        res.end(result);
    };
 var sqlString = 'select * from classification;';
    getSQL(callback, sqlString);
   

});

// suburbs

app.get('/suburb', function (req, res) {
 var callback = function(err, result) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        res.end(result);
    };
 var sqlString = 'select * from suburb;';
    getSQL(callback, sqlString);
})

// Place Types
app.get('/placeType', function (req, res) {
 var callback = function(err, result) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        res.end(result);
    };
 var sqlString = 'select * from place_type;';
    getSQL(callback, sqlString);
   
})



// Place information Types
app.get('/placeInformationType', function (req, res) {
 var callback = function(err, result) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        res.end(result);
    };
 var sqlString = 'select * from place_information_type;';
    getSQL(callback, sqlString);
   
})


// Counts of classifications by suburb
app.get('/suburbCount', function (req, res) {
 var callback = function(err, result) {
              preferences = setWeightsOnPreferences(preferences);
       console.log(preferences);
        var suburbs = getSuburbTotalScores(setWeightedScore(JSON.parse(result),preferences));
     //  console.log(suburbs);
         var selectedSuburbs =getHighestScoringSuburbs(suburbs,6);
      var suburbCallback = function(err2, result2) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        
         res.end(result2);
      }
      getSelectedSuburbsSQL(suburbCallback,selectedSuburbs )
    };

var preferences=[{name: 'Schools', placeTypeID:9, active: true},{placeTypeID:4},{placeTypeID:10},{placeTypeID:5},{placeTypeID:8}];
   // var preferences =  req.body;
    console.log("suburbCount--------- "+preferences);
  
  getSuburbCountSql(callback, preferences);
   
})
/*
// counts for a suburb using suburb ID
app.get('/suburbCount/:suburb', function (req, res) {
 var callback = function(err, result) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        res.end(result);
    };
 var sqlString = 'select suburb_name_text ,classification_text   ,count(*) as count from suburb s JOIN place_suburb ps on  s.suburb_id= ps.suburb_id JOIN place p on ps.place_id= p.place_id JOIN place_type pt on p.place_type_id =pt.place_type_id JOIN place_type_classification ptc on pt.place_type_id =ptc.place_type_id JOIN classification c on ptc.classification_id = c.classification_id '
 +' WHERE s.suburb_id =  ' + req.params.suburb
 +' group by suburb_name_text,classification_text order by suburb_name_text;';
 getSQL(callback, sqlString);
   
})*/

/* counts for a suburb using suburb ID*/
app.get('/runAlgorithm/:placeTypes', function (req, res) {
 var callback = function(err, result) {
              preferences = setWeightsOnPreferences(preferences);
  //     console.log(preferences);
        var suburbs = getSuburbTotalScores(setWeightedScore(JSON.parse(result),preferences));
     //  console.log(suburbs);
         var selectedSuburbs =getHighestScoringSuburbs(suburbs,6);
      var suburbCallback = function(err2, result2) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        
         res.end(result2);
      }
      getSelectedSuburbsSQL(suburbCallback,selectedSuburbs )
    };
 var placeTypeArray = req.params.placeTypes.split('_');
 console.log(placeTypeArray);
 var preferences = getPlaceTypeArray(placeTypeArray);

// var preferences =[{name: 'Schools', placeTypeID:9, active: true},{placeTypeID:4},{placeTypeID:10},{placeTypeID:5},{placeTypeID:8}];
 //   var preferences =  req.body;
   
  
  getSuburbCountSql(callback, preferences);
   
})

// suburb specific information
app.get('/suburb/:suburb', function (req, res) {
 var callback = function(err, result) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        res.end(result);
    };
 var sqlString = 'select p.place_name_text,pt.place_type_text, s.suburb_name_text, place_information_type_text, pi.place_information_text  from suburb s '
 +' JOIN place_suburb ps on  s.suburb_id= ps.suburb_id JOIN place p on ps.place_id= p.place_id JOIN place_information pi on p.place_id = pi.place_id JOIN place_information_type pit on pi.place_information_type_id = pit.place_information_type_id '
 +' JOIN place_type pt on p.place_type_id =pt.place_type_id'
 +' WHERE s.suburb_id =  ' + req.params.suburb
 +' ORDER by p.place_name_text, place_information_type_text ;';
 getSQL(callback, sqlString);
   
});


app.post('/runAlgorithm', function (req, res){
    var id = req.body;
    console.log("Algorithm is running...");
    
    var suburbs = function(err, result) {
        res.writeHead(200, {
            'Content-Type' : 'application/json'
        });
        algorithm(result);
        res.end(result);
    };
    
    
    var sqlString = 'select * from suburb limit 6;';
    getSQL(suburbs, sqlString);
});

function algorithm(suburbs) {
    // console.log('Testing algorithm function');
    // console.log(suburbs);
    
    
}



//set server
var server = app.listen(process.env.PORT, function(){
  
  var host = server.address().address
  var port = server.address().port


})

function getPlaceTypeArray(placeTypeStringArray)
{
    var placeTypeArray=[];
    for (var i=0; i <placeTypeStringArray.length;i++)
    {
        placeTypeArray.push({placeTypeID: placeTypeStringArray[i]});
    }
    return placeTypeArray;
}

// get the n suburbs with the highest scores
function getHighestScoringSuburbs(suburbs, numberToReturn)
{
    var surburbsToReturn =[];
    for (var i =0;i<suburbs.length;i++)
    {
        surburbsToReturn.push(suburbs[i]);
        if(surburbsToReturn.length > numberToReturn)
        {
            //get the index of the lowest weighted score
            var lowest =getLowestIndex(surburbsToReturn);
            // use the splice command to remove this array element
            surburbsToReturn.splice(lowest,1);
        }
    }
    
    
    return surburbsToReturn;
    
}

// get the index of the score value in the list of suburbs to return
function getLowestIndex(suburbsToReturn)
{
   var lowest = suburbsToReturn[suburbsToReturn.length-1].score;
   var lowestIndex =suburbsToReturn.length-1;
    var tmp;
for (var i=suburbsToReturn.length-2; i>=0; i--) {
    tmp = suburbsToReturn[i].score;
    if (tmp < lowest){
      lowest = tmp;
      lowestIndex =i;
    } 
}
 return lowestIndex;
}

// sum up all the weighted scores within a list of suburbplaces and return them as a list of suburbs with scores
//assume suburb places come in ordered by suburb name
function getSuburbTotalScores(suburbPlaces)
{
    var suburbs=[];
    var currentSuburbName ="";
    var currentSuburb;
  for (var i =0; i< suburbPlaces.length; i++)
    {
         // if this is a new suburb
       if(currentSuburbName != suburbPlaces[i].suburbName) 
       {
         currentSuburb=  suburbs.push({suburbName:suburbPlaces[i].suburbName, score: suburbPlaces[i].weightedScore }) -1;
         currentSuburbName =suburbPlaces[i].suburbName;
       }
       else
       {
         
         suburbs[currentSuburb].score +=  suburbPlaces[i].weightedScore ;
       }
    }
    return suburbs;
    
}


// Calculate a weighted score for all the place types within a suburb
function setWeightedScore(suburbPlaces, preferences)
{
    for (var i =0; i< suburbPlaces.length; i++)
    {
          suburbPlaces[i].score = suburbPlaces[i].count / suburbPlaces[i].totalCount;
          var weight = getWeightForId(suburbPlaces[i].placeTypeID, preferences);
        suburbPlaces[i].weightedScore = suburbPlaces[i].score * weight;
        
    }
    return suburbPlaces;
}

//get the weight for a given place id
function getWeightForId(id, preferences)
{
    
            for(var i=0;i <preferences.length; i++)
        {
           if (preferences[i].placeTypeID ==id)
           {
               return preferences[i].weight;
           }
        }
        return 0;
}

//this is a dummy method as it just sets the first value to 1 and everything else to 0.025
function setWeightsOnPreferences(preferences)
{
    var length =preferences.length;
      for(var i=0;i <length; i++)
        {
           preferences[i].weight =(length -i) * (length -i);
        }
        return preferences;
}
    


// pull back a list of suburbs and place type counts as well as a total count of all the places of that type in the region
function getSuburbCountSql(callback, preferences)
{
    var inString ="(";
    if(preferences && preferences.length>0)
    {
            for(var i=0;i <preferences.length; i++)
        {
            inString =inString+preferences[i].placeTypeID+',';
        }
        
        inString =inString.substr(0,inString.length-1)+')';
        
    }
     var sqlString = 'select suburb_name_text AS suburbName ,place_type_text as placeTypeName, pt.place_type_id as placeTypeID  ,count(*) as count,(select count(*) from place p2 where p.place_type_id = p2.place_type_id) as totalCount from suburb s JOIN place_suburb ps on  s.suburb_id= ps.suburb_id JOIN place p on ps.place_id= p.place_id JOIN place_type pt on p.place_type_id =pt.place_type_id';
     sqlString +=' WHERE pt.place_type_id in '+inString;
    sqlString += ' group by suburb_name_text,place_type_text,pt.place_type_id ,totalcount order by suburb_name_text;';

    getSQL(callback, sqlString);
}



// pull back a list of suburbs based on a list of suburb names
function getSelectedSuburbsSQL(callback, suburbs)
{
    var inString ="(";
    if(suburbs && suburbs.length>0)
    {
            for(var i=0;i <suburbs.length; i++)
        {
            inString =inString+"'"+suburbs[i].suburbName+"',";
        }
        
        inString =inString.substr(0,inString.length-1)+')';
        
    }
     var sqlString = 'select * from suburb';
     sqlString +=' WHERE suburb_name_text in '+inString;
  

    getSQL(callback, sqlString);
}




// Access MySQL via node-mysql
// https://github.com/felixge/node-mysql
function getSQL(callback, sqlString) {
    var mysql = require('mysql');
    var connection = mysql.createConnection({
         host: "localhost",
      user: "acyoung",
      password: "",
      database: 'communime'
    });

    connection.connect();
    var json = '';
    var query = sqlString;
    connection.query(query, function(err, results, fields) {
        if (err)
            return callback(err, null);

        // console.log('The query-result is: ', results[0]);

        // wrap result-set as json
        json = JSON.stringify(results);

        /***************
        * Correction 2: Nest the callback correctly!
        ***************/
        connection.end();
        // console.log('JSON-result:', json);
        callback(null, json);
    });
};