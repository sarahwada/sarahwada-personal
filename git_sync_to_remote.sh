#!/bin/sh
#
# This script should be called within a local git directory. 
# It takes the local changes in the git directory and copies them over to a
# specified remote git directory. 
#
# $1: REMOTE_HOST the hostname of the remote host to scp the files to
# $2: REMOTE_PATH_ARG the path to the git root on the remote host

# Get the host to scp to
REMOTE_HOST=""
# Get the remote path to the git server and append a / if not appended
REMOTE_PATH_ARG=""
# Get the SCP_DIFF arg. If it's true, send files in the diff. If it's false, send the files in the recent commit.
SCP_DIFF=false

while getopts ":h:p:d:" opt; do
    case $opt in
      h) REMOTE_HOST="$OPTARG"
      ;;
      p) REMOTE_PATH_ARG="$OPTARG"
      ;;
      d) SCP_DIFF="$OPTARG"
      ;;
      \?) echo "Invalid option -$OPTARG" >&2
      ;;
    esac
done

# Ensure that the path to the remote git root has a trailing slash
remote_path_to_git_root_no_trailing_slash=$(echo "$REMOTE_PATH_ARG"|sed 's/\/$//g')
remote_path_to_git_root=$remote_path_to_git_root_no_trailing_slash"/"

# Get the path to the git room and append a /
path_to_git_root_incomplete=$(git rev-parse --show-toplevel)
path_to_git_root=$path_to_git_root_incomplete"/"

# Gets the path to the changed files, path relative to git root
if [ "$SCP_DIFF" = true ] ; then
    # Get changed files that are not committed
    local_path_to_changed_files=($(git diff --name-only)) # (..) = array
else 
    # Get changed files that are committed
    local_path_to_changed_files=($(git diff-tree --no-commit-id -r --name-only HEAD))
fi

for i in "${local_path_to_changed_files[@]}"
do
    scp $path_to_git_root$i $REMOTE_HOST:$remote_path_to_git_root$i 
done


