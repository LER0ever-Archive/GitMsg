#include <git2.h>
#include "gitapi.h"

void initGitApi()
{
    git_libgit2_init();
}

void killGitApi()
{
    git_libgit2_shutdown();
}
