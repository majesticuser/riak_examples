#!/bin/bash

MAP_FUNCTION='
  function(v) {
    var parsed_data = JSON.parse(v.values[0].data);
    var data = {};
    data[parsed_data.style] = parsed_data.capacity;
    return [data];
  }
'

curl -X PUT -H "content-type:application/json" http://localhost:8098/riak/my_functions/map_capacity --data "$MAP_FUNCTION"
