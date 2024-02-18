#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/buildpacks-community/kpack-cli/releases/download

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local dotexe=${4:-""}
    local platform="${os}-${arch}"
    local file="kp-${platform}-${ver}${dotexe}"
    local dlfile=$DIR/$file
    # https://github.com/buildpacks-community/kpack-cli/releases/download/v0.11.0/kp-darwin-amd64-0.11.0
    local url=$MIRROR/v${ver}/$file
    if [ ! -e $dlfile ]
    then
        curl -sSLf -o $dlfile $url
    fi
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform `sha256sum $dlfile | awk '{print $1}'`
}

dl_ver ()
{
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver windows amd64 .exe
}

dl_ver ${1:-0.12.1}
