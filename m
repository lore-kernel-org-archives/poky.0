Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ADD0E0086E; Mon, 23 Mar 2015 08:05:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 930EEE0085D
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 08:05:05 -0700 (PDT)
Received: by igcau2 with SMTP id au2so44742403igc.0
	for <poky@yoctoproject.org>; Mon, 23 Mar 2015 08:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rY8FZ6YJk8tB3mXXNXaqI1PODhvTML2Ag61xFNTPtZo=;
	b=uh9wmv5cJa4QP3Z5hzCPEYMi0Woa4EgT9uo2HbHOxB56BgaGrGSViTdm88sXUQa7TZ
	Ykm1sdE0NPAV7MtMnS4/xDwZfgpqixA+EELykW69LGIeD0iPzz7BcQ0UX5TMXyyB3nPv
	yQV9nmX3bRlpqCrKTfhHAw7uCEBHtdQh2kvt5rGx17breIfWHq2vYsdExGwMuYhh6/WP
	XDbyCM7Mfcj7Qb0+6Y1jPjzB4lVovhgSYLoDiUkPJ6vAbP3DHA1baH+QeRaGv0n2/rwl
	hleCCSSQZjy8puMhyGeti6i5J+jBCyXRE+1M15WANnLfZ2+Q9T/QN6WoPQL4XVgBLqSm
	Rdnw==
MIME-Version: 1.0
X-Received: by 10.107.157.82 with SMTP id g79mr51291517ioe.72.1427123104593;
	Mon, 23 Mar 2015 08:05:04 -0700 (PDT)
Received: by 10.50.117.7 with HTTP; Mon, 23 Mar 2015 08:05:03 -0700 (PDT)
Received: by 10.50.117.7 with HTTP; Mon, 23 Mar 2015 08:05:03 -0700 (PDT)
In-Reply-To: <1427113748.5800.7.camel@picadillo>
References: <cover.1427082458.git.tom.zanussi@linux.intel.com>
	<CAMKF1sr8QU8CauiopAYKNF++cfjWr3Veax-PVRtBX3AFjEeCqQ@mail.gmail.com>
	<1427113748.5800.7.camel@picadillo>
Date: Mon, 23 Mar 2015 08:05:03 -0700
Message-ID: <CAMKF1spCkO4pb5UCu1kv7dYFh2kiEAu2gm03-Q6bO2TScaFe8A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Tom Zanussi <tom.zanussi@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] yocto-bsp updates for 1.8
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
X-List-Received-Date: Mon, 23 Mar 2015 15:05:11 -0000
Content-Type: multipart/alternative; boundary=001a11408e50b33edb0511f5fd62

--001a11408e50b33edb0511f5fd62
Content-Type: text/plain; charset=UTF-8

On Mar 23, 2015 5:29 AM, "Tom Zanussi" <tom.zanussi@linux.intel.com> wrote:
>
> Hi Khem,
>
> yocto-bsp updates are supposed to match the set of kernels supported for
> a new release.  For 1.8, that includes 3.14, which is the most recent
> LTSI kernel.  1.7 is still available for people who need the old (3.10)
> LTSI kernel.

So we do not support latest LTS it's only LTSI?

>
> Tom
>
>
> On Sun, 2015-03-22 at 22:01 -0700, Khem Raj wrote:
> > On Sun, Mar 22, 2015 at 9:24 PM, Tom Zanussi
> > <tom.zanussi@linux.intel.com> wrote:
> > > This is the yocto-bsp update for 1.8 (to the 3.19 kernel, and removing
> > > 3.10 and 3.17 support).
> >
> > why are we removing a LTSI (3.10) kernel ?
>
>

--001a11408e50b33edb0511f5fd62
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Mar 23, 2015 5:29 AM, &quot;Tom Zanussi&quot; &lt;<a href=3D"mailto:tom.=
zanussi@linux.intel.com">tom.zanussi@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; yocto-bsp updates are supposed to match the set of kernels supported f=
or<br>
&gt; a new release.=C2=A0 For 1.8, that includes 3.14, which is the most re=
cent<br>
&gt; LTSI kernel.=C2=A0 1.7 is still available for people who need the old =
(3.10)<br>
&gt; LTSI kernel.</p>
<p dir=3D"ltr">So we do not support latest LTS it&#39;s only LTSI?</p>
<p dir=3D"ltr">&gt;<br>
&gt; Tom<br>
&gt;<br>
&gt;<br>
&gt; On Sun, 2015-03-22 at 22:01 -0700, Khem Raj wrote:<br>
&gt; &gt; On Sun, Mar 22, 2015 at 9:24 PM, Tom Zanussi<br>
&gt; &gt; &lt;<a href=3D"mailto:tom.zanussi@linux.intel.com">tom.zanussi@li=
nux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; This is the yocto-bsp update for 1.8 (to the 3.19 kernel, an=
d removing<br>
&gt; &gt; &gt; 3.10 and 3.17 support).<br>
&gt; &gt;<br>
&gt; &gt; why are we removing a LTSI (3.10) kernel ?<br>
&gt;<br>
&gt;<br>
</p>

--001a11408e50b33edb0511f5fd62--
