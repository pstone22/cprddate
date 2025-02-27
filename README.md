# `cprddate`: a Stata command to quickly format date variables provided by CPRD

## Notes
- `cprddate` assumes all dates are in **DMY** format
  - *day* followed by *month* followed by *year*
- The format() option can be used for dates not in **DMY** format. It uses the same syntax as the `date()` command

## Installation
`cprddate` can be installed by copying and pasting the following command in to Stata:
```stata
net install cprddate, from("https://raw.githubusercontent.com/pstone22/cprddate/main") replace
```

## Syntax
```stata
cprddate varlist [, format()]
```
### Examples
```stata
cprddate eventdate sysdate
cprddate onsdate, format("YMD")
```
