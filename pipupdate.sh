#!/data/data/com.termux/files/usr/bin/bash

#python program that gets our out of date packages and writes to requirements.txt
pythonProgram="H4sICPZB2GQCA3RtcHB5LnB5AG2QMU/DMBCFd/+KwwxNRJsM3ZA6wQoslRhKhdzk0riNfcY+K+2/x2lCKRKLdXrv7rt3vr8ra8VqfCoyBaM38VQ2usNQxuDLnbalO3NLdikaTwYogDaOPEM4B0YzqiHunKcKw9WtWqyOnxTZRRaTdghkhRjga3r3mhFWID1+Re3RoOVQ8ImlEDU2UNPTy3OWMhll6/xRgEeO3v7h/thzCC123WrtI+bj+B75VRkM2bDzbXfAim8gG72RNtlyCw150KAt/DZuhaBLEVK+QS46UnXIxkjSabeETgeGxSLlSH+HdSoTyCheDf0yz4VT1VHt8RIiYa55JnKK6by2nMmEAEr3JgxMQ+ERZD75M5gVB9I2uwUmvug1t0AObXbzoXPZyxxUgCYd2xT9oGWzD/s/Y0rQe0q7mUA+3KBy8Q16RLx7HgIAAA=="

pythonProgramFile="pip-get-requirements.py"

pushd /data/data/com.termux/files/usr/tmp/
echo $pythonProgram | base64 -d | gzip -dc > $pythonProgramFile
chmod +x $pythonProgramFile

./$pythonProgramFile

python3 -m pip install -r requirements.txt -U

rm requirements.txt $pythonProgramFile
popd
