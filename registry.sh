LINE_TO_ADD="//npm.pkg.github.com/:_authToken=1e0fa3656fc305a598aa20ed97b2c2473228e4b3"

check_if_line_exists()
{
    # grep wont care if one or both files dont exist.
    grep -qsFx "$LINE_TO_ADD" ~/.npmrc
}

add_line_to_profile()
{
    profile=~/.npmrc
    printf "\n%s\n%s\n" "$LINE_TO_ADD" "@codestates-cc:registry=https://npm.pkg.github.com" >> "$profile"
}

check_if_line_exists || add_line_to_profile
