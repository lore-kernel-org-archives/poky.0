Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7332E00826; Fri, 28 Apr 2017 01:36:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5567E007B5
	for <poky@yoctoproject.org>; Fri, 28 Apr 2017 01:36:18 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id u70so27593164ywe.2
	for <poky@yoctoproject.org>; Fri, 28 Apr 2017 01:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pWFc2rj9nEk+BnAcKO4ylCip8BWMYWTV4JaLRoVKfr8=;
	b=shTBFEBN3CJjJSZ3uKXrPZIUm0YMkX/UWVoz7RPoCSUQD8uRA7KqZZzwKMSaGUruJ8
	4kYCbwZXNZ4RPQkTbzKIojEhaNoIcd3JDZIE2RJ1H70xDLhpLlES04R7Tnj0ip9D1W8Q
	fXecNDH6A4nc5ZVT9RXssPLUGAAXr2o09kgNmovgpH6i2JG5DKNQ3aQv0Gb0e1sTpUKB
	NdEJjAf19mvvuWHegkyZCHNoDStrW1eNQzCGZ/XifBdi9jSsV4TzPlGVgUqnllgvqJUW
	Gmgto3eXwUDrgLHtTtxYtOdzq8xPZge6UduAsk66GbvJTqkvcwu0GcchvI3EyIM8jT6q
	YlSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pWFc2rj9nEk+BnAcKO4ylCip8BWMYWTV4JaLRoVKfr8=;
	b=oKFxQyzhSIvlaal0GWIpBJZO1+z25sZzZmHd6eJuZ5jhwoALE8nrcX+UMLGRryM9ne
	CQKT6jo6x46KtpMOSwPrVoXN720+CYHTaeJCdSNlqpDJQg14Wk5f870/Ny35PS1wqtan
	0ZIszikyaH9TueiqbTWaIjOwwDXxkf6QQO6hMlHcfWCivQcXwpp8vKbnhWiKtjnrMLzA
	ZCmc3LCQj+yj5O9bWrQ1nqoMMNxqPZg4tGGC4SMaMOueCNTo2eouflZOG+LILsmJ0+HW
	wD1N8aTrt3ulY6AjHtPqMb8i3SVH7SFAt/9OBUyb9YurJDlrDXTTX8bwJkkCmK9ChJkP
	VQug==
X-Gm-Message-State: AN3rC/5iGS7hFuo81nZ2wNdt0SvCohIAPRQ8V/NDAg28EKLko7/s91cJ
	JQntDLGjEGsUhVfJeCywHmI+3jN9K+J5
X-Received: by 10.129.92.134 with SMTP id q128mr8623626ywb.268.1493368577597; 
	Fri, 28 Apr 2017 01:36:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.75 with HTTP; Fri, 28 Apr 2017 01:35:46 -0700 (PDT)
In-Reply-To: <trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 28 Apr 2017 11:35:46 +0300
Message-ID: <CAHiDW_FWzvCn7t0qzmrzSMpcbkqPRABNqgqA+gy-dWMW9U9sWA@mail.gmail.com>
To: Arno Steffens <star@gmx.li>, "Wold, Saul" <saul.wold@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: gnupg strip down
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
X-List-Received-Date: Fri, 28 Apr 2017 08:36:21 -0000
Content-Type: multipart/alternative; boundary=001a114d800e963806054e35f737

--001a114d800e963806054e35f737
Content-Type: text/plain; charset=UTF-8

On 28 April 2017 at 10:31, Arno Steffens <star@gmx.li> wrote:

> I did as advised, created a bbappend for gnupg, like that:
>
> do_install_append() {
>         rm ${D}${bindir}/gpgv
>         rm ${D}${bindir}/gpgsm
>         rm ${D}${bindir}/gpg-connect-agent
>         rm ${D}${bindir}/dirmngr-client
>         rm ${D}${bindir}/gpgscm
>         rm ${D}${bindir}/watchgnupg
>         rm ${D}${bindir}/gpgparsemail
>         rm ${D}${bindir}/gpgconf
>         rm ${D}${bindir}/dirmngr
>         rm ${D}${bindir}/gpgtar
>         rm ${D}${bindir}/gpgv2
>         rm ${D}${bindir}/gpg-agent
>         rm ${D}${bindir}/kbxutil
>         rm ${D}/usr/sbin/*
>         rmdir ${D}/usr/sbin
>         rm ${D}/usr/share/gnupg/help*
>         rm ${D}/usr/libexec/gpg-*
>         rm ${D}/usr/libexec/scdaemon
>         rmdir ${D}/usr/libexec
> }
>
> First I get errors, cleaning files and leave directory, but than I get it,
> that I have to remove empty folders too. Ok, that could be done smarter. So
> just gpg and few small files left.
>
> But I don't have an idea howto remove the libs, that seems to be required
> only by the removed binaries,
> like libgnutils.so, libgmp.so - which are rather big ...


I don't see evidence that the binaries you mentioned would depend on those
libraries (at least with current sysroot behaviour -- it might happen by
mistake on older releases). But there is this line in the recipe:
RDEPENDS_${PN} = "gnutls"

Saul, do you happen to remember why that was added (more than two years ago
in poky 31059be9).

 - Jussi

--001a114d800e963806054e35f737
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
8 April 2017 at 10:31, Arno Steffens <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:star@gmx.li" target=3D"_blank">star@gmx.li</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">I did as advised, created a bb=
append for gnupg, like that:<br>
<br>
do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgv<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgsm<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpg-connect-<wbr>agent<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/dirmngr-client<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgscm<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/watchgnupg<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgparsemail<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgconf<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/dirmngr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgtar<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgv2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpg-agent<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/kbxutil<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/sbin/*<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir ${D}/usr/sbin<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/share/gnupg/help*<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/libexec/gpg-*<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/libexec/scdaemon<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir ${D}/usr/libexec<br>
}<br>
<br>
First I get errors, cleaning files and leave directory, but than I get it, =
that I have to remove empty folders too. Ok, that could be done smarter. So=
 just gpg and few small files left.<br>
<br>
But I don&#39;t have an idea howto remove the libs, that seems to be requir=
ed only by the removed binaries,<br>
like libgnutils.so, libgmp.so - which are rather big ...=C2=A0</blockquote>=
<div><br></div><div>I don&#39;t see evidence that the binaries you mentione=
d would depend on those libraries (at least with current sysroot behaviour =
-- it might happen by mistake on older releases). But there is this line in=
 the recipe:</div><div><div>RDEPENDS_${PN} =3D &quot;gnutls&quot;</div></di=
v><div><br></div><div>Saul, do you happen to remember why that was added (m=
ore than two years ago in poky 31059be9).<br></div><div><br></div><div>=C2=
=A0- Jussi</div></div></div></div>

--001a114d800e963806054e35f737--
