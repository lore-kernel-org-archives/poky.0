Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 25C3B4C81065
	for <poky@lists.pokylinux.org>; Mon, 17 Jan 2011 10:59:46 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id AB4CB166030D; Mon, 17 Jan 2011 09:59:45 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1317516602EC;
	Mon, 17 Jan 2011 09:59:45 -0700 (MST)
Message-ID: <4D347581.9020201@mlbassoc.com>
Date: Mon, 17 Jan 2011 09:59:45 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: WiFi setup
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jan 2011 16:59:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Pardon me if this is not the best place to ask about this, but
since I'm building using Poky...  Feel free to send me elsewhere
(with pointers!) if there's a more appropriate list.

I now have a WiFi USB dongle which I think the kernel is happy
with, at least I get the 'wlan0' device running.  I'm not running
network manager, I'd like to just get it going "raw" via ifup, etc.

Sadly, when I try it, it doesn't work.  Here's what I see:

   root@cobra3530p60:~# ifup wlan0
   phy0 -> rt2x00lib_request_firmware: Info - Loading firmware file 'rt73.bin'.
   rt73usb 2-1.2.4:1.0: firmware: requesting rt73.bin
   phy0 -> rt2x00lib_request_firmware: Info - Firmware detected - version: 1.7.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 0 - CWmin: 3, CWmax: 4, Aifs: 2, TXop: 102.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 1 - CWmin: 4, CWmax: 5, Aifs: 2, TXop: 188.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 2 - CWmin: 5, CWmax: 10, Aifs: 3, TXop: 0.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 3 - CWmin: 5, CWmax: 10, Aifs: 7, TXop: 0.
   ADDRCONF(NETDEV_UP): wlan0: link is not ready
   udhcpc (v1.17.3) started
   Setting IP address 0.0.0.0 on wlan0
   Sending discover...
   Read error: Network is down, reopening socket
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 0 - CWmin: 3, CWmax: 4, Aifs: 2, TXop: 102.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 1 - CWmin: 4, CWmax: 5, Aifs: 2, TXop: 188.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 2 - CWmin: 5, CWmax: 10, Aifs: 3, TXop: 0.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 3 - CWmin: 5, CWmax: 10, Aifs: 7, TXop: 0.
   Sending discover...
   Sending discover...
   No lease, failing
   root@cobra3530p60:~# phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 0 - CWmin: 2, CWmax: 3, Aifs: 2, TXop: 47.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 1 - CWmin: 3, CWmax: 4, Aifs: 2, TXop: 94.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 2 - CWmin: 4, CWmax: 10, Aifs: 3, TXop: 0.
   phy0 -> rt2x00mac_conf_tx: Info - Configured TX queue 3 - CWmin: 4, CWmax: 10, Aifs: 7, TXop: 0.

   root@cobra3530p60:~# iwconfig wlan0
   wlan0     IEEE 802.11bg  ESSID:"test adhoc"
             Mode:Ad-Hoc  Frequency:2.412 GHz  Cell: B6:42:15:B2:E8:91
             Tx-Power=18 dBm
             Retry  long limit:7   RTS thr:off   Fragment thr:off
             Encryption key:935E-27E7-CAB5-DA1B-1D6A-B183-71AE-26E7-7859-1311-D87D-FFB3-7859-1311-D87D-FFB3
             Power Management:on

I have the default settings in /etc/network/interfaces for wlan0:
   # Wireless interfaces
   iface wlan0 inet dhcp
           wireless_mode managed
           wireless_essid any
           wpa-driver wext
           wpa-conf /etc/wpa_supplicant.conf

I did not change /etc/wpa_supplicant.conf

I've not found much in the way of documentation on how this works,
but I think the [first] real problem is that the interface is in
the wrong mode - Ad Hoc instead of Managed.

Does anyone know what I need to do to get this going (I think I
know how to set the details of things like my AP SSID and keys),
I just don't think I'm getting that far.

Thanks for any ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

