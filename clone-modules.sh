#!/bin/bash

base_origin=https://github.com/seansund
modules="LightBlueCompute-catalog-ms;LightBlueCompute-orders-ms;LightBlueCompute-customer-ms;LightBlueCompute-inventory-ms"
IFS=';' tokens=( $modules )

mkdir modules

for token in ${tokens[*]}
do
	git clone $base_origin/${token}.git modules/$token
done
