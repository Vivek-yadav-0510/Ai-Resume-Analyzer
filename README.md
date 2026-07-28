# AI Resume Analyzer

A Streamlit-based resume parser and course recommender app built with Python.

## Structure

- `App/App.py` - main Streamlit application
- `App/requirements.txt` - Python dependencies
- `Dockerfile` - container definition for deployment
- `vercel.json` - Vercel Docker deployment configuration

## Local run

1. Create a virtual environment and activate it.
2. Install dependencies:
   ```bash
   python -m pip install -r requirements.txt
   ```
3. Run the app:
   ```bash
   streamlit run App/App.py
   ```

## Deployment

This project is ready for GitHub and container-based deployment.

- Use `Dockerfile` to build an image.
- Use Vercel with `vercel.json` for Docker-based deployment.
