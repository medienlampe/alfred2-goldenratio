#!/usr/bin/env bash

source feedback.sh

goldenratio_shorterside=$(LC_ALL=C /usr/bin/printf '%.*f\n' 0 $(bc <<< "$1*.618"))

result_long=$(add_item "" "$goldenratio_shorterside" "Golden Ratio (shorter side for given value)" "$goldenratio_shorterside" "yes")
output_xml "$result_long" "$result_short"