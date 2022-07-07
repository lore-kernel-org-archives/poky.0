Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web09.3982.1657190473344493347
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Jul 2022 03:41:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=N0+AYeb+;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657190471;
	bh=czsPrLjbRYjESQiRH2bbIaY2pw3Wx+qNbJ5vvJ9rRyw=;
	h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
	b=N0+AYeb+VE3H1PA4mSiSgNhfvXCATD8KoQVpxXY3ITJ2ASa8MGHzy5wCavZFXN8Ce
	 PEAExR02nLvseFU5qcs/RphNmR18E03bB6pRRae9c5KH9KIjpQ8fbe8AD6ev4f71Ut
	 rIzXcJuXt/2c1r9uV+5JZxralO5Zr5GiwQ6/GpdM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.20] ([84.185.255.62]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Md6Mt-1nZnLJ02hH-00aHPT for
 <poky@lists.yoctoproject.org>; Thu, 07 Jul 2022 12:41:11 +0200
Message-ID: <efa3d9fe-4f53-5306-901d-2a25edb5ac09@gmx.li>
Date: Thu, 7 Jul 2022 12:41:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: [poky] net-snmp pcilib error
To: poky@lists.yoctoproject.org
References: <20220617071314.3362109-1-kayo@illumium.org>
 <57bbb930-8343-5aa2-e4a4-d7aa92997e2a@windriver.com>
From: "Steve" <star@gmx.li>
In-Reply-To: <57bbb930-8343-5aa2-e4a4-d7aa92997e2a@windriver.com>
X-Provags-ID: V03:K1:4ykFoM3oJWQgQCcnqYRkAln0ze+AZMb71RjrIz1R8bplVipmqQK
 k1Ne6k3xObkBXgJCAifirfzHjnTfU1XpHX60Gf5oW65qhzTe6cHP1HGHj/7z8zyVx20Db1Z
 5O1NIYJW1rZE/yKFyPTaNvK74qpbKae9PFhwRipCUTLTELgsYANbsgs/CMHONisLP6gG5Ld
 GVeBGvY7mRORbUChmXQJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ILNfOp/eCIM=:zuP+46OruawBU0Wr+FUnrW
 ybwzRDA8b6NWpBtlhinFnh6WJnohTa589K5++39YCWOy+xLMtZUnaT5Ku9hj7rQudG5C4m2v7
 X2624h46J8fNtffaDO8oLWgzYiAjjXZivKDW/CpdqBTBLeDB2Lcjaj4TLujLtyTKqXceCbqGt
 dkbyfqXkCzCKFCqgTZ1nNGG/+VF9oSmtIQN9d5A2PsqdCIQZg0Rr/q6ATvrBV53081HFLMx/8
 9Yiv3kHdCXq5jJh29s+UREhRqywoakuMX9owH0uXwgvAJhRckF1mgKEhPXhk1ZAizCalo9SG9
 IPLL6YUb6sKyFLvdYAYPWob/12znUdtROoJedgfyA+nUNnTgff4I2JFGOfXmpeCu53LetA0Ml
 b06ldHxzq1OH6ErF4upInrjpk7dUor87qnJ7uY5cjpG9VegjZZqQZHloSVNmY+rfKRYt5FeC8
 aJF7vB9r2c2iGvSyOrp/5+FrV3E3/Zp+FjT2/vpK2pyCaDo8OCPjzaCSgVLC6TDUZ7yLxX5Fm
 5ikA7NVw9Xr6DGoDlCGErIOmd/QNQYLVYT+MApPFBBF6W3ox2lPHWgQB1PjE+YVsjsxqYT7xt
 hKccRv4oZhD4e4aZYuEBGPlgK43ta9MRu4rUXq5ia0SSDCzuGheJptXvgKlcgl8G4QErASMYG
 BpkXsHin2z/NyPlphAnTCSx/z9BbD50RnWh/eIIdZo1EBr1x/zZHl+1t5AjtbNXratCxxX0Yf
 A/SnTkOQDI+iP0ilNDN5snC5Jen4fmKCp2zhJFsf/akyKYFhLEVDxDgAGGTBULECu/53Rf3nV
 GBH5rurP5VflhH3DcQfVyP8wNP8LtcXH3Vpc0ulm6SjV5JftRxawjNSrSc+BpqpclmrBft6Nc
 RT+OtZfsvhQuwdbGsOcliUq7hKfxMbd2+li+pFqiaZhCSK6q3lrwJJdPGJOYMYvxZy9+LdNHu
 3VKC2mUdUayYlGMCh0/A1MinxS6jGN48u2JxilLheoi2PPhwaJQB4l2wdlPvOg+AWXQAqrl60
 UWssBEXQRFUYesZ7acZmj51nycLAOXF22q2szq1uSTSC6bbOIRwyA/nyjr/RvjJqe6HR/pgpY
 83rMqDIf2LrH4JzFA/N+6TqceH60WKcF93f
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I get error (pcilib: Cannot open /proc/bus/pci) when starting.
I found a few matches but seems that this should be resolved if no PCI
is available. Maybe I did something wrong and have to configure the
recipe (kirkstone snmp 5.9.1) somehow - but I don't know how. I found no
indication to pci.

I found some define HAVE_PCI_LOOKUP_NAME - but how to unset this to get
rid of this nasty message?
Or other way asked - how to configure it so that it doesn't think it has
PCI? I am sure, I will not use it.

Thanks
Arno

