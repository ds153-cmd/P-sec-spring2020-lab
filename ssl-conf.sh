echo
echo                                          _                _               _      _                   __     __  _  ___  
echo     /\                                  | |              (_)             | |    (_)                  \ \   / / | ||__ \ 
echo    /  \   _ __ ___   _   _  ___  _   _  | |     _____   ___ _ __   __ _  | |     _ _ __  _   ___  __  \ \_/ /__| |_  ) |
echo   / /\ \ | '__/ _ \ | | | |/ _ \| | | | | |    / _ \ \ / / | '_ \ / _` | | |    | | '_ \| | | \ \/ /   \   / _ \ __|/ / 
echo  / ____ \| | |  __/ | |_| | (_) | |_| | | |___| (_) \ V /| | | | | (_| | | |____| | | | | |_| |>  <     | |  __/ |_|_|  
echo /_/    \_\_|  \___|  \__, |\___/ \__,_| |______\___/ \_/ |_|_| |_|\__, | |______|_|_| |_|\__,_/_/\_\    |_|\___|\__(_)  
echo                       __/ |                                        __/ |                                                
echo                      |___/                                        |___/                                                 
echo
echo "[!] Run as Sudo if file create fails"
echo "[*] Creating and populating /etc/apache2/conf-availiable/ssl-params-conf"
touch /etc/apache2/conf-available/ssl-params.conf
echo SSLCipherSuite EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH >> /etc/apache2/conf-available/ssl-params.conf
echo SSLProtocol All -SSLv2 -SSLv3 -TLSv1 -TLSv1.1 >> /etc/apache2/conf-available/ssl-params.conf
echo SSLHonorCipherOrder On >> /etc/apache2/conf-available/ssl-params.conf
echo Disable preloading HSTS for now.  You can use the commented out header line that includes
echo the "preload" directive if you understand the implications.
echo Header always set Strict-Transport-Security "max-age=63072000; includeSubDomains; preload"
echo Header always set X-Frame-Options DENY >> /etc/apache2/conf-available/ssl-params.conf
echo Header always set X-Content-Type-Options nosniff >> /etc/apache2/conf-available/ssl-params.conf
echo Requires Apache >= 2.4
echo SSLCompression off >> /etc/apache2/conf-available/ssl-params.conf
echo SSLUseStapling on >> /etc/apache2/conf-available/ssl-params.conf
echo SSLStaplingCache "shmcb:logs/stapling-cache(150000)" >> /etc/apache2/conf-available/ssl-params.conf
echo Requires Apache >= 2.4.11
echo SSLSessionTickets Off >> /etc/apache2/conf-available/ssl-params.conf
echo "[!] Bash script completed"
