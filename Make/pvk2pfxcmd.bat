set cert_path=D:\yuden\.cert_data
%~dp0Cert2Spc.exe %cert_path%\%1.cer %cert_path%\%1.spc
%~dp0pvk2pfx.exe -pvk %cert_path%\%1.pvk -spc %cert_path%\%1.spc -pfx %cert_path%\%1.pfx -f
