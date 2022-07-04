import Danger 
let danger = Danger()

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
let editedAppFiles = editedFiles.filter { $0.contains("/App") }

debugPrint(editedFiles)
debugPrint(editedAppFiles)
