Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7964AE00BE8; Wed,  5 Jul 2017 04:06:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39167E00BE0
	for <poky@yoctoproject.org>; Wed,  5 Jul 2017 04:06:21 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id 188so13885737itx.0
	for <poky@yoctoproject.org>; Wed, 05 Jul 2017 04:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TE18eUn/rnu80PyPYM3lDj84ovuloKB78xIbLyGskT0=;
	b=EOm4bRAkBvM3Qkmje7ryUbacI/fbpEsbH4yCCSGkpurXLwWeP+uNpxMqf1T00mbzJi
	CcnnOBW4ndPVWd34vDVmdwW2DUcGRSNWhOuohgL9jVnbhqp1KOmkztOj0efI5TlXgb7q
	fhkbSru7PvOq0Cbf18LhLPAbhcgRGl/U7BYJ1gsi6/ybmYD0A+3kJ7x9kiotk/P/3fgM
	IOnTAT7HuvPKP+cijJP2YP8R6w7BpvrOgbSMQXnvoQfrRVb6m8W/Gcuf5jlk7MYrLjeK
	e9pCxRzrWd3DdO3DznQXmcIQjkaAy9nRsiFVtx755oK1UqIRxCn9D0N7IyBrnHLi7jYg
	N2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TE18eUn/rnu80PyPYM3lDj84ovuloKB78xIbLyGskT0=;
	b=XHk+C1SRq63qolLCiq558Ti+JFlMmQXd8wKtsfrDVzzHsxf22MAdYg3jHwFY4qj0QQ
	zk1qcJbpoKHy+NipvDwuS3PsqSXCdJ/pVHVyMGVa8AonCObH2+q0MvokbWiE7qGTMzxJ
	ALXs1H/VuRqCyDDKt3bsIXWqNqdRBO05o/QNUSfzXAPVIShIXi4vCdbasPdz/X3yWmx7
	xp2ix3Zvn2Zwv4GO88bzIbqV+wpePIrwFThmSV3Qd6XAEqj70eZqMqonMh9tXnAhS8of
	BSvoW5Dvl2S/fT0DoHmvxnNOyQ5bduC3zxOiAZdoZ30gCywLGJWXF1Sd2RSMg/sE4AfB
	js2A==
X-Gm-Message-State: AIVw112hGVJanNJGlSrFF2f8BcVsptmcDmzcWuWV/I1xUvqRP80N2udN
	Q0C4N3MWNreQF/F5Lm40fDWf5UYt0mxi
X-Received: by 10.36.50.199 with SMTP id j190mr17453620ita.110.1499252780633; 
	Wed, 05 Jul 2017 04:06:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.44.87 with HTTP; Wed, 5 Jul 2017 04:05:50 -0700 (PDT)
In-Reply-To: <CAD2f6zW9cC+gmvGh=3CMsvnQ+P6uYGv89wk_GJWc+NAnQMn9eQ@mail.gmail.com>
References: <CAD2f6zW9cC+gmvGh=3CMsvnQ+P6uYGv89wk_GJWc+NAnQMn9eQ@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 5 Jul 2017 14:05:50 +0300
Message-ID: <CAHiDW_EeYd9KjXHUXqdivL9aKkPWw+dtcTkMrUUUW=4V07ZoTg@mail.gmail.com>
To: Iosif Hamlatzis <i.hamlatzis@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: No smart package manager installed
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
X-List-Received-Date: Wed, 05 Jul 2017 11:06:35 -0000
Content-Type: multipart/alternative; boundary="001a114ac23e6b4b2d05538ffd81"

--001a114ac23e6b4b2d05538ffd81
Content-Type: text/plain; charset="UTF-8"

On 5 July 2017 at 13:30, Iosif Hamlatzis <i.hamlatzis@gmail.com> wrote:

> Finally I've managed to create a stable image for my raspberry but
> unfortunately I don't see smart package manager installed
>

If this is on pyro or master: 'smart' has been replaced with 'dnf'.

http://dnf.readthedocs.io/en/latest/command_ref.html

--001a114ac23e6b4b2d05538ffd81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 5=
 July 2017 at 13:30, Iosif Hamlatzis <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:i.hamlatzis@gmail.com" target=3D"_blank">i.hamlatzis@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Finally I&#39;ve managed to create a stable image for my raspberry=
 but unfortunately I don&#39;t see smart package manager installed</div></b=
lockquote><div><br></div><div>If this is on pyro or master: &#39;smart&#39;=
 has been replaced with &#39;dnf&#39;.=C2=A0</div><div><br></div><div><a hr=
ef=3D"http://dnf.readthedocs.io/en/latest/command_ref.html">http://dnf.read=
thedocs.io/en/latest/command_ref.html</a><br></div><div><br></div><div><br>=
</div></div></div></div>

--001a114ac23e6b4b2d05538ffd81--
