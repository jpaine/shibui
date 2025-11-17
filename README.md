# 56Press

A minimalist landing page built with Hugo and the Shibui theme.

## Local Development

1. Install Hugo Extended (v0.93.0 or higher):
   ```bash
   brew install hugo
   # or download from https://gohugo.io/installation/
   ```

2. Run the development server:
   ```bash
   hugo server -D
   ```

3. Visit `http://localhost:1313` in your browser.

## Deployment to Vercel

1. Push your code to a Git repository (GitHub, GitLab, or Bitbucket).

2. Import your repository in [Vercel](https://vercel.com).

3. Vercel will automatically detect Hugo and use the settings from `vercel.json`.

4. Your site will be deployed automatically on every push to the main branch.

### Manual Deployment

You can also deploy manually using the Vercel CLI:

```bash
npm i -g vercel
vercel
```

## Customization

- Edit `content/_index.md` to customize your landing page content.
- Modify `config.toml` to change site settings, menu items, and author information.
- Customize the theme by editing CSS variables in `themes/shibui/assets/css/custom.css`.

## Project Structure

```
56Press/
├── config.toml          # Hugo site configuration
├── content/             # Site content
│   └── _index.md        # Landing page
├── themes/              # Hugo themes
│   └── shibui/          # Shibui theme files
└── vercel.json          # Vercel deployment configuration
```

