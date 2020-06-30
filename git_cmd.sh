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


