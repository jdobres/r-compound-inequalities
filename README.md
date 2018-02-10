# Compound inequalities in R

It's sometimes cumbersome to perform a comparison to see if `x` is between two other values. The functions in this project create compound inequality operators---`%>>%`, `%>>=%`, `%<<%`, and `%<<=%`---that make it easy to specify comparisons that are inclusive or exclusive on either side, while only typing the compared variable names once.

## Examples

```r
3 %<<=% 3 %<<=% 5
# TRUE

3 %<<% 3 %<<=% 5
# FALSE
```

## Details

For details on how and why I did this, see [Compound Inequalities in R](http://jdobr.es/blog/compound-inequalities-r).