#!/bin/bash

sudo apt-get update
sudo apt-get install sphinxsearch mysql-client mysql-server
sudo touch $(pwd)/sphinx.log
sudo touch $(pwd)/sphinx.query.log
sudo sed -i 's/\/etc\/sphinxsearch\///g' sphinx.conf
sudo sed -i 's/127.0.0.1:9306:mysql41/9306:mysql41/g' sphinx.conf
sudo sed -i 's/127.0.0.1:9312/9312/g' sphinx.conf
sudo searchd -c $(pwd)/sphinx.conf
