{smcl}
{* *! version 1.0  11aug2023}{...}
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
{cmdab:cprddate}
{varlist}


{marker description}{...}
{title:Description}

{pstd}
{cmd:cprddate} converts the string variables in {varlist} to Stata datetime variables.


{marker remarks}{...}
{title:Remarks}

{pstd}
{cmd:cprddate} will only work with dates in DMY format.


{marker examples}{...}
{title:Examples}

{phang}{cmd:. cprddate eventdate sysdate}{p_end}
