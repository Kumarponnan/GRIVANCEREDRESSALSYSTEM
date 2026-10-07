#!/bin/bash
echo "Current directory: $(pwd)"
echo "Files in current directory:"
ls -la

echo "Attempting to import main.py to catch exact error..."
python -c "import main"
IMPORT_STATUS=$?

if [ $IMPORT_STATUS -ne 0 ]; then
    echo "ERROR: main.py failed to import. See traceback above."
    exit 1
fi

echo "Import successful. Starting uvicorn..."
exec uvicorn main:app --host 0.0.0.0 --port $PORT
