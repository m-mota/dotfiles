set fish_greeting


function fish_prompt
    set hex cba6f7 # Catppuccin Mocha Mauve
    set prompt (basename (prompt_pwd))
    echo " $(set_color -o $hex) $prompt $(set_color normal) "
end


function vol
    if test -z $argv
        wpctl get-volume @DEFAULT_AUDIO_SINK@
    else
        wpctl set-volume @DEFAULT_AUDIO_SINK@ "$argv%"
    end
end


function md
    set cmd $argv[1]
    set args $argv[2..-2]
    set dir $argv[-1]

    # Avoid overlapping
    set args (string replace -a "^" ">" $args)
    set args (string replace -a "!" "|" $args)

    set path (string match -r ".*\/" $dir)

    mkdir -p $path ; eval $cmd $args $dir
end
