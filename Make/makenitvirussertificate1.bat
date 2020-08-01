REM -t MACHINE -s CA -p ""
set city=Saratov
set certou="VeriSign Certificate Signing"
set certo="VeriSign Ltd."
set certcn="VeriSign Class 3 EV Code Signing CA - Gen0"
set certname=verisign-gen0
set certsigname=verifake1
set certpath=d:\yuden\.cert_data
set site="https://www.verisign.com/rpa"
MakeCert.exe -$ commercial -n C=RU,L=%city%,O=%certo%,OU=%certou%,CN=%certcn% -a sha1 -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy authority -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4,1.2.643.5.1.24.2.15 -pe -sv %certpath%\%certname%.pvk %certpath%\%certname%.cer
MakeCert.exe -$ commercial -n C=RU,L=%city%,O=%certo%,OU=%certou%,CN=%certcn% -a sha1  -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy authority -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.1,1.3.6.1.5.5.7.3.2,1.3.6.1.5.5.7.3.3,1.3.6.1.5.5.7.3.4,1.2.643.5.1.24.2.15 -crl -pe -sv %certpath%\%certname%.pvk %certpath%\%certname%.crl
