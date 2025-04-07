set fish_greeting


function fish_prompt
    # set prompt "$USER@$(prompt_hostname) $(basename (prompt_pwd))"
    set prompt (basename (prompt_pwd))
    echo (set_color -r yellow) $prompt (set_color normal) ""
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
