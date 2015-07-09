Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21BBEE009CC; Thu,  9 Jul 2015 06:40:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA573E00978
	for <poky@yoctoproject.org>; Thu,  9 Jul 2015 06:40:27 -0700 (PDT)
Received: by qgef3 with SMTP id f3so65348123qge.0
	for <poky@yoctoproject.org>; Thu, 09 Jul 2015 06:40:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=RHySPlbsiaP+xRiYurjeqYyAafVGb+vHH53ETLIvdsw=;
	b=SpQAhm3Xan9uYfmsjOgRUofC4/wegtKt3UjlDbyT9ykY6X4jtwpmov2lQ5hC/MeZ8d
	w8P2uMEUtIWTaPgLSOmBuEiLQmgJTqh8FoaUkgN7SC40A52KUY4Y7t38kmPvG9blI/1E
	aIPdwjFlAITPJG6DZTrncGHxSob9LD+6Hnh4jFytAVmwH/O5YEAgb3DSRA7hHqPoWC/O
	MhNj0yn4/ycB3/S3gIYM7M6fnx0ZJyHjcCSgGGPydjfpACxP9visS+UOscL7wb45uMCq
	JXQ0pR4GIhXeLJw5ZTjo0tEShMrF9HCiLn4wgBzQK+W6SqJXFBVnmpwcigBInKaaGdh/
	Dl3w==
X-Gm-Message-State: ALoCoQmRjhOkBkq72NLast0c6Afcl9lcYqxiutxS2VKvOxQaNZR6niSuxLZGQbcjKX1Ia6ZdawDt
X-Received: by 10.140.43.100 with SMTP id d91mr24940633qga.77.1436449226364;
	Thu, 09 Jul 2015 06:40:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 9 Jul 2015 06:40:06 -0700 (PDT)
In-Reply-To: <CACj2azvy9HZUsaoJO8jPHzMMrck1t_2O-1ctAffWOT3x9F3oFw@mail.gmail.com>
References: <CACj2azvy9HZUsaoJO8jPHzMMrck1t_2O-1ctAffWOT3x9F3oFw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Jul 2015 14:40:06 +0100
Message-ID: <CAJTo0LarovLG7ytbrfv_L8TtZ3bAYbR8RZPzmVfChZQHH=0J1g@mail.gmail.com>
To: Nithyakala Sainath <nithisai@gmail.com>
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
X-List-Received-Date: Thu, 09 Jul 2015 13:40:28 -0000
Content-Type: multipart/alternative; boundary=001a113a989ce04a2b051a71655b

--001a113a989ce04a2b051a71655b
Content-Type: text/plain; charset=UTF-8

On 9 July 2015 at 13:12, Nithyakala Sainath <nithisai@gmail.com> wrote:

> But d.setVar("TEMPDIR", "randomvalue") in place of os.environ does the
> mgic. Why can't we manipulate the environmental variable using os.environ ?


Because in "echo ${TEMPDIR}" the variable is expanded by bitbake, not the
shell.  Use $TEMPDIR.

Ross

--001a113a989ce04a2b051a71655b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 July 2015 at 13:12, Nithyakala Sainath <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nithisai@gmail.com" target=3D"_blank">nithisai@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">But d.setVar(&quot;TEMPDIR=
&quot;, &quot;randomvalue&quot;) in place of os.environ does the mgic. Why =
can&#39;t we manipulate the environmental variable using os.environ ?</bloc=
kquote></div><br>Because in &quot;echo ${TEMPDIR}&quot; the variable is exp=
anded by bitbake, not the shell.=C2=A0 Use $TEMPDIR.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113a989ce04a2b051a71655b--
