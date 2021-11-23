# terminal_settings



```bash
if [ -f ~/terminal_settings/.env ]; then
  export $(cat ~/terminal_settings/.env | xargs)
fi

if [ -f ~/terminal_settings/.bash_aliases ]; then
    . ~/terminal_settings/.bash_aliases
fi
```
