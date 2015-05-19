Return-Path: <nithisai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E20AE009B8; Tue, 19 May 2015 01:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nithisai[at]gmail.com)
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
	*      [209.85.214.180 listed in list.dnswl.org]
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAB4FE00998
	for <poky@yoctoproject.org>; Tue, 19 May 2015 01:09:12 -0700 (PDT)
Received: by obblk2 with SMTP id lk2so6324141obb.0
	for <poky@yoctoproject.org>; Tue, 19 May 2015 01:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hW7OKrlJh8p07MwZ2TZz9nwvZxyAMTELnI0cVuX5yFM=;
	b=boId6ObH2IrtYcBrl+mFiglaNYZcDtDDBepLdF8P7Oy1DzHAAYkwWO6ABRXCpFfb2t
	+vxzmRgFePWkb5FcRhTbOBXdwVXKRm6UF4dAAGDNyYBL+Op6pmkLPdfu9aG85IqJHNOg
	IkPISWUAEKBewOoVXoc51rNOd7/CdIEVqsM4hZVw9JlB3a+wHpByR9XxADM8uFaRN5tP
	n0ZAore7pzg53vZ7f2M0iAg9KMePiZVW9bo/4jzI/uBEkCBgif5H4VzBSh4XO69cDS16
	RboZmICt8wPhdl2yL9220JFyoZR4r9L5KqenIQocEXUCb35bzi3AWqmYnpgtbCRrPOOq
	Kt/g==
MIME-Version: 1.0
X-Received: by 10.60.82.67 with SMTP id g3mr23205822oey.29.1432022951656; Tue,
	19 May 2015 01:09:11 -0700 (PDT)
Received: by 10.202.128.9 with HTTP; Tue, 19 May 2015 01:09:11 -0700 (PDT)
In-Reply-To: <1432020740.11357.111.camel@linuxfoundation.org>
References: <CACj2azs1yrQ0fVuJhrgkDTj_kk5G=z4pqmNLjiLeNZFpQv-Lxg@mail.gmail.com>
	<555A26FC.3030304@linux.intel.com>
	<1432020740.11357.111.camel@linuxfoundation.org>
Date: Tue, 19 May 2015 13:39:11 +0530
Message-ID: <CACj2azvtNKDv4M0dAw9Xr3gm=KYmjqs17ECEDUJsVc4i6Uqcvw@mail.gmail.com>
From: Nithyakala Sainath <nithisai@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: Multiple versions of libx11 are due to be built
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
X-List-Received-Date: Tue, 19 May 2015 08:09:15 -0000
Content-Type: multipart/alternative; boundary=047d7b676d5258035205166ad3b4

--047d7b676d5258035205166ad3b4
Content-Type: text/plain; charset=UTF-8

Thanks Richard and Randy. That clarifies.

Nithya.

On Tue, May 19, 2015 at 1:02 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Mon, 2015-05-18 at 10:53 -0700, Randy Witt wrote:
> > On 05/17/2015 01:23 PM, Nithyakala Sainath wrote:
> > > Hello,
> > >
> > > I want to understand the process of choosing a recipe by bitbake
> > >
> > > There is a libx11_1.3.2.bb in a layer called A with higher priority
> of 6.
> > >
> > > There is another libx11_1.4.0.bb in a layer called B with priority of
> 5.
> > >
> > > So bitbake sshould automatically pick up libx11  from A right ? Why is
> it
> > > giving me error like:
> >
> > " The precedence established through this variable stands regardless of a
> > recipe's version (PV variable). For example, a layer that has a recipe
> with a
> > higher PV value but for which the BBFILE_PRIORITY is set to have a lower
> > precedence still has a lower precedence."
> >
> > The documentation definitely makes it sound like this is the case.
> However, it
> > sounds like the layer priority is most likely only taking effect when the
> > recipes are the same version.
> >
> > Richard, does this sound like the documentation needs to be clarified or
> is this
> > a bug?
>
> The docs likely need to be clarified that this applies if the two
> recipes provide identical things. If one provides something and the
> other does not, the behaviour is very different. Here, that message
> means they are providing different things.
>
> Cc: Scott in case he wants to clarify this in the docs and/or add more
> information about this error message (see my other reply to this
> thread).
>
> Cheers,
>
> Richard
>
>
>
>
>
>

--047d7b676d5258035205166ad3b4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Richard and Randy. That clarifies.<div><br></div><d=
iv>Nithya.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Tue, May 19, 2015 at 1:02 PM, Richard Purdie <span dir=3D"ltr">&lt;=
<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">ric=
hard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On Mon, 2015-05-18 at 10:53 -0700, Randy Wit=
t wrote:<br>
&gt; On 05/17/2015 01:23 PM, Nithyakala Sainath wrote:<br>
&gt; &gt; Hello,<br>
&gt; &gt;<br>
&gt; &gt; I want to understand the process of choosing a recipe by bitbake<=
br>
&gt; &gt;<br>
&gt; &gt; There is a <a href=3D"http://libx11_1.3.2.bb" target=3D"_blank">l=
ibx11_1.3.2.bb</a> in a layer called A with higher priority of 6.<br>
&gt; &gt;<br>
&gt; &gt; There is another <a href=3D"http://libx11_1.4.0.bb" target=3D"_bl=
ank">libx11_1.4.0.bb</a> in a layer called B with priority of 5.<br>
&gt; &gt;<br>
&gt; &gt; So bitbake sshould automatically pick up libx11=C2=A0 from A righ=
t ? Why is it<br>
&gt; &gt; giving me error like:<br>
&gt;<br>
&gt; &quot; The precedence established through this variable stands regardl=
ess of a<br>
&gt; recipe&#39;s version (PV variable). For example, a layer that has a re=
cipe with a<br>
&gt; higher PV value but for which the BBFILE_PRIORITY is set to have a low=
er<br>
&gt; precedence still has a lower precedence.&quot;<br>
&gt;<br>
&gt; The documentation definitely makes it sound like this is the case. How=
ever, it<br>
&gt; sounds like the layer priority is most likely only taking effect when =
the<br>
&gt; recipes are the same version.<br>
&gt;<br>
&gt; Richard, does this sound like the documentation needs to be clarified =
or is this<br>
&gt; a bug?<br>
<br>
</span>The docs likely need to be clarified that this applies if the two<br=
>
recipes provide identical things. If one provides something and the<br>
other does not, the behaviour is very different. Here, that message<br>
means they are providing different things.<br>
<br>
Cc: Scott in case he wants to clarify this in the docs and/or add more<br>
information about this error message (see my other reply to this<br>
thread).<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
<br>
</blockquote></div><br></div>

--047d7b676d5258035205166ad3b4--
