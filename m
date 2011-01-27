Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC2B54C8124C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:33:58 -0600 (CST)
Received: by wye20 with SMTP id 20so2677319wye.35
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 15:33:57 -0800 (PST)
Received: by 10.227.180.134 with SMTP id bu6mr1837725wbb.183.1296171237014;
	Thu, 27 Jan 2011 15:33:57 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id n78sm8705861weq.27.2011.01.27.15.33.56
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 27 Jan 2011 15:33:56 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1296164726.27814.8752.camel@rex>
Date: Fri, 28 Jan 2011 00:33:55 +0100
Message-Id: <D4125C01-857A-4D52-9349-291BABA169F5@dominion.thruhere.net>
References: <1295993245.27814.133.camel@rex>
	<A75EAA1D-9046-4CD6-B407-65AA43B9F3CC@dominion.thruhere.net>
	<1296140767.27814.7777.camel@rex>
	<95D49026-CF08-4DB9-9749-3C191C737414@dominion.thruhere.net>
	<1296164726.27814.8752.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: poky <poky@yoctoproject.org>
Subject: Re: Master stability update
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
X-List-Received-Date: Thu, 27 Jan 2011 23:33:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 27 jan 2011, om 22:45 heeft Richard Purdie het volgende geschreven:

> On Thu, 2011-01-27 at 16:35 +0100, Koen Kooi wrote:
>> Op 27 jan 2011, om 16:06 heeft Richard Purdie het volgende =
geschreven:
>>=20
>>> On Thu, 2011-01-27 at 13:45 +0100, Koen Kooi wrote:
>>>> Op 25 jan 2011, om 23:07 heeft Richard Purdie het volgende =
geschreven:
>>> It seems that autoconf.bbclass change is having a weird ripple =
effect
>>> with the sstate packages. Can you clean sstate and then retry, just =
to
>>> try and isolate the issues?
>>>=20
>>> I agree having a simple change to autotools.bbclass ripple through
>>> sstate like that isn't desirable btw, I just want to try and fix one
>>> issue at a time.
>>=20
>> I removed tmp, sstate-cache and pseudodone, then did 'bitbake
>> console-image', which failed at the same point. I looked into
>> =
'/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/', =
which had a lot files in it, but no autoconf, so I did 'bitbake =
autoconf-native', that (re)ran a lot of rm_work tasks.
>>=20
>>=20
>> koen@dominion:/OE/tentacle$ ls =
/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/
>> tclConfig.sh*
>>=20
>> so it removed pretty much everything from the sysroot!
>=20
> Just to update on this, Koen is using distribute_sources which adds a
> do_distribute_sources task. This is why things are working on master =
but
> not for Koen.
>=20
> That task runs later and causes do_setscene to rerun which cleans out
> the sysroot rather helpfully assuming that all tasks for that recipe
> will rerun which isn't true.
>=20
> This branch has some proposed changes to make this work better:
>=20
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Drpurdie/misc2
>=20
> and Koen is testing them to see how they work out.

It gets a lot further now, I'll check the end result tomorrow after I =
wake up.

regards,

Koen=

