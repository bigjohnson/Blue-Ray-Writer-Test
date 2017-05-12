for FILE in {1..23}
do
	echo ${FILE}
	if [ ! -e "${FILE}.rnd" ]
	then
		echo Creo il file ${FILE}.rnd
		dd if=/dev/urandom of="${FILE}.rnd" bs=1g count=1
		echo Calcolo l\'hash del file ${FILE}.rnd
		md5 "${FILE}.rnd" > "${FILE}.md5"	
	fi
done
