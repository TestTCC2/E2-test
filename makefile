install:
        sudo apt-get install -f flex
        sudo apt-get install bison

run:
        bison -d e2.y
        flex e2.l
        cc -o calc lex.yy.c e2.tab.c e2-main.c
        ./calc < test.in > test.out

test:
        diff test.out test.ora || exit 1

all:
        make install
        make run
        make test

