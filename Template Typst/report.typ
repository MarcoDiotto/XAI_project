// ---------- Impostazioni generali ----------
#set document(title: "Project Title")
#set page(paper: "a4", margin: 1in)   // equivalente di fullpage
#set text(size: 10pt, lang: "en")
#set par(justify: true, leading: 1.2em, spacing: 1.2em)  // ~ doublespacing
#set heading(numbering: "1.1")

#show heading.where(level: 1): set text(size: 14pt)
#show heading.where(level: 2): set text(size: 11pt)
#show heading: set block(above: 1.4em, below: 1em)

// ---------- Titolo ----------
#align(center)[
  #text(size: 17pt, weight: "bold")[Project Title] \
  #v(0.3em)
  #text(size: 12pt)[Explainable AI 2026/27] \
  #text(size: 12pt)[University of Padua]
  #v(1em)
  Author Name(s) \
  Student ID(s)
]

#v(1em)

// ---------- Abstract ----------
#align(center)[*Abstract*]
#pad(x: 2em)[
  Briefly summarise the problem, the research gap, the proposed solution,
  and the main results.
]

// ---------- Introduction ----------
= Introduction
Introduce the topic, explain its relevance to Explainable AI, and state
the objectives of the project.

// ---------- Related Work ----------
= Related Work -- Literature Review
Summarise the most relevant studies and compare their approaches,
strengths, and limitations. Cite the sources used.
// Use @key for citazioni nel testo; #cite(<key>, form: "prose") per Author (Year)
// e #cite(<key>) per (Author, Year).

// ---------- Research Gaps ----------
= Research Gap Discussion

== Overview of Research Gaps
Discuss the main limitations and open problems identified in the literature.

== Identification of the Research Gap(s) to Address
Identify the gap(s) addressed by the project and state the research question.

// ---------- Methodology ----------
= Methodology and Implementation

== Overview of the Proposed Solution
Describe the proposed approach, the dataset(s), and the implementation.
Explain how the solution addresses the selected research gap(s), and
specify the baselines and evaluation metrics.

// ---------- Results ----------
= Results and Analysis

== Presentation of the Results with the Implemented Solution
Present the main results using tables, figures, or explanation examples
where appropriate. Compare the solution with the selected baselines.

== Analysis of the Results
Interpret the results in relation to the research question. Discuss
explanation quality, strengths, and limitations of the proposed solution.

// ---------- Conclusion ----------
= Conclusion
Briefly summarise the contribution and main findings, and suggest
possible future work.

// ---------- References ----------
// Aggiungi le voci BibTeX in references.bib.
// Per includere un esempio senza citarlo nel testo (come \nocite{example}):
// #cite(<example>, form: "omit")
#bibliography("references.bib", style: "apa", title: "References")
