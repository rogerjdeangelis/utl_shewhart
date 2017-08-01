*                _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|
;

options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have(drop=x);
  call streaminit(1234);
  do x=1 to 25;
    y=rand('normal');
    output;
  end;
run;quit;

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|
;

%utl_submit_wps64('
libname sd1 sas7bdat "d:/sd1";
options set=R_HOME "C:/Program Files/R/R-3.3.2";
libname wrk sas7bdat "%sysfunc(pathname(work))";
proc r;
submit;
source("C:/Program Files/R/R-3.3.2/etc/Rprofile.site", echo=T);
library(haven);
library(qicharts);
have<-read_sas("d:/sd1/have.sas7bdat");
have;
pdf("d:/pdf/shewart.pdf");
qic(have$Y, chart = "i");
endsubmit;
run;quit;
');


options ls=64 ps=32;
proc plot data=sd1.have(rename=(y=indicatorindicator x=subgroup));;
plot indicatorindicator*subgroup='*' / vref=2.4 -.019 -2.8 vaxis=-3 to 2.5 by .5
  haxis=0 to 25 by 5;
run;quit;

