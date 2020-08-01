set city=Saratov
set certcn="New Internet Technologies Inc."
set certname=nitfilesign1
set certsigname=nit1
set certpath=d:\yuden\.cert_data
set site="http://anticriminalonline.ru"

MakeCert.exe -$ commercial -n CN=%certcn% -a sha1 -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy end -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.3,1.2.643.5.1.24.2.15 -pe -sv  %certpath%\%certname%.pvk %certpath%\%certname%.cer
MakeCert.exe -$ commercial -n CN=%certcn% -a sha1 -sky signature -l %site% -ic %certpath%\%certsigname%.cer -iv %certpath%\%certsigname%.pvk -cy end -m 1200 -h 5 -len 1024 -eku 1.3.6.1.5.5.7.3.3,1.2.643.5.1.24.2.15 -pe -crl -sv  %certpath%\%certname%.pvk %certpath%\%certname%.crl
