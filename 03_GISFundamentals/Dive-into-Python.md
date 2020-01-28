---
Title: Dive into Python
Author: John Fay
Data: Spring 2020
---

# GIS Practicum (Energy): *"Diving into Python"*

> This lesson borrows heavily from a solid Python introductory course located here: 
> https://geo-python.github.io/site/

## Accessing your Jupyter notebook

We'll be running our Python commands in Jupyter notebooks hosted on Duke's Virtual Machine Manager. We haven't time to run through the process of installing Python on our own machines, though that process is mentioned [here](hhttps://geo-python.github.io/site/course-info/installing-anacondas.html). Instead, we'll dive right in and learn via experience, starting with learning what Jupyter Notebooks are and how we run Python via these notebooks. 

1. Navigate to https://vm-manage.oit.duke.edu/containers and log in.
2. Find the ENVIRON859 docker container and create the environment.

If successful, you should see the Jupyter Dashboard- a sort of file manager where you can create, open, rename, delete, etc. files. 

![](.\media\Jupyter_dashboard.png)



## Creating a new Jupyter notebook

By default, you have no files in your directory. Let's create one:

1. In your Jupyter dashboard, click `|New ▼|` and then from the dropdown menu select `Python 3`. A new notebook will appear in a new browser window. Navigate back to your Jupyter dashboard and you'll see that page appear as Untitled.

2. Back in your new "Untitled" notebook, in the **code cell** that appears type:

   ```python
   print("Hello world")
   ```

3. Now click the `►| Run` button. (Or hit <ctrl>+<enter>). This executes the Python command typed in the cell. 

4. Rename (`File` > `Rename`) your notebook to "My First Notebook". 

5. Save your notebook.

6. Close and Halt your notebook. 

Each notebook we create is associated with a **kernel**, i.e. it's own dedicated Python engine. When we select "Close and Halt", that shuts down that kernel, which will restart when we open the notebook again. *Just closing the web page does not shut down the kernel.* (More about kernels later...)



## Uploading a notebook to your workspace

Now, let's upload a notebook:

1. Download the file located [here](https://johnpfay.github.io/EnergyPracticum2020/Materials/a-taste-of-python.ipynb) to your local machine. This file, with the `.ipynb` extension is an *iPython notebook file*. 
2. Once downloaded, navigate back to your Jupyter Dashboard, and click **Upload**.
3. Navigate to the `a-taste-of-python.ipynb` file you just downloaded and upload that file. The file should now appear on your dashboard.
4. Open the notebook. 

Here we see that notebooks are not just code, but rather a mix of code and formatted text. This is a useful feature of Jupyter notebooks!



## A Taste of Python

We'll now run through the `a-taste-of-python` notebook introducing us to many features about the Python language, including:

* Python functions
* Math operations (and loading libraries)
* Combining functions
* Variables
* Updating variables
* Variable values
* Data types
* Character input



## More on Python

* http://swcarpentry.github.io/python-novice-inflammation/01-intro/index.html
* https://jakevdp.github.io/WhirlwindTourOfPython/
  * Try this in a Jupyter terminal: `git clone https://github.com/jakevdp/WhirlwindTourOfPython`
  * Exercises: `git clone https://github.com/ENV859/PythonExercises`
* https://www.datacamp.com/home