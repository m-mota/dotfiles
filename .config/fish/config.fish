set fish_greeting


function fish_prompt
    set hex cba6f7 # Catppuccin Mocha Mauve
    set dir (basename (prompt_pwd))

    echo \n (set_color -o $hex) $dir (set_color normal) ""
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
