function setup -d "clone it, cd it, install it"
    git clone --depth=1 $argv[1]
    cd (basename $argv[1] | sed 's/.git$//')
    npm install
end
