# Shell Scripts

This repository has scripts that will help you install server environment as per project requirement on the server instead of installing them individually in much faster way. This will help the developers from individually searching the applications online and exceuting the commands one by one.

### Prerequisites

A fresh Ubuntu server or Desktop machine.

```
Ubuntu 14.04
Ubuntu 16.04
```

## Executing

Consider executing lamp.sh. 
Please execute the below command one by one in the terminal
Current I've placed **lamp.sh** file in the home directory and running the script directly from my home directory. You can place it any where just make sure you specify the path correctly.
```
sudo a+x lamp.sh
./lamp.sh
```
## The scripts

The following is a list of scripts and and detail explaination of what are they meant to do.

## Built With

* [lamp.sh](https://github.com/aniruddhasm/scripts/blob/master/lamp.sh) - This will install Apache2, MySQL, PHP(please verify with latest version) on the server in a single command. Please refer the comments mentoned in the script before running it directly
* [lamp-st.sh](https://github.com/aniruddhasm/scripts/blob/master/lamp-st.sh) 
This will install Apache2, MySQL, PHP(please verify with latest version) on the server in a single command along with sublime text 3. [Sublime Text 3](https://www.sublimetext.com/) is a light weight text editor and you will definitely require it for PHP development. Please run this script on local machine (desktop) if you are looking for PHP development. Please refer the comments mentoned in the script before running it directly.
