## How can you amend your last commit?
with git commit --amend

## What are some different ways to rewrite history?
with amend, rebase, squash

## What is a safe way to push history changes to a remote repository?
use --force-with-lease rather than --force

## What are the dangers of history-changing operations
You can overwrite others changes or delete files/changes

## What are best practices of history-changing operations
Don't push after every commit, that way you can change history locally.
Discuss with everyone involved.

## Explain what it means for branches to be pointers
A branch points to a single commit. Then that commit points to the next commit and so on.