# secure-ssh.sh
# author nrubera
# creates a new ssh user using $1 parameter
# adds a public key form the local repo or curled from the remote repo
# removes roots ability to ssh in

useradd -m -d /home/$1 -s /bin/bash $1
mkdir /home/$1/.ssh
cp SYS-265-03-Tech-Journal/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
chmod 700 /home/$1/.ssh
chmod 600 /home/$1/.ssh/authorized_keys
chown -R $1:$1 /home/$1/.ssh
