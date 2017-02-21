Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01865E00566; Tue, 21 Feb 2017 05:28:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.181 listed in dnsbl.sorbs.net]
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
	*      [74.125.82.181 listed in list.dnswl.org]
Received: from mail-ot0-f181.google.com (mail-ot0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF849E003D7
	for <poky@yoctoproject.org>; Tue, 21 Feb 2017 05:28:29 -0800 (PST)
Received: by mail-ot0-f181.google.com with SMTP id k4so67970495otc.0
	for <poky@yoctoproject.org>; Tue, 21 Feb 2017 05:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4osJe1FDKdsWwhXWMc/E4l4WEPqb5YinwXW7SqgrhJI=;
	b=Jz+1+kZfcR0j8DA9V6U7a88GzYIsAHBzDw+8qBqREMfTwYHm0yjE5ijkecKi7L2kjC
	9V2l+UKYRwyFOWaUw456F/cqp6IjEbMudmAa8G6T71SfRls/A+LglP+aDSO4Mohi7WGg
	fZeiypM2DwR+W9n88LT3twOYRPJHP48EC6wDmmg9RGgd7je8jKsouIp2hqawMNOsLqx4
	JsdUgAjOCoK0cQsC3M1hLJ/UCq2WudkAkJJKVwJoiIqGIxqWbMlllN3yHdYhX5gYlBVo
	+c9cu+3TSi3fNXAqpY2osqCgsZeFMP9hcyGtkM/H1gnxhPd3U/L33n8jJCkqz6JyIeW1
	Xs5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4osJe1FDKdsWwhXWMc/E4l4WEPqb5YinwXW7SqgrhJI=;
	b=MyG0XOwL7VmX4akzupUO5joRrlod+i3eed9g6sc4/oVkQcuvN5yGJdNOaV0yLsMcrZ
	B7281qHQwQKGxQIwO3mSZR7p9c1oomdSQQ/z+INgntA2vrzhV0WeyZMhq2htl++bVWOK
	2MYBrmSUeyIJkRcPltfjL9OnwivFLxVDo+lFSz3zSSdaNHgvArNW8MkY2KfRhbl0ezFT
	WJSAZteGR27aWKYoVC3tGikXhaWL3t6AkVMJw6tcJc0bY3vQK7Cqi/3TB+NzfPWWzt1Z
	za4nkpq4w0TFyg0ua9Fo0nsEZ9C0U8pMfUTBD1nzy7QcmSAN7SpzCh8JIXxtVIWgUezd
	UTAg==
X-Gm-Message-State: AMke39lwrUjBEfX50XURMxwVa9Elk1T4HCuM/Tm6ClPthPs91q3unMr/c606sQ6+ygDB7GNlcHQhPX0MqiwhLQ==
X-Received: by 10.157.26.91 with SMTP id u27mr13641913otu.72.1487683708406;
	Tue, 21 Feb 2017 05:28:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.80.29 with HTTP; Tue, 21 Feb 2017 05:28:28 -0800 (PST)
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Tue, 21 Feb 2017 18:58:28 +0530
Message-ID: <CA+pXca3w1415HUt8m1y7iTUEm_rhe6L-e9Ek2e9B2HMuDP1VWQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: error while compiling external module
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
X-List-Received-Date: Tue, 21 Feb 2017 13:28:31 -0000
Content-Type: multipart/alternative; boundary=001a1144fd6efa53d505490a5a06

--001a1144fd6efa53d505490a5a06
Content-Type: text/plain; charset=UTF-8

Hi All,
I am using poky-krogoth source and meta-altera layer. I am building kernel
locally using externalsrc. while building external module i am getting
error.



ERROR: Task do_make_scripts in
/home/praveenk/source/platform/build/../meta-skeleton/recipes-kernel/hello-mod/
hello-mod_0.1.bb depends upon non-existent task do_shared_workdir in
/home/praveenk/source/platform/build/../meta-altera/recipes-kernel/linux/
linux-altera-ltsi_4.1.22.bb
ERROR: Command execution failed: 1

linux.bb contains

LINUX_VERSION = "4.1.22"
LINUX_VERSION_SUFFIX = "-ltsi"

include linux-altera.inc

SRC_URI = "file://${EXTERNALSRC}"

LIC_FILES_CHKSUM =
"file://${S}/COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

BUILD_DEFCONFIG = "socfpga_defconfig"
EXTERNALSRC = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"

SRCREV_pn-${PN} = "${AUTOREV}"

S= "${EXTERNALSRC}"

hello-mod.bb  contains

SUMMARY = "Example of how to build an external Linux kernel module"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
           file://hello.c \
           file://COPYING \
          "


S = "${WORKDIR}"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.
~


Am I missing anything?

Thanks,
Praveen.

--001a1144fd6efa53d505490a5a06
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi All,<br></div>I am using =
poky-krogoth source and meta-altera layer. I am building kernel locally usi=
ng externalsrc. while building external module i am getting error.<br><br><=
br><br><span style=3D"color:rgb(255,0,0)">ERROR: Task do_make_scripts in</s=
pan> /home/praveenk/source/platform/build/../meta-skeleton/recipes-kernel/h=
ello-mod/<a href=3D"http://hello-mod_0.1.bb">hello-mod_0.1.bb</a> <span sty=
le=3D"color:rgb(255,0,0)">depends upon non-existent task do_shared_workdir =
in</span> /home/praveenk/source/platform/build/../meta-altera/recipes-kerne=
l/linux/<a href=3D"http://linux-altera-ltsi_4.1.22.bb">linux-altera-ltsi_4.=
1.22.bb</a><br><span style=3D"color:rgb(255,0,0)">ERROR: Command execution =
failed: 1<br></span><br></div><a href=3D"http://linux.bb">linux.bb</a> cont=
ains<br><br>LINUX_VERSION =3D &quot;4.1.22&quot;<br>LINUX_VERSION_SUFFIX =
=3D &quot;-ltsi&quot;<br><br>include linux-altera.inc<br><br>SRC_URI =3D &q=
uot;file://${EXTERNALSRC}&quot;<br><br>LIC_FILES_CHKSUM =3D &quot;file://${=
S}/COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7&quot;<br><br>BUILD_DEFCON=
FIG =3D &quot;socfpga_defconfig&quot;<br>EXTERNALSRC =3D &quot;${TOPDIR}/..=
/meta-altera/recipes-kernel/linux/files&quot;<br>EXTERNALSRC_BUILD =3D &quo=
t;${TOPDIR}/../meta-altera/recipes-kernel/linux/files&quot;<br><br>SRCREV_p=
n-${PN} =3D &quot;${AUTOREV}&quot;<br><br>S=3D &quot;${EXTERNALSRC}&quot;<b=
r><br></div><a href=3D"http://hello-mod.bb">hello-mod.bb</a>=C2=A0 contains=
<br><br>SUMMARY =3D &quot;Example of how to build an external Linux kernel =
module&quot;<br>LICENSE =3D &quot;GPLv2&quot;<br>LIC_FILES_CHKSUM =3D &quot=
;file://COPYING;md5=3D12f884d2ae1ff87c09e5b7ccc2c4ca7e&quot;<br><br>inherit=
 module<br><br>SRC_URI =3D &quot;file://Makefile \<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://hello.c \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://COPYING \<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br><br><br>S =3D &quot=
;${WORKDIR}&quot;<br><br># The inherit of module.bbclass will automatically=
 name module packages with<br># &quot;kernel-module-&quot; prefix as requir=
ed by the oe-core build environment.<br>~=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r><br></div>Am I missing anything?<br><br></div>Thanks,<br></div>Praveen.<b=
r><div><div><div><div><div><div><div><div><div><br></div></div></div></div>=
</div></div></div></div></div></div>

--001a1144fd6efa53d505490a5a06--
