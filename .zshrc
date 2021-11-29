# deletes all [gone] remote branches from local
function gb-clear() {
  git fetch --prune
  git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D
}

# deletes all [gone] remote branches from local and syncs local with remote
function gsync {
    git fetch --prune
    git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D
    git pull
}