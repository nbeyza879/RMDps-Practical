#!/usr/bin/env bash
# This tells the system to use bash to interpret this script

# Safety flags – these make your script more robust:
set -euo pipefail
# -e: Exit immediately if any command fails (no silent failures)
# -u: Treat unset variables as errors (catch typos)
# -o pipefail: Ensure pipeline commands fail properly (detect errors in pipes)

# -----------------------------
# Step 1: Create directory structure
echo "[INFO] Preparing data directory structure..."
mkdir -p data
# -p flag: Create parent directories as needed, don’t error if directory exists

# -----------------------------
# Step 2: Download dataset
RAW_FILE="data/iris.csv"
curl -L -o $RAW_FILE https://raw.githubusercontent.com/uiuc-cse/data-fa14/gh-pages/data/iris.csv
echo "[INFO] Downloaded sample dataset: $RAW_FILE"

# -----------------------------
# Step 3: Add custom row
echo "custom,0.1,0.2,0.3,setosa" >> $RAW_FILE
echo "[INFO] Added one synthetic row."

# -----------------------------
# Step 4: Report summary
LINES=$(wc -l < $RAW_FILE)
echo "[REPORT] Dataset now has $LINES rows."
echo "[INFO] Done!"