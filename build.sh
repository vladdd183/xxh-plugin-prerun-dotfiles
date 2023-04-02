#!/usr/bin/env bash

CDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
build_dir=$CDIR/build

while getopts A:K:q option
do
  case "${option}"
  in
    q) QUIET=1;;
    A) ARCH=${OPTARG};;
    K) KERNEL=${OPTARG};;
  esac
done

cd $CDIR
rm -rf $build_dir && mkdir -p $build_dir

REMOTE_ARCH=$(ssh $XXH_USER@$XXH_HOST "uname -m")

echo "ARCH<==>$REMOTE_ARCH"
mkdir -p $build_dir/home/.local/bin/
if [ "$REMOTE_ARCH" == "x86_64" ]; then
    cp $CDIR/bin/x86_64/* $build_dir/home/.local/bin/
elif [ "$REMOTE_ARCH" == "arm64" ]; then
    cp $CDIR/bin/arm64/* $build_dir/home/.local/bin/
elif [ "$REMOTE_ARCH" == "aarch64" ]; then
    cp $CDIR/bin/aarch64/* $build_dir/home/.local/bin/
else
    echo "Unsupported architecture: $REMOTE_ARCH"
    exit 1
fi


for f in *prerun.sh home
do
    cp -R $CDIR/$f $build_dir/
done

if [ -x "$(command -v pip)" ]; then

  PYTHONUSERBASE=$build_dir/home/.local pip install --user -I -r pip-requirements.txt
  
  # Fix python shebang
  pypath=`readlink -f $(which python)`
  if [ -d "$build_dir/home/.local/bin" ]; then
    echo 'Fix PyPi packages shebang'
    sed -i '1s|#!'$pypath'|#!/usr/bin/env python|' $build_dir/home/.local/bin/*
  fi
  
else
  echo 'Skip pip packages installation: pip not found.'
fi
