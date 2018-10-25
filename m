Return-Path: <diegomateddu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 341AEE00994; Thu, 25 Oct 2018 09:57:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (diegomateddu[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E9DE008E3
	for <poky@yoctoproject.org>; Thu, 25 Oct 2018 09:57:27 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id q7-v6so10074731wrr.8
	for <poky@yoctoproject.org>; Thu, 25 Oct 2018 09:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6SoQvSboyxUy8IJIcXucLVJ5T8j40Iq+pQu8iItJDkU=;
	b=YikQaYdJNuzL1A65cq8voQq8PBhzokvZTE6wXXLDCI8IqsXHGVM2o0rJ2GY91ALJTi
	1oo0wYIQvlogtNfy4Ybg9VFRMsgai0nokzDAosgzS+o2tfnt/rK3mOEFaRwfDO/mxzDO
	cCEZd5Qw8RPWGcSuMkH3dyoKqQ9QFLIUOzTtgDLokqtk5ADE5pCCZXQB6LfkdWPsjfKA
	YYsVQ+nefnnu71YmYGFpn9xlcKclTvujpgf44F8J4MCKv3TIqOaSaSmAUmV8aiad48EY
	j6sPmoKunJjgfhL5c/YEVmZrjbsDiPZKUIrpo1nfv0QSUQzLkuE84IDPcL2Gd9nUQw9x
	TMDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6SoQvSboyxUy8IJIcXucLVJ5T8j40Iq+pQu8iItJDkU=;
	b=UKPg2iopHfy/M4rn9ywu4G4V8NsYY0YV544bYoqu6iTtz3J812UjNGAlVYT5QF6Fgo
	L1k+BohPhn4dIBMOwF6iNP9Ert2vc2SAiXGB8cUEBOGpAHCDwRfCb6Phr8peXHx8nPuU
	U1lhe3JLzu5q5mZWD71yi5UelWzdtFdpMpbD8wZovzGX5+tC/hELtZW80ZAHncXKwc8x
	auNssjjpTVlqeBqu5SWuY0Iu0dzr6BlZB6TDzATuTK5KHkuzlhUYgdkQxgRwyrVrE3pb
	lkTpb8yLAFmngkWJgFW+qbNHZ4SAFBHPQpUahVpm2sqfAtFqDjUDORzXh2Fw48uiiCV1
	lX5w==
X-Gm-Message-State: AGRZ1gJM0UiQGBEikISXMsUnC1/s60HJHE91vIW1u7Kds3HJX0cmePR3
	lShXxvTNHjHgjDwK9xv8QbtQTdZ50APvcwF3qVpfmNo1
X-Google-Smtp-Source: AJdET5d/t1NsiCigquL3zE4dOPC5ki/DQnXg7e+eIFkJCjDsd6XeCF/i0a+MT6NClNkVXcM6DzPKt70b1Nz9nx+PG1Y=
X-Received: by 2002:adf:e391:: with SMTP id
	e17-v6mr2760854wrm.321.1540486645896; 
	Thu, 25 Oct 2018 09:57:25 -0700 (PDT)
MIME-Version: 1.0
From: Diego Mateddu <diegomateddu@gmail.com>
Date: Thu, 25 Oct 2018 18:57:15 +0200
Message-ID: <CAFq4LCgg+wGuDRhJQstjGHTyvC3icYU159aT_=wpoPr3nBpEDg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Build error on SAMA5D27 (sama5d27-som1-ek) Board and QT5 Webengine
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
X-List-Received-Date: Thu, 25 Oct 2018 16:57:28 -0000
Content-Type: multipart/alternative; boundary="0000000000004f627a0579107f87"

--0000000000004f627a0579107f87
Content-Type: text/plain; charset="UTF-8"

Hi!
I tried to build an image  with atmel, i followed the procedure in "
https://github.com/linux4sam/meta-atmel" and i successful create a minimal
image and demo images.

The next step is to activate the qtwebengine librarry to images but i have
a problem. Below are the steps performed and the error.

1) I added in "conf/local.conf" :

IMAGE_INSTALL += " \
   qtwebengine \
   qtwebengine-qmlplugins \
"



2) Re run bitbake with this error :

ERROR: Task (/opt/inst/meta-qt5/recipes-qt/qt5/qtwebengine_git.bb:do_install)
failed with exit code '1'
| make: Nothing to be done for 'install'.
| sed: can't read
/opt/inst/poky/build-microchip/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/qtwebengine/5.9.6+gitAUTOINC+cc526afe9c_e517527148-r0/image/usr/lib/pkgconfig/*Qt5WebEngineCore.pc:
No such file or directory*
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_install (log file is located at
/opt/inst/poky/build-microchip/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/qtwebengine/5.9.6+gitAUTOINC+cc526afe9c_e517527148-r0/temp/log.do_install.31483)
ERROR: Task (/opt/inst/meta-qt5/recipes-qt/qt5/qtwebengine_git.bb:do_install)
failed with exit code '1


I looked for the file "Qt5WebEngineCore.pc" in the folders under "tmp/work"
but it does not exist.

Do you have any Idea ?

Thanks!

--0000000000004f627a0579107f87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi!</div><div dir=
=3D"ltr">I tried to build an image=C2=A0 with atmel, i followed the procedu=
re in &quot;<a href=3D"https://github.com/linux4sam/meta-atmel" target=3D"_=
blank">https://github.com/linux4sam/meta-atmel</a>&quot; and i successful c=
reate a minimal image and demo images.</div><div dir=3D"ltr"><br></div><div=
>The next step is to activate the qtwebengine librarry to images but i have=
 a problem. Below are the steps performed and the error.</div><div><br></di=
v><div>1) I added in &quot;conf/local.conf&quot; :</div><div><br></div></di=
v><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><di=
v><div><div><font face=3D"monospace, monospace">IMAGE_INSTALL +=3D &quot; \=
</font></div></div></div><div><div><div><font face=3D"monospace, monospace"=
>=C2=A0 =C2=A0qtwebengine \=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0</font></div></div></div><div><div><div><font face=3D"=
monospace, monospace">=C2=A0 =C2=A0qtwebengine-qmlplugins \=C2=A0 =C2=A0 =
=C2=A0=C2=A0</font></div></div></div><div><div><div><font face=3D"monospace=
, monospace">&quot;</font></div></div></div></blockquote><div dir=3D"ltr"><=
div><br></div><div><br></div><div>2) Re run bitbake with this error :=C2=A0=
</div></div></div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;=
padding:0px"><div><div><div><div><font face=3D"monospace, monospace">ERROR:=
 Task (/opt/inst/meta-qt5/recipes-qt/qt5/qtwebengine_git.bb:do_install) fai=
led with exit code &#39;1&#39;</font></div></div></div></div><div><div><div=
><div><font face=3D"monospace, monospace">| make: Nothing to be done for &#=
39;install&#39;.</font></div></div></div></div><div><div><div><div><font fa=
ce=3D"monospace, monospace">| sed: can&#39;t read /opt/inst/poky/build-micr=
ochip/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/qtwebengine/5.9.6+gitAUTO=
INC+cc526afe9c_e517527148-r0/image/usr/lib/pkgconfig/<b><font color=3D"#ff0=
000">Qt5WebEngineCore.pc: No such file or directory</font></b></font></div>=
</div></div></div><div><div><div><div><font face=3D"monospace, monospace">|=
 WARNING: exit code 2 from a shell command.</font></div></div></div></div><=
div><div><div><div><font face=3D"monospace, monospace">| ERROR: Function fa=
iled: do_install (log file is located at /opt/inst/poky/build-microchip/tmp=
/work/cortexa5hf-neon-poky-linux-gnueabi/qtwebengine/5.9.6+gitAUTOINC+cc526=
afe9c_e517527148-r0/temp/log.do_install.31483)</font></div></div></div></di=
v><div><div><div><div><font face=3D"monospace, monospace">ERROR: Task (/opt=
/inst/meta-qt5/recipes-qt/qt5/qtwebengine_git.bb:do_install) failed with ex=
it code &#39;1</font></div></div></div></div></blockquote><div dir=3D"ltr">=
<div dir=3D"ltr"><div><br></div><div>I looked for the file &quot;Qt5WebEngi=
neCore.pc&quot; in the folders under &quot;tmp/work&quot; but it does not e=
xist.</div><div><br></div><div>Do you have any Idea ?</div><div><br></div><=
div>Thanks!</div></div></div></div>

--0000000000004f627a0579107f87--
