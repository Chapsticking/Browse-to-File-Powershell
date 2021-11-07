invoke-restmethod https://artii.herokuapp.com/make?text="Nate Pahlow"
"                                           Evolve or Die"
"                                            File Dive V1"

# Developed by Nathan Pahlow
# Last Updated on 11/6/2021
# Purpose: When ran, open the file explorer and select a file. That files path is saved to
# $SelectedFile.Filename which can store the values of that file into a variable called
# $ExampleFile

# Creates the file browser box
Add-Type -AssemblyName System.Windows.Forms
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog `
-Property @{ InitialDirectory = [Environment]::GetFolderPath('Desktop') }

$null = $FileBrowser.ShowDialog()

# This is where the file path is stored $FileBrowser.FileName

# Give data a place to live in $ExampleFile
$ExampleFile = Get-Content $FileBrowser.FileName

# Formating
"---Data Shown Below---"
" "

# Show the contents of the file
$ExampleFile

# How to loop through each line in the $ExampleFile
forEach($line in $ExampleFile) {
    if($line.StartsWith('#')) {
    "Comment: " + $line}
}