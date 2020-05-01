#!/bin/bash

# Copy an index from Production to Development with analyzer and mapping:
elasticdump \
  --input=http://production.es.com:9200/my_index \
  --output=http://development.es.com:9200/my_index \
  --type=analyzer
  
elasticdump \
  --input=http://production.es.com:9200/my_index \
  --output=http://development.es.com:9200/my_index \
  --type=mapping
  
elasticdump \
  --input=http://production.es.com:9200/my_index \
  --output=http://development.es.com:9200/my_index \
  --type=data
