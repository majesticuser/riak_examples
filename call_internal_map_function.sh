#!/bin/bash

DATA='
{
  "inputs":[
  ["rooms","101"],["rooms","102"],["rooms","103"]
  ],
  "query":[
  {"map":{
    "language":"javascript",
    "name":"Riak.mapValuesJson"
  }}
  ]
}
'

curl -X POST -H "content-type:application/json" http://localhost:8098/mapred --data "$DATA"
