Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B54E00985; Tue, 28 Jul 2015 09:50:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ACB6E00985
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 09:50:10 -0700 (PDT)
Received: by qgii95 with SMTP id i95so78719285qgi.2
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 09:50:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=GF5Gu2DMEs6+6PZI024UV2ABHUH8Xvm3p1O1f1trDhk=;
	b=gbNVcTI3qytXaUmyqDRBDKTIxsF0SV8o22ZdddtTSNjAcs3KpwnXkzyhV5ez6nceyl
	vv78klcReNXcS0T/W99hcidlV74EDK09TYa3jPxfmvXdz9pDz3fmzsTT1sUvKWKLfTX2
	dS6ic7P+OgPoWo6FPqWrnm5YVhpYjmg95o2wgixixNw5a4kv6UU2Ik+1jTQEQaqn5rJV
	hXNGMkcWfEhffTk8Oq4YW5j1j357u5PSSa9DJViUNz0SQXic4ogh5FmXL2tDSixCl44R
	7ztVQj7ew5MvycBKQDHEHMQQlGS0swthEuSGpBY+f8Q2YBgDUHMM3iHB2zrS/cGimnFh
	X+iA==
X-Gm-Message-State: ALoCoQnlv1mVYu1K5EItltNS8vtUYk9YYFD9YfgsUYBZk+XLFCferjM8VeLA48Ms0At0PDrzITy8
X-Received: by 10.140.20.115 with SMTP id 106mr50503408qgi.87.1438102210139;
	Tue, 28 Jul 2015 09:50:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Tue, 28 Jul 2015 09:49:50 -0700 (PDT)
In-Reply-To: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E6A4@AUSX7MCPS305.AMER.DELL.COM>
References: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
	<CAJTo0LZmK0XBUX6NGaut5boub7s7tGPVCVLwtuy6bcvNYfvx3w@mail.gmail.com>
	<DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E6A4@AUSX7MCPS305.AMER.DELL.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Jul 2015 17:49:50 +0100
Message-ID: <CAJTo0LaBbHs-exfvxTsFGujBXP9s7O1Wod6j+FDG=wKq6AP+aQ@mail.gmail.com>
To: Jack_Fewx@dell.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Missing dependencies after setscene, postinst fails
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
X-List-Received-Date: Tue, 28 Jul 2015 16:50:13 -0000
Content-Type: multipart/alternative; boundary=001a11c128b462eed5051bf2435f

--001a11c128b462eed5051bf2435f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 28 July 2015 at 16:46, <Jack_Fewx@dell.com> wrote:

> The command it is choking on is =E2=80=9Cupdate-ca-certificates=E2=80=9D,=
 which is
> installed in the rootfs, but what=E2=80=99s missing is the native version=
 under
> sysroots that can run on the build machine during build time.
> =E2=80=9Cca-certificates-native=E2=80=9D is not re-populated in sysroots =
during setscene.
>
>
Yeah, that's an optimisation (no need for build dependencies if we're not
building anything) going too far in this specific case.  The same problem
exists for update-rcd and update-alternatives, which is "fixed" by having
image.bbclass add explicit dependencies for those.

Your bbappend is close but I think you could generalise it (it hardcodes
ipkg right now) by adding the dependency to do_populate_sysroot and
do_populate_sysroot_setscene instead.  I'm about to go see the kids before
they go to bed, so if you could test that before I can that would be
awesome.

Ross

--001a11c128b462eed5051bf2435f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 July 2015 at 16:46,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Jack_Few=
x@dell.com" target=3D"_blank">Jack_Fewx@dell.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">The command it is cho=
king on is =E2=80=9Cupdate-ca-certificates=E2=80=9D, which is installed in =
the rootfs, but what=E2=80=99s missing is the native version under sysroots=
 that can run on the build machine during build time.=C2=A0 =E2=80=9Cca-cer=
tificates-native=E2=80=9D is not re-populated in sysroots during setscene.<=
u></u><u></u></span></p><p class=3D"MsoNormal"></p></blockquote></div><br>Y=
eah, that&#39;s an optimisation (no need for build dependencies if we&#39;r=
e not building anything) going too far in this specific case.=C2=A0 The sam=
e problem exists for update-rcd and update-alternatives, which is &quot;fix=
ed&quot; by having image.bbclass add explicit dependencies for those.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Your bbappe=
nd is close but I think you could generalise it (it hardcodes ipkg right no=
w) by adding the dependency to do_populate_sysroot and do_populate_sysroot_=
setscene instead.=C2=A0 I&#39;m about to go see the kids before they go to =
bed, so if you could test that before I can that would be awesome.</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></di=
v>

--001a11c128b462eed5051bf2435f--
