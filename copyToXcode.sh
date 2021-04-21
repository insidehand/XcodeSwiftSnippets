#!/bin/sh

# Check target folder exist
XcodeCodeSnippetFolderPath="$HOME/Library/Developer/Xcode/UserData/CodeSnippets"

if [ -d $XcodeCodeSnippetFolderPath ]; then
    # 目錄 /path/to/dir 存在
    echo "Directory already exists."
else
    # 目錄 /path/to/dir 不存在
    echo "Directory does not exists. Making a directory for placing code snippets"
    mkdir $XcodeCodeSnippetFolderPath
fi

cp ./*.codesnippet ~/Library/Developer/Xcode/UserData/CodeSnippets/
