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
