#!/bin/bash

REDUCE_FUNCTION='
  function(v) {
    var totals = {};
    for (var i in v) {
      for(var style in v[i]) {
        if( totals[style] ) totals[style] += v[i][style];
        else totals[style] = v[i][style];
      }
    }
    return [totals];
  }
'

curl -X PUT -H "content-type:application/json" http://localhost:8098/riak/my_functions/reduce_capacity --data "$REDUCE_FUNCTION"
