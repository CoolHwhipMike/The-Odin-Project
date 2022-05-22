## How would you go through the lines of a file using the IO object in the command line?
Use IO.sysopen to open a stream to the file. the use gets to get the line.

## How would you take the Array [1,2,3] and serialize it into a JSON string format?
With JSON.dump? The question doesn't seem clar to me and neither does converting to JSON/YAML.

## What are the benefits of YAML vs JSON vs MessagePack serialization formats?
YAML is easy to read
JSON is popular
MessagePack is small and fast

## How would you check if a file exists using the File object in the command line?
File.exists?(FILENAME)

## In a Download directory containing 5 files, how would you count the number of files in that directory using the Dir object?
use dir and glob

Dir.glob('Downloads/*').length