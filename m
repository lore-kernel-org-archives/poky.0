Return-Path: <nithisai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F233DE00A54; Fri, 10 Jul 2015 04:33:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nithisai[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C4EAE009D6
	for <poky@yoctoproject.org>; Fri, 10 Jul 2015 04:33:36 -0700 (PDT)
Received: by obbkm3 with SMTP id km3so189285586obb.1
	for <poky@yoctoproject.org>; Fri, 10 Jul 2015 04:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TmxP2FHNDGu3YLA5ZU7+Nu/sIaImDep+UkqTp/SrKz4=;
	b=tlEO21OCwytqfBOtWRs0b38/2H1dvyHJtBOSNsf0vx3weluDpjjWxCHwRP8NbDoCMl
	DlYWWIziv1v+R9tOf1JsPXPcFJqkVf0lHQxiV/DuY3hci4xxbI5g1NcEMDbq0ZH3moqq
	zIJWOqWsJIftVbHVTEZl392QZ/e4YbC73kNQ93XddojZ21PhtAYAnc1nijCwgeTX4qF1
	SsQbARJNAbHtvBcesRNcf1NvC/b+mFYT2zq1qgUCE8adOaUGeN3PKmcLTy60s6XLkYwH
	LaWjVv5xvNsZAnBOOKW+jRKYgPxA1j72DUeUEYKCRRkD3Lgii0va6QhgjoHb1obMPlqS
	dz/A==
MIME-Version: 1.0
X-Received: by 10.202.64.195 with SMTP id n186mr17867590oia.53.1436528015792; 
	Fri, 10 Jul 2015 04:33:35 -0700 (PDT)
Received: by 10.202.173.137 with HTTP; Fri, 10 Jul 2015 04:33:35 -0700 (PDT)
In-Reply-To: <1436515713.9778.52.camel@linuxfoundation.org>
References: <CACj2azvy9HZUsaoJO8jPHzMMrck1t_2O-1ctAffWOT3x9F3oFw@mail.gmail.com>
	<1436515713.9778.52.camel@linuxfoundation.org>
Date: Fri, 10 Jul 2015 17:03:35 +0530
Message-ID: <CACj2azsE6b5uOan+Tdkd-+g4bjHjZBV6GRwQiSzn2T1Pc1rbmQ@mail.gmail.com>
From: Nithyakala Sainath <nithisai@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Not able to set env var from anon function
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
X-List-Received-Date: Fri, 10 Jul 2015 11:33:39 -0000
Content-Type: multipart/alternative; boundary=001a113dd1e61762b6051a83beff

--001a113dd1e61762b6051a83beff
Content-Type: text/plain; charset=UTF-8

Thanks Richard and Ross. That answers my question.

Nithya.

On Fri, Jul 10, 2015 at 1:38 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2015-07-09 at 17:42 +0530, Nithyakala Sainath wrote:
> > I was playing with environmental variables and datastore that I fell
> > into this situation:
> >
> > In a reccipe a.bb
> >
> > export TEMPDIR = "temp"
> >
> > python() {
> >         os.environ["TEMPDIR"] = "randomvalue"
> > }
> >
> > do_compile() {
> >         echo ${TEMPDIR }
> > }
> >
> > gives me "temp" as the answer. I was expecting "randomvalue". Can I
> > not modify the environmental variables and create new ones in anon
> > functions ?
> >
> > But d.setVar("TEMPDIR", "randomvalue") in place of os.environ does the
> > mgic. Why can't we manipulate the environmental variable using
> > os.environ ?
> >
> > In bitbake.conf, we see that we can get env vars using os.getenv.
>
> bitbake tightly controls the task execution environment. Only variables
> marked as "export" will be exported and the value used for them is that
> from the datastore. Therefore, os.environ set in anonymous python will
> simply get overwritten. You can't have one value in the datastore and
> another in the environment.
>
> As Ross points out, ${TEMPDIR} will get expanded by bitbake anyway so it
> would print the datastore value anyway.
>
> Cheers,
>
> Richard
>
>
>

--001a113dd1e61762b6051a83beff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Richard and Ross. That answers my question.<div><br=
></div><div>Nithya.</div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Fri, Jul 10, 2015 at 1:38 PM, Richard Purdie <span dir=3D"=
ltr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_b=
lank">richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Thu, 2015-=
07-09 at 17:42 +0530, Nithyakala Sainath wrote:<br>
&gt; I was playing with environmental variables and datastore that I fell<b=
r>
&gt; into this situation:<br>
&gt;<br>
&gt; In a reccipe <a href=3D"http://a.bb" rel=3D"noreferrer" target=3D"_bla=
nk">a.bb</a><br>
&gt;<br>
&gt; export TEMPDIR =3D &quot;temp&quot;<br>
&gt;<br>
&gt; python() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.environ[&quot;TEMPDIR&quot;] =3D &=
quot;randomvalue&quot;<br>
&gt; }<br>
&gt;<br>
&gt; do_compile() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo ${TEMPDIR }<br>
&gt; }<br>
&gt;<br>
&gt; gives me &quot;temp&quot; as the answer. I was expecting &quot;randomv=
alue&quot;. Can I<br>
&gt; not modify the environmental variables and create new ones in anon<br>
&gt; functions ?<br>
&gt;<br>
&gt; But d.setVar(&quot;TEMPDIR&quot;, &quot;randomvalue&quot;) in place of=
 os.environ does the<br>
&gt; mgic. Why can&#39;t we manipulate the environmental variable using<br>
&gt; os.environ ?<br>
&gt;<br>
&gt; In bitbake.conf, we see that we can get env vars using os.getenv.<br>
<br>
</div></div>bitbake tightly controls the task execution environment. Only v=
ariables<br>
marked as &quot;export&quot; will be exported and the value used for them i=
s that<br>
from the datastore. Therefore, os.environ set in anonymous python will<br>
simply get overwritten. You can&#39;t have one value in the datastore and<b=
r>
another in the environment.<br>
<br>
As Ross points out, ${TEMPDIR} will get expanded by bitbake anyway so it<br=
>
would print the datastore value anyway.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div><br></div>

--001a113dd1e61762b6051a83beff--
