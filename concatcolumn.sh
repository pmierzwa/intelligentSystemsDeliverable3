#!/bin/bash

cut -d ',' -f1 --complement energy_demand_data.csv | paste -d ',' - exchange_data.csv > all.csv
cut -d ',' -f1 --complement generator_production_data.csv | paste -d ',' - all.csv > helper.csv
cut -d ',' -f1 --complement renewable_production_data.csv | paste -d ',' - helper.csv > all.csv
rm -rf helper.csv

 

