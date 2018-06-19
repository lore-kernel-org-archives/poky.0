Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1540E01908; Tue, 19 Jun 2018 07:06:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CC89E010C6
	for <poky@yoctoproject.org>; Tue, 19 Jun 2018 07:06:10 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 76F29212004;
	Tue, 19 Jun 2018 16:06:09 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 6DjtJjUWRb7h; Tue, 19 Jun 2018 16:06:07 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 9FDE8212003;
	Tue, 19 Jun 2018 16:06:07 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 19 Jun 2018 16:06:07 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <9d5f3a74-1cb9-ef2d-79a0-ef3d403295e2@windriver.com>
References: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
	<971d94d15a5e6fe1887a5bc81e2295e1@basmevissen.nl>
	<9d5f3a74-1cb9-ef2d-79a0-ef3d403295e2@windriver.com>
Message-ID: <e34c413d9fa38e316ca9d7265382574e@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.6
Cc: Ankit Rastogi <Ankit.Rastogi@kpit.com>, poky@yoctoproject.org
Subject: Re: How to export kernel specific headers to userspace
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jun 2018 14:06:11 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-06-19 15:55, Bruce Ashfield wrote:
> On 06/19/2018 09:44 AM, Bas Mevissen wrote:
>> On 2018-06-19 07:16, Ankit Rastogi wrote:
>>> Hi,
>>>=20
>>> Can someone provide any pointers on how to export kernel specific
>>> headers to userspace?
>>>=20
>>> I am getting below error while building our one of the component=20
>>> which
>>> requires kernel uapi headers.
>>>=20
>>> Error Received:
>>> =C2=A0/hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No =
such
>>> file or directory
>>>> |=C2=A0 #include <linux/hdmi_info.h>
>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~=
~~~~~~~~~~~~~
>>>> | compilation terminated.
>>>=20
>>> In yocto 2.5, userspace is boot strapped with linux-libc-headers
>>> package which uses a set of uapi headers from Linux kernel 4.15. Can
>>> someone suggest for custom kernels, how to expose uapi headers to
>>> userspace? Thus create a separate linux-apl-headers package with=20
>>> those
>>> files.
>>>=20
>>=20
>> You might want to (re)move the linux-libc-headers package (header=20
>> files) and install kernel-devsrc package. Then link the include=20
>> directories from /usr/src/kernel/include/{asm*,linux} to /usr/include=20
>> or modify your Makefile to get the linux include files from=20
>> /usr/src/kernel/include/linux instead of /usr/include/linux.
>>=20
>> Please note that the kernel-devsrc package is not without problems.=20
>> Building it and manually installing it with --nodeps (for rpm) will do=
=20
>> the trick. The package is due for replacement, see a thread on this=20
>> started by me a few weeks ago.
>>=20
>> Please also note that linux-libc-headers are cleaned-up versions of=20
>> the 4.15 kernel headers, so expect some rough edges.
>=20
> They aren't actually cleaned up at all. They are the standard uapi
> installed headers from the latest kernel in a given yocto release.
>=20

Oh, maybe I'm confused with the ones installed by Centos and Fedora.=20
There the #ifdef __KERNEL__ (..) #endif stuff is removed from the uapi=20
headers package.

> They will be updated to 4.18 shortly, since I'm preparing the next
> round of kernel updates


> (and devsrc resubmission).
>=20

That would be really nice as it is not really usable at the moment.

> Bruce
>=20
>=20
>=20
>>=20

