function __ksi_completions
    set --local ct (commandline --current-token)
    set --local tokens (commandline --tokenize --cut-at-cursor --current-process)
    set tokens[1] "clone-in-kitty"
    printf "%s\n" $tokens $ct | command kitty +complete fish2
end

complete -f -c clone-in-kitty -a "(__ksi_completions)"
