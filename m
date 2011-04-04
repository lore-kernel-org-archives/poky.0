Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 081514C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 08:07:21 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p34D7Jfs007045
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Apr 2011 06:07:20 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.1.73]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.01.0255.000;
	Mon, 4 Apr 2011 06:07:19 -0700
From: "Hatle, Mark" <mark.hatle@windriver.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] Missing debug info
Thread-Index: AQHL8g8CguBc0c+6kU+6MGAyOSUabpRNA6mAgAAEYgCAAKZLhA==
Date: Mon, 4 Apr 2011 13:07:18 +0000
Message-ID: <FF920C20-664D-4F87-AD4D-079A35003054@windriver.com>
References: <4D988A05.2070609@mlbassoc.com>
	<4D98D0EB.1070802@windriver.com>,<4D98D498.10905@mlbassoc.com>
In-Reply-To: <4D98D498.10905@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Missing debug info
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
X-List-Received-Date: Mon, 04 Apr 2011 13:07:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable





On Apr 3, 2011, at 3:12 PM, "Gary Thomas" <gary@mlbassoc.com> wrote:

> On 04/03/2011 01:56 PM, Mark Hatle wrote:
>> On 4/3/11 9:53 AM, Gary Thomas wrote:
>>> I'm trying to debug some code which uses the openssl library, built fro=
m
>>> the Poky mainline.  For some reason (not obvious to me), there is no de=
bug
>>> info for this library, which makes GDB pretty useless :-(
>>>=20
>>> (gdb) info sharedlibrary
>>>  From        To          Syms Read   Shared Object Library
>>> 0x40077790  0x4008f60c  Yes         /tmp/cobra_root/lib/ld-linux.so.3
>>> 0x401abf80  0x401d57d8  Yes (*)     /tmp/cobra_root/usr/lib/libssl.so.0=
.9.8
>>> 0x40225548  0x402cfbfc  Yes (*)     /tmp/cobra_root/usr/lib/libcrypto.s=
o.0.9.8
>>> 0x400f28f8  0x4010cf90  Yes         /tmp/cobra_root/usr/lib/libpcap.so.=
1
>>> 0x40326340  0x4040e8d8  Yes         /tmp/cobra_root/lib/libc.so.6
>>> 0x401278fc  0x40128614  Yes         /tmp/cobra_root/lib/libdl.so.2
>>> (*): Shared library is missing debugging information.
>>>=20
>>> Any idea why these libraries don't have debg info?  how to get it?
>>> Rebuilding that library with printf() is pretty tedious...
>>>=20
>>> Thanks
>>>=20
>>=20
>> Do the libraries in question have corresponding -dbg package that are em=
pty?  Or
>> is there stuff in there, it's just incomplete?
>>=20
>> What I'm trying to understand is were these items stripped during the re=
cipe
>> build, or when they're supposed to be by the package.bbclass into the re=
gular
>> and dbg packages.
>=20
> Ah, interesting.  The openssl package does have a -dbg version, but not f=
or
> libopenssl nor libcrypto (which were built by the same source package).  =
Any
> ideas how/why that happened?  I didn't see any magic in the build argumen=
ts,
> but it's a pretty complex package so I might have missed something.
>=20

The dbg package is only provided for the corresponding source recipe.  So i=
f libssl, libcrypto both come from the OpenSSL recipe, then installing the =
openssl-dbg package is the right answer.

> Just to see what I could learn from this, I tried to install openssl-dbg =
and got this:
>=20
>  Downloading file:/home/local/p60_poky/tmp/deploy/ipk/armv7a/openssl-dbg_=
0.9.8p-r3_armv7a.ipk.
>  openssl-dbg: unsatisfied recommendation for libcrypto-dbg
>  openssl-dbg: unsatisfied recommendation for libssl-dbg

This is a common problem that we'll need to address in a future release, bu=
t the dependency can be safely ignored.  There is no libcrypto/libssl dbg s=
pecific package.

>  Installing openssl (0.9.8p-r3) to root...
>  Downloading file:/home/local/p60_poky/tmp/deploy/ipk/armv7a/openssl_0.9.=
8p-r3_armv7a.ipk.
>  Configuring openssl.
>  Configuring openssl-dbg.

If the openssl-dbg is installed then the corresponding files in the /usr/li=
b/.debug and /usr/src/debug should now exist and allow debugging on the tar=
get.

When you start up gdb, you should see a message that it is loading the debu=
g symbols.

> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

