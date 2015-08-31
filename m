Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 960C9E00C2A; Mon, 31 Aug 2015 06:31:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55368E00D0A
	for <poky@yoctoproject.org>; Mon, 31 Aug 2015 06:31:35 -0700 (PDT)
Received: by qgp105 with SMTP id 105so13282341qgp.0
	for <poky@yoctoproject.org>; Mon, 31 Aug 2015 06:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=wHDHrfh82n7W1exMgSsiFzqUrJbZ7fX0tcSgV9sQpIE=;
	b=A7AscnY6/FivkE4NB25CCvh2QdloXy+QAI4M5oZEYzO8V2ymHpoZ7NNBFRVVAP87P8
	EGHNxRZAnXh2lWekc3IYa3C9QDetE1dKcZUK6gZTonZfmNw9YNSWpMwHd7AqsnfspKhS
	gTxpKu3VsaYwsu2TJUpkVXS8pZYjsQWO0Fte4MNuVWgKRmXthbcs2ig3rOk5XBa42ofT
	DLSHwrg4o1hzoAh3X9DFSFFd3nHi6h8PzMxQSz+uDHOc/gpr1ZZiPkk3VsMwq479zvhw
	PAHCEXWseNXmx94HQXCMr7e/Gxuzy1YWO0lvyxpTomvnWrmG+4bDSIW/4rAjUPH158mZ
	egSQ==
MIME-Version: 1.0
X-Received: by 10.140.150.3 with SMTP id 3mr39629439qhw.94.1441027894737; Mon,
	31 Aug 2015 06:31:34 -0700 (PDT)
Received: by 10.55.149.133 with HTTP; Mon, 31 Aug 2015 06:31:34 -0700 (PDT)
Date: Mon, 31 Aug 2015 16:31:34 +0300
Message-ID: <CADnUhn2yeyhj=-tQY89yFwAsCq6ARO0qshOjqV3X=NT8rrs0=w@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Postinstall script problem
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
X-List-Received-Date: Mon, 31 Aug 2015 13:31:40 -0000
Content-Type: multipart/alternative; boundary=001a1135abdac6ff83051e9b736f

--001a1135abdac6ff83051e9b736f
Content-Type: text/plain; charset=UTF-8

Hi!

How is pkg_postinstall_${PN} supposed to work, when package is coming from
imgage? My experience is that it is not executed at all.

In classical openembedded it was run for the first time when image started.
Is this changed in Poky/yocto based operation?

However, if I install same package using opkg, everything works fine. What
I try to do is appending a line to /etc/inittab. I also tried to do it
during image creation (to ${STAGING_DIR_HOST}${sysconfdir}/inittab), but
results are the same - only the file created by systemv-inittab gets
created with nothing extra.

I guess this is a pretty common problem, so that there could be some neat
solution for this. Is anyone familiar with this issue?

My postinst script is as follows (really working with opkg)
pkg_postinst_${PN} () {
#!/bin/sh -e

if [ "x$D" = "x" ]; then
    # run this on the target
    echo '########################################'
    echo '## Installing starter for daemontools ##'
    echo '########################################'

    if [ -z "$(grep -e svscanboot ${sysconfdir}/inittab)" ] ; then
        echo "SV:12345:respawn:${bindir}/svscanboot" >>
${sysconfdir}/inittab
    fi
fi
}

Thanks,
Matti

--001a1135abdac6ff83051e9b736f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi!<br><br></div>How is=
 pkg_postinstall_${PN} supposed to work, when package is coming from imgage=
? My experience is that it is not executed at all.<br><br></div>In classica=
l openembedded it was run for the first time when image started. Is this ch=
anged in Poky/yocto based operation?<br><br></div>However, if I install sam=
e package using opkg, everything works fine. What I try to do is appending =
a line to /etc/inittab. I also tried to do it during image creation (to ${S=
TAGING_DIR_HOST}${sysconfdir}/inittab), but results are the same - only the=
 file created by systemv-inittab gets created with nothing extra.<br><br></=
div>I guess this is a pretty common problem, so that there could be some ne=
at solution for this. Is anyone familiar with this issue?<br><br></div>My p=
ostinst script is as follows (really working with opkg)<br>pkg_postinst_${P=
N} () {<br>#!/bin/sh -e<br><br>if [ &quot;x$D&quot; =3D &quot;x&quot; ]; th=
en<br>=C2=A0=C2=A0=C2=A0 # run this on the target<br>=C2=A0=C2=A0=C2=A0 ech=
o &#39;########################################&#39;<br>=C2=A0=C2=A0=C2=A0 =
echo &#39;## Installing starter for daemontools ##&#39;<br>=C2=A0=C2=A0=C2=
=A0 echo &#39;########################################&#39;<br><br>=C2=A0=
=C2=A0=C2=A0 if [ -z &quot;$(grep -e svscanboot ${sysconfdir}/inittab)&quot=
; ] ; then<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo &quot;SV:1234=
5:respawn:${bindir}/svscanboot&quot; &gt;&gt; ${sysconfdir}/inittab<br>=C2=
=A0=C2=A0=C2=A0 fi<br>fi<br>}<br><br></div>Thanks,<br></div>Matti<br></div>

--001a1135abdac6ff83051e9b736f--
