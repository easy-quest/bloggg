#!/usr/bin/env bash

# FILENAME=main.py
# if [ -e ./$FILENAME ]; then
#    echo Файл уже создан!
# else
#    # else body
#    # else if body
#    cat >$FILENAME <<ZZZ
# #!/usr/bin/env python3
# import requests

# url = "https://bbc.com/news"
# response = requests.get(url)
# rint(response.text[:1000])
# ZZZ
# fi

# DIRNAME=./.venv/
# if [ -d $DIRNAME ]; then
#    echo Виртуальное окружение уже создано!
# else
#    /usr/bin/python3 -m venv .venv
#    # else body
#    echo Виртуальное окружение созданно сдесь $DIRNAME
# fi

# FILENAME=.envrc
# if [ -e $FILENAME ]; then
#    echo Файл уже создан!
# else
#    cat >$FILENAME <<ZZZ
# source .venv/bin/activate
# ZZZ
# fi

# FILENAME=.envrc
# if [ -e $FILENAME ]; then
#    echo Пробуем активировать виртуальную среду!
#    direnv allow
# else
#    cat >$FILENAME <<ZZZ
#     source .venv/bin/activate
# ZZZ
# fi

BINPY=./.venv/bin/python3.9
if [ -e $BINPY ]; then
    ./.venv/bin/python3.9 -m pip install -U pip setuptools wheel
else
    echo pip ERROR
fi
