
function s { git status -s }
function commit { git commit --verbose $args }
function c($message) { git commit -m $message }

function add { git add $args }
function pull { git pull $args }
function push { git push $args }
function unstage { git reset HEAD }
function undo($file=".") { git checkout $file }
function undo-clean { git clean -fd }
function unstage { git reset HEAD }
function log {
    git log --graph --format='%Cred%h%Creset - %Cblue%cd%Creset - %C(bold blue)%an%Creset - %s' --date=format:'%Y-%m-%d %H:%M:%S' 
}
function log1 {
    git log --pretty=oneline --abbrev-commit --max-count=15 --decorate
}

