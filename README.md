# KSI Dashboard - Encrypted GitHub Pages

This dashboard is deployed to GitHub Pages with password protection using staticrypt.

## Setup Instructions

1. **Initialize Git repository** (if not already done):
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. **Create a GitHub repository** and push your code:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
   git branch -M main
   git push -u origin main
   ```

3. **Set up the password secret**:
   - Go to your GitHub repository
   - Navigate to Settings → Secrets and variables → Actions
   - Click "New repository secret"
   - Name: `DASHBOARD_PASSWORD`
   - Value: Your desired password

4. **Enable GitHub Pages**:
   - Go to Settings → Pages
   - Source: Deploy from a branch
   - Branch: Select "gh-pages" (will be created by the workflow)
   - Click Save

5. **Deploy**:
   - The dashboard will automatically deploy when you push to main
   - Or manually trigger from Actions tab → Deploy Encrypted Dashboard → Run workflow

## Local Development

This repository contains only the encrypted version of the dashboard for security.
The source files are not included in the repository.

To serve the encrypted dashboard locally:

```bash
# Install dependencies
npm install

# Serve the encrypted dashboard
npx http-server .
```

Then open `encrypted-dashboard.html` in your browser.

## Updating the Dashboard

To update the dashboard, you need to:
1. Create your new dashboard HTML locally
2. Encrypt it using staticrypt
3. Replace `encrypted-dashboard.html` with the new encrypted version
4. Commit and push to main branch

## Security Notes

- The password is stored as a GitHub secret and never exposed in logs
- The encrypted page remembers the password for 15 minutes
- Always use a strong password
- Consider changing the password periodically by updating the GitHub secret