# Scripts, data sources and methods

## CSV from Språkbanken is parsed using [parse-csv.pl](parse-csv.pl)

I use this for parsing the CSV files I get from [Korp](https://spraakbanken.gu.se/korp/). There are two datasets from Språkbanken, for "mördarsnigel" and "supersnigel" ("killer snail" and "super snail") respectively. They are based 57 corpora in the collections

* Göteborgs-Posten
* Press
* SVT nyheter
* Webbnyheter
* 8 Sidor
* Dagens Arena

The original search results are in [mordersnigel.tsv](mordersnigel.tsv) and [supersnigel.tsv](supersnigel.tsv). They yielded 84 and 9 hits respectively. The parse-csv.pl scripts tries to ascertain date of publishing of a hit and prints the txt in the hit and the year. I run it as
   
   ./parse-csv.pl supersnigel.csv   | \
   perl -ne 'if(m/(\d\d\d\d)/) { print "$&\n"; }' | sort  | uniq -c


## 
mean-day.pl
mean-preciptation.pl
normalize-within-years.pl

