{smcl}
{* *! version 1.1  27feb2025}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "cprddate##syntax"}{...}
{viewerjumpto "Description" "cprddate##description"}{...}
{viewerjumpto "Options" "cprddate##options"}{...}
{viewerjumpto "Remarks" "cprddate##remarks"}{...}
{viewerjumpto "Examples" "cprddate##examples"}{...}
{title:Title}

{phang}
{bf:cprddate} {hline 2} Quickly format DMY date variables provided by CPRD


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:cprddate} {varlist}
[{cmd:,} {opth format(string)}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt format(string)}}The format of the date{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:Description}

{pstd}
{cmd:cprddate} converts the {it:string} variables in {varlist} to Stata datetime variables.


{marker options}{...}
{title:Options}

{dlgtab:Main}

{phang}
{opt format(string)} specifies the format of the dates in {varlist} using "D", "M", and "Y" in any order.
Uses the same syntax as the date() command to repensent order of days, months, and years:
For example, "DMY" repsenets days followed by months followed by years.


{marker remarks}{...}
{title:Remarks}

{pstd}
{cmd:cprddate} will only work with {it:string} variables that have dates in the same date format.
DMY dates are assumed. If using dates in another format, you will need to specify the format.


{marker examples}{...}
{title:Examples}

{phang}{cmd:. cprddate eventdate sysdate}{p_end}

{phang}{cmd:. cprddate eventdate sysdate, format("DMY")}{p_end}
