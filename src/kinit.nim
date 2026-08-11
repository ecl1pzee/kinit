import std/os # needed! cli args, also part of core kinit
import utils

# Sometimes you gotta lick the stamp and send it - Daniel Ricciardo

var args = commandLineParams()

if args.len == 0:
  echo "[!] No argument was given. Try -h."
  quit(0)

if args[0] == "-h":
  echo "kinitctl v0.1"
  echo "-------------"
  echo "Usage: kinitctl [options] stop | start | restart | enable | disable [service]"
  echo ""
  echo "Options:"
  echo "  -v --version   Show version of kinitctl and quit"
  echo "  -i --info      Show info about logs ([x], [*], etc) and quit"
  echo "  -h --help      Show this help message and quit"
  echo "Made with love by australisxyz"
  quit(0)

if args[0] == "-i":
  echo "[*] --> info"
  echo "[+] --> sucesfully did XXX"
  echo "[x] --> error"
  echo "[?] --> wait for user input"
  echo "[!] --> warning"
  quit(0)

if args[0] == "--info":
  echo "[*] --> info"
  echo "[+] --> sucesfully did XXX"
  echo "[x] --> error"
  echo "[?] --> wait for user input"
  echo "[!] --> warning"
  quit(0)

if args[0] == "--version":
  echo "kinitctl v0.1"
  echo "kinit v0.1"
  echo "............."
  echo "license: BSD-2-Clause"
  echo "brought to you by: aureliusxyz and australisxyz"
  quit(0) # so the part under this part wont conflict

if args[0] == "-v":
  echo "kinitctl v0.1"
  echo "kinit v0.1"
  echo "............."
  echo "license: BSD-2-Clause"
  echo "brought to you by: aureliusxyz and australisxyz"
  quit(0) # so the part under this part wont conflict

# ./kinitctl disable foo
# output: foo
# from: args[1]

if args.len < 2:
  echo "[x] No service given or unknown argument. Quitting here."
  quit(1)

# I'm really, really really sorry for this bad-practice code.
# I am extremely aware of my actions and I apologize sincerely to all the Stack Overflow users that never saw a glimpse
# of the sun. Once again, I really regret my actions. And I did not think of another way to write this code or use cases for this
# I apologize.
# Sincerely, Australis.

if args.len < 3:
  if args[0] == "enable":
    Larp()
    performSanityChecks()
  
  if args[0] == "disable":
    Larp()
    performSanityChecks()
  if args[0] == "start":
    Larp()
    performSanityChecks()
  if args[0] == "stop":
    Larp()
    performSanityChecks()
  if args[0] == "restart":
    Larp()
    performSanityChecks()