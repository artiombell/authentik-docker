#!/usr/bin/bash

function_to_fork() {
   python /server.py
}

function_to_fork & 

/usr/local/bin/dumb-init -- /lifecycle/ak worker