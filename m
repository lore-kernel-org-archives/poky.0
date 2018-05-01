Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5E28E00C58; Tue,  1 May 2018 06:05:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F97CE00C40
	for <poky@yoctoproject.org>; Tue,  1 May 2018 06:05:04 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id d11-v6so13551505iof.11
	for <poky@yoctoproject.org>; Tue, 01 May 2018 06:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kVcBFPQKtxVvKctDXFay7Dg6j6QubMvj73SjFJO4YOI=;
	b=2SsHQMWVmHUSpxbyGkcARuF9/PqkXeAKgz0oC/uuETPbjZdI1B1EybDqBVC6lCDWva
	rnPPS96fWLVDqDNGKz3+MwVNH2BNN+5Gv4H0eH6WLgQdc++8bmCKxRr9Q7wYpaYbEsNt
	G0S7uXswbuEANcebgQwZcLNrrczby06s1cakdd1e3IzEwv2NKOZ3mYcxDSljT2wB7iuK
	VrIgwBFlVRJG2Rgvy681DuCT3KPe+2Bza9O3f+kGJ1CUyOs5XqPYQLhgaRQC2dg53qBG
	vEgQopMIvqXVAijUHgdrmro94DMfVYo/BejTd8XBN4SELzEI9WwNDu0mkPgAZ1HMFtIG
	ULNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kVcBFPQKtxVvKctDXFay7Dg6j6QubMvj73SjFJO4YOI=;
	b=qaJdGVQ7UFO4GHAjUlwnJrVqKPWTNr4XUqNbDpHQA4TYAYb7sNdrwS1iZlsfjSHFP8
	HcVg3Y+5Q+GKyJRFUtiuPnLNNFZgKvv/RaMMgqT8AOXLB8lKDsvuqOzvmyKo0AYz16Hk
	b5lEiubolx8SLt+5fMCvyh8FQZNZkNOL1M2cI/TN5hm4F5NCDuBUmZ4jq8phY0RPuVw0
	o0OMSnZDIHLfBc4nocjEag+Ljwf3qqqKSlK76b41dPbGQWt3CXYY43KgeQ6/U4l3HoMv
	3Hv0EIWELqtEj/s5TRDK9nxzpjZoGmYhlJBMROkm/nUV3Jh9tm6DoX20G+VTx3oFKYfq
	z2FQ==
X-Gm-Message-State: ALQs6tDX17Jisd1B1pITOPwEnbVil27xFM0viO1Aj/lhs0w/pabPFj4m
	9WqFpB9RBhlJMW/bHthG/rVB9bN0mZQTKENkZSV8hw==
X-Google-Smtp-Source: AB8JxZo5Uu5BR/Rp2QCDw+hxLQb0/HF7Q+Kd0IAlOm1Bd+zvXVBa3Q3HtMR/7tYFQZgk+mvQ91NqFW9V2mQuH3VUK00=
X-Received: by 2002:a6b:6b16:: with SMTP id
	g22-v6mr16301686ioc.20.1525179904481; 
	Tue, 01 May 2018 06:05:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Tue, 1 May 2018 06:04:43 -0700 (PDT)
In-Reply-To: <AM6PR0402MB3686F986E094743607E4EB04A1810@AM6PR0402MB3686.eurprd04.prod.outlook.com>
References: <cover.1524580981.git.malu@gomspace.com>
	<10c4d92ee24403e6b13b6ff651cf74a1ff4ec1be.1524580981.git.malu@gomspace.com>
	<CAMKF1srdhfFn0rqC7W8gC00DcBjGdhW_hKBuqgJTUkHFc-dfjg@mail.gmail.com>
	<CAJTo0LZ=8hWG+Q37Nxw1fsOzSAWqNcyu+ZONOV3UF9xJrCEo9A@mail.gmail.com>
	<AM6PR0402MB3686F986E094743607E4EB04A1810@AM6PR0402MB3686.eurprd04.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 1 May 2018 14:04:43 +0100
Message-ID: <CAJTo0LY2kjnKWvUQ8OfRpjgGjBAVvwmDRxuJ-ZeJNjLGQ3_KCQ@mail.gmail.com>
To: Martin Lund <malu@gomspace.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Tue, 01 May 2018 13:05:05 -0000
Content-Type: text/plain; charset="UTF-8"

It's queued in mut so will be in master soon enough.

On 1 May 2018 at 11:29, Martin Lund <malu@gomspace.com> wrote:
> I hope you guys will accept the patch - the tools are quite useful for those
> of us creating and testing BSPs with NAND/NOR features. It would be nice to
> have it available to build directly from poky.
>
> ________________________________
> From: Burton, Ross <ross.burton@intel.com>
> Sent: Sunday, April 29, 2018 12:28:12 AM
> To: Khem Raj
> Cc: Martin Lund; Poky Project
> Subject: Re: [poky] [PATCH 1/1] mtd-utils: Add mtd-utils-tests package
>
> No, as they're not a test suite, just tools to test with.
>
> Ross
>
> On 28 April 2018 at 21:01, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Apr 26, 2018 at 2:49 AM Martin Lund <malu@gomspace.com> wrote:
>>>
>>> Add mtd-utils-tests package which includes the test suites mtd-tests,
>>> ubi-tests, fs-tests, etc.
>>>
>>> These test suites are useful for verifying flash features or stress
>>> testing.
>>
>>
>> I wonder if this should be enabled when ptest is in distro features
>>>
>>>
>>>
>>> Signed-off-by: Martin Lund <malu@gomspace.com>
>>> ---
>>>  meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
>>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/meta/recipes-devtools/mtd/mtd-utils_git.bb
>>> b/meta/recipes-devtools/mtd/mtd-utils_git.bb
>>> index d09d6330228..b8f2dd15c19 100644
>>> --- a/meta/recipes-devtools/mtd/mtd-utils_git.bb
>>> +++ b/meta/recipes-devtools/mtd/mtd-utils_git.bb
>>> @@ -8,6 +8,7 @@ LIC_FILES_CHKSUM =
>>> "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
>>>  inherit autotools pkgconfig update-alternatives
>>>
>>>  DEPENDS = "zlib lzo e2fsprogs util-linux"
>>> +RDEPENDS_mtd-utils-tests += "bash"
>>>
>>>  PV = "2.0.1+${SRCPV}"
>>>
>>> @@ -18,6 +19,8 @@ SRC_URI = "git://git.infradead.org/mtd-utils.git \
>>>
>>>  S = "${WORKDIR}/git/"
>>>
>>> +EXTRA_OECONF += "--enable-install-tests"
>>> +
>>>  # xattr support creates an additional compile-time dependency on acl
>>> because
>>>  # the sys/acl.h header is needed. libacl is not needed and thus enabling
>>> xattr
>>>  # regardless whether acl is enabled or disabled in the distro should be
>>> okay.
>>> @@ -37,11 +40,12 @@ do_install () {
>>>         oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
>>> MANDIR=${mandir} INCLUDEDIR=${includedir}
>>>  }
>>>
>>> -PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc"
>>> +PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc
>>> mtd-utils-tests"
>>>
>>>  FILES_mtd-utils-jffs2 = "${sbindir}/mkfs.jffs2 ${sbindir}/jffs2dump
>>> ${sbindir}/jffs2reader ${sbindir}/sumtool"
>>>  FILES_mtd-utils-ubifs = "${sbindir}/mkfs.ubifs ${sbindir}/ubi*"
>>>  FILES_mtd-utils-misc = "${sbindir}/nftl* ${sbindir}/ftl* ${sbindir}/rfd*
>>> ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image"
>>> +FILES_mtd-utils-tests = "${libexecdir}/mtd-utils/*"
>>>
>>>  BBCLASSEXTEND = "native nativesdk"
>>>
>>> --
>>> 2.14.1
>>>
>>> --
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

