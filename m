Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D6FE00971; Mon, 24 Oct 2016 23:06:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59E0E00912
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 23:06:23 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id r16so113013543pfg.1
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 23:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=CNAlkSYwRwj4B1E6BqEHkgsVUFyQS9v2Iby7jHphvmI=;
	b=nBbxt8DAYFc/QWQqxrLuD3I8stTzYJsL8iKLCMxj02pAj5z2dGW8A0HC5ml5fDx7tU
	nheyIAZlSqojGUzEswkgCgloeqTYSfWqC9OYYQ1Cp+oV02/92pZvwerv12jef/JQdm9Q
	GHp/wMB8tPXks58XTjWbFcJurypU3DaVb8llULtIyhhCudIA14TlAIawLdDbFoAPRJTP
	nTKP/XTnzN3NdeNiycTy2r3K4dXLB9QjMNiUKu+zlPlHEYY6vpo4Rfx+Txig/35kLvMH
	sUMeMYKueTYuu3FO7VkNvjRQmcUFMv11pojOJ9hkd9qG4EFvFP2oJSLttwhh5GVNv/S3
	C+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=CNAlkSYwRwj4B1E6BqEHkgsVUFyQS9v2Iby7jHphvmI=;
	b=PVNhf5qHCsp0hObnsfE2A7R443ddXALZjlgxp8ZgeZC7dlrzt62qCT7Jnp3fG8gN3V
	BJp8RgZCuQDdjtMOB7bFrZPzCsshWAiYTugf6Ua8sH59b3Jj/O/UDIwoOkuHS07dM22v
	k4Nnlm5HSuOUfQ7c4iE4oj0HuBQ4RAG9gIohMFVZAWQ4mD5NCcZwXjb/MAuKm4ySP8EO
	N96zx/y6DzxROxnk0Se6Uo2ia2MlLU2BfoLZz9tHUdCJTuc+a0DH/Pj0ym/Ppq3quxZb
	PN8olTW0G/7iw62b9UjQzeSNcWGe311hJU1sad+92ArZFIqWxpdgXheHaaD3aXMkFAIJ
	g6Qg==
X-Gm-Message-State: ABUngveynSEFSDq4HkQcmBILpL1zEFsCBLcmPZuwrQ7Otl3z3JehMqksBqD8BgaSeyWbUQ==
X-Received: by 10.98.71.215 with SMTP id p84mr36325919pfi.59.1477375582601;
	Mon, 24 Oct 2016 23:06:22 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a1a6:5d52:7006:72b0?
	([2601:646:8882:b8c:a1a6:5d52:7006:72b0])
	by smtp.gmail.com with ESMTPSA id
	o184sm29629535pfg.73.2016.10.24.23.06.21
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 24 Oct 2016 23:06:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAA0Zw-xmfxKV=eu_c2Qdsdco3FeLWUdAeLGdDp7RBQu7hc=z8Q@mail.gmail.com>
Date: Mon, 24 Oct 2016 23:06:16 -0700
Message-Id: <F21C6A20-EBA1-4EEF-B29B-41FD96A05BDC@gmail.com>
References: <CAA0Zw-yG86gejw2TT0Ly8AJ5MMcFV-NP7Q6S=BkbtyjeVqQ_hQ@mail.gmail.com>
	<CAMKF1soZfAUoXz0_0dh7j=H8dfQO2EpF2XUvWqJaX63QF0zY1g@mail.gmail.com>
	<CAA0Zw-xmfxKV=eu_c2Qdsdco3FeLWUdAeLGdDp7RBQu7hc=z8Q@mail.gmail.com>
To: Steven Osborn <osborn.steven@gmail.com>
X-Mailer: Apple Mail (2.3124)
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
X-List-Received-Date: Tue, 25 Oct 2016 06:06:27 -0000
X-Groupsio-MsgNum: 10665
Content-Type: multipart/signed;
	boundary="Apple-Mail=_102CA2E1-C47D-46B9-B32D-AF40B50B8999";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_102CA2E1-C47D-46B9-B32D-AF40B50B8999
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DF04A161-0594-4E1F-A6CC-CA4FD1958D9D"

--Apple-Mail=_DF04A161-0594-4E1F-A6CC-CA4FD1958D9D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 24, 2016, at 10:55 PM, Steven Osborn <osborn.steven@gmail.com> =
wrote:
>=20
> bumping up the RAM did the trick.  Now I'm getting a checksum error =
tough.
>=20
> ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: QA Issue: =
mender: The LIC_FILES_CHKSUM does not match for =
file://LIC_FILES_CHKSUM.sha256;md5=3De304da41de5b57ce5b4601b53b1052b6
> mender: The new md5 checksum is 5d7dda2920f25253c9a3af5c28b10fb2

I think mender changed something in its license text so its telling you =
that. If you dont care then open the mender recipe and change =
md5=3De304da41de5b57ce5b4601b53b1052b6
to md5=3D5d7dda2920f25253c9a3af5c28b10fb2

> mender: Check if the license information has changed in =
/home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux=
-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/git/LIC_FILES_CHKSUM.sha256 =
to verify that the LICENSE value "Apache-2.0 & BSD-2-Clause & =
BSD-3-Clause & MIT & OLDAP-2.8" remains valid [license-checksum]
> ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Fatal QA =
errors found, failing task.
> ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Function =
failed: do_qa_configure
> ERROR: Logfile of failure stored in: =
/home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux=
-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/temp/log.do_configure.23139
> ERROR: Task 314 =
(/home/steven/Projects/iotas/poky/meta-mender/recipes-mender/mender/mender=
_0.1.bb <http://mender_0.1.bb/>, do_configure) failed with exit code '1'
>=20
>=20
> --
> Steven Osborn
> http://lolsborn.com <http://lolsborn.com/>
> On Mon, Oct 24, 2016 at 5:29 PM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
> On Mon, Oct 24, 2016 at 4:39 PM, Steven Osborn =
<osborn.steven@gmail.com <mailto:osborn.steven@gmail.com>> wrote:
> > I'm trying to get a beaglebone build going and running into this =
issue.
> > I've tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers =
would be
> > really appreciated.  I'm pretty new to Yocto & bitbake.
> >
> > https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7753201 =
<https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7753201>
>=20
> it has
> /bin/bash: line 1: 43546 Killed build/genautomata
> ../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/common.md =
<http://common.md/>
> =
../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/config/arm/arm=
.md <http://arm.md/>
> insn-conditions.md <http://insn-conditions.md/> > tmp-automata.c
> make[1]: *** [s-automata] Error 137
>=20
> how much ram do you have on your build machine ?
> >
> > --
> > Steven Osborn
> > http://lolsborn.com <http://lolsborn.com/>
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/poky =
<https://lists.yoctoproject.org/listinfo/poky>
> >
>=20


--Apple-Mail=_DF04A161-0594-4E1F-A6CC-CA4FD1958D9D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 24, 2016, at 10:55 PM, Steven Osborn &lt;<a =
href=3D"mailto:osborn.steven@gmail.com" =
class=3D"">osborn.steven@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">bumping up the RAM did the trick.&nbsp; Now I'm getting a =
checksum error tough.<br class=3D""><br class=3D"">ERROR: =
mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: QA Issue: mender: The =
LIC_FILES_CHKSUM does not match for <a =
href=3D"file:///LIC_FILES_CHKSUM.sha256;md5=3De304da41de5b57ce5b4601b53b10=
52b6" =
class=3D"">file://LIC_FILES_CHKSUM.sha256;md5=3De304da41de5b57ce5b4601b53b=
1052b6</a><br class=3D"">mender: The new md5 checksum is =
5d7dda2920f25253c9a3af5c28b10fb2</div></div></blockquote><div><br =
class=3D""></div><div>I think mender changed something in its license =
text so its telling you that. If you dont care then open the mender =
recipe and change md5=3De304da41de5b57ce5b4601b53b1052b6</div><div>to =
md5=3D5d7dda2920f25253c9a3af5c28b10fb2</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" =
class=3D"">mender: Check if the license information has changed in =
/home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux=
-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/git/LIC_FILES_CHKSUM.sha256 =
to verify that the LICENSE value "Apache-2.0 &amp; BSD-2-Clause &amp; =
BSD-3-Clause &amp; MIT &amp; OLDAP-2.8" remains valid =
[license-checksum]<br class=3D"">ERROR: =
mender-0.1+gitAUTOINC+72069ff5d0-r0 do_configure: Fatal QA errors found, =
failing task.<br class=3D"">ERROR: mender-0.1+gitAUTOINC+72069ff5d0-r0 =
do_configure: Function failed: do_qa_configure<br class=3D"">ERROR: =
Logfile of failure stored in: =
/home/steven/Projects/iotas/poky/build/tmp/work/cortexa8hf-neon-poky-linux=
-gnueabi/mender/0.1+gitAUTOINC+72069ff5d0-r0/temp/log.do_configure.23139<b=
r class=3D"">ERROR: Task 314 =
(/home/steven/Projects/iotas/poky/meta-mender/recipes-mender/mender/<a =
href=3D"http://mender_0.1.bb/" class=3D"">mender_0.1.bb</a>, =
do_configure) failed with exit code '1'<br class=3D""><br =
class=3D""></div><div class=3D"gmail_extra"><br clear=3D"all" =
class=3D""><div class=3D""><div class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature">--<br class=3D"">Steven Osborn<br =
class=3D""><a href=3D"http://lolsborn.com/" target=3D"_blank" =
class=3D"">http://lolsborn.com</a></div></div>
<br class=3D""><div class=3D"gmail_quote">On Mon, Oct 24, 2016 at 5:29 =
PM, Khem Raj <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" =
class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Mon, Oct 24, 2016 at 4:39 PM, Steven Osborn &lt;<a =
href=3D"mailto:osborn.steven@gmail.com" =
class=3D"">osborn.steven@gmail.com</a>&gt; wrote:<br class=3D"">
&gt; I'm trying to get a beaglebone build going and running into this =
issue.<br class=3D"">
&gt; I've tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers =
would be<br class=3D"">
&gt; really appreciated.&nbsp; I'm pretty new to Yocto &amp; bitbake.<br =
class=3D"">
&gt;<br class=3D"">
&gt; <a =
href=3D"https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7753201"=
 rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://gist.github.com/<wbr class=3D"">lolsborn/<wbr =
class=3D"">b431513dbf8819850f26fb78c77532<wbr class=3D"">01</a><br =
class=3D"">
<br class=3D"">
</span>it has<br class=3D"">
/bin/bash: line 1: 43546 Killed build/genautomata<br class=3D"">
../../../../../../../work-<wbr =
class=3D"">shared/gcc-5.3.0-r0/gcc-5.3.0/<wbr class=3D"">gcc/<a =
href=3D"http://common.md/" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">common.md</a><br class=3D"">
../../../../../../../work-<wbr =
class=3D"">shared/gcc-5.3.0-r0/gcc-5.3.0/<wbr class=3D"">gcc/config/arm/<a=
 href=3D"http://arm.md/" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">arm.md</a><br class=3D"">
<a href=3D"http://insn-conditions.md/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">insn-conditions.md</a> &gt; =
tmp-automata.c<br class=3D"">
make[1]: *** [s-automata] Error 137<br class=3D"">
<br class=3D"">
how much ram do you have on your build machine ?<br class=3D"">
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br class=3D"">
&gt; --<br class=3D"">
&gt; Steven Osborn<br class=3D"">
&gt; <a href=3D"http://lolsborn.com/" rel=3D"noreferrer" target=3D"_blank"=
 class=3D"">http://lolsborn.com</a><br class=3D"">
&gt;<br class=3D"">
</div></div><span class=3D"HOEnZb"><font color=3D"#888888" class=3D"">&gt;=
 --<br class=3D"">
&gt; ______________________________<wbr class=3D"">_________________<br =
class=3D"">
&gt; poky mailing list<br class=3D"">
&gt; <a href=3D"mailto:poky@yoctoproject.org" =
class=3D"">poky@yoctoproject.org</a><br class=3D"">
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/poky</a><br class=3D"">
&gt;<br class=3D"">
</font></span></blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_DF04A161-0594-4E1F-A6CC-CA4FD1958D9D--

--Apple-Mail=_102CA2E1-C47D-46B9-B32D-AF40B50B8999
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgO9lwACgkQuwUzVZGdMxQXoQCfcVeltdDb61YMMGo0JktceNVG
uD4AoIu3i9Hauq/nuj+TcvMxK+g+sykv
=x3TM
-----END PGP SIGNATURE-----

--Apple-Mail=_102CA2E1-C47D-46B9-B32D-AF40B50B8999--
