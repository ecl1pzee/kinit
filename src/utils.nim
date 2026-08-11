import std/posix

proc performSanityChecks* =
    echo("[*] Performing sanity checks")
    stdout.write("[*] Checking for root...")
    if geteuid() == 0:
        stdout.write "sucess!"
        echo "[+] Running as root."
    else:
        echo "fail!"
        echo "[x] not running as root, maybe use sudo/doas? Quitting here."
        quit(1)

proc Larp* =
    echo "kinitctl v1.2 by AustralisXYZ"
    echo "............................."
