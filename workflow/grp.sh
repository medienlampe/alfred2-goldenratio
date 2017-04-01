#!/usr/bin/env bash

source feedback.sh

goldenratio_longerside=$(LC_ALL=C /usr/bin/printf '%.*f\n' 0 $(bc <<< "$1*1.618"))

result_long=$(add_item "" "$goldenratio_longerside" "Golden Ratio (longer side for given value)" "$goldenratio_longerside" "yes")
output_xml "$result_long" "$result_short"
