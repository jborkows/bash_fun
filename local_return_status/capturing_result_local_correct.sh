#!/usr/bin/env bash

bad() {
   local output
   output=$(false)
   echo "bad: $?" #it caches the result of local so the return value if variable was created
}

good() {
   local output
   output=$(true)
   echo "good: $?"
}

good
bad
