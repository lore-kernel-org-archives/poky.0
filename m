Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f52.google.com (mail-ww0-f52.google.com [74.125.82.52])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D9794C800BE
	for <poky@lists.pokylinux.org>; Sun, 13 Feb 2011 09:21:31 -0600 (CST)
Received: by wwd20 with SMTP id 20so4195331wwd.33
	for <poky@lists.pokylinux.org>; Sun, 13 Feb 2011 07:21:30 -0800 (PST)
Received: by 10.216.166.2 with SMTP id f2mr2317964wel.24.1297610489133;
	Sun, 13 Feb 2011 07:21:29 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id r57sm473244wes.25.2011.02.13.07.21.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 13 Feb 2011 07:21:28 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D57F378.90406@mlbassoc.com>
Date: Sun, 13 Feb 2011 16:21:27 +0100
Message-Id: <58A0EE94-D37C-4643-AF5D-13078B549E08@dominion.thruhere.net>
References: <4D569EC5.6040609@mlbassoc.com>	<44134B64-2531-4D6A-9C7C-C2FE68D18434@dominion.thruhere.net>	<4D57F169.8040705@mlbassoc.com>
	<59686AEF-1509-4F1B-B722-66D2465E274F@dominion.thruhere.net>
	<4D57F378.90406@mlbassoc.com>
To: Poky <poky@lists.pokylinux.org>
X-Mailer: Apple Mail (2.1082)
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Sun, 13 Feb 2011 15:21:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 13 feb 2011, om 16:06 heeft Gary Thomas het volgende geschreven:

> On 02/13/2011 08:00 AM, Koen Kooi wrote:
>>=20
>> Op 13 feb 2011, om 15:57 heeft Gary Thomas het volgende geschreven:
>>=20
>>> On 02/12/2011 08:01 AM, Koen Kooi wrote:
>>>>=20
>>>> Op 12 feb 2011, om 15:52 heeft Gary Thomas het volgende geschreven:
>>>>=20
>>>>> I have a BeagleBoard C3 (not the new xM).  Trying to run the
>>>>> latest Poky ran into some problems:
>>>>>=20
>>>>> * The boot commands in README.hardware are no longer accurate
>>>>>  for the 2.6.37 (linux-yocto) kernel.  At least you need to
>>>>>  use ttyO2 for the serial console.
>>>>> * There is no video?  /dev/fb0 is not being created.
>>>>>=20
>>>>> I know that the previous (Angstrom based) 2.6.32 kernel had
>>>>> lots of additions which support video (DSS subsystem) and
>>>>> also camera (ISP).  Has this support been ported forward
>>>>> into the Yocto kernel?
>>>>=20
>>>> Even better, there is a proper BSP with beagleboard support: =
http://gitorious.org/angstrom/angstrom-layers/commits/master
>>>=20
>>> How is this used?  I tried just adding a pointer to that tree
>>> in my conf/bblayers.conf.  I also tried moving that tree into
>>> my poky sources at the same level as meta-emenlow, etc.  Both
>>> attempts immediately yielded this error:
>>>  ERROR: Unable to parse conf/bitbake.conf: Could not include =
required file conf/machine/include/omap3.inc
>>>=20
>>> Perhaps you can give some guidance for how to use this?
>>=20
>> =
http://thread.gmane.org/gmane.linux.distributions.angstrom.devel/4698/focu=
s=3D4700
>=20
> Obviously this is not what I'm looking for.
>=20
> What I had wanted to test was your layering on top of my extant
> Poky/Yocto environment.  I don't want to start over as I have my
> own layers that work just fine with Poky.

I obviously misunderstood your request on the angstrom mailinglist on =
how to setup angstrom on top of yocto as a request on how to setup =
angstrom on top of yocto. I'm sorry that I fail to understand such =
obvious things. I will from now on stop trying to understand your =
requests to avoid any confusion and perceived wrongdoing on my part.=20=

