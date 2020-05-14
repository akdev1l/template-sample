#!/bin/bash

printf 'enter person name: '
read person_name

ansible --module-name template \
        --args 'src=page.html.j2 dest=page.html' \
        --extra-vars person_name="${person_name}" localhost

printf 'open file://%s/page.html\n' "$PWD"
