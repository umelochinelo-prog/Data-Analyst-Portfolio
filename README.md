# Data Analyst Portfolio – Chinelo Juliet Onyeocha
NHS England A&E Performance Dashboard (March 2026)
![NHS A&E Dashboard](NHS%20AE%20Dashboard%20March%202026.png)

The question: How well did A&E departments in England meet the target of seeing patients within 4 hours in March 2026, and which regions did best and worst?

The data: NHS England's public A&E Attendances and Emergency Admissions data for March 2026 (Provider Level Data sheet, 199 providers).

What I did:

- Cleaned the data in Power Query: removed title rows and empty columns, set the headers, trimmed spaces, removed duplicates, renamed columns in plain English, set the correct data types, and replaced the dashes (-) in the data set with null values rather than zeros, so missing data is not counted as zero.
-	Created a DAX measure for % seen within 4 hours (total seen within 4 hours ÷ total attendances), so the percentage is calculated correctly instead of averaging percentages.
- Built a dashboard with summary cards, two bar charts and a region filter.

What I found:

- There were 2,432,272 A&E visits in total, and 77.1% of patients were seen within 4 hours, below the NHS target of 95%.
-	556,711 patients waited over 4 hours.
-	The Midlands was the busiest region (451K visits), but it ranked only fifth for speed (75.9%).
-	London performed best at 79.8%, and the South West was lowest at 72.8%.

Tools:  Power BI Desktop,  Power Query,  DAX

[Download the Power BI file](NHS%20AE%20Dashboard%20March%202026.pbix)



