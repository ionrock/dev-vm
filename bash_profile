# Keychain setup
keychain ~/.ssh/id_rsa
keychain ~/.ssh/id_rsa.home
keychain ~/.ssh/id_rsa.dsgn8

. ~/.keychain/$HOSTNAME-sh
if [ -f ~/.keychain/$HOSTNAME-sh-gpg ]; then
    . ~/.keychain/$HOSTNAME-sh-gpg
fi
