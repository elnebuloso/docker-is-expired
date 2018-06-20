#/bin/bash

tty=
tty -s && tty=--tty
tag=docker-is-expired

case "$1" in
    create)
        docker build --rm --pull --tag $tag --file Dockerfile .
    ;;

    sh)
        docker run $tty --interactive --rm --entrypoint='' $tag sh
    ;;

    run)
        docker run $tty --interactive --rm --volume is_expired:/tmp $tag ${@:2}
    ;;

    *)
        echo "- create"
        echo "- sh"
        echo "- run"
    ;;
esac