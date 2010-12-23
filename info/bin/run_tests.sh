#!/bin/bash
# This script will run the tests for this module

ruby -Ctests -I../src -I. tests.rb
