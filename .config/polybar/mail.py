#!/usr/bin/env python
# https://github.com/Chaosteil/dotfiles/tree/master/polybar/.config/polybar

import imaplib
import json
import os


def main():
    try:
        with open(os.path.join(
                os.path.expanduser("~"),
                '.config',
                'polybar',
                'mail.json')) as f:
            login = json.load(f)
    except:
        return '!'

    try:
        M = imaplib.IMAP4_SSL('imap.privateemail.com', '993')
        M.login(login['user'], login['password'])
        M.select()
        return len(M.search(None, 'UnSeen')[1][0].split())
    except imaplib.IMAP4.error:
        return '?'
    except:
        return '!'


if __name__ == "__main__":
    print(main())
