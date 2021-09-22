library(readr)
library(tidyr)
library(ggplot2)

duration	=	3600
warm		=	300
TESTname	=	"Prime95 Torture Test"
MULTI		=	TRUE
CPUname		=	"AMD Ryzen 7 2700X Eight-Core Processor"
COOLERname	=	"AMD Wraith Prism (PBO On)"
PULSE		=	NULL

levsPER		=	c("Warm-up", TESTname, "Cooldown")

theme_set(theme_grey(base_size = 16))
DPI			=	120
ggdevice	=	"png"

gWIDTH	=	16
gHEIGH	=	9
app.BREAK	=	TRUE
FREQ.COEF	=	NULL
# FREQ.COEF	=	1/1000*20
#	this will be set automatically in Output.r based on maximum power and clock values
#	it might be desirable to manually tweak this value, and if you do here it will not be altered
FREQspec	=	c(3700, 4300)

if (interactive())	{
	# setwd("C:/Users/packe/Desktop/Open Share/@Thermal Scripts/Data CPU/AMD Wraith Prism/2021-03-09 12.23/")
	setwd("E:/Users/Jim/My Documents/OCC/@Reviews/Thermal Scripts Articles/Data CPU/AMD Wraith Prism (PBO On)/2021-03-09 12.23")
}	else	{
	pdf(NULL)
}

if (!file.exists("Combined.csv.bz2"))	{
	if	(grepl("AMD", CPUname))		source("~CPU Thermal - Data - AMD.r")
	if	(grepl("Intel", CPUname))	source("~CPU Thermal - Data - Intel.r")
}	else	{
	dataALL	=	read_csv("Combined.csv.bz2")
}

dataALL$Thread	=	ordered(dataALL$Thread)
dataALL$Core	=	ordered(dataALL$Core)
dataALL$Socket	=	ordered(dataALL$Socket)
dataALL$Period	=	ordered(dataALL$Period, levels = levsPER)
dataALL$CPU		=	ordered(dataALL$CPU)
dataALL$Cooler	=	ordered(dataALL$Cooler)
dataALL$Test	=	ordered(dataALL$Test)

source("@CPU Thermal - Output.r")
