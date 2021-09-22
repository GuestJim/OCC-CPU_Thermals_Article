# OCC-CPU_Thermals_Article

 Article documenting CPU Thermal scripts, with data and graphs

 I find it often is best to return to scripts after a time in order to review and overhaul them, and the best way to ensure I make positive changes is to write an article documenting them at the same time. The documenting process compels me to consider not only how the scripts work but how to explain them to others, and that forces me to make improvements I might be too lazy to implement just for myself.
 
 The [OCC-CPU_Thermals](https://github.com/GuestJim/OCC-CPU_Thermals) repository will keep the latest version of these scripts, not this repository. Unless I return to update the article itself, none of the content in this repository will change.
 
 In addition to documenting the scripts, this article also shares results from running [Prime95](https://www.mersenne.org/) with and without Precision Boost Overdrive enabled on my Ryzen 7 2700X test system, and results from pulsing [Cinebench R20](https://www.maxon.net/en-us/support/downloads/) with the newer pulsing code. This new code ensures the last run is terminated at the appropriate time, instead of it just being the final run.
 
 All of the data, scripts, stats, and graphs along with the LaTeX files are included in this repository. As I use relative paths as much as I can, it should be possible to run the scripts on other machines. If running the R scripts in a GUI though, you will need to manually set the working directory.
 
 I use XeLaTeX to compile the article and cannot guarantee other LaTeX engines will work.