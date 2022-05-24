#!/bin/bash

airflow resetdb -y
airflow webserver &
airflow scheduler 
