$ git checkout -b test-branch 56a4e5c08

...do your thing...

$ git checkout master
$ git branch -d test-branch


```
    git clone https://git.suckless.org/st
    cd st/
    echo tags > .gitignore
    git add .gitignore
    git commit -m "adiciona .gitignore"

    vi goal
    git add goal
    git commit  -m "Adiciona goal, com etapas do desenvolvimento"

    v goal
    git add goal
    git commit  -m "Configura fonte"

    git checkout -b doing 28b424a
    v config.def.h
    git add config.def.h
    git commit  -m "done: Configura fonte"
    git format-patch --stdout HEAD^ >  ../_patches/st-configura-fonte-`date +%Y%m%d`-`git log -n1 --format=format:"%h"`.diff
    git m
    git branch -D doing
```



echo  ../_patches/st-configura-fonte-`date +%Y%m%d`-`git log -2 --format=format:"%h"|tail -1`.diff
