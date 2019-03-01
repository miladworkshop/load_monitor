<?php
#####################################################################
# Load Monitor Plugin for Directadmin (patched version, 2018)       #
#####################################################################
#                                                                   #
# Patched version: 0.2.5 $ Fri Mar  1 12:20:55 +07 2019             #
# Original version: 0.1 (written by Future Vision)                  #
#                                                                   #
#####################################################################
# Author:                                                           #
#                                                                   #
# - Originally written by: Future Vision                            #
# - Patched by: Alex S Grebenschikov (www.poralix.com)              #
#                                                                   #
#####################################################################

function f($value)
{
        return number_format($value, 2);
}

function unhtmlentities($string)
{
   return preg_replace('~&#([0-9][0-9])~e', 'chr(\\1)', $string);
}

