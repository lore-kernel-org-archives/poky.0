Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8847AE00C78; Wed,  6 Sep 2017 01:16:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6631DE00BB7
	for <poky@yoctoproject.org>; Wed,  6 Sep 2017 01:16:12 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id p6so8195453itb.1
	for <poky@yoctoproject.org>; Wed, 06 Sep 2017 01:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BMwLDtgU6njwjECpObITwJxi8oC3Xuh2rJxetW+QlB0=;
	b=NruAmNV2c0w+MV7m7rq6b+h0cxv9E/sA6OCz22iYq1Z18WSVW6dq1pWWw4n5EJu8LA
	5tCoI42pnFoTKXoXc7iOBSYcm95LpFcapVNkEMJ5AKju1UIJ/HP/3I1P3sdPKgBECdRh
	C6AV4EbesJ2JwTeO6noqiDROYWg5PQIKOWOG4Be4rIu1gNFYUUatebVpGJBk78Y0PEeP
	KZdpa8s4RCpHlIQnHh8u93Oy/8USTlUGgMUDSU93/RDFvIq36QXWZFIQQAlSjbS3SHt+
	7pyNCFOr/mdN35imQw7ocsJBjFlcPgV1+sB9BBLEb6KOXmCtFdAsyhweX9WeR/NknX3W
	GjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BMwLDtgU6njwjECpObITwJxi8oC3Xuh2rJxetW+QlB0=;
	b=id+Ml+TTwaxQSoExv/qkiKIpNf28WV35Cr0iGRYePV32BhuaqocVG9vMXLGsYK+W7J
	DHbTOyHLBWTkT90bJW2WANCKfYqNlZ9M2QbdfOGcoFqhZUhpr/LrhaL5ABN5hX/RVJEB
	eZNrQjz0kW1DoUdYJiUa0FxOhBX6daKjD88nLltI9017A9tEfcrWHXldgYUVtyc2hmSS
	pZZgQUSahVmGvHKIItyy48QJovoBBfz1OtpQUZOOmUnyfacTN+Ttan9pKxW/+yczVacM
	YnVxMY6bW+g1imTFT2JPZIe4btL7L9i8DIN0k3s0k2UZh+U1K+JBzdN0YBb93HMYT6c0
	8Vdw==
X-Gm-Message-State: AHPjjUhHVJzofEqhIlaOZWw6hu/nLOsZhhx4vwUjZ6U7E29j0A2hhvYG
	hrOzVMJoWyjtWBnFWktQ6dIfFNimMpYZ
X-Google-Smtp-Source: ADKCNb6yktL2uPJ4fqM0e55F3F2VQGJB0UUpSv/IlVNeZddqXmwaG+Kw76C2L+gP9DEodtx88daO4d4kM4OkuPrfaiw=
X-Received: by 10.36.71.208 with SMTP id t199mr2401480itb.64.1504685771824;
	Wed, 06 Sep 2017 01:16:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.215 with HTTP; Wed, 6 Sep 2017 01:15:41 -0700 (PDT)
In-Reply-To: <34fac4a1e7ae40e781523234d14d26d4@ahr206s.basler.corp>
References: <8caf136aac8d4d66a542ef056a92c331@ahr206s.basler.corp>
	<CAHiDW_EmDLUxb4q4g2e4cJR6AYEP6XEYMyMiiQQ=PgA7=JpKoA@mail.gmail.com>
	<34fac4a1e7ae40e781523234d14d26d4@ahr206s.basler.corp>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 6 Sep 2017 11:15:41 +0300
Message-ID: <CAHiDW_HYqfekH2K+RaWGoaj-eBAQ8oMtvXzvhr2ChKTqOCkecQ@mail.gmail.com>
To: "Koeller, Thomas" <Thomas.Koeller@baslerweb.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Dependency problem
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
X-List-Received-Date: Wed, 06 Sep 2017 08:16:13 -0000
Content-Type: multipart/alternative; boundary="001a1145b33aedd339055880f45a"

--001a1145b33aedd339055880f45a
Content-Type: text/plain; charset="UTF-8"

On 5 September 2017 at 19:49, Koeller, Thomas <Thomas.Koeller@baslerweb.com>
wrote:

> You didn't mention the Yocto version. Sysroot functionality has changed
> quite a bit in recent releases so you should do that. The changes also mean
> that unusual
> > sysroot tricks written a few releases back will not work as is on more
> recent releases. See
> > http://www.yoctoproject.org/docs/current/ref-manual/ref-
> manual.html#migration-2.3-recipe-specific-sysroots for more details
>
> BitBake tells me that I am on version 1.28.
>


Bitbake 1.28 was included in Yocto 2.0 which is four releases (or two
years) behind latest release: This means the recipe specific sysroots are
not something you need to care about (and also that you need to be careful
to not follow current documentation regarding sysroots).


> On latest release "bitbake -g -u taskexp recipe-a" will give you a UI for
> browsing task dependencies. You should find "recipe-a.do_configure"
> depending
> > "recipe-a.do_prepare_recipe_sysroot", and that depending on
> "recipe-b.do_populate_sysroot". If this is not the case then it seems
> likely something in the recipe
> > (or its inherits) is undoing that dependency.
>
> I got a step further. Looking at the log files produced by building
> recipe_a, I cannot find one for the do_configure task, which seems to
> indicate that no
> such task was ever executed. This would explain why the dependency did not
> work, but leads to the question why do_configure did not run.
> Any idea where I should look?
>

This is probably something your recipe does (e.g. via inheriting
bin_package or maybe using do_configure[noexec] = "1". You'll have to
decide if the missing do_configure is intended and if it is, maybe look at
the dependency chain of the task that actually fails because sysroot isn't
populated.

I'd really like to suggest putting effort into fixing the legal issues that
prevent you from sharing your recipes... There may be people on this list
who can debug issues like this without seeing the recipe but I can
understand how it feels like a bad use of their time and I hope you can too.

Cheers,
  Jussi

--001a1145b33aedd339055880f45a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 5=
 September 2017 at 19:49, Koeller, Thomas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:Thomas.Koeller@baslerweb.com" target=3D"_blank">Thomas.Koeller@basle=
rweb.com</a>&gt;</span> wrote:</div><div class=3D"gmail_quote"><br></div><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<span class=3D"gmail-">
&gt; You didn&#39;t mention the Yocto version. Sysroot functionality has ch=
anged quite a bit in recent releases so you should do that. The changes als=
o mean that unusual<br>
&gt; sysroot tricks written a few releases back will not work as is on more=
 recent releases. See<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-man=
ual.html#migration-2.3-recipe-specific-sysroots" rel=3D"noreferrer" target=
=3D"_blank">http://www.yoctoproject.org/<wbr>docs/current/ref-manual/ref-<w=
br>manual.html#migration-2.3-<wbr>recipe-specific-sysroots</a> for more det=
ails<br>
<br>
</span>BitBake tells me that I am on version 1.28.<br></blockquote><div><br=
></div><div><br></div><div>Bitbake 1.28 was included in Yocto 2.0 which is =
four releases (or two years) behind latest release: This means the recipe s=
pecific sysroots are not something you need to care about (and also that yo=
u need to be careful to not follow current documentation regarding sysroots=
).</div><div>=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><span class=3D"gmail-">
&gt; On latest release &quot;bitbake -g -u taskexp recipe-a&quot; will give=
 you a UI for browsing task dependencies. You should find &quot;recipe-a.do=
_configure&quot; depending<br>
&gt; &quot;recipe-a.do_prepare_recipe_<wbr>sysroot&quot;, and that dependin=
g on &quot;recipe-b.do_populate_sysroot&quot;<wbr>. If this is not the case=
 then it seems likely something in the recipe<br>
&gt; (or its inherits) is undoing that dependency.<br>
<br>
</span>I got a step further. Looking at the log files produced by building =
recipe_a, I cannot find one for the do_configure task, which seems to indic=
ate that no<br>
such task was ever executed. This would explain why the dependency did not =
work, but leads to the question why do_configure did not run.<br>
Any idea where I should look?<br></blockquote><div><br></div><div>This is p=
robably something your recipe does (e.g. via inheriting bin_package or mayb=
e using do_configure[noexec] =3D &quot;1&quot;. You&#39;ll have to decide i=
f the missing do_configure is intended and if it is, maybe look at the depe=
ndency chain of the task that actually fails because sysroot isn&#39;t popu=
lated.</div><div><br></div><div>I&#39;d really like to suggest putting effo=
rt into fixing the legal issues that prevent you from sharing your recipes.=
.. There may be people on this list who can debug issues like this without =
seeing the recipe but I can understand how it feels like a bad use of their=
 time and I hope you can too.</div><div><br></div><div>Cheers,</div><div>=
=C2=A0 Jussi =C2=A0</div><div>=C2=A0</div></div></div></div>

--001a1145b33aedd339055880f45a--
