Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6C574C811BA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 21:52:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2011 19:52:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,378,1291622400"; d="scan'208";a="700699294"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2011 19:52:29 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 11:52:29 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 11:52:28 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 26 Jan 2011 11:52:27 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, poky <poky@yoctoproject.org>
Date: Wed, 26 Jan 2011 11:52:26 +0800
Thread-Topic: [poky] Master stability update
Thread-Index: Acu83FQ8sSO/OXVXTluL/4ShNpLZeQAJWrfwAABtv1AAAHIK0AAAb9qQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D0C914@shsmsx501.ccr.corp.intel.com>
References: <1295993245.27814.133.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB71E1@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB7203@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7203@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 26 Jan 2011 03:52:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tian, Kevin wrote:
>> From: Tian, Kevin
>> Sent: Wednesday, January 26, 2011 10:52 AM
>>=20
>>> From: Xu, Dongxiao
>>> Sent: Wednesday, January 26, 2011 10:46 AM
>>>=20
>>> Richard Purdie wrote:
>>>> We merged the features into master. I just want to highlight the
>>>> status of the following issues:
>>>>=20
>>>> * pseudo problem causing failure of meta-toolchain and corruption
>>>> of certain file permissions - fixed in master
>>>>=20
>>>> * the -live image issues some people and the autobuilder were
>>>> seeing - fixed in master
>>>>=20
>>>> * the perf issue for linux-yocto-stable - fixed in master
>>>>=20
>>>> The following are know issues with master:
>>>>=20
>>>> * Using rm_work and switching machines to machines of the same
>>>> "multimachine" architecture breaks.
>>>=20
>>> After sysroot is per machine, we may need to reserve the "image"
>>> folder
>> even
>>> when rm_work, since for the second machine build,
>>> do_populate_sysroot and do_package will be re-run to populate files
>>> into a different sysroot folder.=20
>>>=20
>>>>=20
>>>> * When switching machines of the same "multimachine" architecture
>>>> (e.g. emenlow to atom-pc), some sstate packages are changing
>>>> checksums when at first glance they shouldn't (e.g. perl
>>>> do_install). A quick scan of my sstate directory:
>>>=20
>>> I also have a look at my local build sstate directories, there are
>>> 17 packages whose prebuilt result could not shared betweeen atom-pc
>>> and emenlow. Some=20
>>> of them may be not a problem since there are ${MACHINE} variables
>>> used in do_install(), some others are strange why do_install will
>>> have two different signatures between two different machines.
>>>=20
>>> I will spend some time investigating it.
>>>=20
>>=20
>> Note that checksum changes may not come from do_install itself, which
>> including the hash from other tasks that do_install depends on. To
>> capture the latter possibility, you can simply use "bitbake -S
>> poky-image-minimal" which only generates .siginfo for all the tasks
>> w/o actually running them. This way you can compare the difference
>> between emenlow and atom-pc easily to see what actually change.
>>=20
>=20
> After a quick check, I guess this is not a problem. for example
> perl.do_configure changes checksum due to $MACHINE in dependency
> variables as Dongxiao said. =20
> Once perl is not reusable, at least ~10 recieps (libzypp, libtool,
> rpm, ...) are not reusable too because perl is in their task
> dependency chain. =20
>=20
> I didn't check all the differences yet, but overall feeling is that
> this should be OK as Dongxiao mentioned there're several obvious
> MACHINE related recipes. I'll leave to Dongxiao for final
> confirmation. :-)  =20
>=20
> Thanks
> Kevin

Thanks Kevin for the suggestion which can quickly track down the issue.

Within my poky-image-sdk and meta-toolchain-sdk build, there are totally 17=
 recipes in core2-poky-linux folder whose prebuilt result could not be shar=
ed between two machine of one architecture.=20

They are: connman, kexec-tools, libzypp, sat-solver, rpm, perl, matchbox-ke=
yboard, matchbox-panel-2, netbase, pulseaudio, screenshot, task-poky-sdk, t=
slib, xf86-input-evdev, xf86-input-keyboard, xf86-input-mouse, zypper.

I used bitbake-diffsig tool to dump the sigdata, and results are:

Connman: its do_configure depends on hal's do_populate_sysroot, while hal i=
s a recipe of machine specific.
Pulseaudio: its do_configure depends on hal's do_populate_sysroot, while ha=
l is a recipe of machine specific.

Kexec-tools: its do_configure depends on linux-yocto-stable's do_populate_s=
ysroot, which is a machine specific recipe.

Perl: ${MACHINE} in do_configure.
Rpm: its do_configure depends on perl's do_populate_sysroot.
Sat-solver: its do_configure depends on rpm's do_populate_sysroot.
Libzypp: its do_configure depends on sat-solver's do_populate_sysroot.
Zypper: its do_configure depends on libzypp's do_populate_sysroot

Matchbox-panel-2: its do_configure contains "${MACHINE_FEATURES}"
Matchbox-keyboard: its do_configure depends on matchbox-panel-2's do_popula=
te_sysroot.
Screenshot: its do_configure depends on matchbox-panel-2's do_populate_sysr=
oot
Task-poky-sdk: depends on matchbox-panel-2

Netbase: ${MACHINE} in do_install.
Tslib: ${MACHINE} in do_install.

Xf86-input-evdev, xf86-input-keyboard, and xf86-input-mouse: xorg-xserver d=
ependency differences, which emenlow has its own xorg-xserver layer.



Here are some dependency graph for those recipes:

hal -------> | connman
               | pulseaudio

linux-yocto-stable -------> kexec-tools=20
perl ------> rpm ------> sat-solver ------> libzypp ------> zypper
matchbox-panel-2 ------> | matchbox-keyboard
                                    | screenshot
                                    | task-poky-sdk
netbase
tslib
xf86-input-evdev, xf86-input-keyboard, and xf86-input-mouse: xorg-xserver l=
ayer differences.

Therefore I confirmed that the sstate prebuilt result change for the above =
17 recipes are not a problem.
            =20
Thanks,
Dongxiao






