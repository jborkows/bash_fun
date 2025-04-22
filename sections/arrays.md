## Playing with arrays
### Using arrays

```bash
#!/usr/bin/env bash
set -euo pipefail
names=( "one", "two", "three" )
for name in "${names[@]}"; do
    echo "Name: $name"
done

echo or without commas
orNames=( "one"
    "two"
    "three" )
for name in "${orNames[@]}"; do
    echo "Name: $name"
done

echo In array are ${#names[@]} elements
echo \* joins array to string

echo Using default separator for "${orNames[*]}"
IFS=','
echo Using separator , for "${orNames[*]}"
echo Using separator , for array which was ',' "${names[*]}"
echo see that in even iterating using @ each argument has comma in it!
IFS=
```
```bash
bash basic.sh
```
```
Name: one,
Name: two,
Name: three
or without commas
Name: one
Name: two
Name: three
In array are 3 elements
* joins array to string
Using default separator for one two three
Using separator , for one,two,three
Using separator , for array which was , one,,two,,three
see that in even iterating using @ each argument has comma in it!
```
### Difference between @ and basic.sh difference.sh summary.sh

```bash
#!/usr/bin/env bash
set -euo pipefail
names=( "one", "two", $'baz\tbat', $'new\nline' )
echo with @
for name in "${names[@]}"; do
    echo "Name: $name"
done

echo or with \*
for name in "${names[*]}"; do
    echo "Name: $name"
done

```
```bash
bash difference.sh
```
```
with @
Name: one,
Name: two,
Name: baz	bat,
Name: new
line
or with *
Name: one, two, baz	bat, new
line
```
