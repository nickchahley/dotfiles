#!/bin/bash
# Manual setup for nvim-dap-python

if false; then
	source ./nvim.sh
fi

# might require
sudo apt install python3-venv

# nvim dap
D="$(pwd)"
VENV="$HOME/.virtualenvs"
if ! [[ -d "$VENV" ]]; then
	mkdir "$VENV"
fi
cd "$VENV"
python3 -m venv debugpy
debugpy/bin/python -m pip install debugpy
cd "$D"

# npm is required for mason-nvim (auto lsp installation)

# pytest
pip install pytest
