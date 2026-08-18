#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "utils.h"
#include <zconf.h>

int main(int argc,char **argv) {
    if (argc < 3) {
        printf("[x] No service given or unknown argument.\n");
        return 1;
    }

    // I am a fucking architect
    if (strcmp(argv[1], "enable") == 0) {
        PerformSanityChecks();
    } else if (strcmp(argv[1], "disable") == 0) {
        PerformSanityChecks();
    } else if (strcmp(argv[1], "start") == 0) {
        PerformSanityChecks();
    } else if (strcmp(argv[1], "stop") == 0) {
        PerformSanityChecks();
    } else if (strcmp(argv[1], "restart") == 0) {
        PerformSanityChecks();
    } else {
        printf("[x] Unknown command: %s\n", argv[1]);
        return 1;
    }

    return 0;
}