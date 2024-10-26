#!/bin/csh -f

# Allow a previously defined $iraf to be used.
if ( ! ( $?iraf )) then
    setenv iraf	/Users/tarikzegmott/iraf/
endif

# Allow a previously defined $IRAFARCH to be used.
if ( ! ( $?IRAFARCH )) then
    setenv IRAFARCH	`$iraf/unix/hlib/irafarch.sh -actual`
endif

# Development environment
# not loaded by default
#source $iraf/unix/hlib/irafuser.csh

set path = ($HOME/.iraf/bin $path)
set cdpath  = ($iraf $iraf/pkg $iraf/noao $iraf/sys $iraf/unix $iraf/unix/boot)

# The world'd most obvious alias ....
alias iraf	"xgterm -e cl &"

rehash

