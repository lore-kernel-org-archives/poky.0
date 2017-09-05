Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FF9BE00C89; Tue,  5 Sep 2017 03:26:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 630E8E00B67
	for <poky@yoctoproject.org>; Tue,  5 Sep 2017 03:26:53 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id j141so9746524ioj.4
	for <poky@yoctoproject.org>; Tue, 05 Sep 2017 03:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pTjxUietdJRR3ZB9teNozJMZYDILjgMJbHyfxf9VUKc=;
	b=b4uJtdowILjop6tewyNeaiJphzH/6rdb+p3QfbrlP5UYLJ3ZKhKOdp67f8h/MnwNxV
	gAxv9Q4RCddC+opcKTS3IxCAGeCuGzP/dUwbNdPdfzieCcQQdKJ1Rldz/aj8TeiQlsI/
	irSTzKdyIgFuQe7HmtA/LsPsfHbYRplneNbfCbMU5n/3aK6n78evvt27YAcD9H86YS2i
	0LfWcT6fFrom/n/o+llY7waYWns9EN3HX9ELYw9vrKuBmEP2NIZUiA5Q3a6Akn53bpQB
	t+GCemmiMSVaHKV3I/gxzKTRx+RuXDqg/t1yzQ7bmlVeuyDtiiQNtRTBEHD7DV12Mkak
	3nJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pTjxUietdJRR3ZB9teNozJMZYDILjgMJbHyfxf9VUKc=;
	b=XEAhC9uA2b/BwhieZ1qjkkjBWOeQ0a83RXNuws20LQHVgvrn5J0itaZPpmTGC/H9IO
	Zz2lLMd3+IicLV7xxKwYS4hw4QLir9Irl/3P8pmjMTG/ZYR4XJi2IHr9VElP80aN8qu2
	vf4fZ8RDuINmnTyfLpoVz7xjw8fAbh4Nr8TlhVJV7NSQZrwIqBr5Y+i1iqRMVBZxgFJ4
	PakOv4vB5JChQnJOTA0cueer5UUA9YAPyiM+fqtqZ3zmK4bZKN4dTnsDupmTXZEYEx/F
	SaxsGg/nqZ0QgP7any8Ml7gBrehG3oi6/QqjF7ssbv6KIHxHEA5gut77xkqbX8mNpU01
	cIsw==
X-Gm-Message-State: AHPjjUiX5OL6R/tXhe/hLIGc9BfhxEB2ndjrfFWbyiMJlM8rcurfm6JH
	41wWjJM4YWcUsdtecLreSQvYWBpm1RhW
X-Google-Smtp-Source: ADKCNb7tzaZ8ohZHYLVWIhvtM2g4oDQf2pHmuWVxD649uTOu/miCjNa853gLYhzWYE91DWXVtBZCtMbDrqIQGOVbmcM=
X-Received: by 10.36.71.208 with SMTP id t199mr758263itb.64.1504607213449;
	Tue, 05 Sep 2017 03:26:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.215 with HTTP; Tue, 5 Sep 2017 03:26:22 -0700 (PDT)
In-Reply-To: <8caf136aac8d4d66a542ef056a92c331@ahr206s.basler.corp>
References: <8caf136aac8d4d66a542ef056a92c331@ahr206s.basler.corp>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 5 Sep 2017 13:26:22 +0300
Message-ID: <CAHiDW_EmDLUxb4q4g2e4cJR6AYEP6XEYMyMiiQQ=PgA7=JpKoA@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Sep 2017 10:26:55 -0000
Content-Type: multipart/alternative; boundary="001a1145b33a7c19b405586eaa76"

--001a1145b33a7c19b405586eaa76
Content-Type: text/plain; charset="UTF-8"

On 5 September 2017 at 11:36, Koeller, Thomas <Thomas.Koeller@baslerweb.com>
wrote:

> Hello all,
>
> I have been struggling with a problem for a couple of days now, without
> success so far. Hope somebody on this list can help.
>
> I have two recipes, let's call them recipe_a and recipe_b (I am not
> allowed to share the actual recipes for legal reasons). recipe_a depends on
> recipe b; there is a line reading 'DEPENDS = "... recipe_b ..." in
> recipe_a.bb. Whenever I invoke recipe_b directly (bitbake recipe_b), all
> is well and recipe_b produces the expected results. In particular, the
> populate_sysroot task places a number of header files in the sysroot
> directory. If, however, I do 'bitbake recipe_a', I find that, while several
> tasks from recipe_b are executed, populate_sysroot is obviously not among
> them. I should probably mention that recipe_b inherits from the qprebuilt
> class.
>

qprebuilt is not a class I'm aware of -- it might be a good idea to review
the class.

I noticed that recipe_a sets a variable 'PREBUILT = "1"', which does not
> appear to be used anywhere and is not mentioned in the yocto docs. Maybe
> this has something to do with the problem, or maybe not.
>
> I'd be grateful for any information that might be useful in solving this
> problem.
>

You didn't mention the Yocto version. Sysroot functionality has changed
quite a bit in recent releases so you should do that. The changes also mean
that unusual sysroot tricks written a few releases back will not work as is
on more recent releases. See
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#migration-2.3-recipe-specific-sysroots
for more details

On latest release "bitbake -g -u taskexp recipe-a" will give you a UI for
browsing task dependencies. You should find "recipe-a.do_configure"
depending "recipe-a.do_prepare_recipe_sysroot", and that depending on
"recipe-b.do_populate_sysroot". If this is not the case then it seems
likely something in the recipe (or its inherits) is undoing that dependency.

 - Jussi

--001a1145b33a7c19b405586eaa76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 5=
 September 2017 at 11:36, Koeller, Thomas <span dir=3D"ltr">&lt;<a href=3D"=
mailto:Thomas.Koeller@baslerweb.com" target=3D"_blank">Thomas.Koeller@basle=
rweb.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hello all,<br>
<br>
I have been struggling with a problem for a couple of days now, without suc=
cess so far. Hope somebody on this list can help.<br>
<br>
I have two recipes, let&#39;s call them recipe_a and recipe_b (I am not all=
owed to share the actual recipes for legal reasons). recipe_a depends on re=
cipe b; there is a line reading &#39;DEPENDS =3D &quot;... recipe_b ...&quo=
t; in <a href=3D"http://recipe_a.bb" rel=3D"noreferrer" target=3D"_blank">r=
ecipe_a.bb</a>. Whenever I invoke recipe_b directly (bitbake recipe_b), all=
 is well and recipe_b produces the expected results. In particular, the pop=
ulate_sysroot task places a number of header files in the sysroot directory=
. If, however, I do &#39;bitbake recipe_a&#39;, I find that, while several =
tasks from recipe_b are executed, populate_sysroot is obviously not among t=
hem. I should probably mention that recipe_b inherits from the qprebuilt cl=
ass.<br></blockquote><div><br></div><div>qprebuilt is not a class I&#39;m a=
ware of -- it might be a good idea to review the class.</div><div><br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
I noticed that recipe_a sets a variable &#39;PREBUILT =3D &quot;1&quot;&#39=
;, which does not appear to be used anywhere and is not mentioned in the yo=
cto docs. Maybe this has something to do with the problem, or maybe not.<br=
>
<br>
I&#39;d be grateful for any information that might be useful in solving thi=
s problem.<br></blockquote><div><br></div><div>You didn&#39;t mention the Y=
octo version. Sysroot functionality has changed quite a bit in recent relea=
ses so you should do that. The changes also mean that unusual sysroot trick=
s written a few releases back will not work as is on more recent releases. =
See=C2=A0<a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref=
-manual.html#migration-2.3-recipe-specific-sysroots">http://www.yoctoprojec=
t.org/docs/current/ref-manual/ref-manual.html#migration-2.3-recipe-specific=
-sysroots</a> for more details</div><div><br></div><div>On latest release &=
quot;bitbake -g -u taskexp recipe-a&quot; will give you a UI for browsing t=
ask dependencies. You should find &quot;recipe-a.do_configure&quot; dependi=
ng &quot;recipe-a.do_prepare_recipe_sysroot&quot;, and that depending on &q=
uot;recipe-b.do_populate_sysroot&quot;. If this is not the case then it see=
ms likely something in the recipe (or its inherits) is undoing that depende=
ncy.</div><div><br></div><div>=C2=A0- Jussi<br></div></div></div></div>

--001a1145b33a7c19b405586eaa76--
