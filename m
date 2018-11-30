Return-Path: <maxime.roussinbelanger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1D39E00C72; Fri, 30 Nov 2018 07:48:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maxime.roussinbelanger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46943E00C49
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 07:48:45 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id i145so8861592ita.4
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 07:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RSOKwn7LhqnFhaCqipzOvFASVfnkC4rFx71ZjJ+jQTs=;
	b=qICu51iYkNaCPw9fm9QD1IwVhW39qRmbOzAJ8gIiEfFdulRhYd7W7XmJscvDomC6ez
	r1nNM0CbuiPdzjeip6mhJTnYOPgpLwTrPvciQmoEjO+2ETzh1Ktm7zV30H56L4htfIsG
	ejREenRroYsB7givvDrR0GABODH+8oXmKGsx7k976KHh5F6P0NZnfBcDvkBrgXECKr8g
	KCEzdkPYLMDitt4QnlMjeOMCbkQozhu5SM3eVK5QO4H3Vs0XsBul34VHRxn12Js7dCLM
	15b0lwMW0xBIeNNYCPPan2/JHUIglv0ycBMLi/N9xkbZxxVeCNeXI9IBjpnLhW5PxJc/
	V2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RSOKwn7LhqnFhaCqipzOvFASVfnkC4rFx71ZjJ+jQTs=;
	b=c9fwbTlNChEPb2qQ8Li223r+vMA8DUoI34SF31J9hWq//3lck986AbaymmnbPyvS2P
	M+tVla/Jrp3ZwWNXZIqZKcOjZQ7NoBCElp+JCzYdzquIIZhNOHu+uLK8nkI7lWrH+ipE
	7btXrWDa8ss0BHCz+01zoXE0lR8QvSNTps8fFe8gtu6OUdLKw8R9sHpG07Jsf0qMD4jB
	FIXz+scmWODoJetF2LoYs5HG8dXMyUHiWKIiizMXFlVe4PkTENNUOmYlOcrRc92O4hwV
	xo40JAycOgI6kw8OAxk+95Xsv15XZsu4e20t998/WGd8HCaCP7oW1yWVzGxgQKAnGcXb
	lzjQ==
X-Gm-Message-State: AA+aEWbNGYi/bqmnUVpKwWDvUHIaLHvNeyZ4MCwnZqxB2LxaRrffXYKS
	SXLW+BUXxfNsDZFRV5vhji+WKPuXNajiElvumrY=
X-Google-Smtp-Source: AFSGD/X6OazXpPzdj90HvanMqcdf0/pwUjfyN7ro/r9x+yC270nVRYpg+Qrb3F7U1u+oNEeDKa25naUpHWI5fGj4ktg=
X-Received: by 2002:a02:3948:: with SMTP id w8mr5468848jae.14.1543592924515;
	Fri, 30 Nov 2018 07:48:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1543535225.git.roussinm@sonatest.com>
	<9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
	<CAJTo0LZRa_b0DbGVpuUa_Uksjho877bqjyAAYuOhD9_zRtPLKg@mail.gmail.com>
	<CAE=T-s7YKSYr77eiFQQ1cCTTjH5dEy=sm=BNuQ=PXSBra8AJBw@mail.gmail.com>
	<CAJTo0LaeGSjdvN=J-pQ_3JGuH-hjpaAtvMiEzvf3j8DkvMakuA@mail.gmail.com>
In-Reply-To: <CAJTo0LaeGSjdvN=J-pQ_3JGuH-hjpaAtvMiEzvf3j8DkvMakuA@mail.gmail.com>
From: =?UTF-8?Q?Maxime_Roussin=2DB=C3=A9langer?=
	<maxime.roussinbelanger@gmail.com>
Date: Fri, 30 Nov 2018 10:48:33 -0500
Message-ID: <CAE=T-s77MdMm+A7eSdCi0+shSOyW6WO1fPwMzds2f9=zX9ZH2g@mail.gmail.com>
To: ross.burton@intel.com
Cc: poky@yoctoproject.org
Subject: Re: [PULL][PATCH 1/1] cmake: remove version in directory structure
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
X-List-Received-Date: Fri, 30 Nov 2018 15:48:45 -0000
Content-Type: multipart/alternative; boundary="000000000000f191a1057be3bbab"

--000000000000f191a1057be3bbab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 30, 2018 at 5:29 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Fri, 30 Nov 2018 at 01:30, Maxime Roussin-B=C3=A9langer
> <maxime.roussinbelanger@gmail.com> wrote:
>
> The context is useful, thanks.  Note that Debian does exactly the
> same: cmake installs to /usr/lib/cmake-[version] and eigen installs to
> /usr/lib/cmake/, and that works.  Is this a problem in general builds
> or just the SDK?  Possibly our toolchain file is breaking the usual
> lookup.

Yes it works (in general builds) because inside cmake.bbclass there is that
line

`list(APPEND CMAKE_MODULE_PATH "${STAGING_DATADIR}/cmake/Modules/")`

But when you are using the SDK that path is not added. That means that all
library that
are installed inside that directory can't be found.

>
> Ross

--000000000000f191a1057be3bbab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><br>On Fri, Nov 30, 2018 at 5:29 AM B=
urton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">=
ross.burton@intel.com</a>&gt; wrote:<br>&gt;<br>&gt; On Fri, 30 Nov 2018 at=
 01:30, Maxime Roussin-B=C3=A9langer<br>&gt; &lt;<a href=3D"mailto:maxime.r=
oussinbelanger@gmail.com" target=3D"_blank">maxime.roussinbelanger@gmail.co=
m</a>&gt; wrote:<br>&gt;<br>&gt; The context is useful, thanks.=C2=A0 Note =
that Debian does exactly the<br>&gt; same: cmake installs to /usr/lib/cmake=
-[version] and eigen installs to<br>&gt; /usr/lib/cmake/, and that works.=
=C2=A0 Is this a problem in general builds<br>&gt; or just the SDK?=C2=A0 P=
ossibly our toolchain file is breaking the usual<br>&gt; lookup.<div><br></=
div><div>Yes it works (in general builds) because inside cmake.bbclass=C2=
=A0there is that line</div><div><br></div><div>`list(APPEND CMAKE_MODULE_PA=
TH &quot;${STAGING_DATADIR}/cmake/Modules/&quot;)`</div><div><br></div><div=
>But when you are using the SDK that path is not added. That means that all=
 library that</div><div>are installed inside that directory can&#39;t be fo=
und.</div><div><br></div><div>&gt;<br>&gt; Ross</div></div></div>

--000000000000f191a1057be3bbab--
