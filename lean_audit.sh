#!/bin/bash
# ==============================================================================
#   QUEENS ENTERPRISE AUTOMATION CORE AXIS: LEAN RESOURCE AUDITING SCRIPT
# ==============================================================================

# Declaring a reusable function wrapper to eliminate script code Muda (waste)
check_partition() {
    local target_path=$1
    local threshold=$2
    
    echo "---------------------------------------------------"
    echo "LOG: Executing automated scan pass on boundary: ${target_path}"
    
    # Querying the active partition space out-of-band [1254]
    df -h "${target_path}" | tail -n 1
}

# Invoking the function multiple times with clean parameter passing variables
check_partition "/" "90%"
check_partition "/mnt/mock_shares" "80%"
