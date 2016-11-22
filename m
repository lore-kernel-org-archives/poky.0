Return-Path: <rami@modularity.co.il>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D96EE004E5; Tue, 22 Nov 2016 12:23:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F1A6E0049D
	for <poky@yoctoproject.org>; Tue, 22 Nov 2016 12:23:15 -0800 (PST)
Received: by mail-ua0-f174.google.com with SMTP id b35so24519604uaa.3
	for <poky@yoctoproject.org>; Tue, 22 Nov 2016 12:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=modularity-co-il.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=E2HlNxDI8PfaMfDe98g2W959G7BqHzk2wey+b/pssd8=;
	b=t2DCaKT6osRpgHuiFyQDCJfavj3OSLpMpncqSocG9tX2XI5nypYhLmTyr7GpHh3Z+k
	t7XvVkiqetixTFlznMkzQQLQ5J5OjQqdBFdFybqTYKkHKZkdIlF+OomGdHRnsoqAITdA
	I37IHo4p/yB3hrOZ1GTmPekL4wQT1smOaG0wSRMASnUEwhwKhGZQDZRFujE3XSgqPrac
	wX+vnoia+eLWFZ3Y06SaR74ATsqSiIldZdvMEQesl4u/SeDZQUWxY29KgCwzCxxfsJt0
	UoCGjLnK0/G0tmNuMrxO54v/5QMgurBZ0mCOfTYs8uBJqGSQU2uJipnMjLbWKcxaZBsH
	v3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=E2HlNxDI8PfaMfDe98g2W959G7BqHzk2wey+b/pssd8=;
	b=JUgaWQIbqOGIrvTyBur0Far0L32goxWRvO79k1ufMBsq5hKE6l83HJz4l59cUcHbTm
	XhYdMDWjoJTCx46k9zrHgOAqSizVzqCPS7m2MxGksh5hVDordTfdkpwB5x+Hw1s8G3+3
	oveuvAZ8cPrTAmyQDIYgZuPkFLsTGoZ77X5rC7enaIMtE5Jj4DFKjKtlRxLfChZvFZ5+
	aAIXbJfomS0LUIyfiIhjAB1O9oB9Dp+QwwPLfgRLqxhk/u2rkBDAFm/2N7BjJ/BzZJe2
	b0swbLpHQjkoHPuVO9qUP+qQNo4yg7QZPJ/2tI5gRK5eNM4XHAd1bL4+4eEejLzsxlku
	d8fg==
X-Gm-Message-State: AKaTC02uU2LwaLbzcAs5BYdoi2ECd6vYyUGgRgrvjL+ibCwvf+ggbDtg0Tmp9TBQPW3Ko9qFSKVBHdS1NyXdBw==
X-Received: by 10.159.35.118 with SMTP id 109mr11999731uae.113.1479846195170; 
	Tue, 22 Nov 2016 12:23:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.71.1 with HTTP; Tue, 22 Nov 2016 12:23:14 -0800 (PST)
From: Rami Rosenbaum <rami@modularity.co.il>
Date: Tue, 22 Nov 2016 22:23:14 +0200
Message-ID: <CAFDxLae=RkJJTrjUbjiEj419hyHiRukdyOqgqx_mtUO8dPYTBw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: BB_NO_NETWORK - _git.bb recipies
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
X-List-Received-Date: Tue, 22 Nov 2016 20:23:19 -0000
Content-Type: multipart/alternative; boundary=001a11357dd6c9202d0541e98adc

--001a11357dd6c9202d0541e98adc
Content-Type: text/plain; charset=UTF-8

Hi,
I'm trying to create my own source download mirror to my Yocto build.
It's an Atmel-based board, I'm using the meta-atmel layer.
I've made changes in the *at91bootstrap*, *u-boot-at91* and *linux-at91*
(I'm holding these versions on my SVN).
So I added a custom meta-xxx layer, with duplicates of these recipes,
pointing to my repo.
BBFILE_PRIORITY of meta-xxx is higher than meta-atmel !!!

To my problem:
After running a successful build, I moved all tarballs to my
SOURCE_MIRROR_URL.
I added the *BB_NO_NETWORK* flag and ran the build.
I got the following error:
[yocto@yocto: build] > bitbake core-image-minimal
NOTE: Error during finalise of
*./meta-atmel/recipes-bsp/at91bootstrap/at91bootstrap_git.bb
<http://at91bootstrap_git.bb>*                              | ETA:  00:01:54
ERROR: ExpansionError during parsing ./meta-atmel/recipes-bsp/at91bootstrap/
at91bootstrap_git.bb: Failure expanding variable S: ExpansionError: Failure
expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which
triggered exception NetworkAccess: Network access disabled through
BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but
access requested with command git -c core.fsyncobjectfiles=0 ls-remote
git://github.com/linux4sam/at91bootstrap.git  (for url None)
Even though *my at91bootstrap*has higher priority, the atmel recipe (the _
git.bb version) was run, and needed network.
Here's *meta-atmel/recipes-bsp/at91bootstrap/at91bootstrap_git.bb
<http://at91bootstrap_git.bb>*:
require at91bootstrap.inc
DEFAULT_PREFERENCE = "-1"
SRCREV = "${AUTOREV}"
SRC_URI = "git://github.com/linux4sam/at91bootstrap.git;protocol=git \
          "
S = "${WORKDIR}/git"
PV = "3.7+git${SRCPV}"
LIC_FILES_CHKSUM =
"file://main.c;endline=27;md5=a2a70db58191379e2550cbed95449fbd"

If I remove the _git.bb recipes (*u-boot-at91* and *linux-at91* are the
same) - the *BB_NO_NETWORK* build works.

Is this a configuration problem of mine?
Is my conf/local.conf missing anything?
Is the meta-atmel recipe problematic?

I prefer not to touch the meta-atmel layer (though deleting those recipes
is so tempting).

I'm quite new to Yokto/poky, be nice :-)

--001a11357dd6c9202d0541e98adc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi,<br></div>I&#39=
;m trying to create my own source download mirror to my Yocto build.<br></d=
iv>It&#39;s an Atmel-based board, I&#39;m using the meta-atmel layer.<br></=
div>I&#39;ve made changes in the <b>at91bootstrap</b>, <b>u-boot-at91</b> a=
nd <b>linux-at91</b> (I&#39;m holding these versions on my SVN).<br></div>S=
o I added a custom meta-xxx layer, with duplicates of these recipes, pointi=
ng to my repo.<br></div>BBFILE_PRIORITY of meta-xxx is higher than meta-atm=
el !!!<br><br></div><div>To my problem:<br></div>After running a successful=
 build, I moved all tarballs to my SOURCE_MIRROR_URL.<br></div>I added the =
<b>BB_NO_NETWORK</b> flag and ran the build.<br>I got the following error:<=
br><div style=3D"margin-left:40px"><span style=3D"font-family:monospace,mon=
ospace">[yocto@yocto: build] &gt; bitbake core-image-minimal<br>NOTE: Error=
 during finalise of <b>./meta-atmel/recipes-bsp/at91bootstrap/<a href=3D"ht=
tp://at91bootstrap_git.bb">at91bootstrap_git.bb</a></b>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | ETA:=C2=A0 00:01:54<br>ERROR: ExpansionError during parsing ./meta=
-atmel/recipes-bsp/at91bootstrap/<a href=3D"http://at91bootstrap_git.bb">at=
91bootstrap_git.bb</a>: Failure expanding variable S: ExpansionError: Failu=
re expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} whi=
ch triggered exception NetworkAccess: Network access disabled through BB_NO=
_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but acces=
s requested with command git -c core.fsyncobjectfiles=3D0 ls-remote git://<=
a href=3D"http://github.com/linux4sam/at91bootstrap.git">github.com/linux4s=
am/at91bootstrap.git</a>=C2=A0 (for url None)</span><br></div>Even though <=
b>my at91bootstrap</b>has higher priority, the atmel recipe (the _<a href=
=3D"http://git.bb">git.bb</a> version) was run, and needed network.<br></di=
v>Here&#39;s <b>meta-atmel/recipes-bsp/at91bootstrap/<a href=3D"http://at91=
bootstrap_git.bb">at91bootstrap_git.bb</a></b>:<br><div><div><div><div styl=
e=3D"margin-left:40px"><span style=3D"font-family:monospace,monospace">requ=
ire at91bootstrap.inc<br>DEFAULT_PREFERENCE =3D &quot;-1&quot;<br>SRCREV =
=3D &quot;${AUTOREV}&quot;<br>SRC_URI =3D &quot;git://<a href=3D"http://git=
hub.com/linux4sam/at91bootstrap.git;protocol=3Dgit">github.com/linux4sam/at=
91bootstrap.git;protocol=3Dgit</a> \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &quot;<br>S =3D &quot;${WORKDIR}/git&quot;<br>PV =3D =
&quot;3.7+git${SRCPV}&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://main.c;end=
line=3D27;md5=3Da2a70db58191379e2550cbed95449fbd&quot;</span><br></div><br>=
</div><div>If I remove the _<a href=3D"http://git.bb">git.bb</a> recipes (<=
b>u-boot-at91</b> and <b>linux-at91</b> are the same) - the <b>BB_NO_NETWOR=
K</b> build works.<br></div><div><br>Is this a configuration problem of min=
e?<br></div><div>Is my conf/local.conf missing anything?<br></div><div>Is t=
he meta-atmel recipe problematic?<br><br></div><div>I prefer not to touch t=
he meta-atmel layer (though deleting those recipes is so tempting).<br><br>=
</div><div>I&#39;m quite new to Yokto/poky, be nice :-)<br></div></div></di=
v></div>

--001a11357dd6c9202d0541e98adc--
