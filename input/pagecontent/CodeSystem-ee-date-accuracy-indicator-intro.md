### Guide for use
Any combination of the values A, E, U representing the corresponding level of accuracy of each date component of the reported date.

This data element consists of a combination of three codes, each of which denotes the accuracy of one date component:

- A – the referred date component is accurate
- E – the referred date component is not known but is estimated
- U – the referred date component is not known and not estimated.

This data element contains positional fields (DMY) that reflects the order of the date components in the format (DDMMYYYY) of the reported date:
- Field 1 (D) – refers to the accuracy of the day component;
- Field 2 (M) – refers to the accuracy of the month component;
- Field 3 (Y) – refers to the accuracy of the year component.

| Data domain | Date component (for a format DDMMYYYY) |
| ------- | ------ |
|            | (D)ay | (M)onth | (Y)ear  |
| ---- | --- | --- | --- |
| Accurate   | A | A | A | 
| Estimated  | E | E | E | 
| Unknown    | U | U | U | 

Example 1: If a date has been sourced from a reliable source and is known as accurate then the Date accuracy indicator should be informed as (AAA).

Example 2: If only the age of the person is known and there is no certainty of the accuracy of this, then the Date accuracy indicator should be informed as (UUE). That is the day and month are “unknown” and the year is “estimated”.

Example 3: If a person was brought in unconscious to an emergency department of a hospital and the only information available was from a relative who was certain of the age and the birthday’s 'month' then the Date accuracy indicator should be informed as (UAA). A year derived from an accurate month and accurate age is always an accurate year.

Copyright: [METEOR Metadata Online Registry](https://meteor.aihw.gov.au/content/294429)