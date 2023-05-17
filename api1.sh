#endpoint 
#
if [ "$1" == "/health" ]; then
 echo '{"result": "Healthy", "error": false}'
elif [ "$1" == "/who" ]; then
  out=$(who)
 echo '{"result": "'"$out"'", "error": false}'
elif [ "$1" == "/create" ]; then
	#generating from other file 
 source ./random.txt
	echo '{ "result": "File created successfully", "error": false }'
elif [ "$1" == "/read" ]; then
  if [ -f "test.txt" ]; then
   file=$(cat test.txt)
   echo '{ "result": "'"$file"'", "error": false }'
  else
   echo '{ "result": "File not found", "error": true }'
 fi
fi
