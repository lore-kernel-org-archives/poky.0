Return-Path: <evadeflow@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35A80E0077E; Fri,  2 Sep 2016 11:46:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (evadeflow[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3843E0070F
	for <poky@yoctoproject.org>; Fri,  2 Sep 2016 11:46:25 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id i184so12421812itf.1
	for <poky@yoctoproject.org>; Fri, 02 Sep 2016 11:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kcAeknBGgv7fXbKLiKkbshZ+9f8fVFetq6OvNjybqjc=;
	b=TxNqap0pOR9N423I1ROji5NHQWCMSpozsFmxt+f0LkDHjggBWohyLctrSmKuOfctAc
	kGuNVPu+z37xokBWeVW63cRpJQDYW+3Q3mHp8wS/0Fxpmt7/ENBe9i2vmJPj4fPm4N/i
	ZFb0B9zJciviQAAczMxlmBB2HfHoG7HkWVEkg1NHzvVLFtkD0+VuEX0lDzOm5Ik8iTTu
	/jjCGDzmyew8CxgY+Y8i6sG8kqIZmsgChehDvPa39Q/iF8hg1yn2cE/wE1GcvYeP0b2b
	kCCTjYWKYQoJFxa893Ath6uzabbDXW8X5sT74JajZDCxj2vSo0NJ+/TMSrPJlBu/4XYn
	HhTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kcAeknBGgv7fXbKLiKkbshZ+9f8fVFetq6OvNjybqjc=;
	b=Ox7HOtGarqjtdp0J/kD4Uqix56Url4UKsXU2nUwGmJV99DfSciLUGDTWnkCB84atCN
	a4dCGhlHvRTlkPjzXaf2Z54aiO5/N48kijmzwXRKKRRixmgtAfuZAMf2Qawbhj0Lw6Hg
	bJEWqJ1OnX4cOdhfg1WcjmRuBC2/fNKjid2wXlHLD4qS1PLB8BhAfRTQz3kBXCnOS8VQ
	EsFto9AtKIWUrZvrWDg478CEWRUWk0ADHbZ7T7pTAGup3izEOCgJ70ZhUVwatRgtmzXf
	Xed8xs0pDJdE8Oj+oL3BllpPVNzCluzVfylIue6IYDdSKoXI8yN2Ks0PoG+y+CXqA2Q9
	rJGQ==
X-Gm-Message-State: AE9vXwOAF/VfKLpNXq2CKVs+E+Wl8zjtjOsrmNls3ARUcyt7UNn/lyjK15TnFM2VvzeR2iAkmHy6ownlkXk4sA==
X-Received: by 10.36.25.144 with SMTP id b138mr6472740itb.29.1472841984886;
	Fri, 02 Sep 2016 11:46:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.147.4 with HTTP; Fri, 2 Sep 2016 11:46:24 -0700 (PDT)
In-Reply-To: <BF550743-D36A-4D39-9CA9-44ABECDE8BAF@linux.intel.com>
References: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
	<CABcZANmtT7NNLNJOq=pBAnN5K6OjF-XyHS4OOPgnbHyDP6LK_g@mail.gmail.com>
	<CAMAb8ZOEiy_u4MtGF7xXMR9w8AYFwCPSTmbOZ70mBj7_e1gbSQ@mail.gmail.com>
	<1472826906.29583.167.camel@linuxfoundation.org>
	<BF550743-D36A-4D39-9CA9-44ABECDE8BAF@linux.intel.com>
From: Evade Flow <evadeflow@gmail.com>
Date: Fri, 2 Sep 2016 14:46:24 -0400
Message-ID: <CAMAb8ZML42+v9k6Y7yA2GBZO49XgSF66V55-c=tz-ZPr4fFd5Q@mail.gmail.com>
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>
Cc: Christopher Larson <clarson@kergoth.com>, Poky <poky@yoctoproject.org>
Subject: Re: When SRCREV is set to AUTOREV, what triggers (re-)fetching?
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
X-List-Received-Date: Fri, 02 Sep 2016 18:46:29 -0000
Content-Type: multipart/alternative; boundary=001a1140579651f7fe053b8abf6f

--001a1140579651f7fe053b8abf6f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> BTW, the usage of AUTOREV should be updated in BB user manual section 4.4=
.

Indeed, I did notice this was missing:

  -
https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manu=
al.html#auto-revisions

What would have helped me immensely is if this paragraph on AUTOREV in the
Yocto manual:

  -
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-AUTOREV

contained an extra sentence or two, something like:

Also, be aware that setting [BB_SRCREV_POLICY][1] =3D "cache" will prevent
> Bitbake from checking whether any upstream repository references have
> changed=E2=80=93even for recipes that have SRCREV =3D ${AUTOREV}=E2=80=94=
so you probably
> want to ensure that this variable is set to its default value of "clear"
> when using AUTOREV.
>

>
 [1]:
> https://www.yoctoproject.org/docs/2.1/bitbake-user-manual/bitbake-user-ma=
nual.html#var-BB_SRCREV_POLICY
>

A similar admonition in the BB_SRCREV_POLICY description would help, e.g.:

Be aware that setting BB_SRCREV_POLICY =3D "cache" is generally incompatibl=
e
> with the use of [AUTOREV][2], since it will prevent Bitbake from checking
> whether any upstream repository references have changed.


>
 [2]:
> http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-AUTOR=
EV
>

On Fri, Sep 2, 2016 at 2:16 PM, Jianxun Zhang <jianxun.zhang@linux.intel.co=
m
> wrote:

>
> > On Sep 2, 2016, at 7:35 AM, Richard Purdie <richard.purdie@
> linuxfoundation.org> wrote:
> >
> > On Fri, 2016-09-02 at 10:08 -0400, Evade Flow wrote:
> >>> Add ${SRCPV} to your PV (see various recipes in oe-core for
> >> examples), then it=E2=80=99ll know to re-run the tasks when srcrev cha=
nges.
> >>
> >> Thanks for confirming that this is 'supposed' to work, that's great
> >> news! Actually, I've already included SRCPV in PV. Here's my recipe,
> >> shorn of comments and an uninteresting do_install_append() function:
> >
> > You don't have BB_SRCREV_POLICY set to cache anywhere do you? It
> > defaults to clear which is what you want...
> >
> > Does "rm tmp/cache -r" 'fix' make it see new revisions? Knowing that
> > would at least help track down the kind of problem you're seeing.
> >
> > What does the full PV look like after expansion? Does it contain an
> > older truncated SRCREV ?
>
> BTW, the usage of AUTOREV should be updated in BB user manual section 4.4=
.
> It works intuitively for me. But I don=E2=80=99t know the best authentic =
way to
> document it and any corner case in a patch...
>
> Thanks
>
> >
> > Cheers,
> >
> > Richard
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
>

--001a1140579651f7fe053b8abf6f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; BTW, the usage of AUTOREV should be updated in B=
B user manual section 4.4.<br><br></div>Indeed, I did notice this was missi=
ng:<br><div><br>=C2=A0 - <a href=3D"https://www.yoctoproject.org/docs/1.6/b=
itbake-user-manual/bitbake-user-manual.html#auto-revisions">https://www.yoc=
toproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#auto-re=
visions</a><br><br>What would have helped me immensely is if this paragraph=
 on AUTOREV in the Yocto manual:<br><br>=C2=A0 - <a href=3D"http://www.yoct=
oproject.org/docs/1.8/ref-manual/ref-manual.html#var-AUTOREV">http://www.yo=
ctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-AUTOREV</a><br><br><=
/div><div>contained an extra sentence or two, something like:<br><br><block=
quote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex" class=3D"gmail_quote">Also, be aware that setting [BB=
_SRCREV_POLICY][1] =3D &quot;cache&quot; will prevent Bitbake from checking=
 whether any upstream repository references have changed=E2=80=93even for r=
ecipes that have SRCREV =3D ${AUTOREV}<font size=3D"2">=E2=80=94so</font> y=
ou probably want to ensure that this variable is set to its default value o=
f &quot;clear&quot; when using AUTOREV.<br></blockquote><blockquote style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex" class=3D"gmail_quote"><div>=C2=A0</div></blockquote><blockquote =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex" class=3D"gmail_quote"><div>=C2=A0[1]: <a href=3D"https://ww=
w.yoctoproject.org/docs/2.1/bitbake-user-manual/bitbake-user-manual.html#va=
r-BB_SRCREV_POLICY">https://www.yoctoproject.org/docs/2.1/bitbake-user-manu=
al/bitbake-user-manual.html#var-BB_SRCREV_POLICY</a><br></div></blockquote>=
<div><br></div><div>A similar admonition in the BB_SRCREV_POLICY descriptio=
n would help, e.g.:<br><br><blockquote style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote=
">Be aware that setting BB_SRCREV_POLICY =3D &quot;cache&quot; is generally=
 incompatible with the use of [AUTOREV][2], since it will prevent Bitbake f=
rom checking whether any upstream repository references have changed.</bloc=
kquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=C2=A0</div><=
/blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=C2=A0[2=
]: <a href=3D"http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.ht=
ml#var-AUTOREV">http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.=
html#var-AUTOREV</a><br></div></blockquote></div></div><div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Fri, Sep 2, 2016 at 2:16 PM, =
Jianxun Zhang <span dir=3D"ltr">&lt;<a target=3D"_blank" href=3D"mailto:jia=
nxun.zhang@linux.intel.com">jianxun.zhang@linux.intel.com</a>&gt;</span> wr=
ote:<br><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote"><span class=3D"gm=
ail-"><br>
&gt; On Sep 2, 2016, at 7:35 AM, Richard Purdie &lt;<a href=3D"mailto:richa=
rd.purdie@linuxfoundation.org">richard.purdie@<wbr>linuxfoundation.org</a>&=
gt; wrote:<br>
&gt;<br>
&gt; On Fri, 2016-09-02 at 10:08 -0400, Evade Flow wrote:<br>
&gt;&gt;&gt; Add ${SRCPV} to your PV (see various recipes in oe-core for<br=
>
&gt;&gt; examples), then it=E2=80=99ll know to re-run the tasks when srcrev=
 changes.<br>
&gt;&gt;<br>
&gt;&gt; Thanks for confirming that this is &#39;supposed&#39; to work, tha=
t&#39;s great<br>
&gt;&gt; news! Actually, I&#39;ve already included SRCPV in PV. Here&#39;s =
my recipe,<br>
&gt;&gt; shorn of comments and an uninteresting do_install_append() functio=
n:<br>
&gt;<br>
&gt; You don&#39;t have BB_SRCREV_POLICY set to cache anywhere do you? It<b=
r>
&gt; defaults to clear which is what you want...<br>
&gt;<br>
&gt; Does &quot;rm tmp/cache -r&quot; &#39;fix&#39; make it see new revisio=
ns? Knowing that<br>
&gt; would at least help track down the kind of problem you&#39;re seeing.<=
br>
&gt;<br>
&gt; What does the full PV look like after expansion? Does it contain an<br=
>
&gt; older truncated SRCREV ?<br>
<br>
</span>BTW, the usage of AUTOREV should be updated in BB user manual sectio=
n 4.4. It works intuitively for me. But I don=E2=80=99t know the best authe=
ntic way to document it and any corner case in a patch...<br>
<br>
Thanks<br>
<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a target=3D"_blank" rel=3D"noreferrer" href=3D"https://lists.yoctopro=
ject.org/listinfo/poky">https://lists.yoctoproject.<wbr>org/listinfo/poky</=
a><br>
<br>
</font></span></blockquote></div><br></div></div></div>

--001a1140579651f7fe053b8abf6f--
