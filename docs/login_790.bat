@echo off

if exist M: (net use /delete M:)
net use M: \\NS-GIS2.WIN.DUKE.EDU\ENV790_2020 

if exist P: (net use /delete P:)
net use P: \\NS-GIS2.WIN.DUKE.EDU\ENV790_2020\%username%