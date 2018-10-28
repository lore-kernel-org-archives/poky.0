Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9996EE008E3; Sun, 28 Oct 2018 08:30:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7952E00718
	for <poky@yoctoproject.org>; Sun, 28 Oct 2018 08:30:23 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id y140-v6so7714990wmd.0
	for <poky@yoctoproject.org>; Sun, 28 Oct 2018 08:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Sa/aYUdME0kK1RF2DsCanU4AKp9eqgOOqhHsH59zMCg=;
	b=CZvdDZvRQV5NxuBjuJDVUYCWU7l4UmTkUdw0HQE+s8nDPlbhMWQkpOnxepakwClKfH
	Jl10c+wePKXRlRrhguzxxBNcZPZ64CNCKXdSi+AUee8VjK45KDFU6vC0bOx13qSK5Zw6
	naV6xdWfZMsVAbSIUuWHc2011Mvl/eKye7UhBXf7LTNTXFxiGRkBjrVJT4LQ5KKO7yOP
	z+Sb8SnVy6isbL6jJANSSF7F9EMjYo/+YWPId31sGjU/EspVCL5uRecqKn4pe9aJyD9b
	4OmXDuJOcXn7rHg7Pn/OYEcPHzit33c60ThgY/1d9DBj3weRcJIzTf3ohV08Qwn3O/19
	SdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Sa/aYUdME0kK1RF2DsCanU4AKp9eqgOOqhHsH59zMCg=;
	b=YCk27V35HV3BPM3HJf+OMVR/TEacyMl2VrnAQJFwLM88ohAirYCnit5YYOFCitaLN9
	YkfFRbVIxWYKBWRgolPi6EYlMXUZEz0hT0AzQIOzo4HQRxQlarKPI/jXeI4YPriaH7d5
	2+fUMs4gAzfW3YbMVCpaauGbMThx+zqzccjKd6XujkRRQT8ZPs4WGb6vVcZj3DLwIJ6y
	Gvo9uXnquUxwbIvfn1opzSiktXnFMf/B2XCgOZ9kW36c2/wDzxMRCQPa064RdsHWN7cF
	Fn5KbDkLlM8BYo+bDKAg3CPck0aylOU4rkaGEWcNErdEzZWb3ZzeBpvXqRIgdQOp6UNJ
	wCPw==
X-Gm-Message-State: AGRZ1gJKZMHKUtXZsLWPYdgujtJZ8+aRMCemJwXPdI23SXU6+TDaEVE/
	1ovSRR9rsDQzMjS4Mm8EvfDizgnH06sbsbLmdnw=
X-Google-Smtp-Source: AJdET5d71UvuyIRz91YfTpKDz3CEc+ttNnl9srbziSYk0jpyFa0/cfha/bGmQ78VKYBCDX6c63G8WxTNh5uuvfRF/UQ=
X-Received: by 2002:a1c:e15:: with SMTP id 21-v6mr11573576wmo.35.1540740622816;
	Sun, 28 Oct 2018 08:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAFq4LCgg+wGuDRhJQstjGHTyvC3icYU159aT_=wpoPr3nBpEDg@mail.gmail.com>
In-Reply-To: <CAFq4LCgg+wGuDRhJQstjGHTyvC3icYU159aT_=wpoPr3nBpEDg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 28 Oct 2018 16:30:11 +0100
Message-ID: <CA+chaQfhhXSMu_obSoiHOts7dQjz7bhaN+sYfLop4quHNnTQCw@mail.gmail.com>
To: diegomateddu@gmail.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Build error on SAMA5D27 (sama5d27-som1-ek) Board and QT5 Webengine
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
X-List-Received-Date: Sun, 28 Oct 2018 15:30:24 -0000
Content-Type: multipart/alternative; boundary="00000000000083a27405794ba15d"

--00000000000083a27405794ba15d
Content-Type: text/plain; charset="UTF-8"

Read README file in meta-qt5 layer.

On Thu, Oct 25, 2018 at 6:57 PM Diego Mateddu <diegomateddu@gmail.com>
wrote:

> Hi!
> I tried to build an image  with atmel, i followed the procedure in "
> https://github.com/linux4sam/meta-atmel" and i successful create a
> minimal image and demo images.
>
> The next step is to activate the qtwebengine librarry to images but i have
> a problem. Below are the steps performed and the error.
>
> 1) I added in "conf/local.conf" :
>
> IMAGE_INSTALL += " \
>    qtwebengine \
>    qtwebengine-qmlplugins \
> "
>
>
>
> 2) Re run bitbake with this error :
>
> ERROR: Task (/opt/inst/meta-qt5/recipes-qt/qt5/qtwebengine_git.bb:do_install)
> failed with exit code '1'
> | make: Nothing to be done for 'install'.
> | sed: can't read
> /opt/inst/poky/build-microchip/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/qtwebengine/5.9.6+gitAUTOINC+cc526afe9c_e517527148-r0/image/usr/lib/pkgconfig/*Qt5WebEngineCore.pc:
> No such file or directory*
> | WARNING: exit code 2 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> /opt/inst/poky/build-microchip/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/qtwebengine/5.9.6+gitAUTOINC+cc526afe9c_e517527148-r0/temp/log.do_install.31483)
> ERROR: Task (/opt/inst/meta-qt5/recipes-qt/qt5/qtwebengine_git.bb:do_install)
> failed with exit code '1
>
>
> I looked for the file "Qt5WebEngineCore.pc" in the folders under
> "tmp/work" but it does not exist.
>
> Do you have any Idea ?
>
> Thanks!
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--00000000000083a27405794ba15d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Read README file in meta-qt5 layer.</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Thu, Oct 25, 2018 at 6:57 PM Diego Matedd=
u &lt;<a href=3D"mailto:diegomateddu@gmail.com">diegomateddu@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div>Hi!</div><div dir=3D"ltr">I tried to build =
an image=C2=A0 with atmel, i followed the procedure in &quot;<a href=3D"htt=
ps://github.com/linux4sam/meta-atmel" target=3D"_blank">https://github.com/=
linux4sam/meta-atmel</a>&quot; and i successful create a minimal image and =
demo images.</div><div dir=3D"ltr"><br></div><div>The next step is to activ=
ate the qtwebengine librarry to images but i have a problem. Below are the =
steps performed and the error.</div><div><br></div><div>1) I added in &quot=
;conf/local.conf&quot; :</div><div><br></div></div><blockquote style=3D"mar=
gin:0px 0px 0px 40px;border:none;padding:0px"><div><div><div><font face=3D"=
monospace, monospace">IMAGE_INSTALL +=3D &quot; \</font></div></div></div><=
div><div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0qtwebengine =
\=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</fon=
t></div></div></div><div><div><div><font face=3D"monospace, monospace">=C2=
=A0 =C2=A0qtwebengine-qmlplugins \=C2=A0 =C2=A0 =C2=A0=C2=A0</font></div></=
div></div><div><div><div><font face=3D"monospace, monospace">&quot;</font><=
/div></div></div></blockquote><div dir=3D"ltr"><div><br></div><div><br></di=
v><div>2) Re run bitbake with this error :=C2=A0</div></div></div><blockquo=
te style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div><div=
><div><font face=3D"monospace, monospace">ERROR: Task (/opt/inst/meta-qt5/r=
ecipes-qt/qt5/qtwebengine_git.bb:do_install) failed with exit code &#39;1&#=
39;</font></div></div></div></div><div><div><div><div><font face=3D"monospa=
ce, monospace">| make: Nothing to be done for &#39;install&#39;.</font></di=
v></div></div></div><div><div><div><div><font face=3D"monospace, monospace"=
>| sed: can&#39;t read /opt/inst/poky/build-microchip/tmp/work/cortexa5hf-n=
eon-poky-linux-gnueabi/qtwebengine/5.9.6+gitAUTOINC+cc526afe9c_e517527148-r=
0/image/usr/lib/pkgconfig/<b><font color=3D"#ff0000">Qt5WebEngineCore.pc: N=
o such file or directory</font></b></font></div></div></div></div><div><div=
><div><div><font face=3D"monospace, monospace">| WARNING: exit code 2 from =
a shell command.</font></div></div></div></div><div><div><div><div><font fa=
ce=3D"monospace, monospace">| ERROR: Function failed: do_install (log file =
is located at /opt/inst/poky/build-microchip/tmp/work/cortexa5hf-neon-poky-=
linux-gnueabi/qtwebengine/5.9.6+gitAUTOINC+cc526afe9c_e517527148-r0/temp/lo=
g.do_install.31483)</font></div></div></div></div><div><div><div><div><font=
 face=3D"monospace, monospace">ERROR: Task (/opt/inst/meta-qt5/recipes-qt/q=
t5/qtwebengine_git.bb:do_install) failed with exit code &#39;1</font></div>=
</div></div></div></blockquote><div dir=3D"ltr"><div dir=3D"ltr"><div><br><=
/div><div>I looked for the file &quot;Qt5WebEngineCore.pc&quot; in the fold=
ers under &quot;tmp/work&quot; but it does not exist.</div><div><br></div><=
div>Do you have any Idea ?</div><div><br></div><div>Thanks!</div></div></di=
v></div>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--00000000000083a27405794ba15d--
