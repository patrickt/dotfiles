function flac_to_320
    set flacs ./*.flac

    if test -z "$flacs"
        echo "No .flac files in current directory"
        false
    else
        for flac_path in $flacs
            set new_name (basename "$flac_path" .flac).mp3
            ffmpeg -i "$flac_path" -ab 320k -map_metadata 0 "$new_name"
        end
        true
    end
end
