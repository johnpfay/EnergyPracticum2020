```yaml
Title: Class Setup
Class: ENV 790 - GIS Practicum (Energy)
Author: John Fay
Date: Spring 2020
```

# Class Setup



### 1. Creating your ArcGIS Online account

* Navigate to https://dukeuniv.maps.arcgis.com
* Click the sign-in button at the top right. 
* Select Enterprise login, and click the blue Duke University button. 
* Log in using your Duke NetID and Password. This will initialize your Duke AGOL account.



### 2. Creating your virtual machine 

* Log on to https://vcm.duke.edu/
* Click "Reserve a VM"
* For the Application and Operating System, select `Windows Office 2016`
* When the VM is ready, note the machine name, something like `vcm-12345.vm.duke.edu`
* To access this machine, use Window's Remote Desktop app and enter your machine's name. Use your normal Duke NetID and password. 



### 3. Installing apps on your virtual machine

* First, it's wise to install any windows updates on your virtual machine.

* Open Software Center via the icon on your VM's desktop. Install the following apps:

  * **7-zip**
  * **Google Chrome**
  * **Notepad ++**

  → If your Software Center app fails to show a list of apps to install, use https://ninite.com/. 

* Navigate to https://duke.box.com/v/arcgisprov24 and download to your VM. 

* Run the downloaded .exe to unpack the **ArcGIS Pro** installation files and then install ArcGIS Pro.



### 4. Signing into ArcGIS Pro

* When ArcGIS Pro is install, open the app. 
* When asked to sign in, select Enterprise Login and specify `dukeuniv.maps.arcgis.com` as the organization URL.
* Next, click the Duke University button which will bring up the familiar Duke Login screen.
* ArcGIS Pro should then open. If it fails contact me to get this straightened out.



### 5. Mapping your class drives to your virtual machine

* Create a new text file on your desktop.
* Rename it to `login.bat`. Windows should ask you to confirm you are changing the file type. If not, you'll need to alter your Windows setting so that extensions of known files are shown... - see [this link](https://www.techadvisor.co.uk/how-to/windows/windows-10-file-extensions-3697651/).
* Copy the text below into this text file and paste it into your local "bat" file, ==being sure to change my netID (jpfay) with yours==.

```
if exist M: (net use /delete M:)
net use M: \\NS-GIS2.WIN.DUKE.EDU\ENV790_2020 

if exist P: (net use /delete P:)
net use P: \\NS-GIS2.WIN.DUKE.EDU\ENV790_2020\jpfay
```

* Double click the `login.bat` file and two new drives should appear on your machine: 
  * `M:` points to the class folder on the class server
  * `P:` points to your personal folder on the class server

> **NOTE ON USING YOUR MAPPED DRIVES** 
>
> * Removing files stored on these drives do NOT go into the recycle bin but rather are deleted immediately. So take care!
>
> * These drives are backed up nightly, meaning if you mistakenly delete a file or it becomes corrupt, I can fetch a file saved the previous day or up to 90 days earlier. 



