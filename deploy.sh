#!/bin/bash

# Deploy to GitHub Pages script

echo "🚀 Deploying to GitHub Pages..."

# Add all files
git add .

# Commit changes
git commit -m "Deploy to GitHub Pages"

# Push to main branch
git push -u origin main

# Create and push to gh-pages branch
git checkout -b gh-pages 2>/dev/null || git checkout gh-pages
git merge main --no-edit
git push -u origin gh-pages

# Switch back to main
git checkout main

echo "✅ Deployment complete!"
echo "Your site will be available at: https://alexogar.github.io/dima_birthday/"
