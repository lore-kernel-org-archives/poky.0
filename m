Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.42])
 by mx.groups.io with SMTP id smtpd.web11.7526.1593772181311954290
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 03:29:41 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@kolabnow.com header.s=dkim20160331 header.b=YyLN0g1Y;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.42, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTP id 71CBBE5D;
	Fri,  3 Jul 2020 12:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	message-id:references:in-reply-to:subject:subject:from:from:date
	:date:content-transfer-encoding:content-type:content-type
	:mime-version:received:received:received; s=dkim20160331; t=
	1593772178; x=1595586579; bh=+ClNLqe9Pgx/sBydE4fTuCKhmwHJNTlo84c
	io+BaLjY=; b=YyLN0g1Y61YhduGOJLvj6HBeQW1QOjc5BsKMNJlInopTNEonPFG
	/UWrSgCTABAUNsbB21as8OGC0Nvrqe083fAlK4cumTAhVRU8rbkfb2Gq3IGIN8H8
	EII5t4/hDts9oWvFVftnvacRucNiLBN4MJ7QpF1lLR96UY5jHMwhouq6HiDYyD8Z
	ClS9ChgbBi+P1MsgPsYmSp4a7owl8wkdSUND4uZ8HRC5WBAdEePdrttdFC1wbos1
	opsA2pUY2jZKUtXM44zOUCcUWCCrpTJoSRZ0w24pLE8WyWtbfrJudB2voD/YVbuE
	KQTUKWYU5mF6ftq3kAeX4xGMBnjFV+DsqhGm4qPeTXL83Ua/pF4BYDBYpIT4KHY5
	JPdQ0rrU59/M/c1O3ueYhct19EQNTxSALkJCIaoUs+GmHtxqcLtHqsxlMTXdQsrd
	qpp0KhkaDF/aTaAN80I5ZtcJoMHJcW83KLsvT7/PbSrOPqAGul00inBHtg8wI7uz
	+S5Ne9gJTVcGMFpLMzAkfaOS3kjxPmVHafSuK6S7kFugAzy3eCHpF0SG7TA/Dzh9
	DUjeVjNdiEdy1M9431X/Nshd3a3Qfua96wHmX995MD1dVI4cekH9eb5ERBgmux47
	ZDcFarbARd6XtdlpgiHYmiz5PNpfsNm2giMDtwljv2iwO/6Tbm9Ji3bI=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.9
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out001.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ypalK9bhnb_r; Fri,  3 Jul 2020 12:29:38 +0200 (CEST)
Received: from int-mx002.mykolab.com (unknown [10.9.13.2])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTPS id BDC57E47;
	Fri,  3 Jul 2020 12:29:38 +0200 (CEST)
Received: from int-subm001.mykolab.com (unknown [10.9.37.1])
	by int-mx002.mykolab.com (Postfix) with ESMTPS id 5E42723D4;
	Fri,  3 Jul 2020 12:29:38 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 03 Jul 2020 12:29:37 +0200
From: "Hubert CHAUMETTE" <hubert.chaumette@kolabnow.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, bruce.ashfield@gmail.com
Subject: Re: [poky] [RFC PATCH 0/2] Add example recipes for ext kernel module dependency
In-Reply-To: <082b8438bc90e652cd85f8b8e02b828fd87dab2f.camel@linuxfoundation.org>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
 <082b8438bc90e652cd85f8b8e02b828fd87dab2f.camel@linuxfoundation.org>
Message-ID: <a16a84ec95e040ca0b3adec5f78f1a7f@kolabnow.com>
X-Sender: hubert.chaumette@kolabnow.com
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Le 02/07/2020 22:27, Richard Purdie a =C3=A9crit=C2=A0:
> On Wed, 2020-07-01 at 15:52 +0200, Hubert CHAUMETTE via
> lists.yoctoproject.org wrote:
>> Add example recipes (master an slave) for external kernel module=20
>> dependency.
>> The master recipe installs shared headers in ${D}${includedir}/${BPN}/=
=20
>> and the
>> slave one accesses them with ccflags-y in its Makefile.
>>=20
>> Please review the following changes for suitability for inclusion. If=20
>> you have
>> any objections or suggestions for improvement, please respond to the=20
>> patches. If
>> you agree with the changes, please provide your Acked-by.
>>=20
>> The following changes since commit=20
>> 259d2e35e7ba3cbd496d6383e58cfdc22b267f0e:
>>=20
>>   python3-setuptools: upgrade 47.1.1 -> 47.3.1 (2020-06-30 23:03:02=20
>> +0100)
>>=20
>> are available in the Git repository at:
>>=20
>>   git://push.yoctoproject.org/poky-contrib hchaumette/ext-module-dep
>>=20
>> Hubert CHAUMETTE (2):
>>   Example for ext kernel modules dependency, master module
>>   Example for ext kernel module dependency, slave module
>=20
> There are a few issues here:
>=20
> As others have mentioned, the use of master/slave here needs to be
> changed.
>=20
> The patches also need to be submitted to openembedded-core, not poky.

Alright, I'll do it.

> The shortlog in the git commit doesn't confirm to our patch submission
> guidelines.

I don't know what to put in "affected area of the code". meta-skeleton?

> There isn't any test added which actually builds/tests/uses these that
> I could spot. Should there be?

I see there is ptest for package runtime testing, and=20
meta/lib/oeqa/selftest/cases/
for build-time. Does runtime testing make sense in this case?

> Cheers,
>=20
> Richard

Regards,

Hubert
