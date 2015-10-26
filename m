Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFE60E00B9A; Mon, 26 Oct 2015 05:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (praveen.vatt[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF19E00B30;
	Mon, 26 Oct 2015 05:55:52 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so112862942wic.0;
	Mon, 26 Oct 2015 05:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=prY3gRUQWUjSZxsDJtzO9QnXRy9sNjPNzLS2EfznG44=;
	b=EHYIySfp1kPks8osrrdDfcQdMK/anzkWA56vkZ8S1rMh33fsoHPzqZwFkHz2Gi2U9m
	SgfvnDouuyGnDJAyvG0+Qws5ufYZTd3eoTKMeAUP8C8J+y5EH+ni2d57p5w8Dauq18/R
	0n+0W5AxDfFfslyeQP6vRKxybPRPwN1qqvwabGJYF0gxfYYErbbstt3Q2RHyRNh6nb3g
	tY6tJqrwFcLjt+yWX+PeasRH30Pq0+qp02ABH7PvxZqyZ32V1abkelvW1mdxcEtsBGWM
	YBR+eW3a3C7f6UgbrQ7w7XMCEahmudsPd+Y+vT+8ozYl0x4jw7b2M/mistViyjsescI2
	T6FQ==
MIME-Version: 1.0
X-Received: by 10.194.90.169 with SMTP id bx9mr44582694wjb.1.1445864151192;
	Mon, 26 Oct 2015 05:55:51 -0700 (PDT)
Received: by 10.194.105.6 with HTTP; Mon, 26 Oct 2015 05:55:51 -0700 (PDT)
Date: Mon, 26 Oct 2015 18:25:51 +0530
Message-ID: <CA+pXca1P5rGW7yB5+tQ9a6_9n2c39UzrFgd5Q-h9Ftogp3UWtA@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: poky@yoctoproject.org, yocto <yocto@yoctoproject.org>
Subject: libpam issue
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
X-List-Received-Date: Mon, 26 Oct 2015 12:55:53 -0000
Content-Type: multipart/alternative; boundary=047d7bfd0df8201bf50523017b6b

--047d7bfd0df8201bf50523017b6b
Content-Type: text/plain; charset=UTF-8

Hi All,

I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8
board(beagle bone).  Actually i need *pam_succeed_if.so* in final rootfs,
but it is missing. *pam_succeed_if.so* is getting compiled and copied to
sysroot/beaglebone/lib/security directory but missing in final
rootfs/lib/security directory. Do i need to change any configuration to get
it copied to rootfs.

Thanks in Advance.

--047d7bfd0df8201bf50523017b6b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi All,<br><br></div>I am building <span class=
=3D"">libpam</span> in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8 board(=
beagle bone).=C2=A0 Actually i need <b>pam_succeed_if.so</b> in final rootf=
s, but it is missing. <b>pam_succeed_if.so</b> is getting compiled and copi=
ed to sysroot/beaglebone/lib/security directory but missing in final rootfs=
/lib/security directory. Do i need to change any configuration to get it co=
pied to rootfs.<br><br></div>Thanks in Advance.<br></div>

--047d7bfd0df8201bf50523017b6b--
