#!/bin/sh
#
# This script should be called within a local git directory. 
# It takes the local changes in the git directory and copies them over to a
# specified remote git directory. 
#
# $1: REMOTE_HOST the hostname of the remote host to scp the files to
# $2: REMOTE_PATH_ARG the path to the git root on the remote host

# Get the host to scp to
REMOTE_HOST=$1
# Get the remote path to the git server and append a / if not appended
REMOTE_PATH_ARG=$2
REMOTE_PATH_TO_GIT_ROOT_NO_TRAILING_SLASH=$(echo "$REMOTE_PATH_ARG"|sed 's/\/$//g')
REMOTE_PATH_TO_GIT_ROOT=$REMOTE_PATH_TO_GIT_ROOT_NO_TRAILING_SLASH"/"

# Get the path to the git room and append a /
path_to_git_root_incomplete=$(git rev-parse --show-toplevel)
path_to_git_root=$path_to_git_root_incomplete"/"

# Gets the path to the changed files, path relative to git root
local_path_to_changed_files=($(git diff --name-only)) # (..) = array

for i in "${local_path_to_changed_files[@]}"
do
    scp $path_to_git_root$i $REMOTE_HOST:$REMOTE_PATH_TO_GIT_ROOT$i 
done


