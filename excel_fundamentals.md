## Shortcuts

## Useful affordances

## References

References are function arguments. Functional syntax follows `=FUNCTION(REFERENCE)`.

| code | description |
|------|-------------|
| `A1` | relative |
| `$A$1` | absolute |
| `$A1` or `A$1` | mixed |

## Error codes

## Data cleaning

### Spellcheck

Review > Proofing > Spelling

### Remove empty records

Data > Sort & Filter > Filter

Filter for `(blanks)`.

### Remove duplicates

Via conditional formatting

Home > Styles > Conditional Formatting > Highligh Cells Rules > Duplicate Values

Home > Styles > Conditional Formatting > Clear Rules

Direct removal

Data > Data Tools > Remove Duplicates

### Recode

Home > Editing > Find & Select > Replace

## Formatting and string manipulation

| function | description |
|----------|-------------|
| `UPPER()` | Convert to upper case. |
| `LOWER()` | Convert to lower case. |
| `PROPER()` | Capitalise the first character. |
| `TRIM()` | Trim the whitespaces. |
| `LEN()` | Return the length of the string. |
| `SEARCH()` | Return the substring index. Case insensitive.  |
| `FIND()` | Return the substring index. Case sensitive. |
| `LEFT()` | Extract a substring from the left. |
| `RIGHT()` | Extract a substring from the right. |
| `MID()` | Extract a substring form the middle. |
| `CONCAT()` | Concatenate strings. |

Read up on wildcard characters `?` and `*`.

Combine with auto functionality to extract or construct patterns:

Home > Editing > Fill > **Flash Fill**

Data > Data Tools > **Text to Columns**

Home > Clipboard > **Format Painter**

## Sorting, filtering and shaping data

### Sorting and filtering

Data > Sort & Filter

Filter data by condition.

Sort data alphabetically, ordinally or chronologically. Be mindful of headers when sorting.

### Conditional statements and aggregate functions

| function | description |
|----------|-------------|
| `IF()` | |
| `IFS()` | |

Combine conditional statements with conditional formatting:

Home > Styles > **Conditional Formatting** > New Rule

Use "Format only cells that contain" for categorical values.

| function | description |
|----------|-------------|
| `COUNTIF()` | |
| `COUNTIFS()` | |
| `SUMIF()` | |
| `SUMIFS()` | |

### Horizontal and vertical lookup

`HLOOKUP()` matches columns and returns the value from the given row. The sought value must be contained in the topmost row in the lookup range.

Syntax: `HLOOKUP(VAL,RAN,ROW,EXACT)` -- returns value at (given `ROW`, `VAL` col)

| parameter | description |
|-----------|-------------|
| `VAL` | Lookup value. The value we are looking for. This value must be contained in the topmost row of the lookup range. |
| `RAN` | Lookup range. The table array (range) we are looking in. |
| `ROW` | The index of the row containing the output values. |
| `EXACT` | An exact match requirement is coded as `TRUE`. An approximate match requirement is coded as `FALSE`. |

`VLOOKUP()` matches rows and returns the value from the given column. The sought value must be constained in the leftmost column in the lookup range.

Syntax: `VLOOKUP(VAL,RAN,COL,EXACT)` -- returns value at (`VAL` row, given `COL`)

| parameter | description |
|-----------|-------------|
| `VAL` | Lookup value. The value we are looking for. This value must be contained in the leftmost of the lookup range. |
| `RAN` | Lookup range. The table array (range) we are looking in. |
| `COL` | The index of the column containing the output values. |
| `EXACT` | An exact match requirement is coded as `TRUE`. An approximate match requirement is coded as `FALSE`. |

`XLOOKUP()` can search in either direction.

Syntax: `XLOOKUP(VAL,VAL_RAN,LOOKUP_RAN)`

Matches the sought value `VAL` in row (column) `VAL_RAN` and returns the corresponding value from column (row) `LOOKUP_RAN`).

### Pivot tables

Preliminaries

- Format the main table: Home > Styles > **Format as Table**
- Allow only one header row and format all columns appropriately
- Insert the pivot table: Insert > Tables > **Pivot Table**
- Sort data into rows, values and columns

- The order in the rows and columns groups the data
- Aggregate the data by a level of interest

- The dropdown menu in the pivot table itself has filtering and sorting options
- The dropdown menu in the fields tab has aggregating options, e.g. count, avg

- Filter by subgroup: PivotTable > Filter > Insert Slicer
- Filter by time period: PivotTable > Filter > Insert Timeline
