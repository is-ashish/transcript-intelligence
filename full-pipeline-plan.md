```
Phase 1 → Data Loading & Exploration
          ├── Load all 100 calls
          ├── Check call types (support/external/internal)
          └── Basic stats (duration, participants, sentiment dist.)

Phase 2 → Topic Categorization
          ├── Use existing topics from summary.json
          ├── Cluster/group into broader themes using LLM
          └── Label each call with category

Phase 3 → Sentiment Analysis
          ├── Use sentimentScore + overallSentiment
          ├── Trend by call type, topic, time
          └── Flag high-risk calls

Phase 4 → Bonus Insights
          ├── Churn risk signals
          ├── Repeat issues
          ├── Action item completion patterns
          └── Speaker talk ratio analysis

Phase 5 → Visualizations + Notebook
Phase 6 → Slide Deck
```