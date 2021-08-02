function m4a_to_flac
    set m4as ./*.m4a

    if test -z "$m4as"
        echo "No .m4a files in current directory"
        false
    else
        for m4a_path in $m4as
            set new_name (basename "$m4a_path" .m4a).flac
            ffmpeg -i "$m4a_path" "$new_name"
        end
        true
    end
end
