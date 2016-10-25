Return-Path: <osborn.steven@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B3AAE00951; Mon, 24 Oct 2016 22:55:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (osborn.steven[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4DB9E00912
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 22:55:44 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id x11so45261723qka.1
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 22:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xqkMImTwNDDkhJe3QeQ/zQLIBbdYvXpeL9Pv0JrA5yQ=;
	b=ETWVqpvmz51tyjodAgDxgvBy6h/XI/lfvoAVjx4uGGUjZOwYHY0pwVEAbE4qhuoIdU
	/dEJMCh9S3OaJT0J51jV9Gy05ABgEhcsNGLiX6tpcbgLuz9kXBEIOyWiGMaQ4OgSuHgv
	Dht5OWr3Ws6kPdOUqGpV+BVV0M96lH0KDTb0+UKCnI7S7/oqOeyTYK9LAWef3E4teMRY
	6cq/6TMrUKTN1iGNTrCP8WVFDi+ghEbXImrr8mZEsPad9PTbDX1NIsfZTTcrL9//sbqW
	OyqWrmYsEcoUlbFeE4KD+F63USzlpomnTehCXpIlL2Vg0T3JimPAkx++EsDAzBPcNk18
	gF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xqkMImTwNDDkhJe3QeQ/zQLIBbdYvXpeL9Pv0JrA5yQ=;
	b=NtPibNpp3bawpNaMWefi0Q6KScsoP+Pvl1e41SaVoLaoSKxvzVy+mWekZ7FEX/nJ81
	2qAxDf39KnunNuaIAcjYxsVrcFa384NyAhXPo7K79z3LexUBzbejifWCTwrXNjwTNbbG
	BAnItVH33KMcWyP7fXLfE7hA3ORBf3EafnF+Aea4efrmBMJoTi18DpZQyuX1pV7kJzOg
	miSISj1fuaaVnUcT8G9kqLJ1OBsXwy8HNNIgr2UHjOycm3GAKa2f9OYcgfYZZ7Li3ueU
	orveoTZ7JnjwZ+nn+JVO+/5yL6E+Irh+Huu9WYUhsYoRVAKSXcHv7Vda3s+q7M9bs5Wr
	So3Q==
X-Gm-Message-State: ABUngveF8IcwxqIYmIT3GKVFTw3PmfAwLOO6svbCRx7mrVyaaze8FuKvXtRRcrQlTfaR8yAd33Wd4QM1maNQmA==
X-Received: by 10.55.155.7 with SMTP id d7mr9223507qke.81.1477374943333; Mon,
	24 Oct 2016 22:55:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.46.84 with HTTP; Mon, 24 Oct 2016 22:55:42 -0700 (PDT)
In-Reply-To: <CAMKF1soZfAUoXz0_0dh7j=H8dfQO2EpF2XUvWqJaX63QF0zY1g@mail.gmail.com>
References: <CAA0Zw-yG86gejw2TT0Ly8AJ5MMcFV-NP7Q6S=BkbtyjeVqQ_hQ@mail.gmail.com>
	<CAMKF1soZfAUoXz0_0dh7j=H8dfQO2EpF2XUvWqJaX63QF0zY1g@mail.gmail.com>
From: Steven Osborn <osborn.steven@gmail.com>
Date: Mon, 24 Oct 2016 22:55:42 -0700
Message-ID: <CAA0Zw-xmfxKV=eu_c2Qdsdco3FeLWUdAeLGdDp7RBQu7hc=z8Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Poky issues
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
X-List-Received-Date: Tue, 25 Oct 2016 05:55:50 -0000
Content-Type: multipart/alternative; boundary=94eb2c06016ab29c07053faa2809

--94eb2c06016ab29c07053faa2809
Content-Type: text/plain; charset=UTF-8

bumping up the RAM did the trick.  Now I'm getting a checksum error tough.

ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: QA Issue: mender:
The LIC_FILES_CHKSUM does not match for
file://LIC_FILES_CHKSUM.sha256;md5=e304da41de5b57ce5b4601b53b1052b6
mender: The new md5 checksum is 5d7dda2920f25253c9a3af5c28b10fb2
mender: Check if the license information has changed in
/home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/git/LIC_FILES_CHKSUM.sha256
to verify that the LICENSE value "Apache-2.0 & BSD-2-Clause & BSD-3-Clause
& MIT & OLDAP-2.8" remains valid [license-checksum]
ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Fatal QA errors
found, failing task.
ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Function failed:
do_qa_configure
ERROR: Logfile of failure stored in:
/home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/temp/log.do_configure.23139
ERROR: Task 314
(/home/steven/Projects/iotas/poky/meta-mender/recipes-mender/mender/
mender_0.1.bb, do_configure) failed with exit code '1'


--
Steven Osborn
http://lolsborn.com

On Mon, Oct 24, 2016 at 5:29 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Oct 24, 2016 at 4:39 PM, Steven Osborn <osborn.steven@gmail.com>
> wrote:
> > I'm trying to get a beaglebone build going and running into this issue.
> > I've tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers would
> be
> > really appreciated.  I'm pretty new to Yocto & bitbake.
> >
> > https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7753201
>
> it has
> /bin/bash: line 1: 43546 Killed build/genautomata
> ../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/common.md
> ../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/config/arm/
> arm.md
> insn-conditions.md > tmp-automata.c
> make[1]: *** [s-automata] Error 137
>
> how much ram do you have on your build machine ?
> >
> > --
> > Steven Osborn
> > http://lolsborn.com
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
>

--94eb2c06016ab29c07053faa2809
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">bumping up the RAM did the trick.=C2=A0 Now I&#39;m gettin=
g a checksum error tough.<br><br>ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0=
 do_configure: QA Issue: mender: The LIC_FILES_CHKSUM does not match for fi=
le://LIC_FILES_CHKSUM.sha256;md5=3De304da41de5b57ce5b4601b53b1052b6<br>mend=
er: The new md5 checksum is 5d7dda2920f25253c9a3af5c28b10fb2<br>mender: Che=
ck if the license information has changed in /home/steven/Projects/iotas/po=
ky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/mender/0.1+gitAUTOINC+=
72069ff5d0-r0/git/LIC_FILES_CHKSUM.sha256 to verify that the LICENSE value =
&quot;Apache-2.0 &amp; BSD-2-Clause &amp; BSD-3-Clause &amp; MIT &amp; OLDA=
P-2.8&quot; remains valid [license-checksum]<br>ERROR: mender-0.1+gitAUTOIN=
C+72069ff5d0-r0 do_configure: Fatal QA errors found, failing task.<br>ERROR=
: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Function failed: do_qa_=
configure<br>ERROR: Logfile of failure stored in: /home/steven/Projects/iot=
as/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/mender/0.1+gitAUT=
OINC+72069ff5d0-r0/temp/log.do_configure.23139<br>ERROR: Task 314 (/home/st=
even/Projects/iotas/poky/meta-mender/recipes-mender/mender/<a href=3D"http:=
//mender_0.1.bb">mender_0.1.bb</a>, do_configure) failed with exit code &#3=
9;1&#39;<br><br></div><div class=3D"gmail_extra"><br clear=3D"all"><div><di=
v class=3D"gmail_signature" data-smartmail=3D"gmail_signature">--<br>Steven=
 Osborn<br><a href=3D"http://lolsborn.com" target=3D"_blank">http://lolsbor=
n.com</a></div></div>
<br><div class=3D"gmail_quote">On Mon, Oct 24, 2016 at 5:29 PM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Mon, Oct 24, 2016 at 4:39 PM, Steven Osborn &lt;<a hre=
f=3D"mailto:osborn.steven@gmail.com">osborn.steven@gmail.com</a>&gt; wrote:=
<br>
&gt; I&#39;m trying to get a beaglebone build going and running into this i=
ssue.<br>
&gt; I&#39;ve tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers=
 would be<br>
&gt; really appreciated.=C2=A0 I&#39;m pretty new to Yocto &amp; bitbake.<b=
r>
&gt;<br>
&gt; <a href=3D"https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7=
753201" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/<wbr>l=
olsborn/<wbr>b431513dbf8819850f26fb78c77532<wbr>01</a><br>
<br>
</span>it has<br>
/bin/bash: line 1: 43546 Killed build/genautomata<br>
../../../../../../../work-<wbr>shared/gcc-5.3.0-r0/gcc-5.3.0/<wbr>gcc/<a hr=
ef=3D"http://common.md" rel=3D"noreferrer" target=3D"_blank">common.md</a><=
br>
../../../../../../../work-<wbr>shared/gcc-5.3.0-r0/gcc-5.3.0/<wbr>gcc/confi=
g/arm/<a href=3D"http://arm.md" rel=3D"noreferrer" target=3D"_blank">arm.md=
</a><br>
<a href=3D"http://insn-conditions.md" rel=3D"noreferrer" target=3D"_blank">=
insn-conditions.md</a> &gt; tmp-automata.c<br>
make[1]: *** [s-automata] Error 137<br>
<br>
how much ram do you have on your build machine ?<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; --<br>
&gt; Steven Osborn<br>
&gt; <a href=3D"http://lolsborn.com" rel=3D"noreferrer" target=3D"_blank">h=
ttp://lolsborn.com</a><br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</=
a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--94eb2c06016ab29c07053faa2809--
