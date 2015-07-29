Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 871B1E00A53; Wed, 29 Jul 2015 12:22:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D23DDE00992
	for <poky@yoctoproject.org>; Wed, 29 Jul 2015 12:22:41 -0700 (PDT)
Received: by qgeu79 with SMTP id u79so9513097qge.1
	for <poky@yoctoproject.org>; Wed, 29 Jul 2015 12:22:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=az2v6W93weJB74D0IOXw39fKBwdnqeXn05Rejp6Z+uo=;
	b=JhzntFCYMQBRiRFMP78QZ/THjccptbRwZ+BC5Xb4yh/pF2ENqs2TAQKf5/buHVoM3w
	UPN+4gG48WQC5V/2I66XYH8u763IbqP90Iu17wnLCacZ+2uEk12QhZI3wNQRVro5Dzbk
	hQ3KBIAAVN6G5TvCQdmhYBzbsnPkAAvY2oNW2iGxv9YVkk2kvUGBHR1v88FMYUtcD8IX
	33x4HUSv/d6T08OdEz2zfRNGv51DiqeI3MJ5R6/eeulVIqAN3f91LJLiKVwYmUzLLV9R
	b9t2/MtAgLb0/BDfDgxfHa/Q2+sa74mwmY1izFCovGERx7KS+a4AXJMeeBootC6b9qy9
	/ePQ==
X-Gm-Message-State: ALoCoQmYZIIiSw9re6FdS3KWUxlxmK1oEUp34LFWCAJipKdDSN4/CBHEF0a7GlEurM+ZNXL4chPY
X-Received: by 10.140.88.80 with SMTP id s74mr63333481qgd.59.1438197760645;
	Wed, 29 Jul 2015 12:22:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Wed, 29 Jul 2015 12:22:21 -0700 (PDT)
In-Reply-To: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E7B9@AUSX7MCPS305.AMER.DELL.COM>
References: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
	<CAJTo0LZmK0XBUX6NGaut5boub7s7tGPVCVLwtuy6bcvNYfvx3w@mail.gmail.com>
	<DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E6A4@AUSX7MCPS305.AMER.DELL.COM>
	<CAJTo0LaBbHs-exfvxTsFGujBXP9s7O1Wod6j+FDG=wKq6AP+aQ@mail.gmail.com>
	<DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E7B9@AUSX7MCPS305.AMER.DELL.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Jul 2015 20:22:21 +0100
Message-ID: <CAJTo0LY4gy3gFyAAGF2t=YB4bQGYxeVfQav9XCJiuEP5JeDUnQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 Jul 2015 19:22:45 -0000
Content-Type: multipart/alternative; boundary=001a11c114c4a3f0aa051c08829c

--001a11c114c4a3f0aa051c08829c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 28 July 2015 at 18:11, <Jack_Fewx@dell.com> wrote:

> Very good point.  After a few attempts, the following seems to work, so i=
t
> won=E2=80=99t be just ipk specific:
>
>
>
> do_package_setscene[depends] +=3D "ca-certificates
> -native:do_populate_sysroot"
>
>
Interestingly I can't replicate this.  Switched to 1.7.1, added
ca-certificates to core-image-minimal, wiped away tmp, bitbake
core-image-minimal and the log shows ca-certificates-native being installed
before the image is constructed.

Can you share a cooker log (tmp/log/cooker) without your fixes?  That might
help verify what's going on.

Ross

--001a11c114c4a3f0aa051c08829c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 July 2015 at 18:11,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Jack_Few=
x@dell.com" target=3D"_blank">Jack_Fewx@dell.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">Very good point.=C2=
=A0 After a few attempts, the following seems to work, so it won=E2=80=99t =
be just ipk specific:<u></u><u></u></span></p><p class=3D"MsoNormal"><b><sp=
an style=3D"font-size:9.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#aaaaaa"><u></u>=C2=A0<u></u></span></b></p><p class=3D"MsoNormal"><span =
style=3D"font-family:&quot;Calibri&quot;,sans-serif"> </span><span style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">do_package_se=
tscene[depends] +=3D &quot;<span>ca</span>-<span>certificates</span>-native=
:do_populate_sysroot&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><=
/p></blockquote></div><br>Interestingly I can&#39;t replicate this.=C2=A0 S=
witched to 1.7.1, added ca-certificates to core-image-minimal, wiped away t=
mp, bitbake core-image-minimal and the log shows ca-certificates-native bei=
ng installed before the image is constructed.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Can you share a cooker log (tmp/log=
/cooker) without your fixes?=C2=A0 That might help verify what&#39;s going =
on.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a11c114c4a3f0aa051c08829c--
