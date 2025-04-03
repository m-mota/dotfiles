set fish_greeting


function fish_prompt
    # Max directory name length
    set max 255

    # From Catppuccin Mocha
    set home cba6f7 # Mauve
    set root f9e2af # Yellow

    set pwd (prompt_pwd -d $max)
    set env (string sub -s 1 -l 1 $pwd)
    if test $env = "~"
        set color $home
    else
	set color $root
    end

    set dir (string split "/" (string sub -s 2 $pwd))
    set child $dir[-1]
    set parent $dir[-2]

    if test -z $parent
	set parent $env
    end
    if test -z $child
	set prompt $parent
    else
	set prompt "$parent/$child"
    end
    set prompt (string replace -r "//" "/" $prompt)

    echo \n (set_color -o $color) $prompt "" (set_color normal)
end


function vol
    if test -z $argv
        wpctl get-volume @DEFAULT_AUDIO_SINK@
    else
        wpctl set-volume @DEFAULT_AUDIO_SINK@ "$argv%"
    end
end


function md
    set cmd $argv[1..-2]
    set dir $argv[-1]

    mkdir -p $dir
    $cmd $dir
end
