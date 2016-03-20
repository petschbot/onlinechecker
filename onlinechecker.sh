#!/usr/bin/env bash

while true; 
	do 
		echo "Website 1";
		date "+%Y-%m-%d %H:%M:%S"; 
		curl -I --silent www.exapmle.org | grep HTTP/;
		sleep 60;
		echo "--------------------------";
		echo "Website 2";
		date "+%Y-%m-%d %H:%M:%S"; 
		curl -I --silent www.peter-schuster.net | grep HTTP/
		sleep 60;
		echo "--------------------------";
	done
