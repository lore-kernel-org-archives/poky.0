Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A801CE00C1D; Tue, 14 Jun 2016 09:41:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D148E00C02
	for <poky@yoctoproject.org>; Tue, 14 Jun 2016 09:41:43 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id o127so106625415iod.2
	for <poky@yoctoproject.org>; Tue, 14 Jun 2016 09:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F8vgdbuFq8/P2s140f4VzjLB4td3wpU1Mbk61lC/skQ=;
	b=vHEVUyrollPFts9EucskwTohAzXRgPLP+EUMFFrMxa0nCcbN9RYa7TH3b1fI/N2/2a
	IS0JK17EAHbFuBbrLE/yWZkkxy4v0OqxLClC7+JKPGVx7LJ1+9aCzMiao6YFLXrFCDaD
	lb2QvtpCGPwmockPnUhoT9wa4efP1qlLsi3Md16lOGoQB/s35ZrO5oXCQAZVBXvycK+M
	WNcsNe4rXeDe600+/U5h1kjdlaEA+73W9co91LAxbMnLCCNV+NZg7oZnUuOo0VrzChjz
	Od9btVIEZO6vK19Lu4OMObUAfQm73gqh9W/eS1EG+m6QCbPVljg4/MwL9UbY5Da6YqGj
	k5jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F8vgdbuFq8/P2s140f4VzjLB4td3wpU1Mbk61lC/skQ=;
	b=kvHxVML7m0yVYzNJ+lyp2cMA27BFDwTF7Gg07NG+bwGqdaGuVZpdBHY7xD4P/x0zoJ
	KN+3j78+6o1Fi0u7jx0YsqlKKVflRzAYysTaImaaCmgKdWgK0i270sBM0zeJmiTtC1OK
	FArBi9+Cahj2xXIeziZcAQdJjm1H2sfhSQyKFKqCBeDuk5gLTOub6Wt7UokcU506fO1E
	CEbZHhA2c5dSMnSC6m0/kYveu1rC1lgfhOTPb/KT+Tms1ZWcyQgmuzEnT0Ix6sSJ0tas
	pNVzyaXyCmUcUO4r0j2T3Az9CpJVKpB7g+igTZDwbGdAiIqo2ZIgRIC+iONlt0MmDLwA
	V7Aw==
X-Gm-Message-State: ALyK8tIHoP5vD936qkgyheCx2G/UrBrpo8eOCdNnMwdcS3Rp5IjV7iBTiQzPLvgMaae2hwdEdJjtOLWZThvb1Hm0
X-Received: by 10.107.135.137 with SMTP id r9mr35372219ioi.133.1465922503185; 
	Tue, 14 Jun 2016 09:41:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 14 Jun 2016 09:41:23 -0700 (PDT)
In-Reply-To: <C440BA31B54DCD4AAC682D2365C8FEE703C9DE63@ORSMSX113.amr.corp.intel.com>
References: <C440BA31B54DCD4AAC682D2365C8FEE703C9DE63@ORSMSX113.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Jun 2016 17:41:23 +0100
Message-ID: <CAJTo0LbNu96SabhoEOJYbGKmAhWPt6P_EiAmr9WEMe71_nmqEQ@mail.gmail.com>
To: "Dey, Megha" <megha.dey@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [yocto] Script being installed under /etc/init.d instead of /usr/lib/systemd folder
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
X-List-Received-Date: Tue, 14 Jun 2016 16:41:47 -0000
Content-Type: multipart/alternative; boundary=001a113ec842122c1f05353fae0f

--001a113ec842122c1f05353fae0f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 9 June 2016 at 02:11, Dey, Megha <megha.dey@intel.com> wrote:

> However, I do have a script recipe which is currently placed as a bbappen=
d
> to initscripts (meta/recipes-core/initscripts/initscript_..bb) in my cust=
om
> meta layer.
>
>
>
> This script even after shifting to systemd, is being placed in the
> /etc/init.d/ folder, and hence doesn=E2=80=99t run on boot. I want this t=
o be
> placed in the /usr/lib/system.d/ folder instead. How would I be able to d=
o
> this?
>
>
sysv-style init scripts go into /etc/init.d, systemd units do into
/lib/system.d  As this is your append then it is up to you to place the
file in the right location.

If you're installing a traditional init script then /etc/init.d is the
right place for it to be installed, if you're attempting to install a
systemd unit then look at the documentation for the systemd class.

Ross

--001a113ec842122c1f05353fae0f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 June 2016 at 02:11, Dey, Megha <span dir=3D"ltr">&lt;<a href=3D"mailto=
:megha.dey@intel.com" target=3D"_blank">megha.dey@intel.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal">However, I =
do have a script recipe which is currently placed as a bbappend to initscri=
pts (meta/recipes-core/initscripts/initscript_..bb) in my custom meta layer=
.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">This script even after shifting to systemd, is being=
 placed in the /etc/init.d/ folder, and hence doesn=E2=80=99t run on boot. =
I want this to be placed in the /usr/lib/system.d/ folder instead. How woul=
d I be able to do this?<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>sysv-style init scripts g=
o into /etc/init.d, systemd units do into /lib/system.d =C2=A0As this is yo=
ur append then it is up to you to place the file in the right location.</di=
v><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If you&#3=
9;re installing a traditional init script then /etc/init.d is the right pla=
ce for it to be installed, if you&#39;re attempting to install a systemd un=
it then look at the documentation for the systemd class.</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec842122c1f05353fae0f--
