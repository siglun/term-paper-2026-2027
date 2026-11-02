# Scripts, data sources and methods

## CSV from Språkbanken is parsed using [parse-csv.pl](parse-csv.pl)

I use this for parsing the CSV files I get from [Korp](https://spraakbanken.gu.se/korp/). There are two datasets from Språkbanken, for "mördarsnigel" and "supersnigel" ("killer snail" and "super snail") respectively. They are based 57 corpora in the collections

* Göteborgs-Posten
* Press
* SVT nyheter
* Webbnyheter
* 8 Sidor
* Dagens Arena

The original search results are in [mordersnigel.tsv](mordersnigel.tsv) and [supersnigel.tsv](supersnigel.tsv). They were retrieved 2026-10-27 and yielded 84 and 9 hits respectively. The parse-csv.pl scripts tries to ascertain date of publishing of a hit and prints the txt in the hit and the year. I run it in a shell pipeline
   
   ./parse-csv.pl supersnigel.csv   | \
   perl -ne 'if(m/(\d\d\d\d)/) { print "$&\n"; }' | sort  | uniq -c


## Search interest in UK, DK and SE

The data Google trends data were retrieved 2026-10-27 and the data are available in

* [search-interest-danish-draebersnegle.csv](search-interest-danish-draebersnegle.csv)
* [search-interest-swedish-moerdarsnigel.csv](search-interest-swedish-moerdarsnigel.csv)
* [search-interest-uk-killer-slug.csv](search-interest-uk-killer-slug.csv)

The data were uploaded to [claud.ai](https://claude.ai/) who transformed them using the prompt I used: Here is a google  search interest csv file for mördarsnigel agains time. Can you transform it by adding two columns:

 1. one column for year as a real number from 2004 to 2026
 2. and another one for day within year, i.e. day number from 366

 Make it as tsv (tab seperated values) The format will be

 Date	   Time (real number)	Day number (in year)	Search interest

 Then we'll do the same for Denmark Dræbersnegl and UK Killer slug

What Claude did:

 Here’s the mördarsnigel data as TSV in search-interest-swedish-moerdarsnigel.tsv. It has 274 monthly rows from 2004-01 to 2026-10.

 Time (real number): year + (day − 1) / days in that year. So 1 January is exactly 2004.0000, and leap years divide by 366. Values are given to 4 decimals. Day number: day 1–366. Because 2004, 2008 and the other leap years have 29 February, every month from March onward falls one day later in those years. For example, 1 July is day 183 in 2024 but day 182 in 2025.

 The conversion script is reusable, so when you upload the Danish dræbersnegl and UK killer slug CSVs I’ll run them through the same script.

* search-interest-danish-draebersnegle.tsv
* search-interest-swedish-moerdarsnigel.tsv
* search-interest-uk-killer-slug.tsv


mean-day.pl
mean-preciptation.pl
normalize-within-years.pl

