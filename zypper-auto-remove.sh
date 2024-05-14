#!/bin/bash
# Run zypper to list unneeded packages, filter, and remove them with clean dependencies
zypper packages --unneeded | grep "^i" | cut -d"|" -f3 | xargs zypper remove --clean-deps
