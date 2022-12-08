function fish_greeting
    set_color green ; echo "Hello $USER," 
    set_color yellow; echo "Welcome to" (hostname) 
    set_color red; echo (date "+%b/%d - %H:%M")
    set_color normal;
    pfetch
end
