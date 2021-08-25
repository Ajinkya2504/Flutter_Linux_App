#!/usr/bin/python3

import cgi
import subprocess


print("content-type: text/html")

print("Access-Control-Allow-Origin: *")

print()

f = cgi.FieldStorage()
cmd = f.getvalue("e")
c = str(cmd)
o = subprocess.getoutput("sudo " + c )
print(" \n \n \n", o)

