#!/bin/bash

PROJECT="transcript-intelligence"

echo "Creating project structure for: $PROJECT"

# Root
mkdir -p $PROJECT

# Data folders
mkdir -p $PROJECT/data/raw
mkdir -p $PROJECT/data/processed
mkdir -p $PROJECT/data/synthetic
mkdir -p $PROJECT/data/exports

# Notebooks
mkdir -p $PROJECT/notebooks

# Source code
mkdir -p $PROJECT/src

# Outputs
mkdir -p $PROJECT/outputs/charts
mkdir -p $PROJECT/outputs/reports

# Slides
mkdir -p $PROJECT/slides

# Create placeholder notebooks
touch $PROJECT/notebooks/01_data_loading.ipynb
touch $PROJECT/notebooks/02_exploration.ipynb
touch $PROJECT/notebooks/03_topic_categorization.ipynb
touch $PROJECT/notebooks/04_sentiment_analysis.ipynb
touch $PROJECT/notebooks/05_bonus_insights.ipynb
touch $PROJECT/notebooks/06_visualizations.ipynb

# Create src files
touch $PROJECT/src/__init__.py
touch $PROJECT/src/loader.py
touch $PROJECT/src/classifier.py
touch $PROJECT/src/topics.py
touch $PROJECT/src/sentiment.py
touch $PROJECT/src/insights.py
touch $PROJECT/src/visualize.py
touch $PROJECT/src/utils.py

# Create .env.example
cat > $PROJECT/.env.example << 'EOF'
ANTHROPIC_API_KEY=your_key_here
TAVILY_API_KEY=your_key_here
OPENAI_API_KEY=your_key_here
EOF

# Create .gitignore
cat > $PROJECT/.gitignore << 'EOF'
# Environment
.env
__pycache__/
*.pyc
*.pyo
.venv/
venv/

# Jupyter
.ipynb_checkpoints/
*.ipynb_checkpoints

# Data (raw data usually not committed)
data/raw/
data/synthetic/

# OS
.DS_Store
Thumbs.db

# Outputs
outputs/charts/
EOF

# Create requirements.txt
cat > $PROJECT/requirements.txt << 'EOF'
langchain
langchain-anthropic
langchain-tavily
anthropic
pandas
numpy
matplotlib
seaborn
plotly
jupyter
python-dotenv
tqdm
scikit-learn
transformers
EOF

# Create README
cat > $PROJECT/README.md << 'EOF'
# Transcript Intelligence

AI-powered analytics tool that processes call transcripts and extracts business insights.

## Setup

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env   # Add your API keys
```

## Run Notebooks in Order

```
01_data_loading.ipynb        → Load all 100 calls
02_exploration.ipynb         → Explore the dataset
03_topic_categorization.ipynb → LLM-based topic clustering
04_sentiment_analysis.ipynb  → Sentiment trends
05_bonus_insights.ipynb      → Extra insights
06_visualizations.ipynb      → Charts for slides
```

## Deliverables

- `slides/transcript_intelligence.pptx` → Presentation
- `outputs/reports/` → Insight reports
- `outputs/charts/` → Visualizations
EOF

echo ""
echo "Done! Project created at ./$PROJECT"
echo ""
echo "Next steps:"
echo "  1. cd $PROJECT"
echo "  2. Copy your dataset into data/raw/"
echo "  3. python -m venv .venv && source .venv/bin/activate"
echo "  4. pip install -r requirements.txt"
echo "  5. cp .env.example .env  (add your API keys)"
echo "  6. jupyter notebook"