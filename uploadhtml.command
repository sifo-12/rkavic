#!/bin/bash
echo "======================================="
echo "Navigating to the project folder..."
echo "======================================="

# פקודה שאומרת למק לעבור אוטומטית לתיקייה שבה הקובץ עצמו שמור
cd "$(dirname "$0")"

echo "======================================="
echo "Updating ONLY index.html on GitHub..."
echo "======================================="

# Stage only the main HTML file
git add index.html

# Commit the change with current date and time
git commit -m "Automated HTML structural update $(date)"

# Push the update directly to the repository
git push origin main

echo "======================================="
echo "Done! Only index.html has been updated."
echo "======================================="