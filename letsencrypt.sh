#!/bin/bash
    echo "-----------------------------------------------------------------"
    echo "This is a script to add the Letsencrypt auto renew to crontab!"
    echo "This will not work for Certbot! Please use my other script!"
    echo "-----------------------------------------------------------------"
    sleep 2
    #Change to the user home directory
        cd
    #Copying the Current cron to a local folder
    crontab -l > currentcron
    #Adding the additions to the cureent Cron File
    echo "* 12 10-16/2 * * root service apache2 stop; sudo service nginx stop; letsencrypt renew; sudo service nginx start; sudo service apache2 start" >> currentcron
    #Inject new Cronfile
    crontab currentcron
    #Delete tmp Cronfile
    rm currentcron
    echo "Complete"
