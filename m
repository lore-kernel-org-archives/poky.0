Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01435E006AD
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 10:30:43 -0700 (PDT)
Received: by eaab16 with SMTP id b16so3983050eaa.35
	for <poky@yoctoproject.org>; Thu, 05 Jul 2012 10:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3ZcVfkarLIRQMx3+DKRva28HMCXjifpARawtTqDYhjs=;
	b=q+WFhrc4egoT9W6kYBSK/twoETdHiRttVIhwO76/eSd8VOobdx6Uhc6h4EW87a+Qxm
	c3jYg6+sIeimrnbOIwXZ8jAQiYsRTJgcR2DuYM/JFWkooO8EFTK9p4EaqMhnr6XKFsG5
	8sYckeXs0dGdAXQrSzGEDp3E7t4yLIBJhxL7Ed0GiTHUUaPqc2Nx6OR/pTaep8wxU2SU
	cUs0NQ+xs3llBH5A9ERH4O7jccJF8sY35TvJ26PP08pKUpQZU1iM80obvUFDcSs/j9Op
	TxWR8gOmTokF+wrHwVveqYJMpi1yZU9pGyjK0uMMLy/gHwvKsWQISSvbj6odI8Eb+6oN
	1ImQ==
MIME-Version: 1.0
Received: by 10.14.119.202 with SMTP id n50mr6373301eeh.33.1341509442553; Thu,
	05 Jul 2012 10:30:42 -0700 (PDT)
Received: by 10.14.210.199 with HTTP; Thu, 5 Jul 2012 10:30:42 -0700 (PDT)
In-Reply-To: <1341504720.19821.18.camel@ted>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<4FF5B4EA.5000302@intel.com> <1341504720.19821.18.camel@ted>
Date: Thu, 5 Jul 2012 10:30:42 -0700
Message-ID: <CAMKF1sp-HfyDNGoiY+aYUojx02Ywd8E2RZxx8Gs65dktxNAdVg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [denzil][PATCH 0/9] bitbake fetch improvements backport to denzil
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Jul 2012 17:30:44 -0000
Content-Type: multipart/alternative; boundary=90e6ba615524c9460304c41881ec

--90e6ba615524c9460304c41881ec
Content-Type: text/plain; charset=UTF-8

On Thursday, July 5, 2012, Richard Purdie wrote:

> On Thu, 2012-07-05 at 08:38 -0700, Scott Garman wrote:
> > On 07/03/2012 03:31 PM, Khem Raj wrote:
> > > On denzil bitbake was still trying to go out to internet for git repos
> > > when BB_NO_NETWORK was set. This set of backports fix that issue
> > > and now BB_NO_NETWORK works as expected
> >
> > Hi Khem,
> >
> > Denzil 1.2.1 is already in release candidate phase and going through QA.
> > I'm not sure if we can take this for 1.2.1, it may have to wait for
> > 1.2.2. Richard should probably weigh in here.
>
> Its 1.2.2 material at this point but we should try and get things into
> the branch sooner than later after release.
>
> I am worried about this series introducing bugs. We did have some bugs
> found in some of the series of fetcher changes I made in master.


Sure I am fine for it to get more testing before it goes in, my testing has
been good so far

>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org <javascript:;>
> https://lists.yoctoproject.org/listinfo/poky
>

--90e6ba615524c9460304c41881ec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, July 5, 2012, Richard Purdie  wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">On Thu, 2012-07-05 at 08:38 -0700, Scott Garman wrote:<br>
&gt; On 07/03/2012 03:31 PM, Khem Raj wrote:<br>
&gt; &gt; On denzil bitbake was still trying to go out to internet for git =
repos<br>
&gt; &gt; when BB_NO_NETWORK was set. This set of backports fix that issue<=
br>
&gt; &gt; and now BB_NO_NETWORK works as expected<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; Denzil 1.2.1 is already in release candidate phase and going through Q=
A.<br>
&gt; I&#39;m not sure if we can take this for 1.2.1, it may have to wait fo=
r<br>
&gt; 1.2.2. Richard should probably weigh in here.<br>
<br>
Its 1.2.2 material at this point but we should try and get things into<br>
the branch sooner than later after release.<br>
<br>
I am worried about this series introducing bugs. We did have some bugs<br>
found in some of the series of fetcher changes I made in master.</blockquot=
e><div><br></div><div>Sure I am fine for it to get more testing before it g=
oes in, my testing has been good so far=C2=A0<span></span></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">

<br>
Cheers,<br>
<br>
Richard<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;poky@yoc=
toproject.org&#39;)">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote>

--90e6ba615524c9460304c41881ec--
