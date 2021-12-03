#!/bin/sh
python3 -m venv /app/venv
. /app/venv/bin/activate

if [[ -n "$REQUIREMENTS_PACKAGES" ]]
then
    pip install $REQUIREMENTS_PACKAGES
fi

if [[ -n "$PACKAGE_VERSION" ]]
then
    pip install $PACKAGE_NAME==$PACKAGE_VERSION
else
    pip install $PACKAGE_NAME==$PACKAGE_VERSION
fi
$PACKAGE_NAME