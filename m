Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1630F4C80039
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:44:07 -0600 (CST)
Received: by wwb31 with SMTP id 31so6633441wwb.11
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 05:44:04 -0800 (PST)
Received: by 10.216.15.75 with SMTP id e53mr1049643wee.107.1295358244214;
	Tue, 18 Jan 2011 05:44:04 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id t5sm2990753wes.9.2011.01.18.05.44.03
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 05:44:03 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D359876.8000208@mlbassoc.com>
Date: Tue, 18 Jan 2011 14:44:02 +0100
Message-Id: <531F65C9-D685-4988-B989-87CC859FE246@dominion.thruhere.net>
References: <4D32E4D2.5030002@mlbassoc.com>	
	<1295256226.2321.1.camel@scimitar>	<4D343BB7.4050404@mlbassoc.com>
	<1295269851.6501.2.camel@scimitar>	<4D3443FC.5060201@mlbassoc.com>
	<4D34731A.2090304@mlbassoc.com>	<4D357B4B.30607@mlbassoc.com>
	<D6F16B0B-0272-4D07-8163-4BD17C368CEB@dominion.thruhere.net>
	<4D359876.8000208@mlbassoc.com>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: Kernel firmware?
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
X-List-Received-Date: Tue, 18 Jan 2011 13:44:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 18 jan 2011, om 14:41 heeft Gary Thomas het volgende geschreven:

> On 01/18/2011 06:29 AM, Koen Kooi wrote:
>> Op 18 jan 2011, om 12:36 heeft Gary Thomas het volgende geschreven:
>>=20
>>> I don't see any kernel modules get installed in one of Poky's
>>> "supported" platforms either.  I just tried
>>>  MACHINE=3Digep0030 bitbake poky-image-minimal
>>> in a clean tree.  No kernel modules:
>>>=20
>>> [gthomas@titan igep_test]$ ls =
tmp/work/igep0030-poky-linux-gnueabi/poky-image-minimal-1.0-r0/rootfs/lib
>>>=20
>>> libanl-2.12.1.so           libcrypt.so.1       libnsl.so.1           =
   libpthread.so.0         modules
>>                                                                       =
                                                                     =
^^^^^^^^
>=20
> No, I'm looking for /lib/firmware (kernel loadable firmware) in =
particular,
> which is not present.

Then why did you say "No kernel modules" in your mail above?=

