## MACOS
1. Get files to one doc. ``client.conf``,``client_down.sh``,``client_up.sh``,``run_mac.sh``,``minivtun``.
2. Use ``chnroutes.py -p mac``,get ``ip-up``,``ip-down``.
3. ``chmod +x client_down.sh client_up.sh run_mac.sh ip-up ip-down minivitun``
4. Edit``client.conf``.
5. ``sudo sh run_mac.sh `` to start,``sudo sh run_mac.sh stop`` to stop. 
## UDPspeeder
1. Get ``speederv2.sh``,``speederv2.conf`` to the doc.
2. Get static binary from https://github.com/wangyu-/UDPspeeder/releases to the doc.
3. Edit ``speederv2.conf``,_open=1.
4. _port="your UDPspeeder server port",port="your minivtun port".
5. server="you vps IP", _server="127.0.0.1".
6. ``sudo sh run_mac.sh `` to start,``sudo sh run_mac.sh stop`` to stop. 
