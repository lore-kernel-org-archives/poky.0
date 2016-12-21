Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3EEFE010A8; Wed, 21 Dec 2016 02:52:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f169.google.com (mail-wj0-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533DDE010B6
	for <poky@yoctoproject.org>; Wed, 21 Dec 2016 02:52:14 -0800 (PST)
Received: by mail-wj0-f169.google.com with SMTP id sd9so13568398wjb.1
	for <poky@yoctoproject.org>; Wed, 21 Dec 2016 02:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IHpQu36D3lt59h2UIhlBwYMIlqbXRc68mj3Mpxe+vlM=;
	b=aUAEtKawS+/9bmDd6G8m0eMFKM55nFULm7d0hpgIKGnrNnNpI7JzkChnEeEAsyizx+
	nApcZ3L0sLBW40bFh4Ec9Bs95/OHZX30pHLqadaN2Grq0gCklXdgG+yGUBvZtYMy6TXs
	xEx5iLmxiT0rG4djZbm1dzjyxxlvOhhLYjxcHnnZMQ7xpqlY7xcyMDlL7rYI+om03Fo+
	t/MD2SpKeGYL8ui48LXEc3gNl5bpSVqbS5Qejgc+2tUC6tTvZXEj3+epuT/FPSYlO0K7
	LI5t14T/DVyS3bdBro/zmoJoIKjEWk/BI7th4s2dogqDWrBCI9amdEnkyksBPa22I/su
	ha2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IHpQu36D3lt59h2UIhlBwYMIlqbXRc68mj3Mpxe+vlM=;
	b=U4foQ9KhTzXWzwKuOu9sYfPi1XopCbm5quJe9eSyq2mAlzHD+Ti6J+KECgkIKhjfsv
	NUDG3xelyTxWdYQwX96aV9WnRdt3N72xwPkupIHbbPNhveF9Fl2dLheI3GgTWmKw1XU5
	/Je9uXofIldsPABGlTrtJg0UNiOazqQPSZm//U+jJGiS3u9pRAoh3dnIj5eSCAYRL7Gi
	F9qSwtqppOY+UjyusKKM0Kox24eZ6NyvmWXdMNCe5f7xDy5kKWAdhvWWOKjhvXEwcc+z
	u9QEs6shXddelF5gCqZSYLA/4suM/wnzZxaI27HBCCntIctAHn8C2T7NQEKgXnMIEKXx
	kMtg==
X-Gm-Message-State: AIkVDXIXcSVRU92N/VoCttCnCB7GvIkk+IE2weEmWiGn2Sh7+qoM5SICh2c7hmR4pPgRpNB2NhOulvCCqwr7eQ==
X-Received: by 10.194.115.226 with SMTP id jr2mr3598073wjb.75.1482317533906;
	Wed, 21 Dec 2016 02:52:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.192.1 with HTTP; Wed, 21 Dec 2016 02:52:13 -0800 (PST)
In-Reply-To: <1482155710.9843.36.camel@linuxfoundation.org>
References: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
	<1482155710.9843.36.camel@linuxfoundation.org>
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Wed, 21 Dec 2016 16:22:13 +0530
Message-ID: <CA+pXca2-nKt1+meqcxLsWz1H37fiDKUxCn7ZfiijkJfp5_TOrQ@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: error while compiling hello_2.7.bb
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
X-List-Received-Date: Wed, 21 Dec 2016 10:52:36 -0000
Content-Type: multipart/alternative; boundary=001a1130d0640d9051054428f231

--001a1130d0640d9051054428f231
Content-Type: text/plain; charset=UTF-8

Hi Richard,
setting S = "${WORKDIR}/hello_2.7" or S = "${WORKDIR}"  didn't work. I used

in build/conf/local.conf

INHERIT += "externalsrc"
EXTERNALSRC_pn-hello =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
EXTERNALSRC_BUILD_pn-hello =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"

in hello_2.7.bb

EXTERNALSRC =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
EXTERNALSRC_BUILD =
"/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"

now i could compile.

Thanks,
Praveen.


On Mon, Dec 19, 2016 at 7:25 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Mon, 2016-12-19 at 18:10 +0530, praveen vattipalli wrote:
> > Hi All,
> > I have hello_2.7.bb file which contains as below
> > vim hello_2.7.bb
> > DESCRIPTION = "GNU Helloworld application"
> > SECTION = "test"
> > LICENSE = "BSD"
> >
> > LIC_FILES_CHKSUM =
> > "file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb234c
> > b"
> > SRC_DIR ?= "/home/rajesh/poky-krogoth-15.0.2/meta/recipes-
> > support/hello/hello_2.7"
> > SRC_URI = "file://${SRC_DIR}"
> >
> > S = "${SRC_DIR}"
>
> You don't want to set S to this as you're then building things in your
> metadata directory. I suspect the code in more recent versions cleans
> ${S} before fetching/unpacking and this is wiping out your files.
>
> You probably want S = "${WORKDIR}" or maybe S = "${WORKDIR}/hello_2.7",
> I can't remember exactly where the fetcher places a directory of files.
>
> Cheers,
>
> Richard
>

--001a1130d0640d9051054428f231
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Richard,<br></div>setting S =3D &qu=
ot;${WORKDIR}/hello_2.7&quot; or S =3D &quot;${WORKDIR}&quot;=C2=A0 didn&#3=
9;t work. I used <br><br>in build/conf/local.conf<br><br>INHERIT +=3D &quot=
;externalsrc&quot;<br>EXTERNALSRC_pn-hello =3D &quot;/home/rajesh/Downloads=
/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7&quot;<br>EXTERNA=
LSRC_BUILD_pn-hello =3D &quot;/home/rajesh/Downloads/poky-krogoth-15.0.2/me=
ta/recipes-extended/hello/hello_2.7&quot;<br><br>in <a href=3D"http://hello=
_2.7.bb">hello_2.7.bb</a><br><br>EXTERNALSRC =3D &quot;/home/rajesh/Downloa=
ds/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7&quot;<br>EXTER=
NALSRC_BUILD =3D &quot;/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/reci=
pes-extended/hello/hello_2.7&quot;<br><br></div>now i could compile.<br></d=
iv><br>Thanks,<br></div>Praveen.<br><div><div><div><div><div><br></div></di=
v></div></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Mon, Dec 19, 2016 at 7:25 PM, Richard Purdie <span dir=3D"ltr">=
&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank"=
>richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><span class=3D"">On Mon, 2016-12-19 at 18:10 +0530, pravee=
n vattipalli wrote:<br>
&gt; Hi All,<br>
&gt; I have <a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" target=3D"_b=
lank">hello_2.7.bb</a> file which contains as below<br>
&gt; vim <a href=3D"http://hello_2.7.bb" rel=3D"noreferrer" target=3D"_blan=
k">hello_2.7.bb</a><br>
&gt; DESCRIPTION =3D &quot;GNU Helloworld application&quot;<br>
&gt; SECTION =3D &quot;test&quot;<br>
&gt; LICENSE =3D &quot;BSD&quot;<br>
&gt;<br>
&gt; LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://${COMMON_LICENSE_DIR}/<wbr>BSD;md5=3D<wbr>3775480a712fc46=
a69647678acb234<wbr>c<br>
&gt; b&quot;<br>
&gt; SRC_DIR ?=3D &quot;/home/rajesh/poky-krogoth-15.<wbr>0.2/meta/recipes-=
<br>
&gt; support/hello/hello_2.7&quot;<br>
&gt; SRC_URI =3D &quot;file://${SRC_DIR}&quot;<br>
&gt;<br>
&gt; S =3D &quot;${SRC_DIR}&quot;<br>
<br>
</span>You don&#39;t want to set S to this as you&#39;re then building thin=
gs in your<br>
metadata directory. I suspect the code in more recent versions cleans<br>
${S} before fetching/unpacking and this is wiping out your files.<br>
<br>
You probably want S =3D &quot;${WORKDIR}&quot; or maybe S =3D &quot;${WORKD=
IR}/hello_2.7&quot;,<br>
I can&#39;t remember exactly where the fetcher places a directory of files.=
<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div><br></div>

--001a1130d0640d9051054428f231--
