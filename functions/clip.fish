function clip
    switch (uname)
        case Linux
            set CLIP_CURRENT_OS "linux"
        case Darwin
            set CLIP_CURRENT_OS "darwin"
        case FreeBSD NetBSD DragonFly
            set CLIP_CURRENT_OS "bsd"
        case '*'
            set CLIP_CURRENT_OS "unknown"
    end

    if count $argv > /dev/null
        switch $CLIP_CURRENT_OS
            case linux bsd
                switch $XDG_SESSION_TYPE
                    case x11
                        echo $argv[1] | xclip -i -selection c -rmlastnl
                    case wayland
                        wl-copy $argv[1]
                end
            case darwin
                echo $argv[1] | pbcopy
        end
    else
        switch $CLIP_CURRENT_OS
            case linux bsd
                switch $XDG_SESSION_TYPE
                    case x11
                        echo $(xclip -o -selection c -rmlastnl)
                    case wayland
                        echo $(wl-paste)
                end
            case darwin
                echo $(pbpaste)
        end
    end
end
