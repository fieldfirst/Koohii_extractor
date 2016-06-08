/<div class="story">.*<\/div>/ {
    # Removing the div tags
    # Note that each sentence must be enclosed with a double quotes
    s/<div class="story">\(.*\)<\/div>/"\1"/

    # Removing unwanted decorated tags [Optional]
    s/<em>\([[:alnum:] [:space:] [:punct:]]*\)<\/em>/\1/g
    s/<strong>\([[:alnum:] [:space:] [:punct:]]*\)<\/strong>/\1/g

    # removing the leading whitespaces
    s/\s*//

    # print to stdout
    p
}
