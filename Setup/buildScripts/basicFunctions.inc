#!/bin/bash

pushd `dirname $0` > /dev/null
SCRIPT_PATH=`pwd`
popd > /dev/null

MY_PATH=`dirname ${BASH_SOURCE[0]}`

source $MY_PATH/config.inc

# set up color commands
if [ -t 1 -a -t 2 -a \( `type -t tput` = "file" \) ]; then
  _colors=`tput colors`
  if [ "$_colors" -ge 256 ]; then
    INFO () { tput setaf 33;  /bin/echo "$@"; tput sgr0; }
    OK   () { tput setaf 28;  /bin/echo "$@"; tput sgr0; }
    WARN () { tput setaf 226; /bin/echo "$@"; tput sgr0; }
    ERR  () { tput setaf 196; /bin/echo "$@"; tput sgr0; }
  else
    INFO () { tput setaf 4; /bin/echo "$@"; tput sgr0; }
    OK   () { tput setaf 2; /bin/echo "$@"; tput sgr0; }
    WARN () { tput setaf 3; /bin/echo "$@"; tput sgr0; }
    ERR  () { tput setaf 1; /bin/echo "$@"; tput sgr0; }
  fi
else
  INFO () { /bin/echo "$@"; }
  OK   () { /bin/echo "$@"; }
  WARN () { /bin/echo "$@"; }
  ERR  () { /bin/echo "$@"; }
fi


function get_web_getter() {
  # get a getter
  if [ \! -z `type -t curl` ]; then
    GET="curl --silent --location --compressed -O"
  elif [ \! -z `type -t wget` ]; then
    GET="wget --quiet"
  else
    ERR "No getter (curl/wget)"
    exit 1
  fi
  OK Getter is \"$GET\"
}

function check_for_tools() {
  INFO -n 'Tools: '
  for tool in $@; do
    if [ -x `type -t $tool` ]; then
      WARN -n No $tool
    else
      INFO -n "$tool "
    fi
  done
  OK ok.
}

function load_submodule() {
  INFO Load "$1"
  git submodule init $1
  git submodule sync $1
  git submodule update $1
}

function check_for() {
  if [ -z `which $1` ]
  then
    ERR "$1 binary not found. $2"
    if [ ! "non-fatal" == "$3" ]
    then
      exit 1
    fi
  fi
}

function check_for_crystal() {
  check_for "crystal" "Please see http://crystal-lang.org/docs/installation/index.html" "$1"
}

function check_for_node() {
  check_for "node" "Please see https://nodejs.org/en/download/" "$1"
}

function check_for_pypy() {
  check_for "pypy" "https://pypy.org/download.html" "$1"
}

function check_for_ant() {
  check_for "ant" "http://ant.apache.org/bindownload.cgi" "$1"
}

function check_for_graalvm() {
  if [ ! -e "$1/bin/java" ]
  then
    ERR "GraalVM not found."
    ERR "To run benchmarks on the GraalVM, please see 'implementations/graalvm/README.md'"
  fi
}


function checkout() {
	if [[ ! -d $1 || ! -d "$1/.git" ]]
  then
    if [ ! -d $1 ]
    then
      mkdir $1
    fi
    pushd $1
    if [ $# -eq 3 ]
    then
      INFO Cloning git repository from $3
      git clone -b $3 --depth=1 $2 $1
      load_submodule    	
    else
      git init
      git config core.sparseCheckout true
      git remote add -f origin $2
      for dir in $(echo $4 | tr ";" "\n"); do
        echo "$dir" >> .git/info/sparse-checkout    
      done  
      git pull --depth=1 origin $3
      git checkout $3
      load_submodule
    fi
    popd > /dev/null
  else
    WARN $2 was already cloned, Updating
    pushd $1
    git pull origin $3
    load_submodule
    popd > /dev/null
  fi
}

function update_git_repo() {
  #default remote = origin
  if [ ! -z $2 ]
  then
    remote=$2
  else
    remote="origin"
  fi

  if [ -d $1 ]
  then
    pushd $1
    reponame=`git remote show $2 | grep Fetch | cut -d ' ' -f 5`
    branchname=`git branch | grep \* | cut -d ' ' -f 2`
    INFO Updating git repository $reponame branch $branchname
    echo git pull $remote $branchname
    git pull $remote $branchname
    INFO Updating submodules
    load_submodule
    if [ -f Makefile ]
    then
      INFO Compiling
      JIT=1 make clean; JIT=1 make
    fi
    popd > /dev/null
    OK done
  fi
} 

function find_and_link() {
  INFO "$2 is still not linked, linking..." 
  dir=${!1}
  if [ -d $dir ]
  then
    app_dir=$dir    
  else
    INFO "${1} env variable not set in config.inc or its pointing to a wrong directory, let's try the $2 directories in your os"
    look_in_and_choose "$HOME" $2 $3
  fi
  if [ ! -z $app_dir ]
  then
    if [ -L $2 ]
    then
      rm $2
    fi
    INFO "Linking $2 to $app_dir"
    `ln -s $app_dir $2`
    OK done
  else
    WARN "$2 was not linked in $PWD, experiments will failed! Please go to config.inc and fill the directory in the corresponding variable"
  fi
}

function look_in_and_choose() {
  #output=`find "$1" -d -iname $2`
  output=$3
  vars= IFS=' ' read -r -a options <<< "$output"
  PS3='Please enter your choice: '
  installed=`which $2`
  select opt in "${options[@]}" "$installed" "Quit" 
  do
      if [ $opt = "Quit" ]
      then
        break;
      else 
        app_dir=$opt
        break
      fi
  done
}

function download_file {
  if [ ! -f $1 ]
  then
    get_web_getter 
    $GET $2
  fi
}

function download_zip {
  download_file $1 $2
  unzip $1
  rm $1
}

function buildBench {
  INFO Building $1 Benchmarks
  pushd $2
  $3
  popd > /dev/null
  OK $1 Benchmarks Build Completed. 
  
} 

pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}
