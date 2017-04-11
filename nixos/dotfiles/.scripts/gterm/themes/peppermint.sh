#!/usr/bin/env bash

PROFILE_NAME="peppermint"
PROFILE_SLUG="d885a970-eb13-4158-ad0d-1fd89f2d749a"

COLOR_01="#353535" # HOST
COLOR_02="#E64569" # SYNTAX_STRING
COLOR_03="#89D287" # COMMAND
COLOR_04="#DAB752" # COMMAND_COLOR2
COLOR_05="#439ECF" # PATH
COLOR_06="#D961DC" # SYNTAX_VAR
COLOR_07="#64AAAF" # PROMP
COLOR_08="#B3B3B3" #

COLOR_09="#535353" #
COLOR_10="#E4859A" # COMMAND_ERROR
COLOR_11="#A2CCA1" # EXEC
COLOR_12="#E1E387" #
COLOR_13="#6FBBE2" # FOLDER
COLOR_14="#E586E7" #
COLOR_15="#96DCDA" #
COLOR_16="#DEDEDE" #

BACKGROUND_COLOR="#000000"
FOREGROUND_COLOR="#C7C7C7"

CURSOR_COLOR="#BBBBBB"

source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../gterm-theme-apply.sh"