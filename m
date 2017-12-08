Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D675BE00D6F; Fri,  8 Dec 2017 09:38:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3917E00D19
	for <poky@yoctoproject.org>; Fri,  8 Dec 2017 09:38:39 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id f190so6304751ita.5
	for <poky@yoctoproject.org>; Fri, 08 Dec 2017 09:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MqRpqxKDzWChYtx4b63pN5Yo3Bzeit/m7BPj5ZQ7DhU=;
	b=Y/Mrh9nQs+BVyaT90yb6/pVGOiWt8ZK0/mR0P/tY/l8N96z1QnWMmlzlm1ZEdjIK0C
	+oUv1fEJw7x/0kvxOU433IVDeePx0e8wROnGJiGBMZwWAL30FRZxPHjVHkSFhrlohU+x
	Pod0OVqECBL+nNlPfxSS1xyEUMbk8Qlf46xw/ioJ7hZEKR3WyL2dw5//Sx4+bbrMjJxe
	Wi65HjpZoK4txqqm/XVEzswC8PbHi9KOIiQPbXrx2DmJ8myTWKKLdhgPUr7dEIDcC4YM
	wxhme/QomC+W7jRI2v6MD9B/A/rf/bwvFUqbha9TBdGp5HZFpsYvZzMV8DjXakT4CmWw
	bMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MqRpqxKDzWChYtx4b63pN5Yo3Bzeit/m7BPj5ZQ7DhU=;
	b=U+OzCk+Ie4eP1pbNZvevsrugY+nENRMOqnaxAD9N+EBHK/Ewj2ct8kAp5FAZ0SIoqc
	d+hsWQdfoSW5Gf+7Jsh64NmXNs+mhzihTwRDAJKFCCRJ/scV1QFILvyW42qw6FrfV8Iz
	o65AHyLNM5Jc3KuIPfEoZ5WJXpbAaP8G7gDATNmKPN0gvNntfb3rs+68bOq33JqXlBCb
	Iyxq5ndv8i+FXTUyUarboC/IxWUY38iP0AHpnT2gyk2w6ijs9RdM+vcT0EJ5VdFR9e5E
	RkSZdq77r2izK2Q7Ck9TQ2UpbLQeFzWbqHxmcU+xZsMXa4JSES9K9Nt9n1JeuGLaErqH
	YG3Q==
X-Gm-Message-State: AKGB3mJm2CF0CRaXyCnMbTPSfbwDVtqLR+ofDCl8SE/aYcmV+rBPh0yo
	hRqhxAtTojSFvU1qoQSTsd8t50VaejngL4BuTIhNZg==
X-Google-Smtp-Source: AGs4zMaFg1odxdBABI2V5BPUeVkSY6LkZS0ij0MeNgaCIWIYMpKaLqBuRehOyvTR73ONoOqjW/Qq8mIC9qyG8oDDvI0=
X-Received: by 10.107.7.224 with SMTP id g93mr8003531ioi.208.1512754718834;
	Fri, 08 Dec 2017 09:38:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.195 with HTTP; Fri, 8 Dec 2017 09:38:18 -0800 (PST)
In-Reply-To: <20171208165004.zitx5l5klmamxio6@archlinux>
References: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
	<50cb4e0efe8ea9c4d1dbaea8f6d8cef418ea6564.1512685340.git.gael.portay@savoirfairelinux.com>
	<CAJTo0LYYxsx49=L9rfWkDyoTSqdNPYF+iTSJCMZLK95wM=Z08g@mail.gmail.com>
	<20171208165004.zitx5l5klmamxio6@archlinux>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Dec 2017 17:38:18 +0000
Message-ID: <CAJTo0LY3+_Ot1ow_oOVyNsrRkWSV9y756FijgRAGogEjz8aRyw@mail.gmail.com>
To: =?UTF-8?B?R2HDq2wgUE9SVEFZ?= <gael.portay@savoirfairelinux.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] util-linux: create nativesdk lib packages
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
X-List-Received-Date: Fri, 08 Dec 2017 17:38:40 -0000
Content-Type: multipart/alternative; boundary="001a1141ec8ca62099055fd7a7bd"

--001a1141ec8ca62099055fd7a7bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 8 December 2017 at 16:50, Ga=C3=ABl PORTAY <gael.portay@savoirfairelinux=
.com>
wrote:

> Hi Ross,
>
> On Fri, Dec 08, 2017 at 04:34:55PM +0000, Burton, Ross wrote:
> > On 7 December 2017 at 22:29, Ga=C3=ABl PORTAY <gael.portay@savoirfairel=
inux.
> com>
> > wrote:
> >
> > > +python populate_packages_prepend_class-nativesdk() {
> > > +    do_split_packages(d, '${libdir}', '^lib(.*)\.so\..*$',
> > > +                      output_pattern=3D'nativesdk-util-linux-lib%s',
> > > +                      description=3D'nativesdk-util-linux lib%s',
> > > +                      extra_depends=3D'', prepend=3DTrue,
> allow_links=3DTrue)
> > > +}
> > >
> >
> > The existing populate_packages is good, it should just use ${PN} instea=
d
> of
> > util-linux.
> >
> > Ross
>
> Well... I am not sure I get it :/
>
> How can I solve the following issue:
>
>         Collected errors:
>          * calculate_dependencies_for: Cannot satisfy the following
> dependencies for nativesdk-packagegroup-sdk-host:
>          *     nativesdk-util-linux-libuuid *
>          * opkg_solver_install: Cannot install package
> nativesdk-packagegroup-sdk-host.
>
> When I build the nativesdk image, the image needs this dependency
> (nativesdk-util-linux-libuuid) but it is not build because of the
> libuuid.so is located under /usr on nativesdk while it is located under
> / on cross.
>

Ah, I thought the problem was the naming of the packages, not the libdir.

Well, one fix would be to stop moving files around for target,  it's not
like the /lib vs /usr/lib split is actually useful...

Ross

--001a1141ec8ca62099055fd7a7bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 December 2017 at 16:50, Ga=C3=ABl PORTAY <span dir=3D=
"ltr">&lt;<a href=3D"mailto:gael.portay@savoirfairelinux.com" target=3D"_bl=
ank">gael.portay@savoirfairelinux.com</a>&gt;</span> wrote:<br><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Hi Ross,<br>
<div><div class=3D"h5"><br>
On Fri, Dec 08, 2017 at 04:34:55PM +0000, Burton, Ross wrote:<br>
&gt; On 7 December 2017 at 22:29, Ga=C3=ABl PORTAY &lt;<a href=3D"mailto:ga=
el.portay@savoirfairelinux.com">gael.portay@savoirfairelinux.<wbr>com</a>&g=
t;<br>
&gt; wrote:<br>
&gt;<br>
&gt; &gt; +python populate_packages_prepend_<wbr>class-nativesdk() {<br>
&gt; &gt; +=C2=A0 =C2=A0 do_split_packages(d, &#39;${libdir}&#39;, &#39;^li=
b(.*)\.so\..*$&#39;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 output_pattern=3D&#39;nativesdk-<wbr>util-linux-lib%s&#39;,<b=
r>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 description=3D&#39;nativesdk-util-<wbr>linux lib%s&#39;,<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 extra_depends=3D&#39;&#39;, prepend=3DTrue, allow_links=3DTru=
e)<br>
&gt; &gt; +}<br>
&gt; &gt;<br>
&gt;<br>
&gt; The existing populate_packages is good, it should just use ${PN} inste=
ad of<br>
&gt; util-linux.<br>
&gt;<br>
&gt; Ross<br>
<br>
</div></div>Well... I am not sure I get it :/<br>
<br>
How can I solve the following issue:<br>
<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Collected errors:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* calculate_dependencies_for: Cannot sati=
sfy the following dependencies for nativesdk-packagegroup-sdk-<wbr>host:<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*=C2=A0 =C2=A0 =C2=A0nativesdk-util-linux=
-libuuid *<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* opkg_solver_install: Cannot install pac=
kage nativesdk-packagegroup-sdk-<wbr>host.<br>
<br>
</span>When I build the nativesdk image, the image needs this dependency<br=
>
(nativesdk-util-linux-libuuid) but it is not build because of the<br>
libuuid.so is located under /usr on nativesdk while it is located under<br>
/ on cross.<br></blockquote><div><br></div><div>Ah, I thought the problem w=
as the naming of the packages, not the libdir.</div><div><br></div><div>Wel=
l, one fix would be to stop moving files around for target, =C2=A0it&#39;s =
not like the /lib vs /usr/lib split is actually useful...</div><div><br></d=
iv><div>Ross=C2=A0</div></div></div></div>

--001a1141ec8ca62099055fd7a7bd--
