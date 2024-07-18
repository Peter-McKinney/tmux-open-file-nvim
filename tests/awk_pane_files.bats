#!/usr/bin/env bats

source "$BATS_TEST_DIRNAME/../scripts/awk_pane_files.sh"

@test "parse_files should return a file path" {
    result="$(parse_files "something more text here/is/a/file.txt more text")"
    [ "$result" = "here/is/a/file.txt" ]
}

@test "remove invalid characters" {
    result="$(remove_invalid_characters "(&&here/is-dashes-in-name/a/file.txt)")"
    [ "$result" = "here/is-dashes-in-name/a/file.txt" ]
}
