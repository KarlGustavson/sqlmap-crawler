#!/bin/sh
rm ~/links.txt
touch ~/links.txt
rm ~/crawled_urls.txt
touch ~/crawled_urls.txt
rm ~/sqlmap_urls.txt
touch ~/sqlmap_urls.txt
python gsearch.py
sed -r -i 's|([^/]*//[^/]*/).*|\1|' ~/links.txt
./crawl.sh > crawled_urls.txt
grep -e '=' ~/crawled_urls.txt > sqlmap_urls.txt
#last line deletes unwanted shit websites from your sqlmap_urls.txt. Unwanted Urls must me written like below, otherwise it may delete Url Parameter (example.com/users/google.php?id=1)
sed -i -e '/google.com/Id; /ebay.de/Id; /bing.com/Id; /icios.us/Id; /amazon.de/Id; /facebook.com/Id; /jimdo.com/Id; /apple.com/Id; /ssl-account.com/Id; /strato.de/Id; /geotrust.com/Id; /internet-siegel.net/Id; /kaeufersiegel.de/Id; /trustedshops.com/Id; /trustedshops.co.uk/Id; /trustedshops.de/Id; /youtube.com/Id; /etracker.de/Id; /googletagmanager.com/Id; /googleusercontent.com/Id; /rakuten-shop.de/Id; /adition.com/Id; /aol.de/Id; /aol.com/Id; /ebay-kleinanzeigen.de/Id; /?PHPSESSID=/Id; /xing.com/Id; /1und1.de/Id; /blogger.com/Id; /blogger.de/Id; /wordpress.org/Id; /wordpress.com/Id; /wikipedia.com/Id' ~/sqlmap_urls.txt