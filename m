Return-Path: <stefan.golinschi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75798E00B51; Wed, 31 May 2017 09:17:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefan.golinschi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95F17E00992
	for <poky@yoctoproject.org>; Wed, 31 May 2017 09:17:48 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id f55so16088499qta.3
	for <poky@yoctoproject.org>; Wed, 31 May 2017 09:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8VD/hY8wMGEzxYbG7N2d2QzWlF3h43Gqc22aW/CZFtg=;
	b=oztfuAwRqRr/5KRUUNTo0qW0NKm3erl/sWtGf7498BZCSOzYcMzW/x1GzT7lud42SH
	CnCH+HKe2sCWC8xeVhRCPefMSJp69evFmEod4qwmmOeaOqrx+w26y2cyQAAt2W/qP9Br
	R8UxiOe0GiaIV1mw/Rq9o9/G2dvVXjwSWk5hJHXDeHHnOYCewZZFrDmDJFOQpJUYa3hN
	Cst76Ej35UBWqLlhnY0mUe9gfW1DXrrXytL+44GwfTwaibyhwJ1gkIWC5Hu1mlYuNDDH
	j3YvGRuDH5OFHIm4Mv1xZAF+N9y37zbDZCQZ704Ygow1/rRfEMCIRDXw6bVK2sD3A/eZ
	8gIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8VD/hY8wMGEzxYbG7N2d2QzWlF3h43Gqc22aW/CZFtg=;
	b=geF/T55/5QQXydhRJFT1Zr5Wc/oIF4sO7oEVihI6f7y5AJKHopM6sRx2hBO67u/wFn
	BJt2Xu000NVcu5OkQmJhBN3vGMZimW1eqPwkf7x5smES0UAzjObtTMWMrhzIZpzshB/G
	qL2+feeRzOYogEsW9E0Ya4xgDtqyce95ZMpArz9vC/MrC0Zjl3T/HEFBosqM3t7eMf4J
	0GI+w9SsW2uOOXdx9FfUqMrYnK7Zr1VJO+ayFHiGCSwBKkQ2ukZq7+Cftt5AGoqDixPC
	OxRunq0O8TLqEYjm2R0M7jOLtTmfW0h21qFCKLeLxA7oPX0isxHiLvlJd7jVfb1PUozR
	QBfw==
X-Gm-Message-State: AODbwcClCOWreoPLgCRRwuBIKtWme0Fs5apck/8Nfx58BWs3O6s8ntNt
	9PPtmMerGsYoGCCAiadgPoY8p1CpYBiUuFE=
X-Received: by 10.200.37.165 with SMTP id e34mr32931291qte.112.1496247467330; 
	Wed, 31 May 2017 09:17:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.38.68 with HTTP; Wed, 31 May 2017 09:17:27 -0700 (PDT)
From: =?UTF-8?Q?=C8=98tefan_Golinschi?= <stefan.golinschi@gmail.com>
Date: Wed, 31 May 2017 19:17:27 +0300
Message-ID: <CALW5WRzihq1UrO8ckvd-rjfb9aWtnu118ePx2jn7=0KH4r-B-g@mail.gmail.com>
To: poky@yoctoproject.org
Subject: morty: matchbox-desktop fails due to missing gdk-x11-3.0
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
X-List-Received-Date: Wed, 31 May 2017 16:17:49 -0000
Content-Type: multipart/alternative; boundary="001a113a862ec9573a0550d44297"

--001a113a862ec9573a0550d44297
Content-Type: text/plain; charset="UTF-8"

I am trying to build a core-image-sato image for an imx6s SoC, but the
build fails during the build of matchbox-desktop due to a missing package:
gdk-x11-3.0.
In my local.conf:
IMAGE_INSTALL_append = " gdk-pixbuf".
Any help?

Below is the error log:
$ bitbake core-image-sato
ERROR: matchbox-panel-2-2.11-r0 do_configure: configure failed
ERROR: matchbox-panel-2-2.11-r0 do_configure: Function failed: do_configure
(log file is located at
/home/user/workspace/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.17394)
ERROR: Logfile of failure stored in:
/home/user/workspace/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.17394
...
| checking dynamic linker characteristics... GNU/Linux ld.so
| checking how to hardcode library paths into programs... immediate
| checking whether stripping libraries is possible... yes
| checking if libtool supports shared libraries... yes
| checking whether to build shared libraries... yes
| checking whether to build static libraries... no
| checking whether gcc understands -Wall... yes
| checking whether gcc understands -Wstrict-prototypes... yes
| checking whether gcc understands -Wnested-externs... yes
| checking whether gcc understands -Werror=missing-prototypes... yes
| checking whether gcc understands -Werror=implicit-function-declaration...
yes
| checking whether gcc understands -Werror=pointer-arith... yes
| checking whether gcc understands -Werror=init-self... yes
| checking whether gcc understands -Werror=format-security... no
| checking whether gcc understands -Werror=format=2... yes
| checking whether gcc understands -Werror=missing-include-dirs... yes
| checking whether gcc understands -Werror=return-type... yes
| checking what warning flags to pass to the C compiler...  -Wall
-Wstrict-prototypes -Wnested-externs -Werror=missing-prototypes
-Werror=implicit-function-declaration -Werror=pointer-arith
-Werror=init-self -Werror=format=2 -Werror=missing-include-dirs
-Werror=return-type
| checking what language compliance flags to pass to the C compiler...
| checking for arm-poky-linux-gnueabi-pkg-config... no
| checking for pkg-config...
/home/user/workspace/yocto/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
| configure: WARNING: using cross tools not prefixed with host triplet
| checking pkg-config is at least version 0.9.0... yes
| checking for MATCHBOX_PANEL... no
| configure: error: Package requirements (glib-2.0
|                   gmodule-export-2.0
|                   x11
|                   gdk-x11-3.0
|                   gtk+-3.0) were not met:
|
| No package 'gdk-x11-3.0' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS
| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| WARNING:
/home/user/workspace/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/run.do_configure.17394:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_configure (log file is located at
/home/user/workspace/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.17394)

Thanks,
Stefan

--001a113a862ec9573a0550d44297
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to build a core-image-sato image for an imx6s =
SoC, but the build fails during the build of matchbox-desktop due to a miss=
ing package: gdk-x11-3.0.<div>In my local.conf:</div><div>IMAGE_INSTALL_app=
end =3D=C2=A0&quot; gdk-pixbuf&quot;.</div><div><div>Any help?<br><div><br>=
</div><div>Below is the error log:</div><div><div>$ bitbake core-image-sato=
<br><div><div>ERROR: matchbox-panel-2-2.11-r0 do_configure: configure faile=
d</div><div>ERROR: matchbox-panel-2-2.11-r0 do_configure: Function failed: =
do_configure (log file is located at /home/user/workspace/yocto/build/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do=
_configure.17394)</div><div>ERROR: Logfile of failure stored in: /home/user=
/workspace/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox=
-panel-2/2.11-r0/temp/log.do_configure.17394</div><div>...</div><div>| chec=
king dynamic linker characteristics... GNU/Linux ld.so</div><div>| checking=
 how to hardcode library paths into programs... immediate</div><div>| check=
ing whether stripping libraries is possible... yes</div><div>| checking if =
libtool supports shared libraries... yes</div><div>| checking whether to bu=
ild shared libraries... yes</div><div>| checking whether to build static li=
braries... no</div><div>| checking whether gcc understands -Wall... yes</di=
v><div>| checking whether gcc understands -Wstrict-prototypes... yes</div><=
div>| checking whether gcc understands -Wnested-externs... yes</div><div>| =
checking whether gcc understands -Werror=3Dmissing-prototypes... yes</div><=
div>| checking whether gcc understands -Werror=3Dimplicit-function-declarat=
ion... yes</div><div>| checking whether gcc understands -Werror=3Dpointer-a=
rith... yes</div><div>| checking whether gcc understands -Werror=3Dinit-sel=
f... yes</div><div>| checking whether gcc understands -Werror=3Dformat-secu=
rity... no</div><div>| checking whether gcc understands -Werror=3Dformat=3D=
2... yes</div><div>| checking whether gcc understands -Werror=3Dmissing-inc=
lude-dirs... yes</div><div>| checking whether gcc understands -Werror=3Dret=
urn-type... yes</div><div>| checking what warning flags to pass to the C co=
mpiler... =C2=A0-Wall -Wstrict-prototypes -Wnested-externs -Werror=3Dmissin=
g-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpointer-arit=
h -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -=
Werror=3Dreturn-type</div><div>| checking what language compliance flags to=
 pass to the C compiler...</div><div>| checking for arm-poky-linux-gnueabi-=
pkg-config... no</div><div>| checking for pkg-config... /home/user/workspac=
e/yocto/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config</div><div>| conf=
igure: WARNING: using cross tools not prefixed with host triplet</div><div>=
| checking pkg-config is at least version 0.9.0... yes</div><div>| checking=
 for MATCHBOX_PANEL... no</div><div>| configure: error: Package requirement=
s (glib-2.0</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 gmodule-export-2.0</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 x11</div><div>| =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gdk-x11-3.0</div><div>| =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtk+-3.0) were not met=
:</div><div>|=C2=A0</div><div>| No package &#39;gdk-x11-3.0&#39; found</div=
><div>|=C2=A0</div><div>| Consider adjusting the PKG_CONFIG_PATH environmen=
t variable if you</div><div>| installed software in a non-standard prefix.<=
/div><div>|=C2=A0</div><div>| Alternatively, you may set the environment va=
riables MATCHBOX_PANEL_CFLAGS</div><div>| and MATCHBOX_PANEL_LIBS to avoid =
the need to call pkg-config.</div><div>| See the pkg-config man page for mo=
re details.</div><div>| WARNING: /home/user/workspace/yocto/build/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/run.do_con=
figure.17394:1 exit 1 from &#39;exit 1&#39;</div><div>| ERROR: Function fai=
led: do_configure (log file is located at /home/user/workspace/yocto/build/=
tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/l=
og.do_configure.17394)</div><div><br></div><div class=3D"gmail_signature"><=
div dir=3D"ltr"><div>Thanks,</div><div>Stefan</div></div></div>
</div></div></div></div></div></div>

--001a113a862ec9573a0550d44297--
