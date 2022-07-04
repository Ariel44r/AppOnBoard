import Danger 
let danger = Danger()

let sourceBranch = danger.gitLab.mergeRequest.sourceBranch
let targetBranch = danger.gitLab.mergeRequest.targetBranch
let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
let editedAppFiles = editedFiles.filter { $0.contains("/App") }

checkMRDescription()

debugPrint(editedFiles)
debugPrint(editedAppFiles)


func checkMRDescription() {
    // Merge request body validation
    if danger.gitLab.mergeRequest.description.isEmpty {
        fail("MR has no description. 📝 You should provide a description of the changes that have made.")
    }
}
