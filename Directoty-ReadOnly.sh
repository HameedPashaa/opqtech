!#/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 /home/ubuntu/folder"
    exit 1
fi
folder_to_monitor="$1"
# Check if the folder exists
if [ ! -d "$folder_to_monitor" ]; then
    echo "Folder does not exist: $folder_to_monitor"
    exit 1
fi
# Start monitoring the folder for file additions
inotifywait -m -e create --format "%w%f" "$folder_to_monitor" | while read new_file
do
    # Set read-only permissions for the newly added file
    chmod a=r "$new_file"
    echo "Permissions set to read-only for file: $new_file"
done
