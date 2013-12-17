#!/bin/bash

DATA='
{
  "inputs":"rooms",
  "query":[
  {"map":{
    "language":"javascript",
    "bucket":"my_functions",
    "key":"map_capacity"
  }},
  {"reduce":{
    "language":"javascript",
    "bucket":"my_functions",
    "key":"reduce_capacity"
  }}
  ]
}
'

curl -X POST -H "content-type:application/json" http://localhost:8098/mapred --data "$DATA"
