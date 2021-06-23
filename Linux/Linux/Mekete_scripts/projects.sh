#!/bin/bash


rm -rf Projects

mkdir Projects && cd Projects


#mv ~/Downloads/TarDocs.tar ~/Projects/


#tar xvvf /home/sysadmin/Downloads/TarDocs.tar -C /home/sysadmin/Projects


tar xvvf ~/Downloads/TarDocs.tar -C ~/Projects

 
#tar cvf /home/sysadmin/Projects/Javaless_Docs.tar /home/sysadmin/Projects/TarDocs/ --exclude=/home/sysadmin/Projects/TarDocs/Documents/Java/tar

tar -zcvf Javaless_Docs.tar --exclude="TarDocs/Documents/Java" TarDocs

#mkdir test

#tar xvvf Javaless_Docs.tar -C test

#ls -lah test/TarDocs/Documents

sudo tar cvvWf logs_backup_tar.gz --listed-incremental=snapshot.file --level=0 /var/log/


sudo tar cvvf /home/sysadmin/Projects/auth_backup.tar /var/log/auth.log && gzip /home/sysadmin/Projects/auth_backup.tar 

rm -rf ~/backups

mkdir ~/backups ~/backups/{freemem,diskuse,openlist,freedisk}

cd ~/

#touch system.sh

echo '#!/bin/bash' > system.sh
echo 'free -h >> ~/backups/freemem/free_mem.txt' >> system.sh
echo 'du -h >> ~/backups/diskuse/disk_usage.txt' >> system.sh
echo 'lsof >> ~/backups/openlist/open_list.txt' >> system.sh
echo 'df -h >> ~/backups/freedisk/free_disk.txt' >> system.sh
#echo '' /n >> system.sh

chmod +x system.sh

sudo ./system.sh


sudo rm /etc/cron.weekly/system.sh 


sudo cp system.sh /etc/cron.weekly/


