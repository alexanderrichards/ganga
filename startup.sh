#!/bin/bash
read -p 'Creating grid proxy for which DIRAC group (i.e. <vo>_user): ' vo

ganga -o[defaults_DiracProxy]group=$vo
