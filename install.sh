#!/bin/sh

TEXMF=$(kpsewhich -var-value=TEXMFHOME)
RDIR=tex/latex/Stundenzettel

install -vd "$TEXMF/$RDIR"
install -v -m 644 stundenzettel.cls "$TEXMF/$RDIR"
install -v -m 644 stundenzettel.tex "$TEXMF/$RDIR/stundenzettel.tex.templ"

mktexlsr "$TEXMF"


