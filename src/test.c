#include "gitmsg.h"
#include "gitapi/gitapi.h"
#include "utils/repoinfo.h"
#include <stdio.h>

int main(int argc, char** argv)
{
    printf("add(1, 2) = %d\n", add(1, 2));
    initGitApi();
    killGitApi();
    return 0;
}
