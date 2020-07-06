# initialize git repository
  git init

# stage a file (new/modified)
  git add file_name

#stage all untracked or modified file
  git add .

# git commit to local repository
  git commit -m 'short message'

#git commi to local for log commit message.  it wil open text editor to write detailed commit
  git commit 

#git clone from remote. if local project name is not provided it will create the repository with  remote project name
  git clone <git_url/project.git>    <local project name (optional)>


# Add remote repository information to local.
   git remote add <name> <remote url>  # it will create alias for remote url "<name>".

# pushing commits from local repository to remote repository.
# -u ( set up-stream ) tract this branch 
 
  git push -u [remote url | alias] [branch name]
  
  git push # next time only this will enough. it use previou value.

# Git commit graph represents commit history in form of DAG)
  git log --onelline --graph


#  Git ID's are sha1 value of content | git object name and ID's are same.
# 
#  GIT Objects : 
#
#  	1. commit object - small text file
#  	2. Annotated tag - a reference to specific git commit
# 	3. Tree 	 - file and directory in project
# 	4. Blob		 - stores content of file.

# git command to get sha-1 value of file content
  git hash-object <file>


# shortening the the sha1 code to access git commit id.
  git log --oneline # shows 7 digit git commit id
  git show XXXX # using 4 digit git commit id we can the info about the commit

#  ---  Git referneces and HEAD reference --- #

# head reference points to current  commit only.
# use of ( ~ | ^)
    git show HEAD~   #to show parent of latest commit.
    git show [HEAD~~ | HEAD ~2]  # to show parent of parent commint.
    git show HEAD^  # shows the parent commint
    git show HEAD^^ #show the parent of parent commit.
    git show HEAD^2 #show sendon parent if exits otherewise it will throw error.

# TAGs
  git tag #to view tag
  git tag -a -m "message" <tag id>  <commit> 
  #attches tag to specific commit if commit id is not provided it attach tag to HEAD commit.
  git push origin <tag id> #Push the tag to the remote repository
  git tag -d <tag id>      # to delete tag

# -- Git Branch command ---#

  git branch <branch name>
  git checkout <branch name>

  # Create branc and checkout 
  git checkout -b <branch name>
  
  # Delete branch only not commit
  git branch -d <branch name>

  # Delte branch parmanently with commit
  git branch -D <branch name>


# --- Git Merge command ---#

 # git fast-forward merge
 git merge <branch> # it merge if graph has linear commit history histor 
 
 # merge with merge commit
 git merge --no-ff <branch>
 
# --- merge conflict --- #
# if merge conflict arises, we need to open the conlict file and resolve the cnflict.
  git checkout <base branch| master>
  git merge <branch name>
  git merge <branch name> 

  #if conflict arises 
  git status 
   #View the fileA.txt file. Notice the conflict markers in the file. That is the part of the merge that Git couldn't automatically resolve. Mannually resolve the conflict.
  git merge <branch name>
  # OR
  git merge --abort # To aboart the merge

# --- Tracking branch --- #
  #list all branches local and remote
  git branch --all
  
  # to see all commits from local/tracking branch
  git log --all --oneline --graph
  
  # set default remote tracking to different branch
  git remote set-head <remote> <branch>


