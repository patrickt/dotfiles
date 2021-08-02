function flac_to_m4a
    set flacs ./*.flac

    if test -z "$flacs"
        echo "No .flac files in current directory"
        false
    else
        for flac_path in $flacs
            set new_name (basename "$flac_path" .flac).m4a
            ffmpeg -i "$flac_path" -c:a alac -c:v copy "$new_name"
        end
        true
    end
end
