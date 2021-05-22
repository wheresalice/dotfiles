function ezclone() {
        # assumes cloning from a git@ url...

        # clone to git_src by default
        repo_base=~/git_src
        if [[ "$1" == "golang" ]]; then
                repo_base=~/go/src
                shift
        fi

        repo=$1
        reponame=$(basename $repo .git)


        repodir=$repo_base/$(dirname $(echo $repo | sed 's/.*@//' | sed 's/:/\//'))

        if [ -d $repodir/$reponame ]; then
                echo "$reponame already exists!"
        else
                mkdir -p $repodir
                cd $repodir
                git clone $repo
        fi

        cd $repodir/$reponame
}
