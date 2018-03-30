Return-Path: <soemoe.a@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1608E00B65; Fri, 30 Mar 2018 08:50:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (soemoe.a[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A11CE00529
	for <poky@yoctoproject.org>; Fri, 30 Mar 2018 08:50:14 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id q80so11431785ioi.13
	for <poky@yoctoproject.org>; Fri, 30 Mar 2018 08:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=D/JFMc22qaz0pLBJYoAfKZ0/NPl7LruLjy1UmBHQqxw=;
	b=cYnFSNmfFvWH+avrlxiWKVR5eYgbHwLYeY5upChXBx/TY4moVUWyy/GAwVp+7NrEhL
	BaDDeGIEO47bZZBVsvhcpMIxmNp8OiizdWxL376hhcVB7FghkN9ZnFCrgUoHqdetn81t
	DkV7AGgD67/76JKoHNLlmcRgl/t5wC1drsO62ROnbLHnPPDrA/24kvIFEqh6UQcHTXps
	M/ynjWowWedtrAPhhqx9ZKCvAbLxUoo48vYRusRDkMnp40oI+hZQkZhI5DK6FQwbdmHJ
	w/4te6f2K7KOxXiXe8upOWkAx5W/xsw30cZgQfWaeuEB9ci6TMSTseFgNIJ0UPBAQfV5
	8mRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=D/JFMc22qaz0pLBJYoAfKZ0/NPl7LruLjy1UmBHQqxw=;
	b=gP3jDeuxMD9h4ZEy14os1V1g7KfICk7JiEmuDfvKKyJbG0kli0gniBzFnvxVGF3LLF
	zs8Gls9OYwU7zvkidarur4jPJ5tgyHQjGG8bLJv2ndgx/veLKgDBa5eupekUTdYX1L93
	daW/f8lPd4o4CnoFEzs4ANLuCJ4RVTNGTnsR0ApSKdNLWwv73giwPPCPvtOXy+zr1ttp
	5ui/ujqcdKvKe+sfD7z/ZQK7E108tsOsQJqG/wOSmdnPQociUtlsIw1Oe+jiuSEwFa3/
	mDsHHe9/yYEZuvegEXkEIOG5OxIhvl96qJ+S2pVXxzxJ6dbnrAG0w1JdxEOxJelwvoLT
	UmLw==
X-Gm-Message-State: AElRT7G5rtsquUF/BKPBpLidgWwu7RU9G/YYgo7ElKDzfUrlyJ96as1y
	Iqk5/k43++cEpHT+1OSIyV/3QaWdRxgawZtysdM=
X-Google-Smtp-Source: AIpwx49/38FySBFnJT3XhDOCqJRXOF9TsrpnWU3X0zrU9i8Nj0AieXcDnU2CYGcPCWMIupJLqaNNicagDXVWmB/DGk4=
X-Received: by 10.107.181.141 with SMTP id e135mr20602217iof.189.1522425013970;
	Fri, 30 Mar 2018 08:50:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.56.65 with HTTP; Fri, 30 Mar 2018 08:49:53 -0700 (PDT)
In-Reply-To: <CAJTo0LZ9o8vr9H+6ng5uMxif6i6=_hSSybVeGuQ9CURNDuc2fw@mail.gmail.com>
References: <cover.1522085586.git.soemoe.a@gmail.com>
	<CAJTo0LZcVrPqJgEcZSobi-QO8YBg0GeDy94VwPFqV0MC4NDfuw@mail.gmail.com>
	<CAPTBsuUBfwZ_4QJpb2hfUw6dSTHrHgQSQuNJE96_L=psj8C=ZQ@mail.gmail.com>
	<CAJTo0LZ9o8vr9H+6ng5uMxif6i6=_hSSybVeGuQ9CURNDuc2fw@mail.gmail.com>
From: Soemoe Aung <soemoe.a@gmail.com>
Date: Fri, 30 Mar 2018 08:49:53 -0700
Message-ID: <CAPTBsuXxOU5ND37093QK4MCbGtXB+u3-6RYcD-qxN=GAYjiccA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL] *** Fix build issue with html5lib in bitbake ***
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
X-List-Received-Date: Fri, 30 Mar 2018 15:50:16 -0000
Content-Type: multipart/alternative; boundary="001a114449ce27ac6f0568a332f6"

--001a114449ce27ac6f0568a332f6
Content-Type: text/plain; charset="UTF-8"

Just closing the loop here. I reached out about this to the bitbake list
and someone backported the original commit for newer versions of bitbake
back to the versions used in yocto-poky fido
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=fido&id=87631919819b6f85f23f57689cd1065c64d7fb03>
and jethro
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=jethro&id=331275422b2c3f326f605c23ae89eedb4e222eb5>.
I did fresh checkouts of both these branches of poky and I can get past
these build errors out of the box now.

On Tue, Mar 27, 2018 at 2:28 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 26 March 2018 at 22:00, Soemoe Aung <soemoe.a@gmail.com> wrote:
> > Sorry if it wasn't clear. This is meant for fido (and also jethro). The
> > context is that when doing a fresh checkout of yocto-poky for branches
> fido
> > or jethro, I wasn't able to build with bitbake because of an error in
> one of
> > its included libraries. This issue seems to be resolved starting in the
> > krogoth branch.
> >
> > If I send this change to the bitbake list, would it also get applied to
> the
> > yocto-poky repo in the fido and jethro branches?
>
> Yes, send it to bitbake@ and the maintainer will ensure that it
> bubbles through to the Poky repos.
>
> Ross
>

--001a114449ce27ac6f0568a332f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just closing the loop here. I reached out about this to th=
e bitbake list and someone backported the original commit for newer version=
s of bitbake back to the versions used in yocto-poky <a href=3D"http://git.=
yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dfido&amp;id=3D87631919819b6=
f85f23f57689cd1065c64d7fb03">fido</a> and <a href=3D"http://git.yoctoprojec=
t.org/cgit/cgit.cgi/poky/commit/?h=3Djethro&amp;id=3D331275422b2c3f326f605c=
23ae89eedb4e222eb5">jethro</a>. I did fresh checkouts of both these branche=
s of poky and I can get past these build errors out of the box now.</div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Mar 27, 201=
8 at 2:28 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><span class=3D"">On 26 March 2018 at 22=
:00, Soemoe Aung &lt;<a href=3D"mailto:soemoe.a@gmail.com">soemoe.a@gmail.c=
om</a>&gt; wrote:<br>
&gt; Sorry if it wasn&#39;t clear. This is meant for fido (and also jethro)=
. The<br>
&gt; context is that when doing a fresh checkout of yocto-poky for branches=
 fido<br>
&gt; or jethro, I wasn&#39;t able to build with bitbake because of an error=
 in one of<br>
&gt; its included libraries. This issue seems to be resolved starting in th=
e<br>
&gt; krogoth branch.<br>
&gt;<br>
&gt; If I send this change to the bitbake list, would it also get applied t=
o the<br>
&gt; yocto-poky repo in the fido and jethro branches?<br>
<br>
</span>Yes, send it to bitbake@ and the maintainer will ensure that it<br>
bubbles through to the Poky repos.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a114449ce27ac6f0568a332f6--
