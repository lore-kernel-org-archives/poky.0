Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A53914C810DA
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 14:05:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so1263744iyb.35
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 12:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=0GLRrWpFN7zgZU1kCSee4dU8cWmjpy5Y1qxEu0i47uA=;
	b=I9p5mlZQIaGMm15Y51EQ7Jl6hqPepH2eoZegm3Ax/QhOPSzOfVqEtGUnaSDOXBbcM1
	H6ghEDYk0EgHY9OXQ2zHuBZvlFdLQYlp3jeDCSL9A4Q7xu5YyegUaT4vT2aRQHCXjubN
	AZhfb/QpfPhm+QTIDYX+zofz1AHvLV2LKyPgM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=MaoTJuCGEChFin+qYQtzgbhODqdPl1nmb1T/6P/jcavSGoTcRE/h56W71SEYmiNrp/
	3Db4JLb+j5GgHCHmBA7fk5M0pMvSVQs/hiN79V1MdCqb8iyBTpJPrlQ4pD/Al/1t3B4+
	Qw43Q3n4h8bzIi/CvFClZm/LMPy2jsKNiUGKo=
MIME-Version: 1.0
Received: by 10.231.35.131 with SMTP id p3mr1376130ibd.87.1295467530298; Wed,
	19 Jan 2011 12:05:30 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 19 Jan 2011 12:05:30 -0800 (PST)
In-Reply-To: <20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
Date: Wed, 19 Jan 2011 15:05:30 -0500
Message-ID: <AANLkTi=TEQ8-7fJBuStsTk9xDC4GhOFD1EgYYpU-RbXJ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Wed, 19 Jan 2011 20:05:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 19, 2011 at 2:51 PM, Koen Kooi <koen@dominion.thruhere.net> wro=
te:
> Tangent: have you considered switching to util-linux-ng?

Didn't the fork for this end in December ? I recall reading it on lkml befo=
re
the holidays. Or maybe I'm thinking about the wrong thing, but if I'm not
maybe the question is: 'have we considered updating to the unified util-lin=
ux' ?

Cheers,

Bruce

>
> Op 19 jan 2011, om 17:55 heeft Paul Eggleton het volgende geschreven:
>
>> Split libuuid and libblkid from util-linux into separate runtime package=
s.
>> Slightly reduces the overall footprint of other packages that depend on =
these
>> libraries.
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> =A0Branch: paule/util-linux-libsplit
>> =A0Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dpaule=
/util-linux-libsplit
>>
>> Thanks,
>> =A0 =A0Paul Eggleton <paul.eggleton@linux.intel.com>
>> ---
>>
>>
>> Paul Eggleton (3):
>> =A0util-linux: split out libuuid and libblkid into separate packages
>> =A0gst-plugins-base: add util-linux to DEPENDS
>> =A0Bump PR on recipes that depend on util-linux
>>
>> .../nfs-utils/nfs-utils_1.2.3.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A02 +-
>> meta/recipes-core/util-linux/util-linux.inc =A0 =A0 =A0 =A0| =A0 =A06 ++=
++--
>> meta/recipes-core/util-linux/util-linux_2.17.2.bb =A0| =A0 =A02 +-
>> .../e2fsprogs/e2fsprogs_1.41.12.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A02 +-
>> meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb =A0 =A0 =A0 | =A0 =A02 +-
>> meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb =A0 =A0 =A0| =A0 =A02 +-
>> .../gstreamer/gst-plugins-base_0.10.31.bb =A0 =A0 =A0 =A0 =A0| =A0 =A04 =
++--
>> 7 files changed, 11 insertions(+), 9 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

