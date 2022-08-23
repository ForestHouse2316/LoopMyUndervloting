$status = get-service -name "XTU3SERVICE" | Select-Object {$_.status} | format-wide

if ($status -ne "Running") { start-service -name "XTU3SERVICE"; sleep 5 }

while ( $true ) {
	& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 34 | Foreach-Object{ $coreoff += $_ };
	if ($coreoff.indexOf("[Your CoreOffset Value]") -eq -1) {
		# You should type your undervolt offset value to [Your offset]
		# And in case of [Set offset same with above], just set the value same with [Your offset] in above line.

		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 34 -v [Your offset]
		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 79 -v [Set offset same with above]

		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 83 -v [Your offset]
		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 100 -v [Set offset same with above]

		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 102 -v [Your Offset]

		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 106 -v [Your Offset]

		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 47 -v [Your Offset]
		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 48 -v [Set offset same with above]

		& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XtuCLI.exe' -t -id 66 -v [Your Offset]
	}

	Clear-Variable coreoff

	# This sleep is a interval of the loop. So, 60(sec) means this loop will executed every minute.
	# You can customize this value
	sleep 60
}
