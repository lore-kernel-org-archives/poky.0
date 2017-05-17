Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5986E00B28; Wed, 17 May 2017 16:39:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34C5AE00B21
	for <poky@yoctoproject.org>; Wed, 17 May 2017 16:39:32 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id y10so7173572wmh.0
	for <poky@yoctoproject.org>; Wed, 17 May 2017 16:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ur0/46uKhpnji3yCE5E9rwrpxhYLVvBmVKAg0/eHpNM=;
	b=Zne5V+IROS11kRcQzM3LsbhGjK+RhDVPNYGDzdYz+HK5V8ytoYm2O6j3bvVSB38I8P
	25OOKChDv5s2baJBybtzYbe+OCJp+Qov6OLbQV6wvTvWZU89/WbYkpBvK4/1IuGsB2uQ
	D9l0JHeN5YCEqpvxzxkf6E0YB+RnUP/Hklp2AQ81EQ+RIbCAIACQDmYrPzeX2CaeEkNg
	ZkONKOiziXh+kARdl2k25TjOOYOqVxTUg4LUcLHENEyV0BVTndPVI4GQpY2BeEEDR322
	CQaaEfkCpi9sNY7+lD6tbZLZcjAQozX4zz3HnT272fixMpk2krqxPalRzMxwYyOrEKoj
	QnEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ur0/46uKhpnji3yCE5E9rwrpxhYLVvBmVKAg0/eHpNM=;
	b=aB4q7qePXP3YWNXvt/NhcABLq5jCcEIMQDYGdRhQnkrZX6CSE4H3/GjmuFJ4HuEw+f
	ucIYW1KYXIxQ8Jdl+W6lvH8EINOa42vtQouELiJOi4JFZnNoLhsK89f3hEbu34YoBCrc
	eEZOt1tHvqFkxJtsbDMimEJGgUEF3cxKUslj5KeCJRwhhhM1tvgZ1haHp4qfAZhq1rgq
	0k+uSVaEQ1mL7Ky/HsOkGeVg3346jMoaMlVV23xcee6x0k1F3zbY2XdbLrSx2W4oN70S
	/n1w2lZccEcquBUDcARbBtEVurxlBUhhd+LfDG0p+lMU1EnnqZk3s2OUg/W5BNk2xHsR
	bqtA==
X-Gm-Message-State: AODbwcD5xI9NU1HacARDAu5d7kbJkRpt6P9M2RC/TIGC/kOmsLgxoZYc
	zSfWuNf/JcZlphn+sJdo27TIAKlQTw==
X-Received: by 10.80.180.155 with SMTP id w27mr886873edd.42.1495064371842;
	Wed, 17 May 2017 16:39:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Wed, 17 May 2017 16:39:01 -0700 (PDT)
In-Reply-To: <5ebe86726275a2840af2e050dcc3fe6bf3c373cc.1495058109.git.maryan.pricak@gmail.com>
References: <cover.1495058109.git.maryan.pricak@gmail.com>
	<5ebe86726275a2840af2e050dcc3fe6bf3c373cc.1495058109.git.maryan.pricak@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 17 May 2017 16:39:01 -0700
Message-ID: <CAMKF1spnBs9a6dC8WC4QBeBX7=qu+RA=pjQRawsO1BiYN2Vu+Q@mail.gmail.com>
To: Marian Pritsak <maryan.pricak@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] libjansson: Initial support
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
X-List-Received-Date: Wed, 17 May 2017 23:39:34 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 17, 2017 at 3:25 PM, Marian Pritsak <maryan.pricak@gmail.com> wrote:
> Integrate libjansson v2.10 - C library for encoding, decoding and manipulating
> JSON data

take a look at http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extended/jansson/jansson_2.9.bb?h=master

and post a recipe upgrade to meta-oe using oe-devel mailing list

>
> Signed-off-by: Marian Pritsak <maryan.pricak@gmail.com>
> ---
>  meta/recipes-core/libjansson/libjansson_2.10.bb | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 meta/recipes-core/libjansson/libjansson_2.10.bb
>
> diff --git a/meta/recipes-core/libjansson/libjansson_2.10.bb b/meta/recipes-core/libjansson/libjansson_2.10.bb
> new file mode 100644
> index 0000000..c49ab35e
> --- /dev/null
> +++ b/meta/recipes-core/libjansson/libjansson_2.10.bb
> @@ -0,0 +1,22 @@
> +SUMMARY = "Jansson is a C library for encoding, decoding and manipulating JSON data"
> +SECTION = "libs"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=8b70213ec164c7bd876ec2120ba52f61"
> +
> +SRC_URI = "git://github.com/akheron/jansson.git \
> +"
> +
> +SRCREV = "b23201bb1a566d7e4ea84b76b3dcf2efcc025dac"
> +
> +S = "${WORKDIR}/git"
> +
> +inherit autotools pkgconfig
> +
> +FILES_${PN} += "${libdir}/libjansson.so.* \
> +"
> +FILES_${PN}-dev += "${includedir}/jansson.h \
> +                    ${includedir}/jansson_config.h \
> +                    ${libdir}/libjansson.so \
> +                    ${libdir}/libjansson.la \
> +"
> +
> --
> 2.7.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

