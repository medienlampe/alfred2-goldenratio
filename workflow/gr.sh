#!/usr/bin/env bash

source feedback.sh

goldenratio_long=$(bc <<< "$1"/1.618)
goldenratio_short=$(bc <<< "$1"/2.618)

result_long=$(add_item "" "$goldenratio_long" "Golden Ratio (longer side)" "$goldenratio_long" "yes")
result_short=$(add_item "" "$goldenratio_short" "Golden Ratio (shorter side)" "$goldenratio_short" "yes")
output_xml "$result_long" "$result_short"