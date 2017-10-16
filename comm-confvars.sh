#!/bin/sh

if [[ "$MOZ_BUILD_APP" == *comm* ]]
then
  # we are building with comm/ as the subdirectory
  # $srcdir is the mozilla repo, comm is in the subdir
  moztopsrcdir=$srcdir
  commtopsrcdir=$srcdir/comm

  mozreltopsrcdir=.
  commreltopsrcdir=comm

  commtopobjdir=$_objdir/comm
else
  # we are building with mozilla/ as the subdirectory
  # $srcdir is still the mozilla repo, so use the parent for comm
  moztopsrcdir=$srcdir
  commtopsrcdir=$srcdir/..

  mozreltopsrcdir=mozilla
  commreltopsrcdir=.

  commtopobjdir=$_objdir
fi
