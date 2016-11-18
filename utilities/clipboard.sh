#!/usr/bin/env bash

set -e

BIN="/usr/bin"


main()
{
    FILENAME=$BIN/clipboard

    rm $FILENAME
    touch $FILENAME

    echo -e "#!/usr/bin/env bash" >> $FILENAME
    echo -e "xclip -selection clipboard" >> $FILENAME

    chmod +x $FILENAME
}

[ "$(id -u)" == "0" ] && main || echo "Please, run this script as super user"