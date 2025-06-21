#include <pwd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>


int main(int argc, char *argv[])
{
    mode_t mode;
    char *endptr;

    if (argc != 3 || argv[1][0] == '\0') {
        fprintf(stderr, "%s <mode> <file>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    mode = (mode_t)strtol(argv[1], &endptr, 8);
    if (*endptr != '\0') {
        fprintf(stderr, "<mode> must have integer identifier!\n");
        exit(EXIT_FAILURE);
    }

    if (chmod(argv[2], mode) == -1) {
        fprintf(stderr, "error");
        exit(EXIT_FAILURE);
    }

    exit(EXIT_SUCCESS);
}