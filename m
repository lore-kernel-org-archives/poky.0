Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA8ECE008F1; Tue,  4 Nov 2014 02:21:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3056FE00874
	for <poky@yoctoproject.org>; Tue,  4 Nov 2014 02:21:57 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id r5so10446119qcx.19
	for <poky@yoctoproject.org>; Tue, 04 Nov 2014 02:21:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=MEhfJIRJcI9RZ7MImkj2DxFgxfY81c+cnB4lKw7yA68=;
	b=GGatJlt2r3uSdz9YBffOl9DlR4R/f4FP6fqzGFa0cfjvdfMRMaNGnHJENbyAX9leZd
	H8y7zn7e6wkEEWHYqpro2MGZrCI7F9Q81Whn3LXC8/N23mvRFe8NGE21neh6woMWCdFS
	iFWdI4/+ZxaDCjSkS1NliTiLgnLcCKRO+ydGzf/Jloll/ttuj+O9ceHoPk5feBw28Al3
	rx8HjJfaokm5vtCx1XWFqC+lOUx75AIB1CHV9GStadnaoqK3iDRBEkVK85orI9f/Vulr
	xfxXmNOp3S1NV5WfAAxyMCfThAsCot0Qf3umiGuChcwYnJML6jxPnZxzU9+Vd6sq5iEO
	q3Mg==
X-Gm-Message-State: ALoCoQmrU5oYSMCK+UjfRBuIY9LSHxMKAQ+ogbO5G+bpNc5r0jB8hN/RLjPrTNjDHVtrURqJ3UoO
X-Received: by 10.229.176.70 with SMTP id bd6mr74533476qcb.12.1415096516879;
	Tue, 04 Nov 2014 02:21:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Tue, 4 Nov 2014 02:21:36 -0800 (PST)
In-Reply-To: <CAGRzuVyL9dkmqu28kP2Qk2289Ga+KDUs2BAkDute-YCV6qJXNQ@mail.gmail.com>
References: <CAGRzuVyL9dkmqu28kP2Qk2289Ga+KDUs2BAkDute-YCV6qJXNQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Nov 2014 10:21:36 +0000
Message-ID: <CAJTo0LaoeXCJ=s8wHBxxOMvGmNNLkVQ93a7a4=dcYg5-yiyqLg@mail.gmail.com>
To: Anuj Mittal <am.devel@gmail.com>
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: Poky and meta-intel window manager
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
X-List-Received-Date: Tue, 04 Nov 2014 10:21:59 -0000
Content-Type: multipart/alternative; boundary=001a11c2d8ba363e30050705d511

--001a11c2d8ba363e30050705d511
Content-Type: text/plain; charset=UTF-8

On 4 November 2014 09:50, Anuj Mittal <am.devel@gmail.com> wrote:

> I'm trying to build core-image-sato-sdk with meta-intel for Intel
> valleyview.
>
> Is there a way I can have a different interface than sato? I've an
> application that displays in tiles which, it looks like, won't work with
> the sato & matchbox available in poky.
>

Matchbox is just a window manager that makes all windows maximised.  If you
mean that your application displays multiple windows alongside each other
as tiles then yes, that won't work (and to be honest, won't work in any
window manager that ignores application-specified window locations).  If
your application is just a single window then it will work fine.

meta-xfce contains the XFCE desktop environment which is more traditional
("like Windows 95") and may suit your needs.

Ross

--001a11c2d8ba363e30050705d511
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 November 2014 09:50, Anuj Mittal <span dir=3D"ltr">&lt;<a href=3D"mail=
to:am.devel@gmail.com" target=3D"_blank">am.devel@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>I&#39;m trying to build core-=
image-sato-sdk with meta-intel for Intel valleyview.</div><div><br></div><d=
iv>Is there=C2=A0a way I can have a different interface than sato? I&#39;ve=
 an application that displays in tiles which, it looks like, won&#39;t work=
 with the sato &amp; matchbox available in poky.</div><div></div></blockquo=
te></div><br>Matchbox is just a window manager that makes all windows maxim=
ised.=C2=A0 If you mean that your application displays multiple windows alo=
ngside each other as tiles then yes, that won&#39;t work (and to be honest,=
 won&#39;t work in any window manager that ignores application-specified wi=
ndow locations).=C2=A0 If your application is just a single window then it =
will work fine.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">meta-xfce contains the XFCE desktop environment which is more tra=
ditional (&quot;like Windows 95&quot;) and may suit your needs.</div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c2d8ba363e30050705d511--
