#!/bin/bash

# GET
curl 127.0.0.1
curl "127.0.0.1?user=bot&password=OK"

# POST
curl --data user="bot" 127.0.0.1
curl --data "user=bot&password=%20OK%20" 127.0.0.1
curl --data "user=bot&password=' OK '" 127.0.0.1
curl --data-urlencode user="bot" password=" OK " 127.0.0.1
curl --request POST 127.0.0.1 --data-urlencode "user=bot" --data-urlencode "password= OK "
curl --request POST 127.0.0.1 --data "user=bot&password=' OK '"

# Upload file
curl -X POST -F "file=@output.txt" 127.0.0.1
curl --request POST 127.0.0.1 --form "data=@output.txt" --form "user=bot"

# Useful requests
curl --request POST 127.0.0.1 --data "user=bot&password=' OK '"
curl --request POST 127.0.0.1 --form "data=@output.txt" --form "user=bot" --form "password= OK "
curl --request POST 127.0.0.1 --form "data=@output.txt" --form "user=bot" --form "password= OK " >> output.txt

# FTP
curl --insecure --user bot:12345678 ftp://127.0.0.1

# SSH, SFTP
curl --insecure --user bot:12345678 sftp://127.0.0.1

# Output
curl etc > output.txt
curl etc > output{params}.txt

# Overwrite
curl etc > output.txt

# Push
curl etc >> output.txt