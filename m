Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5421AE00CC7; Mon, 11 Apr 2016 06:36:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01AF3E0083D
	for <poky@yoctoproject.org>; Mon, 11 Apr 2016 06:36:35 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id k135so66275266qke.0
	for <poky@yoctoproject.org>; Mon, 11 Apr 2016 06:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=AyOiOrLYz7UkVll/W38n3yLTQ6Jg4wHbWbjTcxEDDyI=;
	b=xEp6N1r4vujdDWJolsET3IiErMo64uffe/uSHkgnx2suPlKKxvYpCO/chLd7xTDLy6
	4DuiOQPyoFBa5Y6BYNLbvUrLOBPYPzZxb0m3SDhAxyEJiNJ5cRLfisNyh9eH/B5FOp28
	MzQ7DKez6FYKy9SDYjpk+/kY+xfKqa363wfVhcIAw6WRTxWQp/dP8sCuoeMLywmyt4/k
	sWazcfkEDP5MG0B5jGuUa3VxRYigIpns7frFNI9XQPl6+rxp8RmlgTZ4OqO+W+61B/PM
	pUEJ7IDgCILf3zDkFi4EfRcoHKMwaFcbuYI0wwSzhf7MXu0xtXjzOt75Xyvr4uH4GBhg
	V0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=AyOiOrLYz7UkVll/W38n3yLTQ6Jg4wHbWbjTcxEDDyI=;
	b=SkY7OuS1G7YtrYaMIvy//ndWqed6AQQ0NUIkj+R5VHnfrU6RdLlikixcqFtzl8HLH/
	I+jabEGFWc0iWB4RxuFxJjVaCERMX1erWf1ef9J3ha0Y8dVfwodCt8THiit31nOOElNL
	CO7idxWlLFwDvZz1NJiEjL9Fv8JhhUTGpFsm72jd5P2arS8j0aYQekWhw5BCjL4ipfF3
	SBEzl6S8GTTX2gDfqflEJsVZZLpGVm1x39HQAQbRuLERvxQVAmxyVp8HtnvwXYoouWUZ
	vSKfpnsqCUhUVfPeFWH0GTznHVb9/VTDtwJ5SMd5OQ3/oq7pQ2JTEuTKyUQWIFB4q0oi
	Rbcw==
X-Gm-Message-State: AD7BkJJOgLJ+xBQU74ZL1uHyU9BitOTXjOkrX9s4OelD6bnXjkIp9v1pitOXYD7F02l1gw==
X-Received: by 10.55.80.136 with SMTP id e130mr28884651qkb.28.1460381794512;
	Mon, 11 Apr 2016 06:36:34 -0700 (PDT)
Received: from [172.20.20.20] ([50.153.90.237])
	by smtp.gmail.com with ESMTPSA id
	e11sm11184513qkb.39.2016.04.11.06.36.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Apr 2016 06:36:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <570BA579.9040408@windriver.com>
Date: Mon, 11 Apr 2016 09:36:29 -0400
Message-Id: <987A1A2A-6F3F-4216-A3F8-264FE6705DEA@gmail.com>
References: <cover.1460297985.git.liezhi.yang@windriver.com>
	<570B0354.7040201@windriver.com> <570B0E9A.90602@windriver.com>
	<570BA579.9040408@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.3124)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
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
X-List-Received-Date: Mon, 11 Apr 2016 13:36:44 -0000
X-Groupsio-MsgNum: 10385
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5AEDC086-EA65-4CE3-B8DE-52F6CD298755";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5AEDC086-EA65-4CE3-B8DE-52F6CD298755
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Apr 11, 2016, at 9:24 AM, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:
>=20
> On 2016-04-10 10:40 PM, Robert Yang wrote:
>>=20
>>=20
>> On 04/11/2016 09:52 AM, Bruce Ashfield wrote:
>>> On 2016-04-10 10:22 AM, Robert Yang wrote:
>>>> The following changes since commit
>>>> 778121ab844af623a215430ba579a5fb3947928b:
>>>>=20
>>>>   local.conf.sample: Make it possible to override =
EXTRA_IMAGE_FEATURES
>>>> (2016-04-09 23:00:46 +0100)
>>>>=20
>>>> are available in the git repository at:
>>>>=20
>>>>   git://git.pokylinux.org/poky-contrib rbt/kernel
>>>>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Drbt/kernel
>>>>=20
>>>> Robert Yang (1):
>>>>   poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
>>>>=20
>>>=20
>>> Can you provide some bootlogs ? Size information, etc ? When we jump
>>> this between kernel versions, we need to log some sort of =
information
>>> about functionality and the size of the image.
>>>=20
>>> I've been carrying this support forward, but in 4.4, we did change
>>> some of the kernel configs, so it would be good to see what sort of
>>> size delta we are talking about.
>>=20
>> * Size:
>> $ du -s tmp/deploy/images/qemux86/bzImage*
>> 2664
>> =
tmp/deploy/images/qemux86/bzImage--4.4.3+git0+770996a263_73481a3abd-r0-qem=
ux86-20160411015757.bin
>>=20
>> 2572
>> =
tmp/deploy/images/qemux86/bzImage--4.1.18+git0+b9023d4c8f_f5b08e95bc-r0-qe=
mux86-20160411022834.bin
>>=20
>>=20
>> We can see that 4.1 and 4.4 are nearly the same (92K different).
>=20
> Excellent. That is good news.

I looked at it briefly, and I see that we don=E2=80=99t have n/w enabled =
and this kernel is sort of crippled if
we don=E2=80=99t have  /proc/sys/ can you enable CONFIG_PROC_SYSCTL and =
see how much size it increased. Because
this would pave way to enable busybox-mdev for device management among =
other things you could do
with sysctls

>=20
>>=20
>> And:
>> $ runqemu qemux86 ramfs
>> works well. Please see the boot logs in the attachment.
>=20
> perfect. Thanks!
>=20
>>=20
>> And poky-tiny only supports qemux86 + cpio.gz atm, I've filed two
>> enhancements
>> for YP 2.2 to support more machines and fs types:
>>=20
>=20
> As long as it doesn't add too much extra functionality, it makes =
sense.
> Tiny turns pretty much everything off on purpose, since it forms a
> baseline that we do expect users to extend or add their own configs. =
It
> is much easier to add, then to subtract.
>=20
> Thanks for the extra details here. As long as RP is willing to merge
> this patch for the 2.1 release, I have no objections.
>=20
> Bruce
>=20
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9428
>>=20
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9429
>>=20
>> // Robert
>>=20
>>>=20
>>> Bruce
>>>=20
>>>>  meta-poky/conf/distro/poky-tiny.conf | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>=20
>>>=20
>>>=20
>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_5AEDC086-EA65-4CE3-B8DE-52F6CD298755
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcLqGAACgkQuwUzVZGdMxQcDwCfe4k8gFsY6VstlU7Hq2tusxys
mPIAn3zdjSyoSrQscFIxwZuYWZscmq6+
=uyOc
-----END PGP SIGNATURE-----

--Apple-Mail=_5AEDC086-EA65-4CE3-B8DE-52F6CD298755--
