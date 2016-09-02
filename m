Return-Path: <evadeflow@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1363E007C2; Fri,  2 Sep 2016 11:20:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (evadeflow[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DC87E0077E
	for <poky@yoctoproject.org>; Fri,  2 Sep 2016 11:20:57 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id c198so53591187ith.1
	for <poky@yoctoproject.org>; Fri, 02 Sep 2016 11:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LrQ7y6rRnTjueLl/WHnLFcqtfejwCv6od0dyKMnCTzI=;
	b=i3DlufmBQ//AmD3oFf5h+5kvpnjSLmTGbDgHdFS5+iIVB2sPJA96BiQnzJmGr+VMET
	bXIkCkQptjjLL27tUO5IUJtZSKMqi2+UitagdofaFxTQieZI3H88uutciegGhZ08hnpL
	S7AWrJgvEBGCecpo1J38iORjEjwScqlWVoDL5vwh3AgdLBUDrgkyH89o/cknrTrFTTo+
	UeNDzt5tFHGf1/XJ2L1FkZyR18PKygOETTG3jKORgtQaeGIdWzB3azfcBCxxHB8JQx3r
	IJBBD1gx9Uf6wpYbX/PjjHgfk3BT7fCoziFn9bR3A5dDgFNUvXMovbaDCOqxzkGKgaLB
	p/gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LrQ7y6rRnTjueLl/WHnLFcqtfejwCv6od0dyKMnCTzI=;
	b=RaaXqEOH1LnS+SMKAxYnTM6Rlebd86nHT9sSrAt6k3yaZqr9Ooq+CkiGIE/qN1XAnY
	TMm2cM/MBWSvieD1fSIQkbpYPaWat3GhUyk077gsWLYsjULQrzyWVdmYVuTS4m5nKNeC
	UeH3RBb8b5lX0+7+ExTI1fu9sHaS7u+w387FoXbx4CxzMVQ41J0mmt1k2oolnFq5iU1w
	nBqxRfyQOv4FtbF+FeWtZQ2j5EPj/MMy+UwxQCYJicADy5YsKmbUnp9GdXbcrbaN0O6x
	jM4IfFFtxaz+yVZ1pPXOW/nPfTl9SyNwv8ZxvTP0r5P2KahZsZHvUn3jsSJkO6kvwLgE
	4kOQ==
X-Gm-Message-State: AE9vXwN/mmYJ3dXNH2eyDpiZmcE7Mmhq6+EJ26Pw6f6Zm2Z7YPc4mIBIJ3OjfT5cBBSAaujtsqBLfobWWG6W9w==
X-Received: by 10.36.41.205 with SMTP id p196mr7061312itp.76.1472840457063;
	Fri, 02 Sep 2016 11:20:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.147.4 with HTTP; Fri, 2 Sep 2016 11:20:56 -0700 (PDT)
In-Reply-To: <1472826906.29583.167.camel@linuxfoundation.org>
References: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
	<CABcZANmtT7NNLNJOq=pBAnN5K6OjF-XyHS4OOPgnbHyDP6LK_g@mail.gmail.com>
	<CAMAb8ZOEiy_u4MtGF7xXMR9w8AYFwCPSTmbOZ70mBj7_e1gbSQ@mail.gmail.com>
	<1472826906.29583.167.camel@linuxfoundation.org>
From: Evade Flow <evadeflow@gmail.com>
Date: Fri, 2 Sep 2016 14:20:56 -0400
Message-ID: <CAMAb8ZPo1y9SpypPxSvW1_x+M9TA1TFyEsHb28S--LOJG7ZSag@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
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
X-List-Received-Date: Fri, 02 Sep 2016 18:20:59 -0000
Content-Type: multipart/alternative; boundary=001a113f6d5e411adc053b8a64c9

--001a113f6d5e411adc053b8a64c9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> You don't have BB_SRCREV_POLICY set to cache anywhere do you? It defaults
to clear which is what you want...

Gak! Indeed, this was set in `local.conf`:

```
BB_SRCREV_POLICY =3D "cache"
```

I just confirmed that this was the source of my problem. After removing
this line, everything works great=E2=80=94thanks!

On Fri, Sep 2, 2016 at 10:35 AM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2016-09-02 at 10:08 -0400, Evade Flow wrote:
> > > Add ${SRCPV} to your PV (see various recipes in oe-core for
> > examples), then it=E2=80=99ll know to re-run the tasks when srcrev chan=
ges.
> >
> > Thanks for confirming that this is 'supposed' to work, that's great
> > news! Actually, I've already included SRCPV in PV. Here's my recipe,
> > shorn of comments and an uninteresting do_install_append() function:
>
> You don't have BB_SRCREV_POLICY set to cache anywhere do you? It
> defaults to clear which is what you want...
>
> Does "rm tmp/cache -r" 'fix' make it see new revisions? Knowing that
> would at least help track down the kind of problem you're seeing.
>
> What does the full PV look like after expansion? Does it contain an
> older truncated SRCREV ?
>
> Cheers,
>
> Richard
>

--001a113f6d5e411adc053b8a64c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>&gt; You don&#39;t have BB_SRCREV_POLICY set to =
cache anywhere do you? It defaults to clear which is what you want...<br><b=
r></div>Gak! Indeed, this was set in `local.conf`:<br><br>```<br>BB_SRCREV_=
POLICY =3D &quot;cache&quot;<br>```<br><br></div>I just confirmed that this=
 was the source of my problem. After removing this line, everything works g=
reat=E2=80=94thanks!<br>
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Sep=
 2, 2016 at 10:35 AM, Richard Purdie <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linu=
xfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><sp=
an class=3D"">On Fri, 2016-09-02 at 10:08 -0400, Evade Flow wrote:<br>
&gt; &gt; Add ${SRCPV} to your PV (see various recipes in oe-core for<br>
&gt; examples), then it=E2=80=99ll know to re-run the tasks when srcrev cha=
nges.<br>
&gt;<br>
&gt; Thanks for confirming that this is &#39;supposed&#39; to work, that&#3=
9;s great<br>
&gt; news! Actually, I&#39;ve already included SRCPV in PV. Here&#39;s my r=
ecipe,<br>
&gt; shorn of comments and an uninteresting do_install_append() function:<b=
r>
<br>
</span>You don&#39;t have BB_SRCREV_POLICY set to cache anywhere do you? It=
<br>
defaults to clear which is what you want...<br>
<br>
Does &quot;rm tmp/cache -r&quot; &#39;fix&#39; make it see new revisions? K=
nowing that<br>
would at least help track down the kind of problem you&#39;re seeing.<br>
<br>
What does the full PV look like after expansion? Does it contain an<br>
older truncated SRCREV ?<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div><br></div>

--001a113f6d5e411adc053b8a64c9--
