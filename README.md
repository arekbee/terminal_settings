# terminal_settings

## Clone this repo
```bash
git clone https://github.com/arekbee/terminal_settings.git
```

## Add those lines to `.bashrc` file 

```bash

if [ -f ~/terminal_settings/bash.sh ]; then
    . ~/terminal_settings/bash.sh
fi

if [ -f ~/terminal_settings/env ]; then
  export $(cat ~/terminal_settings/env | xargs)
fi

```
