# Shell Scripts

This repository has scripts that will help you install apache, mysql, php, phpMyAdmin as per project requirement on the server instead of installing them individually. This will help the developers from individually searching the applications online and exceuting the commands one by one.

### Prerequisites

A Ubuntu server or Desktop machine.

```
Ubuntu 14.04
Ubuntu 16.04
Ubuntu 18.04
Ubuntu 20.04
```

## Executing
Follow the steps below to execute lamp.sh. 
Execute the below command one after another in the terminal
Current I've placed **lamp.sh** file in the home directory and running the script directly from my home directory. You can place it any where you want, just make sure you specify the path correctly.

```
ubuntu@aniruddhasm:~$ sudo a+x lamp.sh
ubuntu@aniruddhasm:~$ ./lamp.sh
```

## Scripts with name and description

* [lamp.sh](https://github.com/aniruddhasm/scripts/blob/master/lamp.sh) - This will install Apache2, MySQL, PHP, phpMyAdmin on the server in a single command. Please refer the comments mentioned in the script before running it directly.
