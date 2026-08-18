// utilities, such as functions like showHelp to ease my life
#include <stdio.h>
#include <stdlib.h>
#include <zconf.h>

void showHelp() {
    printf("kinit(ctl) v0.1\n"
           "...............\n"
           "Usage: ./kinitctl [argument] start | stop | restart | enable | disable\n"
           "\n"
           "Available arguments:\n"
           "    -h      Show this help message and quit.\n"
           "    -v      Show version of kinit(ctl) and quit.\n"
           "\n"
           "Made with love by australis and aurelius\n"
           "");
}

void errorPrint(char msg[4095]) {
    printf("[x] %s\n", msg);
}
void logPrint(char msg[4095]) {
    printf("[*] %s\n", msg);
}
void finishedPrint(char msg[4095]) {
    printf("[+] %s\n", msg);
}
// this is probably never gonna be used but ill add it anway
// questionprint is when waiting for user input
void questionPrint(char msg[4095]) {
    printf("[?] %s\n", msg);
}

void warningPrint(char msg[4095]) {
    printf("[!] %s\n", msg);
}

void PerformSanityChecks() {
    logPrint("Checking for root...");
    if (getuid() == 0) {
        finishedPrint("Running as root! :)");
    } else {
        errorPrint("Not running as root. Quitting here.");
        exit(1);
    }
}