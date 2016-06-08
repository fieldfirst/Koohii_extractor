#! /bin/bash
IFS=$'\n';

# Login (by set a cookies)
wget --post-data="username=YourUserName&password=YourPasswordreferer=@homepage&rememberme=1" --save-cookies=koohii.cookies --keep-session-cookies http://kanji.koohii.com/login -O /dev/null;


# Number of story(ies) for each row
n=10;

# Number of mnemonics
#total=2042;
total=100;


# Remove an existed file
if [ -f "output.csv" ]; then
    rm output.csv;
fi


# Initialize the CSV file
# named output.csv
for ((i=0; $i<=$n; i+=1)); do
    if (($i==$n)); then
        printf "$i\n" >> output.csv;
    else
        printf "$i," >> output.csv;
    fi
done


# Fetch the data, filter then converts to CSV
for ((counter=1; $counter<=$total; counter+=1)); do
    mnemonics=($(wget --load-cookies=koohii.cookies --save-cookies=koohii.cookies --keep-session-cookies http://kanji.koohii.com/study/kanji/$counter -O - | sed -n -f filter.sed));
    printf "$counter," >> output.csv;
    for ((k=0; $k<$n; k+=1)); do
        if (($k==$n-1)); then
            printf "${mnemonics[$k]}\n" >> output.csv;
        else
            printf "${mnemonics[$k]}," >> output.csv;
        fi
    done
done

unset IFS
