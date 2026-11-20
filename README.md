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



Hospital Patients & Billing Dashboard (2019–2024)
![Hospital Patients Dashboard](Hospital%20Patients%20Dashboard.png)

The question:

How many patients did the hospitals treat, how much were they billed, and does the cost or type of admission change much between medical conditions?

The data

A healthcare dataset from Kaggle with 55,500 patient records and 15 columns, covering admissions from May 2019 to May 2024.
Note, this is a synthetic dataset created for practice, which explains why the results are so evenly spread. Real hospital data would show bigger differences.

What I did

- Cleaned the data in Power Query. I fixed patient names that had mixed capital letters, removed 534 duplicate rows, rounded bills to 2 decimal places, removed 108 records with negative bills, and removed stray commas from hospital names.
- That left 54,860 clean records.
- Wrote DAX measures for Total Patients, Total Billing, Average Bill and Average Length of Stay.
- Built a one-page dashboard with KPI cards, a bar chart, a donut chart, a line chart and a slicer so users can filter by medical condition.
- Checked my figures against the raw data to make sure they were correct.

What I found

- Total billing came to £1.40bn, with an average bill of £25,594.63 per patient.
- The average bill is very similar across conditions. Obesity is highest at £25.9K and Cancer lowest at £25.2K.
- Admissions are split almost evenly between Elective (33.6%), Urgent (33.5%) and Emergency (32.9%).
- Patients stayed 15.5 days on average.
- Admissions were steady at around 11,000 a year from 2020 to 2023. The lower numbers for 2019 and 2024 are because those years are only partly covered by the data, not because of a real drop.

Tools

Power BI Desktop, Power Query, DAX

[Download the Power BI file](Hospital%20Patient.pbix)

## Project 3: NHS 12 Hour Waits for a Hospital Bed (Excel)

Tools: Microsoft Excel

Data: Official NHS England A&E Attendances and Emergency Admissions data, March 2026.

Goal: Find which NHS areas in England had the highest and lowest share of emergency admissions waiting over 12 hours for a hospital bed.

Key findings:
- Across England, 46,665 out of 553,892 emergency admissions (8.4%) waited over 12 hours.
- Northamptonshire had the highest rate at 24.4%, nearly 3 times the England average.
- Bedfordshire, Luton and Milton Keynes had the lowest rate at 0.1%.

![NHS 12 Hour Waits Dashboard](NHS%2012%20Hour%20Waits%20Dashboard.png)

[Download the Excel file](NHS%2012%20Hour%20Waits%20March%202026.xlsx)

[Download the write-up](NHS%2012%20Hour%20Wait%20-Write-up.docx)


