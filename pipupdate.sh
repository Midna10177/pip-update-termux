#!/usr/bin/bash

#python program that gets our out of date packages and writes to requirements.txt
pythonProgram="H4sIAAAAAAAAA1WOMU/DMBCFd/+KIwxNJNoM3ZAywQosbKVCrn1pnMY+y3ce+u9xk1LKdnrv3qfv8aHNnNqDC208y0Bhq/pEHojB+UhJgM8s6JeU8yEmMsi31gxoTt+UJWZR12xkCkpZ7MHSy9trbch7HWzzrCCh5BT+rX7rJ+ABp6n7TBmbZX5Eedceub4QPw4jGrmD7NyuCqWu9tBTAgcuwN/jXimaD4ZujjcTacv1olRFF7cwORZYr4uH1YK2nAXktXSX/6ppVNTmpI84SxTMzedKLpoxuSD16iusNiO5UN8vCuAH8HkjIV8BAAA="

#pushd ~

#python3 -m venv .venv
#source .venv/bin/activate

python3 -m pip install -r <(python3 <(echo $pythonProgram | base64 -d | gzip -dc)) -U

#popd
