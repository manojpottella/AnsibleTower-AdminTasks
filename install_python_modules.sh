#!/bin/bash
#
echo -e "***\nVirthual environment name: $1 \n***"
source /var/lib/awx/venv/$1/bin/activate
#
# Date (Day-Month-Year_Time(HH:MM:SS))
d=`date +%d-%m-%Y_%T`
#
dest_path=/tmp
#
echo -e "Python bin location: $(which python) \n***"
echo -e "Pip bin location: $(which pip) \n***"
#
pip list > $dest_path/"$d"_Pre_Module_List.txt
#
echo -e "***\n***\n"
#
pip install $2
#pip uninstall $2 -y
#
pip list > $dest_path/"$d"_Post_Module_List.txt
#
echo -e "***\nDeactivating virthual environment: $1\n***"
deactivate