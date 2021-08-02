function wav_to_m4a
    set wavs ./*.wav

    if test -z "$wavs"
        echo "No .wav files in current directory"
        false
    else
        for wav_path in $wavs
            set new_name (basename "$wav_path" .wav).m4a
            ffmpeg -i "$wav_path" -acodec alac "$new_name"
        end
        true
    end
end
