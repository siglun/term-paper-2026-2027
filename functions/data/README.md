# Scripts, data sources and methods

## Mentions in Swedish text corpora (Korp)

The CSV files I get from [Korp](https://spraakbanken.gu.se/korp/) are
parsed using [parse-csv.pl](parse-csv.pl). There are two datasets from
Språkbanken, for "mördarsnigel" and "supersnigel" ("killer slug" and
"super slug" respectively). The searches covered 57 corpora in the
collections

* Göteborgs-Posten
* Press
* SVT nyheter
* Webbnyheter
* 8 Sidor
* Dagens Arena

The original search results are in [mordersnigel.tsv](mordersnigel.tsv)
and [supersnigel.tsv](supersnigel.tsv). They were retrieved 2026-10-27
and yielded 84 and 9 hits respectively. All hits came from four of the
collections (mördarsnigel: GP 42, SVT nyheter 23, Webbnyheter 18,
8 Sidor 1; supersnigel: GP 4, Webbnyheter 4, SVT nyheter 1).

The parse-csv.pl script tries to ascertain the date of publication of
each hit and prints the text of the hit and the year. I run it in a
shell pipeline to count hits per year:

```
./parse-csv.pl supersnigel.tsv | \
    perl -ne 'if(m/(\d\d\d\d)/) { print "$&\n"; }' | sort | uniq -c
```

The resulting counts are in [korp-mordersnigel.text](korp-mordersnigel.text)
and [korp-supersnigel.text](korp-supersnigel.text).

## Search interest in UK, DK and SE

The Google Trends data were retrieved 2026-10-27, one search term per
country, for the period 2004 to present, which Google Trends returns as
monthly values. The data are in

* [search-interest-danish-draebersnegle.csv](search-interest-danish-draebersnegle.csv)
* [search-interest-swedish-moerdarsnigel.csv](search-interest-swedish-moerdarsnigel.csv)
* [search-interest-uk-killer-slug.csv](search-interest-uk-killer-slug.csv)

For Denmark the plural *dræbersnegle* is used. Danes nearly always
write the plural, and the singular *dræbersnegl* gave a series with so
few searches after 2008 that the seasonal pattern was lost.

Note that Google Trends scales each series so that its own largest
month is 100. Values can be compared between years within one series,
but not between countries.

### Adding time columns

The CSV files were transformed by [Claude](https://claude.ai/) using the
prompt in [prompt.text](prompt.text). The transformation adds two
columns:

| Date | Time (real number) | Day number (in year) | Search interest |
|------|--------------------|----------------------|-----------------|

* *Time (real number)* is year + (day number − 1) / (days in that
  year), so 1 January is exactly 2004.0000, and leap years are divided
  by 366. Values are given to 4 decimals.
* *Day number* is 1–366. Because leap years have 29 February, every
  month from March onward falls one day later in those years. For
  example, 1 July is day 183 in 2024 but day 182 in 2025.

The same transformation is available as a script,
[trends2tsv.pl](trends2tsv.pl), which reproduces the TSV files exactly:

```
./trends2tsv.pl search-interest-swedish-moerdarsnigel.csv > \
    search-interest-swedish-moerdarsnigel.tsv
```

The results are in

* [search-interest-danish-draebersnegle.tsv](search-interest-danish-draebersnegle.tsv)
* [search-interest-swedish-moerdarsnigel.tsv](search-interest-swedish-moerdarsnigel.tsv)
* [search-interest-uk-killer-slug.tsv](search-interest-uk-killer-slug.tsv)

### Normalisation within years and mean search day

[normalize-within-years.pl](normalize-within-years.pl) adds a fifth
column with each month's share of that year's total search interest,
so that every year sums to 1. This removes the difference in level
between, for instance, 2024 and 2013 and leaves only the seasonal
shape:

```
./normalize-within-years.pl < search-interest-swedish-moerdarsnigel.tsv > \
    search-interest-swedish-moerdarsnigel-normalized.tsv
```

[mean-day.pl](mean-day.pl) computes, for each year, the mean day number
weighted by search interest, Σ(day × interest) / Σ(interest). Since
Google's scaling is a constant factor within a series, it gives the
same result on the raw and the normalized files:

```
./mean-day.pl < search-interest-swedish-moerdarsnigel.tsv > mean-search-day-se.tsv
./mean-day.pl < search-interest-danish-draebersnegle.tsv  > mean-search-day-dk.tsv
./mean-day.pl < search-interest-uk-killer-slug.tsv         > mean-search-day-uk.tsv
```

The day numbers refer to the first of each month, so the true centre
of the season is about two weeks later than the computed value. This
offset is the same for all years and countries and does not affect
comparisons.

## Precipitation and temperature

Data were retrieved from the *World Bank Group Climate Change Knowledge
Portal*:

https://climateknowledgeportal.worldbank.org/country/sweden/climate-data-historical

The same kind of data were retrieved for Denmark and the UK. The files
contain annual means from 1901 onwards:

* [mean-precipitation-denmark.csv](mean-precipitation-denmark.csv)
* [mean-precipitation-sweden.csv](mean-precipitation-sweden.csv)
* [mean-precipitation-uk.csv](mean-precipitation-uk.csv)
* [mean-temperature-sweden.csv](mean-temperature-sweden.csv) 

The script [mean-precipitation.pl](mean-precipitation.pl) combines one
of the precipitation files with a mean search day file (see
[mean-day.pl](mean-day.pl) above) into
[correlation-search-rain.tsv](correlation-search-rain.tsv), with the
columns year, precipitation (mm) and mean search day. Years without
precipitation data (such as the current year) are left out.

```
./mean-precipitation.pl > correlation-search-rain.tsv
```

**Warning** The input files are hardcoded into the script:

```
my $normalized = "mean-search-day-se.tsv";
my $rain       = "mean-precipitation-sweden.csv";
```

Then there is a similar correlation of search interest against
temperature:

```
./mean-temperature.pl > correlation-search-temperature.tsv
```

There are similar hardcoded input file names.

### Correlation

For Sweden, mean search day is positively correlated with annual
precipitation: Pearson r = 0.63, p = 0.002 (n = 22, 2004–2025). Leaving
out the noisy early years, for which the series rest on very few
nonzero months, gives r = 0.87, p < 0.0001 (n = 17, 2009–2025). The
slope is about 17–18 days later per 100 mm of rain. These values were
computed with `scipy.stats.pearsonr` and `scipy.stats.linregress`.
