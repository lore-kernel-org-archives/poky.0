Return-Path: <evadeflow@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 058B7E00F48; Fri,  2 Sep 2016 07:08:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (evadeflow[at]gmail.com)
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3607E00F3F
	for <poky@yoctoproject.org>; Fri,  2 Sep 2016 07:08:25 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id i184so38366128itf.1
	for <poky@yoctoproject.org>; Fri, 02 Sep 2016 07:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=74sAMocOCXacG4cmF5OOq6Y9JU8k0biRudBYbJCF7Ms=;
	b=wQbkZrwVZpfr9BU9BIAKg7yBst7yL/Zraf3c3sNdjMjX36j6Cki5akHSpIY6kxaDLM
	4AHbs+IXhUuHlFg7vjk4qmTCJscF3HGgMKC9uWyVYY4iRrOZM3ceXLQC7WJb/0pLtF3o
	Y8AjbJ41yOBJlyDLgqEyKL2oa/+A1UYnD8rccf8NtpPdy7lbRmhY2vyK6ICO2NH/4sYP
	zkP/OLC9NHWEo590bhTG8yEsp0wX1V9ocBSLOM5GJ0HXxvc4Fz5Va8kQAkAnNgOJUuJG
	WQ8Y4q7YacY+iliz89oV8bB08COikBrz2kZ5jUh18NqZ7b4xK4mG+KCkX9SECA20Nb2V
	Gi5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=74sAMocOCXacG4cmF5OOq6Y9JU8k0biRudBYbJCF7Ms=;
	b=PR2uZBQsTfOw53Nt0XUolDoS81bUZ0bg86WcSZZuiw9IsdFnwZl9/pmCu92JbvheUA
	8/B5zSiIauoRuyhMaKXkRwYPz20Z95E5KpkMxvXZClVs2uQj3duHFZv+4Pfcy2/e9zKP
	TzxSEEGgLinu8P3YvUNsdTJ6D+gRTY7P9bf3UM3l+I81m2wGlvyITZrct23XXDANfGYh
	/7q+LZojHf6gDILAkq+3aTYlS2h0qNGTcOe51eo6HZRd8rIJJ4UPKwAWln0ThvWlslig
	UD7cyR6SRfJ9aZZOtLDJm/tihCeEWgHDs3u+8vt35WOYH1sLWKPC0Rq5YP2PzdPuaHT+
	9mmQ==
X-Gm-Message-State: AE9vXwMNSi1nKQl6zx6Rw4ivIUUl4hEAAI4s0iWq2HX2bkVpl8YGiw1J2NPpmgfzAzLqDIB9Wv6NpHb+KChU7g==
X-Received: by 10.36.25.144 with SMTP id b138mr4969622itb.29.1472825304608;
	Fri, 02 Sep 2016 07:08:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.147.4 with HTTP; Fri, 2 Sep 2016 07:08:24 -0700 (PDT)
In-Reply-To: <CABcZANmtT7NNLNJOq=pBAnN5K6OjF-XyHS4OOPgnbHyDP6LK_g@mail.gmail.com>
References: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
	<CABcZANmtT7NNLNJOq=pBAnN5K6OjF-XyHS4OOPgnbHyDP6LK_g@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
Date: Fri, 2 Sep 2016 10:08:24 -0400
Message-ID: <CAMAb8ZOEiy_u4MtGF7xXMR9w8AYFwCPSTmbOZ70mBj7_e1gbSQ@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: Poky <poky@yoctoproject.org>
Subject: Re: When SRCREV is set to AUTOREV, what triggers (re-)fetching?
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
X-List-Received-Date: Fri, 02 Sep 2016 14:08:29 -0000
Content-Type: multipart/alternative; boundary=001a11405796190d61053b86dd7d

--001a11405796190d61053b86dd7d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> Add ${SRCPV} to your PV (see various recipes in oe-core for examples),
then it=E2=80=99ll know to re-run the tasks when srcrev changes.

Thanks for confirming that this is 'supposed' to work, that's great news!
Actually, I've already included SRCPV in PV. Here's my recipe, shorn of
comments and an uninteresting do_install_append() function:

```
LICENSE =3D "proprietary"
LIC_FILES_CHKSUM =3D
"file://LICENSE;md5=3Dcbbd27594afd089daa160d3a16dd515a"


PR =3D "r1"

SRCREV =3D "${AUTOREV}"
PVBASE :=3D "${PV}"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PVBASE}:"
PV =3D "${PVBASE}+${SRCPV}"

SRC_URI =3D "git://
10.226.155.208/evadeflow/myprog.git;protocol=3Dhttp;user=3Dmyusername:mypas=
sword
"

DEPENDS +=3D "boost taglib gstreamer rtl-sdr libusb1"
RDEPENDS_${PN} +=3D "bash rtl-sdr taglib"

S =3D "${WORKDIR}/git/src"
INSANE_SKIP_${PN} +=3D "dev-deps installed-vs-shipped"

inherit cmake
EXTRA_OECMAKE =3D "-DWITH_TESTS=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr"

PACKAGES =3D "${PN}-dbg ${PN}"
```

I've followed the examples I could find to the best of my ability, but what
I'm seeing is: bitbake never bothers to check whether the `HEAD` revision
has changed, no matter how many commits I push to upstream. I'm really not
sure where to begin troubleshooting this. Since I don't have a better idea,
I guess I'll blow away my cache entirely and start from a clean build.
(Brute force FTW! `:-])

Anybody see what I might be doing wrong?


On Thu, Sep 1, 2016 at 6:16 PM, Christopher Larson <clarson@kergoth.com>
wrote:

>
> On Thu, Sep 1, 2016 at 3:14 PM, Evade Flow <evadeflow@gmail.com> wrote:
>
>> I have a recipe that sets `SRCREV =3D ${AUTOREV}`, organized almost exac=
tly
>> like Rob Calhoun's template from this thread:
>>
>>   - https://lists.yoctoproject.org/pipermail/yocto/2013-November
>> /017042.html
>>
>> It works as I expect, in that running `bitbake myprog` results in output
>> like:
>>
>> ```
>> Currently 1 running tasks (2441 of 2447):
>> 0: myprog-1.0.0+gitAUTOINC+91b8e42702-r0 do_install (pid 17307)
>> ```
>>
>> However, if I push a change to the upstream so that the `HEAD` revision
>> moves, and immediately re-run `bitbake myprog`, I get:
>>
>> ```
>> NOTE: Preparing RunQueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 2447 tasks of which 2447 didn't need to b=
e
>> rerun and all succeeded.
>> NOTE: Writing buildhistory
>>
>> Summary: There were 8 WARNING messages shown.
>> ```
>>
>> My hope was that bitbake would pull the new `HEAD` and rebuild, but it
>> seems 'stuck' on the revision it built first. Are my expectations for ho=
w
>> `AUTOREV` ought to work flawed? If so... what commands can I use to make
>> bitbake re-fetch the source?
>>
>
> Add ${SRCPV} to your PV (see various recipes in oe-core for examples),
> then it=E2=80=99ll know to re-run the tasks when srcrev changes.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>

--001a11405796190d61053b86dd7d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>&gt; Add ${SRCPV} to your PV (see various r=
ecipes in oe-core for examples), then it=E2=80=99ll know to re-run the task=
s when srcrev changes.<br><br></div>Thanks for confirming that this is &#39=
;supposed&#39; to work, that&#39;s great news! Actually, I&#39;ve already i=
ncluded SRCPV in PV. Here&#39;s my recipe, shorn of comments and an uninter=
esting do_install_append() function:<br><br>```<br>LICENSE =3D &quot;propri=
etary&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dcbbd27594afd=
089daa160d3a16dd515a&quot;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br>PR =3D &quot;r1&quot; <br><br>SRCREV =
=3D &quot;${AUTOREV}&quot;<br>PVBASE :=3D &quot;${PV}&quot;<br>FILESEXTRAPA=
THS_prepend :=3D &quot;${THISDIR}/${PN}-${PVBASE}:&quot;<br>PV =3D &quot;${=
PVBASE}+${SRCPV}&quot;<br><br>SRC_URI =3D &quot;git://<a href=3D"http://10.=
226.155.208/evadeflow/myprog.git;protocol=3Dhttp;user=3Dmyusername:mypasswo=
rd">10.226.155.208/evadeflow/myprog.git;protocol=3Dhttp;user=3Dmyusername:m=
ypassword</a>&quot;<br><br>DEPENDS +=3D &quot;boost taglib gstreamer rtl-sd=
r libusb1&quot;<br>RDEPENDS_${PN} +=3D &quot;bash rtl-sdr taglib&quot;<br><=
br>S =3D &quot;${WORKDIR}/git/src&quot;<br>INSANE_SKIP_${PN} +=3D &quot;dev=
-deps installed-vs-shipped&quot;<br><br>inherit cmake<br>EXTRA_OECMAKE =3D =
&quot;-DWITH_TESTS=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr&quot;<br><br>PACKAGE=
S =3D &quot;${PN}-dbg ${PN}&quot;<br>```<br><br></div>I&#39;ve followed the=
 examples I could find to the best of my ability, but what I&#39;m seeing i=
s: bitbake never bothers to check whether the `HEAD` revision has changed, =
no matter how many commits I push to upstream. I&#39;m really not sure wher=
e to begin troubleshooting this. Since I don&#39;t have a better idea, I gu=
ess I&#39;ll blow away my cache entirely and start from a clean build.=C2=
=A0 (Brute force FTW! `:-])<br><br></div>Anybody see what I might be doing =
wrong?<br><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Thu, Sep 1, 2016 at 6:16 PM, Christopher Larson <span dir=3D"ltr">&lt=
;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote"=
>On Thu, Sep 1, 2016 at 3:14 PM, Evade Flow <span dir=3D"ltr">&lt;<a href=
=3D"mailto:evadeflow@gmail.com" target=3D"_blank">evadeflow@gmail.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><div><div>I ha=
ve a recipe that sets `SRCREV =3D ${AUTOREV}`, organized almost exactly lik=
e Rob Calhoun&#39;s template from this thread:<br><br>=C2=A0 - <a href=3D"h=
ttps://lists.yoctoproject.org/pipermail/yocto/2013-November/017042.html" ta=
rget=3D"_blank">https://lists.yoctoproject.org<wbr>/pipermail/yocto/2013-No=
vember<wbr>/017042.html</a><br><br></div>It works as I expect, in that runn=
ing `bitbake myprog` results in output like:<br><br>```<br>Currently 1 runn=
ing tasks (2441 of 2447):<br>0: myprog-1.0.0+gitAUTOINC+91b8e4<wbr>2702-r0 =
do_install (pid 17307)<br>```<br></div><br></div>However, if I push a chang=
e to the upstream so that the `HEAD` revision moves, and immediately re-run=
 `bitbake myprog`, I get:<br><br>```<br>NOTE: Preparing RunQueue<br>NOTE: E=
xecuting SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>NOTE: Tasks Su=
mmary: Attempted 2447 tasks of which 2447 didn&#39;t need to be rerun and a=
ll succeeded.<br>NOTE: Writing buildhistory<br><br>Summary: There were 8 WA=
RNING messages shown.<br>```<br><br></div>My hope was that bitbake would pu=
ll the new `HEAD` and rebuild, but it seems &#39;stuck&#39; on the revision=
 it built first. Are my expectations for how `AUTOREV` ought to work flawed=
? If so... what commands can I use to make bitbake re-fetch the source?<br>=
</blockquote></div><br></span>Add ${SRCPV} to your PV (see various recipes =
in oe-core for examples), then it=E2=80=99ll know to re-run the tasks when =
srcrev changes.<span class=3D"HOEnZb"><font color=3D"#888888"><br>-- <br><d=
iv data-smartmail=3D"gmail_signature">Christopher Larson<br>clarson at kerg=
oth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - =
Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</font></span></div></div>
</blockquote></div><br></div>

--001a11405796190d61053b86dd7d--
