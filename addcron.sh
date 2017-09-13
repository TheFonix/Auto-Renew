#!/bin/bash
echo "Created by Fonix Hardcastle"
echo "   https://fonix.online"
echo ""
	echo ""
		sleep 1
			echo " making sure that you have letsencrypt/certbot installed"


#Letsencrypt Script!
gnudate() {
    if hash letsencrypt 2>/dev/null; then
        echo "letsencrypt Was found!"
        	sleep 2
        cd
		echo "Copying the Current cron to a local folder"
			crontab -l > currentcron
		echo "Adding the Renew "
		echo "* 12 10-16/2 * * root letsencrypt renew" >> currentcron
		echo "Send the Crontab File back to the Cron Application"
			crontab currentcron
		echo "Deleting the Edited Cron File! "
			rm currentcron

        gnudate() {
    if hash cron 2>/dev/null; then
        echo " Cron has been found!"
    else
        echo " For some unknown reason you dont have Cron install! I shall fix this!"
        sleep 2
        echo "Updating Apt Repo"
        sleep 1
        sudo apt-get update
        echo "Installing Cron Via APT"
        sleep 1
        sudo apt-get install cron
        echo "Checking the Cron service is started and running"
        sleep 2
        sudo service cron start

    fi
}
    else
        echo " I couldnt find an installation of letsencrypt?"
        sleep 1
        echo " Checking for Certbot"

#Certbot Script!
   gnudate() {
    if hash certbot 2>/dev/null; then
        echo "Cerbot Was found!"
        sleep 2
        cd
		echo "Copying the Current cron to a local folder"
		crontab -l > currentcron
		echo "Adding the Renew "
		echo "* 12 10-16/2 * * root certbot renew" >> currentcron
		echo "Send the Crontab File back to the Cron Application"
		crontab currentcron
		echo "Deleting the Edited Cron File! "
		rm currentcron


    else
        date "I couldnt find a version of certbot either! :( Double check you have it installed!"
        	echo "Use the following command to install it!"
        	echo ""
        	echo "---> sudo apt-get install letsencrypt <---"
        	sleep 2
    fi
}        
    fi
}

        	echo ""
        	echo ""
        	echo "Goodbye My friend!"
