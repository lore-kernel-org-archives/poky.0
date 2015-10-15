Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3786E00BC4; Thu, 15 Oct 2015 15:06:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2901CE00B9E
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 15:06:11 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so1999775igb.0
	for <poky@yoctoproject.org>; Thu, 15 Oct 2015 15:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=2ZXwFuGXPPch8I1w/IDG7EiivZ2zC9BpaC2Mwi7vbwo=;
	b=msEanfDS9Wptz07GDizUBeXqg3r3TJPBpGy6G+lvS9IOsdxFrgNE3lUujwHm3NZeFJ
	qtRxYttvNuVAXTplP3lHE4HncxblNMIztTH5Aqa0OduFGOVtzYJkkPLQrrZdw0+fgZO+
	7RVKNc2hzCbKy95/YbqObVIUX30EjxoXGL6zdyvvbQWJt/WOiaIt36TQU+Fpj3GA5sTm
	KUVKpSlxt9QEIYknNkEiSmotxpFSsHY46DGAGC7jhNe0l3H9T4MXawQQrvonLRxpZ+tg
	1Syf8pNI3P2VQ1PvjsBaId1ydR1m3eLmuGAwfz9NitLYD3qOO8Vw6gLaWrvj1cITwNBW
	jxqQ==
X-Received: by 10.50.60.74 with SMTP id f10mr1667464igr.10.1444946771094; Thu,
	15 Oct 2015 15:06:11 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.65.204 with HTTP; Thu, 15 Oct 2015 15:05:51 -0700 (PDT)
In-Reply-To: <562021CF.1030305@webthatworks.it>
References: <561FD3FB.9080606@webthatworks.it>
	<2253318.UlfHrrQpEp@peggleto-mobl.ger.corp.intel.com>
	<56201CA1.1010506@webthatworks.it>
	<CABcZAN=j2XWpw1M8=CDTt1bH7Sr1+YV23qg_xnFQjY9D2F18Ew@mail.gmail.com>
	<562021CF.1030305@webthatworks.it>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 15 Oct 2015 15:05:51 -0700
X-Google-Sender-Auth: VhPeNsDVCU2wdaAKnwJOQ3Ovy04
Message-ID: <CABcZANk6RKPv=FA6q3pRXK_L-K090EtsxjgN73-2f_3gbc+Y3Q@mail.gmail.com>
To: Ivan Sergio Borgonovo <mail@webthatworks.it>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [SOLVED]? Re: listing PACKAGES for a certain layer
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
X-List-Received-Date: Thu, 15 Oct 2015 22:06:14 -0000
Content-Type: multipart/alternative; boundary=047d7b10ca7d02daaf05222be38e

--047d7b10ca7d02daaf05222be38e
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 2:59 PM, Ivan Sergio Borgonovo <mail@webthatworks.it
> wrote:

> On 10/15/2015 11:42 PM, Christopher Larson wrote:
>
>> https://github.com/kergoth/bb 's search subcommand may also be of use.
>>
>
> bb contents seems the thing that is most likely what I'm looking for but
> giving a quick glance to the code it seems to relay on things to be already
> compiled in /tmp/work


bb contents dumps the contents of built packages, that's not at all what
you want. If you want to look at what packages are available before you've
done a build, you need something that uses the PACKAGES and
PACKAGES_DYNAMIC variables, which is what bb-search does. There are other
options, of course, this is just one possibility. There's a usage example
in the readme so you can see if it's what you're looking for.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--047d7b10ca7d02daaf05222be38e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Oct 15, 2015 at 2:59 PM, Ivan Sergio Borgonovo <span dir=3D"ltr">&l=
t;<a href=3D"mailto:mail@webthatworks.it" target=3D"_blank">mail@webthatwor=
ks.it</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">On 10/15/2015 11:42 PM, Christopher Larson wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<a href=3D"https://github.com/kergoth/bb" rel=3D"noreferrer" target=3D"_bla=
nk">https://github.com/kergoth/bb</a> &#39;s search subcommand may also be =
of use.<br>
</blockquote>
<br></span>
bb contents seems the thing that is most likely what I&#39;m looking for bu=
t giving a quick glance to the code it seems to relay on things to be alrea=
dy compiled in /tmp/work</blockquote></div><br>bb contents dumps the conten=
ts of built packages, that&#39;s not at all what you want. If you want to l=
ook at what packages are available before you&#39;ve done a build, you need=
 something that uses the PACKAGES and PACKAGES_DYNAMIC variables, which is =
what bb-search does. There are other options, of course, this is just one p=
ossibility. There&#39;s a usage example in the readme so you can see if it&=
#39;s what you&#39;re looking for.<br>-- <br><div class=3D"gmail_signature"=
>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, Ope=
nEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Me=
ntor Graphics</div>
</div></div>

--047d7b10ca7d02daaf05222be38e--
