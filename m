Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB01.domain01.net (STOEXHUB01.domain01.net
	[83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28FAAE006B4
	for <poky@yoctoproject.org>; Thu, 27 Oct 2011 00:05:19 -0700 (PDT)
Received: from STOEXMBXC03.domain01.net
	([fe80:0000:0000:0000:8de9:60e6:88.102.95.97]) by
	STOEXHUB01.domain01.net
	([10.12.10.1]) with mapi; Thu, 27 Oct 2011 09:05:17 +0200
From: Anders Darander <anders@chargestorm.se>
To: Poky Project <poky@yoctoproject.org>
Date: Thu, 27 Oct 2011 09:05:20 +0200
Thread-Topic: [poky] Strange ext filesystem error
Thread-Index: AcyUdsfD4AugflKgQ2iQpssT5hto5A==
Message-ID: <147A0F47-650D-4595-A163-8C313BDF6BFC@chargestorm.se>
References: <4EA8186C.9060906@mlbassoc.com>
	<CA+M6bXkW5FeMeYSifC=7Z86Dcg2xvwvxXzPrtOp-GLLX2_q4+A@mail.gmail.com>
In-Reply-To: <CA+M6bXkW5FeMeYSifC=7Z86Dcg2xvwvxXzPrtOp-GLLX2_q4+A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Tom Rini <tom.rini@gmail.com>
Subject: Re: Strange ext filesystem error
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
X-List-Received-Date: Thu, 27 Oct 2011 07:05:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


On 27 okt 2011, at 02:24, "Tom Rini" <tom.rini@gmail.com> wrote:

> On Wed, Oct 26, 2011 at 7:25 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> I've noticed this behaviour on my Poky/Yocto based systems.
>> First, I format some device, in this case an MMC card, as ext3
>> (yes, my kernel supports ext3)
>>  # mkfs.ext3 /dev/mmcblk0p1
>> Then, when I go to mount it, I get this error:
>>  # mount /dev/mmcblk0p1 /tmp/disk
>>  EXT2-fs (mmcblk0p1): warning: mounting ext3 filesystem as ext2
>>=20
>> Any ideas why?  How can I get ext3 file system working?
>=20
> Sounds like once again the file mount uses to guess types is out of order=
.
> I think it's part of base-files but I don't have a chance to check right =
now...

Yes, that's the case.
It's also out of order in upstream oe-core, as compared to the old oe-dev.

Cheers,
Anders=

