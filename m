Return-Path: <samentu1@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66F11E00ED3; Mon, 13 Nov 2017 18:30:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (samentu1[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA394E00ED0
	for <poky@yoctoproject.org>; Mon, 13 Nov 2017 18:30:10 -0800 (PST)
Received: by mail-io0-f196.google.com with SMTP id g73so7266250ioj.8
	for <poky@yoctoproject.org>; Mon, 13 Nov 2017 18:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VglpWZwa+19DWYR9IdDL8FjmFCLIFy9ndo7yhxFlv5M=;
	b=aeozCrpc2V/2MRTvLFXuLBC014uLgcJmPPyeHMch0uK/yqQlEt0ouO5Mi2wqE6x+oX
	aeWawBqPKgKXA4MXXjYc5pxrP2VypA5wB0fBWwKQESfi31C165Ko02rWBuvnVjCv4u32
	v0GbD4ebHg//XqdNPpUwAtngyTtDgNLW0w7vlNzCPJUugtfDh5kNPneWB1X/rKiADEnv
	TYXZ5RQOqPdnUkA7YcX0NKb1ua23WPW/NH9f81oBJCCou7ra8dBTb0IYXHn7Nu3z68Kz
	RMMowC0e0sD3ki0DcwAX401xnWgLUhyZb2v1OXLifnQ+slFxSMvQrLtgBywzmI+JFtZx
	7Pkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VglpWZwa+19DWYR9IdDL8FjmFCLIFy9ndo7yhxFlv5M=;
	b=AdVhXpXwZTJysFqfftGIl36NPOZrfMm5eyinr1+iA/g1DeyZwNVx589IiDOjazJiiH
	ZHjzQMRpz28wYQ8sglsp5axbWfEUdFyctlj8GKHX65yhTj2/fKfBcjdOTCduPSpFa7XU
	TYtj9z6lHG4lLHqpu95rubz3to7wuvqjH0Fe/KGZKyiACoh5GvZTAjLoDrK8Z87I5fiv
	mGeu8W0i+pvxX2+yMVTceCcM+Ux8bW1odJ3GI8SrorOGFE1gzpcU3l8Jcl0iVuVFgxfl
	MXfEqpaR6EAfiZmvWr0HWGEoBsltuEUYKHRfL70SaDHlw0qHN/9X6RRknxes2YyZmvmB
	2v6Q==
X-Gm-Message-State: AJaThX6MAAjH/+RaCeVTLMIfCg4NKyA0CT8jKyXdtgpMHPg2fL9IHfb9
	LD2nr3w1J6sJrV0tln6jdwDC3Q9NAV7pv6oiQq4=
X-Google-Smtp-Source: AGs4zMbZgzTQ/I7oiGe/LOeWq0bh8auy4d0mWh7TZwuKXtlyrVFTDyNHm7e9zchl9u/QIjzJPjpY0stTSeDS1olGdYQ=
X-Received: by 10.107.130.227 with SMTP id m96mr5040993ioi.35.1510626610188;
	Mon, 13 Nov 2017 18:30:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.18.11 with HTTP; Mon, 13 Nov 2017 18:30:09 -0800 (PST)
In-Reply-To: <20171113153334.75430507@lsandov1-mobl2.zpn.intel.com>
References: <CAM4Jt4=U9jYX5VF8TwDY-7nF0g3DERgkUT7pc+usT1cA5dJmTw@mail.gmail.com>
	<20171113153334.75430507@lsandov1-mobl2.zpn.intel.com>
From: Florin Ionut <samentu1@gmail.com>
Date: Tue, 14 Nov 2017 04:30:09 +0200
Message-ID: <CAM4Jt4nLwD-_wHsKP2ZuKK==vGXxE8oRPgW2tDU9_H9kPJ+OFA@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [pyro] Backport request for meta/recipes-devtools/gcc version 6.3
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
X-List-Received-Date: Tue, 14 Nov 2017 02:30:12 -0000
Content-Type: multipart/alternative; boundary="001a113f8cc47d187b055de82a48"

--001a113f8cc47d187b055de82a48
Content-Type: text/plain; charset="UTF-8"

Hi,
thanks for the suggestion. I had combined the 2 commits into 1 and sent it
there too:
http://lists.openembedded.org/pipermail/openembedded-core/2017-November/144283.html

On Mon, Nov 13, 2017 at 11:33 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Mon, 13 Nov 2017 14:28:49 +0200
> Florin Ionut <samentu1@gmail.com> wrote:
>
> > Hi,
> > can dc3b3a8df3297367e9386dd3ac098b64f7f46d06 and
> > c08247e3c7c004a40281d4010186a9ace86e0e47 from master be backported to
> the
> > pyro branch please?
> >
>
> I have not seen the commits in detail but you can propose to be backported
> sending to patches to the openembeded core mailing list. On a local branch,
> backport these then git format-patch -2 --subject-prefix='PATCH][pyro'.
>
>
> > Thank you
>

--001a113f8cc47d187b055de82a48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>thanks for the suggestion. I had combined the 2 co=
mmits into 1 and sent it there too:=C2=A0<a href=3D"http://lists.openembedd=
ed.org/pipermail/openembedded-core/2017-November/144283.html">http://lists.=
openembedded.org/pipermail/openembedded-core/2017-November/144283.html</a><=
/div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon=
, Nov 13, 2017 at 11:33 PM, Leonardo Sandoval <span dir=3D"ltr">&lt;<a href=
=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blank">le=
onardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><span class=3D"">On Mon, 13 Nov 2017 14:28:49 +0200<b=
r>
Florin Ionut &lt;<a href=3D"mailto:samentu1@gmail.com">samentu1@gmail.com</=
a>&gt; wrote:<br>
<br>
&gt; Hi,<br>
&gt; can dc3b3a8df3297367e9386dd3ac098b<wbr>64f7f46d06 and<br>
&gt; c08247e3c7c004a40281d4010186a9<wbr>ace86e0e47 from master be backporte=
d to the<br>
&gt; pyro branch please?<br>
&gt;<br>
<br>
</span>I have not seen the commits in detail but you can propose to be back=
ported sending to patches to the openembeded core mailing list. On a local =
branch, backport these then git format-patch -2 --subject-prefix=3D&#39;PAT=
CH][pyro&#39;<wbr>.<br>
<br>
<br>
&gt; Thank you<br>
</blockquote></div><br></div>

--001a113f8cc47d187b055de82a48--
