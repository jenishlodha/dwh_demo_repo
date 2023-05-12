
Path="/var/opt/powermart/data/ad/SFTP"
Tgt_Path="/var/opt/powermart/pc8_dev/infa_shared/TgtFiles/RM"

find $Path -type f -name "*.DAT" -follow -print | xargs ls -l > $Tgt_Path/Files_to_Process.txt

