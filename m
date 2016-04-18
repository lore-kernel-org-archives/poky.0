Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF898E00E6C; Sun, 17 Apr 2016 22:18:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D6B5E0077F
	for <poky@yoctoproject.org>; Sun, 17 Apr 2016 22:18:43 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id n1so77002330pfn.2
	for <poky@yoctoproject.org>; Sun, 17 Apr 2016 22:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=6ZmJLFFyMYwtccIbB/vYyOA0xRzcLRYtEejgXorcxWg=;
	b=CQGP/Hiv8+EZM5aUYhB7aVtTbTiL0ICkawXkSIoVQE/aoYCF44Td74klCKa/Yh5ZQ5
	+yfMq6rb0KveEWxz7lM3kJi45fBSaVXe2d6JCTVJ7Rg+yUSwy7P7uHYL2Q2ZVzU1m3tJ
	nHxGUo4tARcHsT73SdqTXzRMZHzPVx8wImBb/tnWA/NjyOuTDZ7brVkDGJg2NNz6b1CN
	kRxLpCKgpSfNH+HoYYqKCM2uDCOZ7Bv47z8hkJ4u4O4sQ9rBErQMDNdMIH/Z4gGTUvfd
	tMFhECTcVZcEDGENwUC2DbpaGhfjCc/R9enjjbf+qEa+HvmvIqYbIXhXnF/PwF/EmjlS
	ZN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=6ZmJLFFyMYwtccIbB/vYyOA0xRzcLRYtEejgXorcxWg=;
	b=e4IpBUTIFUH+DPCk8l11Ca/rrKyRnhxkqNtrzIpZ85YT/eZoK3peYT/qLP12j3hgg+
	idG08bPn7rOLVg9l9CKqRH4YuXhsZnD1TSieak+54PsIFJO6Jal8QE8AP0F5Pmvyl4QW
	2dXifOo5Jfs+R4Jzd2N9yo+f2HBpbPt6/CBCdcQckG9r0BEMaPIA6ktaV2jLrxM3tumS
	7wciAD+BkDXS+rS3bbAUus3DS7tpCxu6zXbWlOF3zukNUnEutkmv2k7Wn59L1CpyhRRH
	00SP2F88sdA0p/KQxLwHcCSP4nj3VGPfiERsR4NtCq+YbAES2QTLmi47IpumZwmYkoM0
	rpKw==
X-Gm-Message-State: AOPr4FWFfYcqR40nGj1SBye3GTUGm7zvxWkLY71683mwHrN9V/+yy3+YtVretuQa0K9Sjg==
X-Received: by 10.98.2.22 with SMTP id 22mr46791116pfc.36.1460956722698;
	Sun, 17 Apr 2016 22:18:42 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:bcd4:460b:c427:512f?
	([2601:646:8800:5a9a:bcd4:460b:c427:512f])
	by smtp.gmail.com with ESMTPSA id
	r17sm59221010pfj.39.2016.04.17.22.18.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 17 Apr 2016 22:18:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <57144AC0.4060606@windriver.com>
Date: Sun, 17 Apr 2016 22:18:41 -0700
Message-Id: <648F21BE-64DE-409C-8FC8-F93735E77A4D@gmail.com>
References: <cover.1460297985.git.liezhi.yang@windriver.com>
	<570B0354.7040201@windriver.com> <570B0E9A.90602@windriver.com>
	<570BA579.9040408@windriver.com> <57144AC0.4060606@windriver.com>
To: Robert Yang <liezhi.yang@windriver.com>
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
X-List-Received-Date: Mon, 18 Apr 2016 05:18:46 -0000
X-Groupsio-MsgNum: 10393
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D2775CAA-E8C7-48FD-8714-22648311C08E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D2775CAA-E8C7-48FD-8714-22648311C08E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 17, 2016, at 7:47 PM, Robert Yang <liezhi.yang@windriver.com> =
wrote:
>=20
>=20
>=20
> On 04/11/2016 09:24 PM, Bruce Ashfield wrote:
>> On 2016-04-10 10:40 PM, Robert Yang wrote:
>>>=20
>>>=20
>>> On 04/11/2016 09:52 AM, Bruce Ashfield wrote:
>>>> On 2016-04-10 10:22 AM, Robert Yang wrote:
>>>>> The following changes since commit
>>>>> 778121ab844af623a215430ba579a5fb3947928b:
>>>>>=20
>>>>>   local.conf.sample: Make it possible to override =
EXTRA_IMAGE_FEATURES
>>>>> (2016-04-09 23:00:46 +0100)
>>>>>=20
>>>>> are available in the git repository at:
>>>>>=20
>>>>>   git://git.pokylinux.org/poky-contrib rbt/kernel
>>>>>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Drbt/kernel=

>>>>>=20
>>>>> Robert Yang (1):
>>>>>   poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
>>>>>=20
>>>>=20
>>>> Can you provide some bootlogs ? Size information, etc ? When we =
jump
>>>> this between kernel versions, we need to log some sort of =
information
>>>> about functionality and the size of the image.
>>>>=20
>>>> I've been carrying this support forward, but in 4.4, we did change
>>>> some of the kernel configs, so it would be good to see what sort of
>>>> size delta we are talking about.
>>>=20
>>> * Size:
>>> $ du -s tmp/deploy/images/qemux86/bzImage*
>>> 2664
>>> =
tmp/deploy/images/qemux86/bzImage--4.4.3+git0+770996a263_73481a3abd-r0-qem=
ux86-20160411015757.bin
>>>=20
>>>=20
>>> 2572
>>> =
tmp/deploy/images/qemux86/bzImage--4.1.18+git0+b9023d4c8f_f5b08e95bc-r0-qe=
mux86-20160411022834.bin
>>>=20
>>>=20
>>>=20
>>> We can see that 4.1 and 4.4 are nearly the same (92K different).
>>=20
>> Excellent. That is good news.
>>=20
>>>=20
>>> And:
>>> $ runqemu qemux86 ramfs
>>> works well. Please see the boot logs in the attachment.
>>=20
>> perfect. Thanks!
>>=20
>>>=20
>>> And poky-tiny only supports qemux86 + cpio.gz atm, I've filed two
>>> enhancements
>>> for YP 2.2 to support more machines and fs types:
>>>=20
>>=20
>> As long as it doesn't add too much extra functionality, it makes =
sense.
>> Tiny turns pretty much everything off on purpose, since it forms a
>> baseline that we do expect users to extend or add their own configs. =
It
>> is much easier to add, then to subtract.
>>=20
>> Thanks for the extra details here. As long as RP is willing to merge
>> this patch for the 2.1 release, I have no objections.
>=20
> Hi RP,
>=20
> What's you opinion, please ?

We should bump to 4.4 and another patch which limits the linux-yocto to =
qemux86 only
should be applied too so we can use poky-tiny beyond qemux86

>=20
> // Robert
>=20
>=20
>>=20
>> Bruce
>>=20
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9428
>>>=20
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9429
>>>=20
>>> // Robert
>>>=20
>>>>=20
>>>> Bruce
>>>>=20
>>>>>  meta-poky/conf/distro/poky-tiny.conf | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>=20
>>>>=20
>>>>=20
>>=20
>>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_D2775CAA-E8C7-48FD-8714-22648311C08E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcUbjEACgkQuwUzVZGdMxS0AQCfc8hWS4yNG4w5mNfE/TnYLRqc
A5AAn1brWVFw7Wwp55TteRPShaY0CG6a
=PDoU
-----END PGP SIGNATURE-----

--Apple-Mail=_D2775CAA-E8C7-48FD-8714-22648311C08E--
