Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BFEDE00CB3; Fri, 24 May 2019 12:38:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35516E00C4B;
	Fri, 24 May 2019 12:38:36 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id a132so9168991qkb.13;
	Fri, 24 May 2019 12:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=v+pGWmENoLfJkYuokO4LM1ArOG9UtNodCBXQMwXMDO8=;
	b=FLY5Vm7fxHKVFCteAbk31nrmFS6dtX1YaG04k7ErblBZnFiz3AWZkqZ3jkltoY0Sg9
	0L+egsumMbZLOGoP4mnQ/SE3+G9jEd/ucF3eWv6MyH8whoHo5bQQH2oUrXw0S9skpgbC
	iCZ/34s60+J3Pnrt7GZ8mJAH1gsWChTP+M1fVxvzKhAN97JNKbz9UCiMU6wH1RGSnNXd
	Ir/dtgHk/I/Si7oPPMNFj7Ycp90Ori+pqVG1FsTGQWvBrcS62vvv0ughYmtykQa2um+9
	ExIxBBQFmIZwhcFxgcxdldhUuRE3csS825WXVw29iYeXnmXGiaIrOrw6aOHaZ8JE0+8k
	yNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=v+pGWmENoLfJkYuokO4LM1ArOG9UtNodCBXQMwXMDO8=;
	b=guEq8UYugAygvsy2bItPVYiUTnulwFNv2bpyNxvrvA4jo/8a+eWtjySFxcB240HccW
	Q+bVpPsrIRROfeVxDr1Bjp4GR57dJA4eG9cDxTc4CQ0am8TQsgqH5nTb3m8HrsCnSIvU
	Dnp1gyZfv+vwmmY747Zcb3o1yOCB4eZJqWyWmG9U/KYImJP55WKuZV3LC/c8ePaZeIAp
	R5gtbaocNaNPMwEadsBESixtzY9E/qtfjl2V0TEgGAcak7E/6QPmnZPi7ylWWQfuAtRs
	kiuvhOEqpiYUn2TINEpqyIvB1+YlsJ1d4R+3ivuco6TSPrtkbJs1DaKVxDhU4PKb1I1i
	XSQw==
X-Gm-Message-State: APjAAAUWpjEZe5LFb5tHprYXptC7nFBOmjeU+iVmZLBHoR0ZdCozbESG
	Vm1bpt8paVlGtDGyk2YyyefUA57FrnqnBFiwQNM4pIVscBU=
X-Google-Smtp-Source: APXvYqzoXoKz1A5XCSWr8j2vgBD9Xor3+duzMsiAf7YWZv91I/eyAMWpzi/Al2K4L12W1Qi/xjk+Wa5RsNq02CZG9RE=
X-Received: by 2002:a37:9c8e:: with SMTP id f136mr6833107qke.47.1558726715317; 
	Fri, 24 May 2019 12:38:35 -0700 (PDT)
MIME-Version: 1.0
From: Davis Roman <davis.roman84@gmail.com>
Date: Fri, 24 May 2019 15:38:25 -0400
Message-ID: <CACfi_Z1qodZZ2WPAsMx5Tiz5OJmuQ0yEMA7gyVSaUrb7=kzDeg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: poky@yoctoproject.org, song li <ghosty.lee.1984@gmail.com>
Subject: yocto is unstable to build final image when recipe has slash in SRCBRANCH
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
X-List-Received-Date: Fri, 24 May 2019 19:38:36 -0000
Content-Type: multipart/alternative; boundary="0000000000002b239d0589a758f1"

--0000000000002b239d0589a758f1
Content-Type: text/plain; charset="UTF-8"

Hello,

In my recipe, I've found that a forward slash in SRCBRANCH, results in an
error during the final image construction,

SRCBRANCH = "feature/compile_with_gcc7_4_rocko_toolchain"


Error given:

Collected errors:
 * opkg_prepare_url_for_install: Couldn't find anything to satisfy
'tron-app'.

ERROR: tron-image-grip-1.0-r0 do_rootfs: Function failed: do_rootfs


Does anyone have a way to make the slash in the SRCBRANCH variable work?

Thank you,

Davis

--0000000000002b239d0589a758f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>In my recipe, I&#39;ve found tha=
t a forward slash in SRCBRANCH, results in an error during the final image =
construction,<div><br></div><div>SRCBRANCH =3D &quot;feature/compile_with_g=
cc7_4_rocko_toolchain&quot;<br></div><div><br></div><div><br></div><div>Err=
or given:</div><div><br></div><div>Collected errors:<br>=C2=A0* opkg_prepar=
e_url_for_install: Couldn&#39;t find anything to satisfy &#39;tron-app&#39;=
.<br><br>ERROR: tron-image-grip-1.0-r0 do_rootfs: Function failed: do_rootf=
s<br><br></div></div><div><br></div><div>Does anyone have a way to make the=
 slash in the SRCBRANCH variable work?</div><div><br></div><div>Thank you,<=
/div><div><br></div><div>Davis</div></div>

--0000000000002b239d0589a758f1--
