function wav_to_mp3
    set wavs ./*.wav

    if test -z "$wavs"
        echo "No .wav files in current directory"
        false
    else
        for wav_path in $wavs
            set new_name (basename "$wav_path" .wav).mp3
            ffmpeg -i "$wav_path" -ab 320k -c:a mp3 -c:v copy "$new_name"
        end
        true
    end
end
