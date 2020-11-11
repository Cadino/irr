:: This batch cmd is run as the final step in the installation of PAGE
:: It creates the file winpage.bat

@>"winpage.bat" echo @start /min wish.exe "%%~dp0page.tcl" %%1
