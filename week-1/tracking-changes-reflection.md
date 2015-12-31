#Tracking Changes Reflection

###How does tracking and adding changes make developers' lives easier?

Tracking and adding changes greatly helps with version control of a project, especially when you are working with multiple people. This allows you to make incremental changes so that bugs are easier to find when a mistake is made and allows someone to easily go to the version they would like. That's why it is important to add changes frequently and note what the changes are so navigation is easy.

###What is a commit?

A commit is committing or finalizing your changes to a branch of the repository. After you add your changed/new files to the staging area, you can commit these changes to finalize it being apart of that branch in your repo.

###What are the best practices for commit messages?

Best practices for commit messages is to keep the header to 50 characters or less, keep the body to a width of 72 characters, and use the imperative form of verbs. There are a list of markdows one should follow to help it present well in html. It is also in good practice to give a title with a brief title of the changes and then putting more detail about the changes and resources used in the description.

###What does the HEAD^ argument mean?

The HEAD^ argument refers to the last commit. You can use this if you need to revert back to a previous commit. HEAD is your current commit and HEAD~3, HEAD~4, AND HEAD~5 refer to the 3rd, 4th, 5th commits back respectively.

###What are the 3 stages of a git change and how do you move a file from one stage to the other?

The 3 stages of a git change are create, add, and commit. Create is creating or editing the file. Add stages the changes. Commit commits them to the branch you are currently on.

###Write a handy cheatsheet of the commands you need to commit your changes?

- git add <filename>
- git add ./
- git commit
- git status
- git log

###What is a pull request and how do you create and merge one?

A pull request is adding a branch into your repo once it has been pushed to you if you are working or GitHub, or it can also be how you pull and merge the master branch hosted on a site like GitHub to your local master branch. To do the former you do git push <address of origin repo> to push it there. Then you go to GitHub, then to your pull request, and follow the steps to add the branch to your online repo. You can then merge it to the master branch (although when working with others, it is best practice to have someone else merge so they can check your work first). If pulling to your local machine you just type in git pull origin master or git pull <address of the repo> and it will automatically fetch and merge the branch. You can use git fetch, if you would rather do them separately.

###Why are pull requests preferred when working with teams?

Pull request are preffered when working in teams so that you can always ensure that you are working from the most recent master and so people can check your changes before merging them with the master branch.