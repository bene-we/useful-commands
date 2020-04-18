# Rename Bank Documents

This script processes the file names of downloaded bank documents from the online post box. Underscores are replaced by spaces for better readability, and if there is no date present at the beginning of the filename (format yyy-MM-dd), it is prepended for a chronological order.

The file `reformatFileName.ps1` is the Windows 10 PowerShell script which renames the file. The script is called by the batch file `#runReformatFileNames.bat`. Through this setting, the batch file can be placed in every folder where it is needed, passing this path to the PowerShell script. The absolute path of the `reformatFileNames.ps1` file needs to be set in line 3 in `#runReformatFileNames.bat`.