Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E3B5E00C02; Fri, 16 Mar 2018 08:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92ADDE0079D
	for <poky@yoctoproject.org>; Fri, 16 Mar 2018 08:36:02 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id u84so13113464iod.9
	for <poky@yoctoproject.org>; Fri, 16 Mar 2018 08:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zMg/EU/1ycibgmS7QxLUOgI6cuic4gndO9rK9Unm+54=;
	b=j+G60Oj3zzc8V8y7i4QxLAj44GxMxNEbtEq0JOm7resFqgyCGvvJKoAW1ivRgDcIOI
	ieL8Jdwvf5hi2LNlLowKh6+uS5IBICPPSUiS2WbKEJ1kmYDTQguDpBwtlQIFseTK16In
	FopmpSAZNyxQQl/E9bjoa7hWfRxQknVMLBmJGtmhfbE0VNzrLyAD14FVWJ/ij7an40L2
	cqzHYilkOYBl2b9Ad9uf2Vf+veyl3hx6/LPTnVF3grWHyC1joPNgquJjM8IhqW6Gc4Rf
	CBeSGQA49rNMDrMw93/Se+PIpF4gwbuWK8LxPqfjc0BPZ+3r/ZR/KfV8ift71hB988Fl
	ftqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zMg/EU/1ycibgmS7QxLUOgI6cuic4gndO9rK9Unm+54=;
	b=ShvNXKCrpNJDZphPzYe42OWdPKqfIQaBrsDrlo9ehsy+x3Ldk/OHRqNXTWO+iECp7G
	qtCC4p4GglE/XYoFESXenn6s7BsylENU1d9SVMrzudcKWCvzHPbWC/UHb3BplkW6FyEy
	9gsGQPToR9Vs4l7xGhGePoeKAuhQTUxDDqid0qf3a9hEFpQPYd8+1AwBi3b34x+oorjO
	GL6Secyov0hxU84Zw0fmFSTzABWOpG4USwOD53jJA9KdpvP+zp7EwhorEoJXBPKpBAMv
	nxnfo+3pkMaIr/tMCnuztCXmXW/Bo546e36pC99otQ+X0SDgICzmBrFGcHZXVwfUwyZN
	5kfg==
X-Gm-Message-State: AElRT7EKpREXl06Q/xU51awWaCqKF7DK22u8jtnKSaiQi1Qknc1PykI7
	7yWmzWy1UuYVXYhqtB1XeQrrJambjTweAGZfT20b0g==
X-Google-Smtp-Source: AG47ELtDdJ2+TbnPG7xLAqhXloIhwahmoA5kJOvEYsnpHseuFkRANHJeWggaxeP1JC2DAa8AsWIejhSMG+mxtVpxL+o=
X-Received: by 10.107.37.212 with SMTP id l203mr2297512iol.20.1521214561550;
	Fri, 16 Mar 2018 08:36:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Fri, 16 Mar 2018 08:35:41 -0700 (PDT)
In-Reply-To: <CA+yucNX1DyHhiieR5BJV3hSVzcOk0taUyJj8ApD_OwMsD_um9Q@mail.gmail.com>
References: <CA+yucNX1DyHhiieR5BJV3hSVzcOk0taUyJj8ApD_OwMsD_um9Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Mar 2018 15:35:41 +0000
Message-ID: <CAJTo0LZDXi+-XM2SGpB2k0ezgPpMNkbxe7HRm6Rd17YjJ9eQUA@mail.gmail.com>
To: Manu Mathen <manumathens@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky Build Error
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
X-List-Received-Date: Fri, 16 Mar 2018 15:36:03 -0000
Content-Type: multipart/alternative; boundary="001a11405f1691b2700567895dcb"

--001a11405f1691b2700567895dcb
Content-Type: text/plain; charset="UTF-8"

If the computer is restarting then that's obviously nothing to do with
bitbake/yocto itself, but your computer can't handle the stress that a full
build is causing.

Usual culprits are badly installed or failing RAM (run memtest), or
insufficient ventilation causing a thermal shutdown.

Ross

On 16 March 2018 at 11:08, Manu Mathen <manumathens@gmail.com> wrote:

> Hi. Hope your doing well. I've been trying to build poky on Ubuntu 16.04.
> I've set up the required files from the quick start guide 2.4.2. The build
> has reached about 70%, but ever since it got to about 50%, the computer
> keeps restarting during the build. Since this happened, I tried do do a
> clean install of Ubuntu and start over, but it's been the same. The build
> progresses with the restarts from where it stopped, but I get an error
> later in the build and can't proceed. This is what I noticed from the
> cookerdaemon.log file, these lines keep repeating before the restart
> happens, or these are the last lines logged before I start the build again
> .
>
>
> Running command ['getVariable', 'BB_DEFAULT_TASK']
> Running command ['setConfig', 'cmd', 'build']
> Running command ['buildTargets', ['core-image-sato'], 'build']
> Connecting Client
> Disconnecting Client
> No timeout, exiting.
>
> I have attached the log file below too, has anyone experienced this before
> or know what's wrong. Thank you in advance.
>
> Manu Mathen
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

--001a11405f1691b2700567895dcb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If the computer is restarting then that&#39;s obviously no=
thing to do with bitbake/yocto itself, but your computer can&#39;t handle t=
he stress that a full build is causing.<div><br></div><div>Usual culprits a=
re badly installed or failing RAM (run memtest), or insufficient ventilatio=
n causing a thermal shutdown.</div><div><br></div><div>Ross</div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 16 March 2018 at 1=
1:08, Manu Mathen <span dir=3D"ltr">&lt;<a href=3D"mailto:manumathens@gmail=
.com" target=3D"_blank">manumathens@gmail.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default"><s=
pan style=3D"color:rgb(11,83,148)">Hi. Hope your doing well. I&#39;ve been =
trying to build poky on Ubuntu=20
16.04. I&#39;ve set up the required files from the quick start guide 2.4.2.=
 The build has reached about 70%, but ever since it got to about=20
50%, the computer keeps restarting during the build. Since this=20
happened, I tried do do a clean install of Ubuntu and start over, but=20
it&#39;s been the same. The build progresses with the restarts from where i=
t
 stopped, but I get an error later in the build and can&#39;t proceed. This=
 is what I=20
noticed from the cookerdaemon.log file, <span>these lines keep repeating be=
fore the restart happens, or these are the last lines logged before I start=
 the build again</span>.<br><br><br>Running command [&#39;getVariable&#39;,=
 &#39;BB_DEFAULT_TASK&#39;]<br>Running command [&#39;setConfig&#39;, &#39;c=
md&#39;, &#39;build&#39;]<br>Running command [&#39;buildTargets&#39;, [&#39=
;core-image-sato&#39;], &#39;build&#39;]<br>Connecting Client<br>Disconnect=
ing Client<br>No timeout, exiting.<br><br></span></div><div class=3D"gmail_=
default"><span style=3D"color:rgb(11,83,148)">I have attached the log file =
below too, has anyone experienced this before or know what&#39;s wrong. Tha=
nk you in advance.<span class=3D"HOEnZb"><font color=3D"#888888"><br><br></=
font></span></span></div><span class=3D"HOEnZb"><font color=3D"#888888"><di=
v class=3D"gmail_default"><span style=3D"color:rgb(11,83,148)">Manu Mathen<=
br></span></div></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
<br></blockquote></div><br></div>

--001a11405f1691b2700567895dcb--
