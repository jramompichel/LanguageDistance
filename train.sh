#!/bin/bash

TREINO="/content/LanguageDistance/corpora/train"
PROG="/content/LanguageDistance/scripts"
MODEL="/content/LanguageDistance/models"

Target=$1

 echo "building model of $Target"
 cat $TREINO/$Target".txt" |tr -d '\015' |$PROG/transcript.perl |$PROG/tokenizer_ch.perl  |$PROG/7grams.perl  |$PROG/model_setegrams.perl $Target 


