set fish_greeting


function fish_prompt
    set max_len 255

    # From Catppuccin Mocha
    set home cba6f7 # Mauve
    set root f9e2af # Yellow

    set dir (prompt_pwd -d $max_len)

    set env (string sub -s 1 -l 1 $dir)
    if test $env = "~"
	set color $home
    else
	set color $root
    end

    set folder (string split "/" (string sub -s 2 $dir))[-1]

    if test -z $folder
	set prompt $env
    else
	set prompt $folder
    end

    echo \n (set_color -o $color) $prompt (set_color normal) ""
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
