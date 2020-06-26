function re_boot -d 'An alternative to `reboot`'

    sudo uname >> /dev/null
    if ! test $status -eq 0
        return
    end
    
    set read_prompt "Reboot?"

    if read_confirm
        supersync
        sudo shutdown -r now
    end
end
