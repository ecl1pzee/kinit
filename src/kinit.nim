import std/os

let args = commandLineParams()

if args.len == 0:
  echo "[!] No argument was given. Try -h."
  quit(0)

if args[0] == "-h":
  echo "kinitctl v0.1"
  echo "-------------"
  echo "Usage: kinitctl [options] stop | start | restart | enable | disable [service]"
  echo ""
  echo "Options:"
  echo "  -v --verbose   Be more verbose"
  echo "  -q --quiet     Be quiet."
  echo "  -v --version   Show version of kinitctl"
  quit(0)

if args.len < 2:
  echo "[x] No service given or unknown argument. Quitting here."
  quit(1)

let service = args[1] # allow something like kinitctl enable foo
