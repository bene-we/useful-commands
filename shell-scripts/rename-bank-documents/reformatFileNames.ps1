$path = $args[0]

# Get all files in directory (non-recursive)
$files = Get-ChildItem -LiteralPath $path

# Loop through every file in directory
foreach ($file in $files) {

    # Only rename .pdf files
    if ($file.Extension -match '.pdf') {

        # Replace underscores with spaces
        $NewName = $file.BaseName.Replace("_"," ") + $file.Extension
        
        # Check if a valid date is present at the beginning of the filename
        if ($NewName -notmatch '^(19|20)\d\d(-)(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])') {
            # If not, add a date depending on the LastWriteTime (last changed)
            $NewName = $file.LastWriteTime.toString("yyyy-MM-dd ") + $NewName
        }

        if (($file.BaseName + $file.Extension) -notmatch $NewName) {
            write-host "Renaming " ($file.BaseName + $file.Extension) " to " $NewName

            # Rename file
            $file | Rename-Item -NewName $NewName
        }

    }
}

# Can be removed to close the shell window immediately after completing the task
PAUSE
