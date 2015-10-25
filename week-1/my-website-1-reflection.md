- Paste a link to your [USERNAME].github.io repository.
  - masopie.github.io

- Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.
  1. Once you've logged into GitHub, click "Create New..." in the upper-right corner and then "New respository".
  2. Go through the required steps: name & describe the repository, choose whether anyone can see it (Public) or whether you want to choose who can view it on a case-by-case basis (Private), choose to add a .README (letting you clone it immediately), and add a license!
  3. Click "create repository" and it should take you to your new repository's page. Go ahead and copy the URL listed in a field titled "HTTPS clone URL" on the lower-right of the screen.
  4. Open your CLI (Command Line Interface - Terminal if you're a Mac user) and navigate to your desktop (or wherever you'd like to keep your local Git repositories).
  5. When in your desired directory, type:
  	**git clone [url]**
  	where [url] is the link you copied from GitHub.
  6. ...There! Repository created and cloned locally!

- Describe what open source means.
	- Open source means that the source code of a program is visible to anyone. This, in turn, means that it can be replicated and fiddled with by anyone. 

- What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?
	- That's tough and I'm tempted to say that it's a little of each. But that's too ambivalent, and being ambivalent is the dying the worst death (whoa ok that sounded a little morbid). So, to hell with it: it feels like a utopia because it's absolute transparency of knowledge. Open Source, in my novice understanding, doesn't compromise creative credit or ownership, it just may mean rethinking how you monetize what you do (eg. the first article's WordPress example of selling extra services).

- Assess the importance of using licenses.
	- The variety of licenses can fit the variety of needs your project may have. Even "open source" code needs to protect the creator & important contributors! For example, while the Creative Commons License expressly prohibits using work for commercial purposes, the MIT License says "Hey, do anything you want! Just make sure you keep the license agreement included."

- What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?
	- Cloning (so, SO damned easy to mix up with "pull" and others), and making sure to take great care when making, handling, & merging branches locally with Git were solidified here. "Aha" moment: finally being able to accurately picture the direction in which merging branches would work with each of the commands. HOLY COW.

	- I'd guess that my struggles were similar to many others' struggles: bringing files from remote to local and pushing them back was pretty simple and fun -- good visuals on GitHub to help the process. However, the purely text-based Git command work was tough to get comfortable with.

- Did you find any resources on your own that helped you better understand a topic? If so, please list it.
	- http://gitready.com/beginner/2009/01/18/the-staging-area.html provided some great and **extremely succinct** cheatsheet-style descriptions of the stages involved in moving about in Git.