#!/bin/bash

../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv --depth 0.125 --tool 301 --tool 102 --tool 18 --inlay --cutout 0.25  A3x3.svg 
../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv --depth 0.125 --tool 301 --tool 102 --finish-pass testpattern.svg

