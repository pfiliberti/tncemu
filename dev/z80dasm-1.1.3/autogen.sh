#! /bin/sh
#
# $Id: autogen.sh,v 1.1 2007-06-14 08:12:52 avian Exp $
#
# Run the various GNU autotools to bootstrap the build
# system.  Should only need to be done once.

# for now avoid using bash as not everyone has that installed
CONFIG_SHELL=/bin/sh
export CONFIG_SHELL

echo -n "Running aclocal... "
aclocal $ACLOCAL_FLAGS || exit 1
echo "done"

echo -n "Running autoheader... "
autoheader || exit 1
echo "done"

echo -n "Running automake... "
automake -a -c || exit 1
echo "done"

echo -n "Running autoconf... "
autoconf || exit 1
echo "done"

echo "You must now run configure"

echo "All done with autogen.sh"

