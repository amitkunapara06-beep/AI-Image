#!/bin/bash
PROJECT_PATH="$(pwd)"
git init || true
git config --global user.name "amitkunapara06-beep"
git config --global user.email "amitkunapara06@gmail.com"
git config --global --add safe.directory "$PROJECT_PATH"
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/amitkunapara06-beep/AI-Image.git
git add .
git commit -m "Prepare project for Codemagic build" || echo "Nothing to commit"
git branch -M main
git push origin main --force
