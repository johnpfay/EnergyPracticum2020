---
Title: Saving & Submitting your EV Workspace
Author: John Fay
Date: Spring 2020
---

# Saving and submitting your EV workspace

Here we cover three methods for saving and submitting your Jupyter notebooks. Before we go into these options, however, let's quickly cover what should be included in each notebook:

## Jupyter Notebook Guidlines

* **Add "markdown" cells to your code, particularly at the top, to allow for formatted text briefly describing what the script does.**  This [LINK](https://jupyter-notebook.readthedocs.io/en/stable/examples/Notebook/Working%20With%20Markdown%20Cells.html) provides an overview of how to add markdown elements to your text. You can also double-click on the markdown cells I provide in the notebooks I provide in the EV_Network workspace. 
* **Include your name (or email) and a date in the header of your script.** 
* **Include comments in each code cell to describe what the cell does.** Again, use the notebooks I provide for guidance.
* **Strive for clear, understandable code**. Use logical variable names and remove unnecessary processes. Try to maintain a logical workflow. 
* **Remove unnecessary code**. If it's not relevant to your overall objective in the script, remove the code. (This includes the "proof of concept" code cells I include in my demo notebooks!)

---

## Option 1. Download to local machine

The first option is the simplest, but also the most tedious. You simply open each notebook you created, and when open you download it to your local machine by selecting `File`>`Download as ►`> `Notebook (.ipynb)`. For non-notebook files, you can select them, one at a time, by clicking the check box next to them, and when selected you click the `Download` button. 

When all documents are downloaded, you can reconstruct your workspace by moving the files into their respective folders. Then zip this folder and submit to Sakai. 

---

## Option 2: Compressing and downloading your workspace as a single file

The second option involves compressing your entire workspace into a single "tar" file which you can download and submit. This is done with a linux command executing in the terminal of your virtual environment. Here are the steps:

1. **First, ensure all your notebooks are saved and their kernels shutdown.** You can easily see which notebooks may be running by clicking the `Running` tab from your Jupyter dashboard. You can shutdown any open notebooks, but any unsaved changes may be lost. 

2. **Open a new terminal window**. (`New ▼`>`Terminal`). This will open up a new terminal prompt where you will type your linux command.

3. **Compress your workspace using the Linux `tar` command**. Type the following command at the prompt. (Change the workspace name if your workspace is not called "EV_analysis"):

   ```bash
   tar -cvf EV_analysis.tar EV_analysis
   ```

   On running this command, you'll see a listing of the files added to your "EV_analysis.tar"

4. Back in your Jupyter dashboard, navigate to your root folder and you'll **see the new "EV_analysis.tar" file.** 

5. Click the check box next to this file and **download it to your local** machine. 

6. Submit this "tar" file to Sakai. 

   > Note: You can check the contents of your local tar file by unzipping as you would unzip any zip file (e.g. with 7-zip). (TIP: rename the extension from `.tar` to `.zip` if you need to.)

---

## Option 3: Creating a new GitHub repository and adding these files to it

This third option is the most involved, but it teaches you how to use Git and GitHub a bit more. The general process is to: (1) initialize your local workspace as a Git repository; (2) adding all your files to the newly initialized repository;  (3) set your local Git credentials; (4) create a new empty repository on GitHub.com; and (5) push your local files to the new GitHub.com repository. When that is set, you can continue to push local changes to the GitHub repository and finally just submit your repository URL to Sakai. 

### Step 1: Initializing your local workspace as a git repository. 

1. Open a terminal window in your virtual environment. 

2. Navigate to your local workspace folder using the `cd` command:

   ```bash
   cd EV_analysis
   ```

3. Check that the workspace is not already initialized as a "git" repository with the `git status` command:

   ```git
   git status
   ```

   > If it's not set up, you'll get an error: "fatal: not a git repository"... error, which is expected. Otherwise, you'll get an error free status message, in which case you will skip the next step.

4. Initialize the workspace as a git repository with the `git init` command:

   ```
   git init
   ```

   > On running this command, you'll get a message "Initialize empty Git repository in...". 

5. You can check everything is OK with a `git status` command...



### Step 2: Add and commit all your files to the newly initialized repository

1. In the same terminal as above (or in a new terminal, in your EV_analysis workspace), use the `git add *` to add all files.  

   ```
   git add *
   ```

2. Ensure all files have been added with the `git status` command:

   ```
   git status
   ```

3. Now we'll commit our adds with the `git commit` function, linking this commit with a short message:

   ```
   git commit -m "Initial commit of all files"
   ```

4. And once again, check our status:

   ```
   git status
   ```

### Step 3. Create a remote repository on GitHub.com 

1. Navigate to https://github.com and log in. 
2. Create a new repository by clicking the `+▼` dropdown in the upper right corner of the page and selecting `New repository`.
3. Give your repository the same name as your, e.g.  "EV_analysis"). Feel free to add a description, but leave all the other options as their defaults for now. Click `Create Repository`.

### Step 4. Set your Git credentials, link to your GitHub repository to its remote, and push changes

1. Set your git username and then your git email (replacing my GitHub username and email with yours!)

   ```
   git config --global user.name johnpfay
   git config --global user.email john.fay@duke.edu
   ```

2. Link your local repository with the remote repository created in the previous step. **Be sure to update the link to one pointing to the repository you created in step 3.** 

   ```git
   git remote add origin https://github.com/johnpfay/EV_workspace2.git
   ```

3. Finally, push your changes (stored in its "master" branch) to the remote repository we just assigned the name "origin": 

   ```
   git push origin master
   ```

   > This step may prompt you for your GitHub username and password, which is ok.

To check that everything is good, refresh your GitHub repository's web page and you should see your files and folders. Note: empty folders are not committed!  You can submit your GitHub.com repository and I can evaluate your work from there! 