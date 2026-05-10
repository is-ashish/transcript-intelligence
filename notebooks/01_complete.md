This is a great dataset! Let's understand what we have before moving forward.

---

**Data Summary**

```
✅ 100 calls loaded, 0 errors — clean dataset!

📞 Call Types (well balanced):
   External         → 39 calls  (39%)
   Internal         → 31 calls  (31%)
   Customer Support → 30 calls  (30%)

📊 Sentiment (interesting spread):
   mixed-positive   → 33 calls
   mixed-negative   → 33 calls
   very-positive    → 21 calls
   positive         →  7 calls
   negative         →  4 calls
   very-negative    →  2 calls

⏱️ Duration:
   External calls longest  → 35.9 mins
   Internal calls similar  → 34.0 mins
   Support calls shortest  → 19.3 mins ← makes sense!
```

---

**Key Observations Already Visible:**

- Support calls are **2x shorter** than external/internal — agents resolve quickly
- **66 out of 100 calls** have mixed sentiment — real conversations aren't purely positive/negative
- Only **6 calls** are clearly negative — healthy signal
- Dataset is **well balanced** across call types ✅

---

**`01_data_loading.ipynb` is complete! ✅**

---

**Next → `02_exploration.ipynb`**

We'll do quick visual exploration:
```
✅ Sentiment distribution chart
✅ Call type breakdown
✅ Duration analysis
✅ Most common topics
✅ Speaker talk patterns
```

Ready to start `02_exploration.ipynb`? 🚀