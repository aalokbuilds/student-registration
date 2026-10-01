#!/bin/bash

echo "Starting HTML tests..."

if [ ! -f "index.html" ]; then
    echo "FAIL: index.html does not exist."
    exit 1
fi

echo "PASS: index.html exists."

grep -qi "<form" index.html || {
    echo "FAIL: Form is missing."
    exit 1
}

grep -qi "<input" index.html || {
    echo "FAIL: Input is missing."
    exit 1
}

grep -qi "<select" index.html || {
    echo "FAIL: Select is missing."
    exit 1
}

grep -qi "<textarea" index.html || {
    echo "FAIL: Textarea is missing."
    exit 1
}

grep -qi "<button" index.html || {
    echo "FAIL: Button is missing."
    exit 1
}

echo "SUCCESS: All HTML tests passed!"