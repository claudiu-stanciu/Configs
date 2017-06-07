# Bash configs

## Autocompletion with tab

```
vi ~/.inputrc

# include the following
set completion-ignore-case on
set show-all-if-ambiguous on
TAB: menu-complete
```

## Cmd history with up/down keys

```
vi ~/.inputrc

# include the following
set completion-ignore-case on
"\e[A": history-search-backward
"\e[B": history-search-forward
```
