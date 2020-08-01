"%~dp0Cert2Spc.exe" %1.cer %1.spc
"%~dp0pvk2pfx.exe" -pvk %1.pvk -spc %1.spc -pfx %1.pfx -f
