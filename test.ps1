$Env:GIT_TERMINAL_PROMPT=0
$Env:GCM_AUTODETECT_TIMEOUT=-1


git config --global core.safecrlf false
git config user.email $(gitUserEmail)
git config user.name $(gitFriendlyUserName)

git pull

if(git status --porcelain) {
git add .
git status
git commit -m "Release $(Release.ReleaseId) via Azure DevOps"
}

git push origin $(gitUmbracoCloudBranch) --force