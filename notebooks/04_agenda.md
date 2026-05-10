Great thinking! Agenda first:

---

**`04_sentiment_analysis.ipynb` — Agenda**

---

**What We Want to Answer**

```
1. How does sentiment vary across call types?
2. Which themes drive the most negativity?
3. How does sentiment trend over time?
4. Which calls are high-risk and need attention?
5. What do key moments tell us?
6. What should business leaders DO about it?
```

---

**Section 1 — Sentiment Overview**
```
✅ Overall sentiment score distribution
✅ Sentiment breakdown (positive/negative/neutral sentences)
✅ Avg sentiment score by call type
✅ Insight → which call type needs most attention?
```

---

**Section 2 — Sentiment by Theme**
```
✅ Which themes have lowest sentiment?
✅ Which themes have most negative sentences?
✅ Heatmap → theme × sentiment score
✅ Insight → which business area is most painful?
```

---

**Section 3 — Sentiment Trends Over Time**
```
✅ Parse call dates from start_time
✅ Sentiment score trend week by week
✅ Is sentiment improving or declining?
✅ Insight → are things getting better or worse?
```

---

**Section 4 — High Risk Call Detection**
```
✅ Define risk scoring formula:
   → sentiment_score < 3.0
   → negative_sents > positive_sents
   → call_type = Customer Support
   → very-negative or negative sentiment label

✅ Flag high risk calls
✅ Show top 10 most concerning calls
✅ Insight → which accounts need urgent attention?
```

---

**Section 5 — Key Moments Analysis**
```
✅ Extract key moments from all calls
✅ Categorize moment types
   (concern / feature_gap / positive_pivot etc.)
✅ Which themes have most concerns?
✅ Insight → what are customers worried about most?
```

---

**Section 6 — Business Recommendations**
```
✅ Summary table of findings
✅ 3-5 actionable recommendations
✅ Priority matrix (impact vs effort)
✅ This goes directly into slide deck!
```

---

**Outputs We'll Generate**

```
outputs/charts/
├── sentiment_by_calltype.png
├── sentiment_by_theme.png
├── sentiment_trend_time.png
├── high_risk_calls.png
└── key_moments_analysis.png

data/processed/
└── high_risk_calls.csv    ← flagged calls for action
```

---

**Key Business Insights We Expect to Find**

```
🔴 Customer Support     → lowest sentiment (we already know 2.87)
🔴 Compliance/Security  → likely most negative (39% of calls!)
📈 Time trend           → is support quality improving?
⚠️  High risk calls      → which accounts to call back urgently?
💡 Key moments          → what are customers complaining about?
```

---

**Shall I start writing the code now?** 🚀