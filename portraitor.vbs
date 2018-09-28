Set fso = CreateObject("Scripting.FileSystemObject")

baseDir = "target"
prefix = "portraitor-"
Dim sizes(2)
sizes(0) = "Fulllength.png"
sizes(1) = "Medium.png"
sizes(2) = "Small.png"

If (FSO.FolderExists(baseDir)) Then
    fso.DeleteFolder baseDir, true
End If
fso.CreateFolder baseDir

Set folder = fso.GetFolder("images")
Set files = folder.files

For Each file in files
    imageNumber = Int(Left(file.Name, InStr(file.Name, " ")-1))
    targetFolder = baseDir & "\" & prefix & Int((imageNumber-1)/3)
    fileName = sizes((imageNumber - 1) MOD 3)
    If NOT (FSO.FolderExists(targetFolder)) Then
        fso.CreateFolder targetFolder
    End If
    fso.CopyFile file, targetFolder & "\" & fileName
Next
