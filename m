Received: from shell1.rawbw.com (shell1.rawbw.com [198.144.192.42])
 by mx.groups.io with SMTP id smtpd.web10.4346.1579762774749862543
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 22:59:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: rawbw.com, ip: 198.144.192.42, mailfrom: yuri@rawbw.com)
Received: from yv.noip.me (c-73-189-35-76.hsd1.ca.comcast.net [73.189.35.76])
	(authenticated bits=0)
	by shell1.rawbw.com (8.15.1/8.15.1) with ESMTPSA id 00N6xXgB083361
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 22 Jan 2020 22:59:33 -0800 (PST)
	(envelope-from yuri@rawbw.com)
X-Authentication-Warning: shell1.rawbw.com: Host c-73-189-35-76.hsd1.ca.comcast.net [73.189.35.76] claimed to be yv.noip.me
Subject: Re: [poky] How to make the image to get the IP (over DHCP) and listen for ssh connections?
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
References: <V5kT.1579720627445078822.cu1I@lists.yoctoproject.org>
 <CAMKF1so5G6towiFSmAmxg7npOTEdu_x1iSMP9C+MCO2cA6sASw@mail.gmail.com>
 <7547719e-d9f0-7a0c-7ffc-ad1f25fe8f89@rawbw.com>
 <CAMKF1spgKUgyQb6fYGA1VWk7X3HQrtAVgxv--a88erMSoNZ7Ww@mail.gmail.com>
From: "Yuri" <yuri@rawbw.com>
Message-ID: <d1e7bb96-31ae-73f4-8d9c-ab09573d0681@rawbw.com>
Date: Wed, 22 Jan 2020 22:59:31 -0800
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1spgKUgyQb6fYGA1VWk7X3HQrtAVgxv--a88erMSoNZ7Ww@mail.gmail.com>
X-MIME-Autoconverted: from 8bit to quoted-printable by shell1.rawbw.com id 00N6xXgB083361
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 2020-01-22 22:16, Khem Raj wrote:
> what happens if you run udhcpc -ietth0


It fails:

# udhcpc -ieth0
udhcpc: started, v1.31.0
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover

Wireshark doesn't sense any DHCP packets.


ping says that it sent packets, but wireshark doesn't sense any ARP or=20
ICMP packets.


# dmesg | grep eth0
[=C2=A0=C2=A0=C2=A0 3.047724] socfpga-dwmac ff702000.ethernet eth0: PHY [=
stmmac-0:01]=20
driver [Micrel KSZ9031 Gigabit PHY]
[=C2=A0=C2=A0=C2=A0 3.064284] socfpga-dwmac ff702000.ethernet eth0: No Sa=
fety Features=20
support found
[=C2=A0=C2=A0=C2=A0 3.072053] socfpga-dwmac ff702000.ethernet eth0: regis=
tered PTP clock
[=C2=A0=C2=A0=C2=A0 3.078583] socfpga-dwmac ff702000.ethernet eth0: confi=
guring for=20
phy/rgmii link mode
[=C2=A0=C2=A0=C2=A0 7.285624] socfpga-dwmac ff702000.ethernet eth0: Link =
is Up -=20
1Gbps/Full - flow control rx/tx
[=C2=A0=C2=A0=C2=A0 7.294215] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link b=
ecomes ready


Yuri


