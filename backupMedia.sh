#!/bin/bash

echo "Commencing dry run"
echo "======================================================================="

rsync -uav --dry-run Media/ BackUpUSB/Media/ | grep -v '\/$'

echo "======================================================================="
echo ""
echo "Would you like to commence backup?(y/n)"
read answer

if [ "$answer" == "Yes" ] || [ "$answer" == "yes" ] || [ "$answer" == "y" ];then
        rsync -uav --progress Media/ BackUpUSB/Media/
        echo "=================================================================="
        echo "Operation completed!"
else
        echo "Operation canceled!"

fi
