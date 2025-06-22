#!/bin/bash

LOG_FILE="/tmp/run.log"

bash fill_run_log.sh
less "$LOG_FILE"
