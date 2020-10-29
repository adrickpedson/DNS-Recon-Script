#! /bin/bash
echo "Welcome to DNS Recon Script"
exit1=no
while [ $exit1 == no ]
do
echo "Enter a Domain Name"
read domain_name
echo ""
echo ""


#DIG
#A Record
echo "A record for $domain_name "
dig $domain_name A +short
echo ""
echo ""

#AAAA Record
echo "AAAA record for $domain_name "
dig $domain_name AAAA +short
echo ""
echo ""

#CNAME Record
echo "CNAME for $domain_name "
dig $domain_name CNAME +short
echo ""
echo ""

#MX Entry
echo "MX Entry for $domain_name "
dig $domain_name MX +short
echo ""
echo ""

#TXT Record
echo "TXT Record for $domain_name "
dig $domain_name TXT +short
echo ""
echo ""
echo "End"
echo ""
echo ""

echo "DO you want to exit (yes or no)? "
read exit1
echo ""
echo ""
done

