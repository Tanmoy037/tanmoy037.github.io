#!/bin/bash

# Tanmoy Santra Portfolio Website Deployment Script
# This script helps deploy the portfolio website to GitHub Pages

echo "🚀 Starting deployment process for Tanmoy Santra Portfolio Website..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "📁 Initializing git repository..."
    git init
fi

# Add all files
echo "📝 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Update portfolio website - $(date)"

# Set the main branch (GitHub's default)
echo "🌿 Setting main branch..."
git branch -M main

# Check if remote origin exists
if ! git remote get-url origin &> /dev/null; then
    echo "🔗 Adding remote origin..."
    echo "Please enter your GitHub repository URL (e.g., https://github.com/Tanmoy037/tanmoy037.github.io.git):"
    read repo_url
    git remote add origin "$repo_url"
fi

# Push to GitHub
echo "⬆️ Pushing to GitHub..."
git push -u origin main

echo "✅ Deployment completed!"
echo ""
echo "📋 Next steps:"
echo "1. Go to your GitHub repository settings"
echo "2. Scroll down to 'GitHub Pages' section"
echo "3. Select 'Deploy from a branch'"
echo "4. Choose 'main' branch and '/ (root)' folder"
echo "5. Click 'Save'"
echo ""
echo "🌐 Your website will be available at: https://tanmoy037.github.io"
echo ""
echo "📧 For any issues, contact: tanmoysantra67@gmail.com" 