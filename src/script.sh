#!/bin/bash
# Just a quick and dirty script to wish happy birthday

set -e

MESSAGE=${@:-'Happy birthday!'}
TEMP_FILE=$(mktemp -p $(pwd))

OLD_IFS=$IFS
IFS=' '

for word in $MESSAGE
do
    echo Word is: ${word}
    toilet --gay --termwidth ${word} >> ${TEMP_FILE}
done

cowsay ${MESSAGE} >> ${TEMP_FILE}
cat ${TEMP_FILE} | aha --black --title "${MESSAGE}" > index.html

# let's exit nicely :)
IFS=${OLD_IFS}
rm ${TEMP_FILE}
exit 0