#!/bin/bash
while true
do AC=$(acpi | cut -c 25-27 | grep -i 16) ; if [ -e $AC ] ; then echo sim ; else shutdown -h now ; fi ;
AC0=$(acpi | cut -c 25-27 | grep -i 15) ; if [ -e $AC0 ] ; then echo sim ; else shutdown -h now ; fi ;
AC1=$(acpi | cut -c 25-27 | grep -i 14) ; if [ -e $AC1 ] ; then echo sim ; else shutdown -h now ; fi ;
AC2=$(acpi | cut -c 25-27 | grep -i 13) ; if [ -e $AC2 ] ; then echo sim ; else shutdown -h now ; fi ;
AC3=$(acpi | cut -c 25-27 | grep -i 12) ; if [ -e $AC3 ] ; then echo sim ; else shutdown -h now ; fi ;
AC4=$(acpi | cut -c 25-27 | grep -i 11) ; if [ -e $AC4 ] ; then echo sim ; else shutdown -h now ; fi ;
done
