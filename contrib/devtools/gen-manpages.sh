#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

EREXCOIND=${EREXCOIND:-$BINDIR/erexcoind}
EREXCOINCLI=${EREXCOINCLI:-$BINDIR/erexcoin-cli}
EREXCOINTX=${EREXCOINTX:-$BINDIR/erexcoin-tx}
EREXCOINQT=${EREXCOINQT:-$BINDIR/qt/erexcoin-qt}

[ ! -x $EREXCOIND ] && echo "$EREXCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
EREXVER=($($EREXCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for erexcoind if --version-string is not set,
# but has different outcomes for erexcoin-qt and erexcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$EREXCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $EREXCOIND $EREXCOINCLI $EREXCOINTX $EREXCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${EREXVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${EREXVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
