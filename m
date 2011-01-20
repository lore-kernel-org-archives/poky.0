Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DADDE4C81110
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 10:04:16 -0600 (CST)
Received: by wye20 with SMTP id 20so789786wye.35
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 08:04:15 -0800 (PST)
Received: by 10.227.136.81 with SMTP id q17mr2542589wbt.129.1295539454725;
	Thu, 20 Jan 2011 08:04:14 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	i80sm4325586wej.28.2011.01.20.08.04.13
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 20 Jan 2011 08:04:13 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1295539103.2487.4.camel@scimitar>
Date: Thu, 20 Jan 2011 17:04:13 +0100
Message-Id: <0778F003-B27E-402C-BDE2-D7B3B7CA8CE9@dominion.thruhere.net>
References: <4D3850B3.2030100@mlbassoc.com> <1295539103.2487.4.camel@scimitar>
To: Joshua Lock <josh@openedhand.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: What's taking so long??
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
X-List-Received-Date: Thu, 20 Jan 2011 16:04:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 20 jan 2011, om 16:58 heeft Joshua Lock het volgende geschreven:

> On Thu, 2011-01-20 at 08:11 -0700, Gary Thomas wrote:
>> My target platform/distro uses IPK and I have a local kernel
>> recipe which is based on the pre linux-yocto recipe that was
>> used by Poky.  When I build & package the kernel, I have
>> terrible performance - this is new, it used to be just fine.
>>=20
>> Here's what I mean.  Building for my kernel and timing the
>> various steps, e.g.
>>   % time bitbake virtual/kernel -c compile
>>=20
>> My kernel:
>>   compile            1m49s
>>   deploy             0m16s
>>   populate_sysroot   0m38s
>>   package           23m20s
>>=20
>> Just to compare, using OTS Poky for BeagleBoard:
>>   compile            5m07s
>>   deploy             0m36s
>>   populate_sysroot   0m29s
>>   package            5m02s
>>=20
>> That's a five-fold difference in the time to build & package
>> the kernel.
>=20
> This is a significant performance impact. Thanks for taking the time =
to
> do some profiling.
>=20
> I've filed a bug http://bugzilla.pokylinux.org/show_bug.cgi?id=3D666 =
and
> we'll get someone looking into that as a matter of priority.
>=20
>>=20
>> What am I doing [wrong?] that makes this so?
>> Would it be better if I switched to RPM like the BB is using?
>>=20
>=20
> It looks like the slow paths are in package format independent code, =
so
> probably not.

=46rom a chat I had with RP 2 weeks ago:

Koen: there's still something slow in bitbake log output
Koen: do_package takes eons (> 10mins) with almost zero IO and CPU
Koen: ctrl-c'ing it shows it's in the installed-but-not-packaged output
Richard Purdie: poky's bitbake or upstream?
Koen: I only tried poky bitbake so far
Koen: upstream is slow as well, but I don't recall being so slow
Koen: we talked about it at ELC
Richard Purdie: My memory isn't remembering that=20
Richard Purdie: This is do_package for the kernel or something large?
Koen: kernel
Koen: but I think anything would trigger it
Koen: it feels like bitbake is only doing N lines of output per second
Koen: effectively throttling it
Koen: and with you have a 4k lines out output....
Richard Purdie: The message handling means thread context switching
Richard Purdie: in runqueue.py there is a number 4096 and a 0 on the =
line below
Richard Purdie: try changing the 0 for something like 100000
Richard Purdie: You won't get nice console output but it might run =
faster
Richard Purdie: Was poky running "faster" until recently?
Koen: I think so
Koen: I haven't measured it

Does doing:

Richard Purdie: in runqueue.py there is a number 4096 and a 0 on the =
line below
Richard Purdie: try changing the 0 for something like 100000

help?

regards,

Koen=

