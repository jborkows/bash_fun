#!/usr/bin/env bash

bad() {
   output=$(false)
   echo "bad: $?"
}

good() {
   output=$(true)
   echo "good: $?"
}
good
bad
