# spotify-adblock
Spotify adblocker for Linux that works by wrapping `getaddrinfo` and *libcurl*'s `curl_easy_setopt` and blocking all domains that aren't whitelisted, as well as blacklisted URLs.

## Installing
Run the spotify_install.sh by 
    $ chmod +x spotify_install.sh
    $ ./spotfy_install.sh
## Running Spotify
Navigate to the directory wherever you have cloned spotify-adblock-linux then 
    $ chmod +x spotify.sh
    $./spotify.sh 
This will run the spotify application on your Desktop.  
