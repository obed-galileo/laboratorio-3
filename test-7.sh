echo "Running Tests..."

if Rscript --vanilla Test-7.R ; then
	echo "Pass: program exited zero"
else
	echo "Pass: program exited not zero"
	exit 1
fi

echo "All tests passed."

exit 0