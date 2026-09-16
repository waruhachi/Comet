#!/usr/bin/env bash
set -euo pipefail

# Installs the .framework into $THEOS/lib/.
# Usage: ./install_to_theos.sh

make clean
make package FINALPACKAGE=1
cp -Rv "./.theos/obj/Comet.framework" "$THEOS/lib"

make clean
make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless
cp -Rv "./.theos/obj/Comet.framework" "$THEOS/lib/iphone/rootless"

make clean
make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=roothide
cp -Rv "./.theos/obj/Comet.framework" "$THEOS/lib/iphone/roothide"

echo "Successfully installed Comet"