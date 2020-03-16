function re_boot -d 'An alternative to `reboot`'
    set read_confirm "Reboot?"

    if read_confirm
        sync; sync; sync;
        shutdown -r now
    end
end
