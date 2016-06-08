Due to my little brother taken Japanese course. To remember all Japanese's characters and their combinations, the best way of learning is to learn through mnemonics.

There is the site called "Koohii" where its communities are dedicate themselves to make the mnemonics for each Japanese character.

But, grabbing a mnemonic one by one from the site is troublesome and inefficient so I decide to devise a simple extractor script for this purpose. It's base on curl and sed commands.

**Instructions**:
1. Edit the *extractor.sh*, by add your own account's credential.
2. Set the *total*, thus this will define a maximum number of character(s) you want.
3. Set the *n*, to define a maximum number of mnemonic(s)/storie(s) you want for each character.
4. You can also edit the *filter.sed* to remove additional html tag(s).
