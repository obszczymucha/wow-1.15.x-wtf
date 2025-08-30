#!/usr/bin/env bash

clean_up_directories() {
  local account_name="$1"
  local realm_name="$2"
  local char_name="$3"
  rm -rf "Account/${account_name}/${realm_name}/${char_name}"
}

create_directories() {
  local account_name="$1"
  local realm_name="$2"
  local base_char_name="$3"
  local new_char_name="$4"
  mkdir -p "Account/${account_name}/${realm_name}/${new_char_name}"
  cp -r "Account/${account_name}/${realm_name}/${base_char_name}/"* "Account/${account_name}/${realm_name}/${new_char_name}/"
  find "Account/${account_name}/${realm_name}/${new_char_name}/" -type f -exec sed -i "s/${base_char_name}/${new_char_name}/g" {} +
}

update_account_profile() {
  local account_name="$1"
  local base_char_name="$2"
  local new_char_name="$3"

  local path="Account/${account_name}/SavedVariables/"
  # TODO: Call an update-account-profile script with "$path" as an argument.
}

main() {
  if [[ $# -ne 4 ]]; then
    echo "Usage: $0 <account-name> <realm_name> <base-character-name> <new-character-name>"
    exit 1
  fi

  local account_name="$1"
  local realm_name="$2"
  local base_char_name="$3"
  local new_char_name="$4"
  clean_up_directories "$account_name" "$realm_name" "$new_char_name"
  create_directories "$account_name" "$realm_name" "$base_char_name" "$new_char_name"
  update_account_profile "$account_name" "$base_char_name" "$new_char_name"
}

main "$@"

