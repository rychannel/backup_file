#!/bin/bash

BINDIR="/usr/local/bin";

SCRIPTFILE="./backup_file";

echo "Installing backup_file ...";
if [ -r $SCRIPTFILE ]; then

 #Check to make sure BINDIR exist.
  if [ ! -d $BINDIR ]; then
    echo -n "  Creating $BINDIR ... ";
    mkdir -p $BINDIR;
    echo "done."
  fi

 #Copy SCRIPTFILE and UPDATEFILE to BINDIR
  echo -n "  Copying scripts into place ... ";
  chmod 755 $SCRIPTFILE
  cp $SCRIPTFILE $BINDIR
  echo "done.";

  echo "";
  echo "Installation is complete.";
  echo "";

else
  echo "";
  echo "One of the following files is not present:";
  echo "  $SCRIPTFILE";
  echo "  $CRONTABFILE";
  echo "";
  echo "Make sure that you are in the right directory,";
  echo "and have access to the files.";
  echo "";
fi
echo "done.";
echo "";
