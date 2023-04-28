#!/bin/bash/

SRC=en
TGT=de

#Please mention data folders here and uncomment

# INP=
# CODES=
# OUT=

# Source
subword-nmt learn-bpe --num-workers 1024 -s 24000 < $INP/train.$SRC > $CODES/codes.$SRC

subword-nmt apply-bpe --num-workers 1024 -c $CODES/codes.$SRC < $INP/train.$SRC > $OUT/train.$SRC

subword-nmt apply-bpe -c $CODES/codes.$SRC < $INP/test.$SRC > $OUT/test.$SRC

subword-nmt apply-bpe -c $CODES/codes.$SRC < $INP/valid.$SRC > $OUT/valid.$SRC


# Target
subword-nmt learn-bpe --num-workers 1024 -s 24000 < $INP/train.$TGT > $CODES/codes.$TGT

subword-nmt apply-bpe --num-workers 1024 -c $CODES/codes.$TGT < $INP/train.$TGT > $OUT/train.$TGT

subword-nmt apply-bpe -c $CODES/codes.$TGT < $INP/test.$TGT > $OUT/test.$TGT

subword-nmt apply-bpe -c $CODES/codes.$TGT < $INP/valid.$TGT > $OUT/valid.$TGT