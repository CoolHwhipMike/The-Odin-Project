## What name is typically given for a Git remote that points to a repo that’s been forked?
The repo that has been forked is 'upstream' and your fork is 'origin'

## Can you directly send your changes to a repository that you don’t own/have write access to?
No, you push it to your fork and then create a pull request (PR)

## What should you do immediately before merging your feature branch into main?
fetch and merge (pull) upstream into main of your fork. Then merge the updated main into your feature branch. Then push to github.