$status = get-service -name "XTU3SERVICE" | Select-Object {$_.status} | format-wide
if ($status -ne "Running") { start-service -name "XTU3SERVICE"}

& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 34 -v -145
& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 79 -v -145

& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 83 -v -45
& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 100 -v -45

& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 102 -v 115

& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 106 -v 115

& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 47 -v 145
& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 48 -v 145
& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 66 -v 96	

sleep 5