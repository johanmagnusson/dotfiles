#compdef whatsnext

autoload -U is-at-least

_whatsnext() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_whatsnext_commands" \
"*::: :->whatsnext" \
&& ret=0
    case $state in
    (whatsnext)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:whatsnext-command-$line[1]:"
        case $line[1] in
            (next)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'--force[Reinitialize database, destroying existing data]' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(add)
_arguments "${_arguments_options[@]}" : \
'-m+[Task description (first line is title)]:MESSAGE:_default' \
'--message=[Task description (first line is title)]:MESSAGE:_default' \
'--after=[Insert after specified task]:AFTER:_default' \
'--before=[Insert before specified task]:BEFORE:_default' \
'--due=[Set due date (ISO date, relative keyword, or offset)]:DUE:_default' \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'--first[Add as highest priority]' \
'--last[Add as lowest priority (default)]' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'::source -- Use "-" to read description from stdin:_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'--due-before=[Show tasks due on or before the given date]:DUE_BEFORE:_default' \
'-n+[Limit output to N tasks]:LIMIT:_default' \
'--limit=[Limit output to N tasks]:LIMIT:_default' \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-a[Include completed tasks]' \
'--all[Include completed tasks]' \
'--completed[Show only completed tasks]' \
'--due[Show only tasks with a due date]' \
'--overdue[Show only overdue tasks]' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(show)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'::reference -- Position number or ID prefix:_default' \
&& ret=0
;;
(read)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'::reference -- Position number or ID prefix:_default' \
&& ret=0
;;
(complete)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'::reference -- Position number or ID prefix:_default' \
&& ret=0
;;
(restore)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':reference -- Position number or ID prefix:_default' \
&& ret=0
;;
(edit)
_arguments "${_arguments_options[@]}" : \
'-m+[New description (first line is title)]:MESSAGE:_default' \
'--message=[New description (first line is title)]:MESSAGE:_default' \
'(--no-due)--due=[Set due date (ISO date, relative keyword, or offset)]:DUE:_default' \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'(--due)--no-due[Clear the due date]' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'::reference -- Position number or ID prefix:_default' \
'::source -- Use "-" to read new description from stdin:_default' \
&& ret=0
;;
(prio)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'::reference -- Position number or ID prefix:_default' \
&& ret=0
;;
(move)
_arguments "${_arguments_options[@]}" : \
'--after=[Move after specified task]:AFTER:_default' \
'--before=[Move before specified task]:BEFORE:_default' \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'--first[Move to highest priority (default)]' \
'--last[Move to lowest priority]' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':reference -- Position number or ID prefix:_default' \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'--force[Skip confirmation prompt]' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
'::reference -- Position number or ID prefix:_default' \
&& ret=0
;;
(dump)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':file -- Path to JSON file, or "-" for stdin:_default' \
&& ret=0
;;
(project)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
":: :_whatsnext__project_commands" \
"*::: :->project" \
&& ret=0

    case $state in
    (project)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:whatsnext-project-command-$line[1]:"
        case $line[1] in
            (create)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':slug -- Project slug (lowercase letters, digits, hyphens):_default' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(assign)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':slug -- Project slug:_default' \
':reference -- Task position number or ID prefix:_default' \
&& ret=0
;;
(unassign)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':slug -- Project slug:_default' \
':reference -- Task position number or ID prefix:_default' \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':slug -- Project slug:_default' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_whatsnext__project__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:whatsnext-project-help-command-$line[1]:"
        case $line[1] in
            (create)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(assign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unassign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
;;
(completions)
_arguments "${_arguments_options[@]}" : \
'-d+[Override default database path]:DATABASE:_files' \
'--database=[Override default database path]:DATABASE:_files' \
'--format=[Output format\: text (default), json]:FORMAT:(text json)' \
'-p+[Filter commands to a specific project]:PROJECT:_default' \
'--project=[Filter commands to a specific project]:PROJECT:_default' \
'-v[Show task IDs in output]' \
'--verbose[Show task IDs in output]' \
'-h[Print help]' \
'--help[Print help]' \
':shell -- Shell to generate completions for:(bash elvish fish powershell zsh)' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
":: :_whatsnext__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:whatsnext-help-command-$line[1]:"
        case $line[1] in
            (next)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(add)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(show)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(read)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(complete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(restore)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(edit)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(prio)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(move)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(dump)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(import)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(project)
_arguments "${_arguments_options[@]}" : \
":: :_whatsnext__help__project_commands" \
"*::: :->project" \
&& ret=0

    case $state in
    (project)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:whatsnext-help-project-command-$line[1]:"
        case $line[1] in
            (create)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(assign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(unassign)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(delete)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
(completions)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" : \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_whatsnext_commands] )) ||
_whatsnext_commands() {
    local commands; commands=(
'next:Show the highest-priority open task' \
'init:Initialize the database for the current user' \
'add:Create a new task' \
'list:List tasks in priority order' \
'show:Display full details of a specific task' \
'read:Display a task'\''s description with terminal formatting' \
'complete:Mark a task as completed' \
'restore:Restore a completed task to open status' \
'edit:Modify an existing task'\''s description' \
'prio:Move a task to top priority (shorthand for \`move --first\`)' \
'move:Change a task'\''s position in the priority order' \
'delete:Permanently delete a task' \
'dump:Export all tasks as JSON' \
'import:Import tasks from a JSON file' \
'project:Manage projects' \
'completions:Generate shell completion scripts' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'whatsnext commands' commands "$@"
}
(( $+functions[_whatsnext__add_commands] )) ||
_whatsnext__add_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext add commands' commands "$@"
}
(( $+functions[_whatsnext__complete_commands] )) ||
_whatsnext__complete_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext complete commands' commands "$@"
}
(( $+functions[_whatsnext__completions_commands] )) ||
_whatsnext__completions_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext completions commands' commands "$@"
}
(( $+functions[_whatsnext__delete_commands] )) ||
_whatsnext__delete_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext delete commands' commands "$@"
}
(( $+functions[_whatsnext__dump_commands] )) ||
_whatsnext__dump_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext dump commands' commands "$@"
}
(( $+functions[_whatsnext__edit_commands] )) ||
_whatsnext__edit_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext edit commands' commands "$@"
}
(( $+functions[_whatsnext__help_commands] )) ||
_whatsnext__help_commands() {
    local commands; commands=(
'next:Show the highest-priority open task' \
'init:Initialize the database for the current user' \
'add:Create a new task' \
'list:List tasks in priority order' \
'show:Display full details of a specific task' \
'read:Display a task'\''s description with terminal formatting' \
'complete:Mark a task as completed' \
'restore:Restore a completed task to open status' \
'edit:Modify an existing task'\''s description' \
'prio:Move a task to top priority (shorthand for \`move --first\`)' \
'move:Change a task'\''s position in the priority order' \
'delete:Permanently delete a task' \
'dump:Export all tasks as JSON' \
'import:Import tasks from a JSON file' \
'project:Manage projects' \
'completions:Generate shell completion scripts' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'whatsnext help commands' commands "$@"
}
(( $+functions[_whatsnext__help__add_commands] )) ||
_whatsnext__help__add_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help add commands' commands "$@"
}
(( $+functions[_whatsnext__help__complete_commands] )) ||
_whatsnext__help__complete_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help complete commands' commands "$@"
}
(( $+functions[_whatsnext__help__completions_commands] )) ||
_whatsnext__help__completions_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help completions commands' commands "$@"
}
(( $+functions[_whatsnext__help__delete_commands] )) ||
_whatsnext__help__delete_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help delete commands' commands "$@"
}
(( $+functions[_whatsnext__help__dump_commands] )) ||
_whatsnext__help__dump_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help dump commands' commands "$@"
}
(( $+functions[_whatsnext__help__edit_commands] )) ||
_whatsnext__help__edit_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help edit commands' commands "$@"
}
(( $+functions[_whatsnext__help__help_commands] )) ||
_whatsnext__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help help commands' commands "$@"
}
(( $+functions[_whatsnext__help__import_commands] )) ||
_whatsnext__help__import_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help import commands' commands "$@"
}
(( $+functions[_whatsnext__help__init_commands] )) ||
_whatsnext__help__init_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help init commands' commands "$@"
}
(( $+functions[_whatsnext__help__list_commands] )) ||
_whatsnext__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help list commands' commands "$@"
}
(( $+functions[_whatsnext__help__move_commands] )) ||
_whatsnext__help__move_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help move commands' commands "$@"
}
(( $+functions[_whatsnext__help__next_commands] )) ||
_whatsnext__help__next_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help next commands' commands "$@"
}
(( $+functions[_whatsnext__help__prio_commands] )) ||
_whatsnext__help__prio_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help prio commands' commands "$@"
}
(( $+functions[_whatsnext__help__project_commands] )) ||
_whatsnext__help__project_commands() {
    local commands; commands=(
'create:Create a new project' \
'list:List all projects' \
'assign:Add a task to a project' \
'unassign:Remove a task from a project' \
'delete:Delete a project (must have no tasks)' \
    )
    _describe -t commands 'whatsnext help project commands' commands "$@"
}
(( $+functions[_whatsnext__help__project__assign_commands] )) ||
_whatsnext__help__project__assign_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help project assign commands' commands "$@"
}
(( $+functions[_whatsnext__help__project__create_commands] )) ||
_whatsnext__help__project__create_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help project create commands' commands "$@"
}
(( $+functions[_whatsnext__help__project__delete_commands] )) ||
_whatsnext__help__project__delete_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help project delete commands' commands "$@"
}
(( $+functions[_whatsnext__help__project__list_commands] )) ||
_whatsnext__help__project__list_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help project list commands' commands "$@"
}
(( $+functions[_whatsnext__help__project__unassign_commands] )) ||
_whatsnext__help__project__unassign_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help project unassign commands' commands "$@"
}
(( $+functions[_whatsnext__help__read_commands] )) ||
_whatsnext__help__read_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help read commands' commands "$@"
}
(( $+functions[_whatsnext__help__restore_commands] )) ||
_whatsnext__help__restore_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help restore commands' commands "$@"
}
(( $+functions[_whatsnext__help__show_commands] )) ||
_whatsnext__help__show_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext help show commands' commands "$@"
}
(( $+functions[_whatsnext__import_commands] )) ||
_whatsnext__import_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext import commands' commands "$@"
}
(( $+functions[_whatsnext__init_commands] )) ||
_whatsnext__init_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext init commands' commands "$@"
}
(( $+functions[_whatsnext__list_commands] )) ||
_whatsnext__list_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext list commands' commands "$@"
}
(( $+functions[_whatsnext__move_commands] )) ||
_whatsnext__move_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext move commands' commands "$@"
}
(( $+functions[_whatsnext__next_commands] )) ||
_whatsnext__next_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext next commands' commands "$@"
}
(( $+functions[_whatsnext__prio_commands] )) ||
_whatsnext__prio_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext prio commands' commands "$@"
}
(( $+functions[_whatsnext__project_commands] )) ||
_whatsnext__project_commands() {
    local commands; commands=(
'create:Create a new project' \
'list:List all projects' \
'assign:Add a task to a project' \
'unassign:Remove a task from a project' \
'delete:Delete a project (must have no tasks)' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'whatsnext project commands' commands "$@"
}
(( $+functions[_whatsnext__project__assign_commands] )) ||
_whatsnext__project__assign_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project assign commands' commands "$@"
}
(( $+functions[_whatsnext__project__create_commands] )) ||
_whatsnext__project__create_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project create commands' commands "$@"
}
(( $+functions[_whatsnext__project__delete_commands] )) ||
_whatsnext__project__delete_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project delete commands' commands "$@"
}
(( $+functions[_whatsnext__project__help_commands] )) ||
_whatsnext__project__help_commands() {
    local commands; commands=(
'create:Create a new project' \
'list:List all projects' \
'assign:Add a task to a project' \
'unassign:Remove a task from a project' \
'delete:Delete a project (must have no tasks)' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'whatsnext project help commands' commands "$@"
}
(( $+functions[_whatsnext__project__help__assign_commands] )) ||
_whatsnext__project__help__assign_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project help assign commands' commands "$@"
}
(( $+functions[_whatsnext__project__help__create_commands] )) ||
_whatsnext__project__help__create_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project help create commands' commands "$@"
}
(( $+functions[_whatsnext__project__help__delete_commands] )) ||
_whatsnext__project__help__delete_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project help delete commands' commands "$@"
}
(( $+functions[_whatsnext__project__help__help_commands] )) ||
_whatsnext__project__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project help help commands' commands "$@"
}
(( $+functions[_whatsnext__project__help__list_commands] )) ||
_whatsnext__project__help__list_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project help list commands' commands "$@"
}
(( $+functions[_whatsnext__project__help__unassign_commands] )) ||
_whatsnext__project__help__unassign_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project help unassign commands' commands "$@"
}
(( $+functions[_whatsnext__project__list_commands] )) ||
_whatsnext__project__list_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project list commands' commands "$@"
}
(( $+functions[_whatsnext__project__unassign_commands] )) ||
_whatsnext__project__unassign_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext project unassign commands' commands "$@"
}
(( $+functions[_whatsnext__read_commands] )) ||
_whatsnext__read_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext read commands' commands "$@"
}
(( $+functions[_whatsnext__restore_commands] )) ||
_whatsnext__restore_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext restore commands' commands "$@"
}
(( $+functions[_whatsnext__show_commands] )) ||
_whatsnext__show_commands() {
    local commands; commands=()
    _describe -t commands 'whatsnext show commands' commands "$@"
}

if [ "$funcstack[1]" = "_whatsnext" ]; then
    _whatsnext "$@"
else
    compdef _whatsnext whatsnext
fi
