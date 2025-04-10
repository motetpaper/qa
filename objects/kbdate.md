# kbdate

Creates a date-based knowledge base identifier.

## Synopsis


```mermaid
flowchart LR
A[inputdate] --> B[[KBDATE]] --> C[KBYYMMmmmmmm];
```

## Summary

`kbdate` is a digital service that creates a date-based knowledge base identifier called a **kbdate.** This date-based ID can be used to provide references for knowledge base articles. 

It has been implemented in different contexts and on multiple platforms with identical output, when given a specific date and time.


## Details

The kbdate ID is defined by the following pattern:

  * The first two characters are `KB`.
  * The next two characters represent the two-digit year.
    * Values: `24` (2024), `25` (2025), `26` (2026),...
  * The following two characters represent the two-digit month. 
    * Values: `01` (January),`02` (February), ... `12` (December)
  * The final five characters represent the five-digit number of minutes elapsed since the beginning of the month.
    * Values: `00000` (day 1 00:00), `00001` (day 1 00:01), ... `44639` (day 31 23:59)


## Examples

Here is an example date and time input:

`April 7, 2025, 8:53 AM`

This is the resulting kbdate:

`KB250409173`

The year of this kbdate ID is 2025 (`25`); the month is April (`04`), and 9173 minutes have elapsed since the start of April.


## Contexts and Implementations

  + Bash in a Debian Linux package: http://github.com/motetpaper/kbdate-sh
  + JavaScript object: https://github.com/motetpaper/kbdate-js
    + used in a web app: https://motetpaper.github.io/kbdate

