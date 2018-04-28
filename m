Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33FA4E0098A; Sat, 28 Apr 2018 15:28:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13118E00595
	for <poky@yoctoproject.org>; Sat, 28 Apr 2018 15:28:33 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id c5-v6so5604719itj.1
	for <poky@yoctoproject.org>; Sat, 28 Apr 2018 15:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HNnj3CgSXq5qbbC0yvThgcLxI+xILFayEhfxKilzn9g=;
	b=w4+P8VPbEoFCvwbdq1YrL52vxVKBV9E9liFRFqg8QvJMRGH6pPCrxdXdOerjL2ia+r
	FWsTo+FkbjYw0CZbmzIE+iYEhXQjSo88WrYFwHJ/jWePu+xjsoh6OYmfgDH26lDCP/9U
	Jevtd+CyBuJ6ZIoxdDP9QuQq7+qTfz8N63c+03yU5H68e7MdPhFdGUwcnXJUI2ORgwWZ
	LyLnBEqtRCRb60rqZumvo+QBFt05s/L35ai+Cw2XIQDDZzVjYo4AKHRUlf9SQjcvCCWL
	1WbcHQvLADRae2BdYE8HcG1R4VERKWdXVwMyOHaBhAjQM63p3yI5r9GIjygNeMhAJfWE
	njxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HNnj3CgSXq5qbbC0yvThgcLxI+xILFayEhfxKilzn9g=;
	b=gSqYgrwUEnu6Ud0Z1jbgeMSIIB7J4/E7ilo5GGfce8PtOaEzgCKWoDY0d4SSMrVzG8
	Q5XBJUDCDIo/pBrvp4STr8NZQJze2VnRCb8x7C3jjZn9wR4AnH4PXgeBMTWGmt+2b1g6
	4mXIVrIDs10R9hm7rXEsFQBd4x6C5IvZkWHeAcZjjaAqE1Tqo+AGziYUImJr3hfDB7v9
	AcE18EOpvJ9cMrbXRpr0+qLvrYo/BJdk1S5xjWRDTRpj96Smt6JgphyK1/o381YKOkVV
	DA/+V5EG4odVM5scJtUIK42S/xqk+tQYd5LWN7Ne2LsCblyAcPnu0rITLHB2qWws4UEJ
	txTg==
X-Gm-Message-State: ALQs6tATAzHclmnqQwvMl7YvOgqUwawzjPSqaupU/RLa0QOg+haiC/lR
	ciBSgOL3RKL9xg+QeRaMWq/N8DZbRY8BevxEmkFfzw==
X-Google-Smtp-Source: AB8JxZqyQByO1i9v5gYIK9yVgPmA3JG3A5tZfNVwDcFq05Ibwjs6C6B2RVB75UyHkT6CwglsTG1Se54F50HqnT9kudM=
X-Received: by 2002:a24:9493:: with SMTP id
	j141-v6mr4981738ite.60.1524954513288; 
	Sat, 28 Apr 2018 15:28:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Sat, 28 Apr 2018 15:28:12 -0700 (PDT)
In-Reply-To: <CAMKF1srdhfFn0rqC7W8gC00DcBjGdhW_hKBuqgJTUkHFc-dfjg@mail.gmail.com>
References: <cover.1524580981.git.malu@gomspace.com>
	<10c4d92ee24403e6b13b6ff651cf74a1ff4ec1be.1524580981.git.malu@gomspace.com>
	<CAMKF1srdhfFn0rqC7W8gC00DcBjGdhW_hKBuqgJTUkHFc-dfjg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 28 Apr 2018 23:28:12 +0100
Message-ID: <CAJTo0LZ=8hWG+Q37Nxw1fsOzSAWqNcyu+ZONOV3UF9xJrCEo9A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Sat, 28 Apr 2018 22:28:36 -0000
Content-Type: text/plain; charset="UTF-8"

No, as they're not a test suite, just tools to test with.

Ross

On 28 April 2018 at 21:01, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Thu, Apr 26, 2018 at 2:49 AM Martin Lund <malu@gomspace.com> wrote:
>>
>> Add mtd-utils-tests package which includes the test suites mtd-tests,
>> ubi-tests, fs-tests, etc.
>>
>> These test suites are useful for verifying flash features or stress
>> testing.
>
>
> I wonder if this should be enabled when ptest is in distro features
>>
>>
>>
>> Signed-off-by: Martin Lund <malu@gomspace.com>
>> ---
>>  meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> b/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> index d09d6330228..b8f2dd15c19 100644
>> --- a/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> +++ b/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> @@ -8,6 +8,7 @@ LIC_FILES_CHKSUM =
>> "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
>>  inherit autotools pkgconfig update-alternatives
>>
>>  DEPENDS = "zlib lzo e2fsprogs util-linux"
>> +RDEPENDS_mtd-utils-tests += "bash"
>>
>>  PV = "2.0.1+${SRCPV}"
>>
>> @@ -18,6 +19,8 @@ SRC_URI = "git://git.infradead.org/mtd-utils.git \
>>
>>  S = "${WORKDIR}/git/"
>>
>> +EXTRA_OECONF += "--enable-install-tests"
>> +
>>  # xattr support creates an additional compile-time dependency on acl
>> because
>>  # the sys/acl.h header is needed. libacl is not needed and thus enabling
>> xattr
>>  # regardless whether acl is enabled or disabled in the distro should be
>> okay.
>> @@ -37,11 +40,12 @@ do_install () {
>>         oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
>> MANDIR=${mandir} INCLUDEDIR=${includedir}
>>  }
>>
>> -PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc"
>> +PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc
>> mtd-utils-tests"
>>
>>  FILES_mtd-utils-jffs2 = "${sbindir}/mkfs.jffs2 ${sbindir}/jffs2dump
>> ${sbindir}/jffs2reader ${sbindir}/sumtool"
>>  FILES_mtd-utils-ubifs = "${sbindir}/mkfs.ubifs ${sbindir}/ubi*"
>>  FILES_mtd-utils-misc = "${sbindir}/nftl* ${sbindir}/ftl* ${sbindir}/rfd*
>> ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image"
>> +FILES_mtd-utils-tests = "${libexecdir}/mtd-utils/*"
>>
>>  BBCLASSEXTEND = "native nativesdk"
>>
>> --
>> 2.14.1
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

