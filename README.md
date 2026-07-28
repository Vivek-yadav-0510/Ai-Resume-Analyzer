# Marginalia React Deployment

This repository contains a nested Vite app in `marginalia-react/`.

## Local development

```bash
npm --prefix ./marginalia-react install
npm --prefix ./marginalia-react run dev
```

## Production build

```bash
npm --prefix ./marginalia-react run build
```

## Deploying to Vercel

The root-level `vercel.json` is configured to build the app from the nested
folder.

- `installCommand`: `npm --prefix ./marginalia-react install`
- `buildCommand`: `npm --prefix ./marginalia-react run build`
- Output directory: `marginalia-react/dist`

### Steps

1. Push the repo to GitHub.
2. Import the repository into Vercel.
3. Keep the project root set to the repository root.
4. Deploy.

If the app uses Gemini API features in production, provide the Gemini API key
through the app Settings UI after deployment.