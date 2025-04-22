#!/usr/bin/env bash

bad() {
   false
   echo "bad: $?"
}

good() {
   true
   echo "good: $?"
}
good
bad
