#!/bin/bash
firefox="$(pidof firefox)"
if [ -e $firefox ]; then
  firefox
else
  echo "Não foi dessa vez."
fi
