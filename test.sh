for NUMBER in {1..23}
do
	echo ${NUMBER}
	MD5NEW=$(md5 ${NUMBER}.rnd)
	echo ${MD5NEW}
	MD5OLD=$(cat ${NUMBER}.md5)
	echo ${MD5OLD}
	if [ "${MD5NEW}" == "${MD5OLD}" ]
	then
		echo OK
	else
		echo ERROR
	fi
done
