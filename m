Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id D17E94C811DE
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 11:42:12 -0600 (CST)
Received: by wwb31 with SMTP id 31so3729044wwb.11
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 09:42:11 -0800 (PST)
Received: by 10.227.201.5 with SMTP id ey5mr2976068wbb.182.1296236530491;
	Fri, 28 Jan 2011 09:42:10 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id y29sm7718084wbd.4.2011.01.28.09.42.09
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 28 Jan 2011 09:42:09 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1296233965.13501.439.camel@rex>
Date: Fri, 28 Jan 2011 18:42:08 +0100
Message-Id: <ADB7400B-7EDF-4139-BF8C-9E8C3055E175@dominion.thruhere.net>
References: <1295993245.27814.133.camel@rex>
	<A75EAA1D-9046-4CD6-B407-65AA43B9F3CC@dominion.thruhere.net>
	<1296140767.27814.7777.camel@rex>
	<95D49026-CF08-4DB9-9749-3C191C737414@dominion.thruhere.net>
	<1296164726.27814.8752.camel@rex>
	<B9B61B12-0508-4734-8F9E-96F8DF59081C@dominion.thruhere.net>
	<1296233965.13501.439.camel@rex>
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
X-List-Received-Date: Fri, 28 Jan 2011 17:42:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 28 jan 2011, om 17:59 heeft Richard Purdie het volgende geschreven:

> On Fri, 2011-01-28 at 08:56 +0100, Koen Kooi wrote:
>> Op 27 jan 2011, om 22:45 heeft Richard Purdie het volgende =
geschreven:
>>=20
>>> On Thu, 2011-01-27 at 16:35 +0100, Koen Kooi wrote:
>>>> Op 27 jan 2011, om 16:06 heeft Richard Purdie het volgende =
geschreven:
>>>> koen@dominion:/OE/tentacle$ ls =
/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/
>>>> tclConfig.sh*
>>>>=20
>>>> so it removed pretty much everything from the sysroot!
>>>=20
>>> Just to update on this, Koen is using distribute_sources which adds =
a
>>> do_distribute_sources task. This is why things are working on master =
but
>>> not for Koen.
>>>=20
>>> That task runs later and causes do_setscene to rerun which cleans =
out
>>> the sysroot rather helpfully assuming that all tasks for that recipe
>>> will rerun which isn't true.
>>>=20
>>> This branch has some proposed changes to make this work better:
>>>=20
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Drpurdie/misc2
>>>=20
>>> and Koen is testing them to see how they work out.
>>=20
>> That fixes both the setscene and machine switching issues. Everything =
works as expected again!
>=20
> Those fixes have been merged into master now.

The problem isn't entirely gone yet. What I did

MACHINE=3Dbeagleboard bitbake console-image (worked)
MACHINE=3Dusrp-e1xx bitbake console-image (worked)
MACHINE=3Dhawkboard bitbake console-image (broke)

updated metadata

MACHINE=3Domap4430-panda bitbake console-image (broke)

The first breakage was a license checksum failure in libusb-compat, =
which I have overlayed locally,  I changed that into a bbappend and =
rebuilt, things went fine. After switching to pandaboard a lot of things =
broke (pango, atk, kernel, etc), most of them in package_write. It turns =
out that the license failure was caused by do_unpack getting skipped, so =
the it couldn't find the LICENSE and COPYING files to checksum.

It seems that during do_configure the stamps don't get reset complete, =
so no unpack/patch is run. Due to the way the classes are structured, =
running in an empty dir doesn't cause problems till we encounter custom =
packaging rules. Does that make sense?

The kernel failure looks like this:

ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/beagleboard-angstrom-linux-gnu=
eabi/linux-omap-psp-2.6.32-r99+gitr5fc29e7b2a76a64a739f857858ef0b98294aa15=
5/temp/log.do_package_write_ipk.18429
Log data follows:
| Lockfile destination directory =
'/OE/tentacle/build/tmp-angstrom_2010_x/work/beagleboard-angstrom-linux-gn=
ueabi/linux-omap-psp-2.6.32-r99+gitr5fc29e7b2a76a64a739f857858ef0b98294aa1=
55/packages-split' does not exist
| ERROR: Lockfile destination directory =
'/OE/tentacle/build/tmp-angstrom_2010_x/work/beagleboard-angstrom-linux-gn=
ueabi/linux-omap-psp-2.6.32-r99+gitr5fc29e7b2a76a64a739f857858ef0b98294aa1=
55/packages-split' does not exist


regards,

Koen=

