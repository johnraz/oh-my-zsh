#compdef mt-api-cli.py

_message_next_arg()
{
    argcount=0
    for word in "${words[@][2,-1]}"
    do
        if [[ $word != -* ]] ; then
            ((argcount++))
        fi
    done
    if [[ $argcount -le ${#myargs[@]} ]] ; then
        _message -r $myargs[$argcount]
    fi
}

_mt-api-cli.py ()
{
    local context state state_descr line
    typeset -A opt_args

    if [[ $words[$CURRENT] == -* ]] ; then
    	_arguments -C \
    	':command:->command' \

    else
        myargs=('<command>' '<args>')
        _message_next_arg
    fi
}


_mt-api-cli.py "$@"