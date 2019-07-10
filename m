Return-Path: <info5784468@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E445EE00D7E; Wed, 10 Jul 2019 04:47:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (info5784468[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F388E00C46
	for <poky@yoctoproject.org>; Wed, 10 Jul 2019 04:47:21 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id d17so1816675oth.5
	for <poky@yoctoproject.org>; Wed, 10 Jul 2019 04:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AkDZuSDDgazJDu7lTd2NwCBKRFoOcBeBm3t81RQQGmY=;
	b=Zxay1bf31i4Td5gyw3yzV84jv79BSQ2OzoITK+RWkfi6T/izpbxe0OF1017W8SvtqD
	zb1EDMfTnjs87NNwQOcE4OfrsXReb+osLdwyfSZIswx0WmZNk5HPIfAz9e0QMGUThjNO
	x1WFNMe30XD4sOWkSIgOJ/SYW0wgl5RCZ2Fgs8N76cpmmxTndt2q77DLZNIzAUOvPUS2
	ypZu+IMI6Bbj6MgUZu301VXLWd3r0DLFwYFNCATnsBkPvBpm1QJsocA2iU2DKiJM6TMw
	rksaHlv7IwMyiK+ctxwIC2V8neWRtN25ogy1Q94dD5uPgfNBwWdA6FZ2JvAqERD7Stwx
	vYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AkDZuSDDgazJDu7lTd2NwCBKRFoOcBeBm3t81RQQGmY=;
	b=PmMrc2C5CFi66dhnubXQEWZ0WMySiG/gThQ+6p5T/kYvk5MQBw1xQtqGBFHDjmGX6K
	XBu+L4rnPT2GD+SIzSKUhDIY6gNQTbRfr5nxg5EqT0Iy1sl6oc+HUY84vfWnpfLOZosO
	BkSEaTM6djMCYXD4pJwyuP2dU4v6+gZ2ll78gQEgr2qwYr/4hLXWPZ24SfvRCvTLnhwX
	kBcmNKQbt6V0baSA6HB7gwg47/YZfvq4xrMDyrVvoqbnKaDQYiCroVOW6BmhzK0A7brt
	+nXRo7F+EJS6XvFPaEJr4P9LQZ3BmmP3RslRmbZlnxItXwISAkcJnSJKTnv1GSxvdGz3
	KOEg==
X-Gm-Message-State: APjAAAUILmflX7n0MgnbfqYTvLKeLSJBDp+8WlkMx4BypS4a3LQSfFU/
	u9toJ+WUZwohNvGsJ4mI+6HwMRJVx0s3s7tLge6wOcs6cA4=
X-Google-Smtp-Source: APXvYqwjbsODol8fMYco+hsmMC7dHVl/II0s8Wp/xqsBQdjiqzIQwkVaZBzKl8ujy0IJVqVW1x2oNFTH1FLOaEEHLoM=
X-Received: by 2002:a9d:201:: with SMTP id 1mr21950381otb.279.1562759241364;
	Wed, 10 Jul 2019 04:47:21 -0700 (PDT)
MIME-Version: 1.0
From: info rich <info5784468@gmail.com>
Date: Wed, 10 Jul 2019 19:47:11 +0800
Message-ID: <CAMJoxhN5XDySg1=OpfMTdzHU+MRjAOkKcKAS80ZE80qo329LLw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: How to use external toolchain in Yocto?
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
X-List-Received-Date: Wed, 10 Jul 2019 11:47:23 -0000
Content-Type: multipart/alternative; boundary="000000000000737769058d523df6"

--000000000000737769058d523df6
Content-Type: text/plain; charset="UTF-8"

Hi ALL,

I am starting to work on Yocto, and trying to use external toolchain from
specific SOC vendor (armv7 platform) in Yocto. The purpose is using
external toolchain to bitbake the core-image-minimal in Yocto.

After some investgating, the most popular 3 external toolchain project in
Yocto are:
1. meta-sourcery: due to the sourcery release policy, the toolchain for ARM
is not avaiable anymore.
2. meta-linaro: Using meta-linaro-toochain in meta-linaro is never success
for "bitbake core-image-minimal".
3. meta-arago: it is for TI chips, and depend on meta-ti. Too many machine
environment settings that related to TI soc. It seems not a good solution.

Item 1~3 are tested, and unable to use external toolchain in Yocto to
create the rootfs from core-image-minimal. Any suggestion is appreciated.

Info.

--000000000000737769058d523df6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p>Hi ALL,</p><p>I am starting to work on=
 Yocto, and trying to use external toolchain from specific SOC vendor (armv=
7 platform) in Yocto. The purpose is using external toolchain to bitbake th=
e core-image-minimal in Yocto.</p><p>After some investgating, the most popu=
lar 3 external toolchain project in Yocto are:<br>1. meta-sourcery: due to =
the sourcery release policy, the toolchain for ARM is not avaiable anymore.=
<br>2. meta-linaro: Using meta-linaro-toochain in meta-linaro is never succ=
ess for &quot;bitbake core-image-minimal&quot;.<br>3. meta-arago: it is for=
 TI chips, and depend on meta-ti. Too many machine environment settings tha=
t related to TI soc. It seems not a good solution.</p><p>Item 1~3 are teste=
d, and unable to use external toolchain in Yocto to create the rootfs from =
core-image-minimal. Any suggestion is appreciated.</p><p>Info.<span></span>=
</p></div></div>

--000000000000737769058d523df6--
