#to add multiple user in the system
sudo su - root #change to root
sudo adduser username #add user
sudo su username #change the user
sudo usermod -aG sudo username #add user to sudo group
cat /etc/passwd #show all the users


        #list all wsl distros
wsl -l -v #list all the wsl distros

#to acces another user remotely for these steps




# Path: assignment1/docs/settup.sh
#incase if you have't insatlled ssh
sudo apt-get install openssh-server #install ssh
sudo systemctl status ssh #check the status of ssh
#if the ssh in not running (dead) then start the ssh
sudo systemctl start ssh #start ssh
sudo ufw allow ssh #allow ssh through the firewall
ip a #show the ip address and copy the ip address

#to connect to the user
#open command prompt in windows
ssh username@ip #connect to the user



ssh username@ip #connect to the user
sudo su username #change the user




                    #assignment 1 step by step
su - root #change to root
addusr username #add user
adduser username sudo #add user to sudo group. When you run , it adds the user specified by username to the sudo group, granting them the ability to execute commands with elevated privileges by preceding them with sudo
cat /etc/passwd #show all the users
ls /home/user #list the user in the home directory
cd /home/username #navigate to the user
mkdir .ssh #create a directory

cp /root/.ssh/authorized_keys .shh/ #copy the public key to the user
sudo cp /root/.ssh/id_rsa.pub /home/username/.ssh/ #copy the public key to the user
                     OR
sudo cp /root/.ssh/id_ed25519.pub /home/username/.ssh/ #copy the public key to the user
                     OR
sudo cp /root/.ssh/id_ed25519.pub /home/nidaullah/.ssh/authorized_keys #copy the public key to the user form the root
ls -lah #we just want to make sure that we've got all the permission set up correctly for the user home folder
# in this case the ssh is owen by the root user
sudo chown -R username:username /home/username/.ssh #change the owner of the .ssh directory to the user
chmod 700 /home/username/.ssh #change the permission of the .ssh directory this means that only the user can access the directory
ls -alh #we can the the permission of the .ssh directory if this is set to 600 then only the user can access the directory
sudo chmod 600 /home/ubuntu/.ssh/id_rsa #After copying the private key, you should ensure that its permissions are set securely to prevent unauthorized access
ssh username@ip #connect to the user
#if the local machine public key and the remote machine public key are not the same then we need to update the public key
nano ~/.ssh/authorized_keys #update the public key
nano ~/.ssh/id_rsa #update the private key

  
                ##settup ssh key for the user
cd home/username #change to the user
mkdir .ssh #create a directory
ssh-keygen -t rsa -b 4096 -C "  " #generate ssh key


            ##step by step

ssh-keygen -t ed25519 -C "your_email@example.com" #generate ssh key
ls .ssh #list the files in the directory
cat .ssh/id_ed25519 #show the private key
cat .ssh/id_ed25519.pub #show the public key


