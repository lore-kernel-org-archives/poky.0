Return-Path: <suneet.saini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC164E0081E; Wed, 18 Feb 2015 22:13:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, DC_IMAGE_SPAM_HTML, 
	DC_PNG_UNO_LARGO, DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, 
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (suneet.saini[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 DC_PNG_UNO_LARGO Message contains a single large inline gif
	*  0.8 DC_IMAGE_SPAM_HTML Possible Image-only spam
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AF6EE0034A;
	Wed, 18 Feb 2015 22:13:52 -0800 (PST)
Received: by lbiz12 with SMTP id z12so5564672lbi.11;
	Wed, 18 Feb 2015 22:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6oE6sekKkKhNCRWIS8FTx9o8irJkebj3dooPVPZ9WaM=;
	b=agmlS2aJUB7XHDXJMjqcwbHsigtOoGXKkkQ9qWkt0jo5YpSFWeNlO7FysqPvrt4zFH
	T+Mvob1QSZhaGDaDTnROzk/zk5N/DvvcNTCBXuJIZfJOa0oE6CNMM6TUqa+VYh5CwxtQ
	+wujgFPCwmPzpg7Q/DFUaZVX4mdrIxGHpefisCTREjhOoGlePyZWmQiJ/GDTAZUZ0SXP
	WSf0rsdHWQP1dda+Jy4RgLUUhN8B8wfV5MRAoJ37wmt9kllxtUpLXAjmeBLVFZjN7dl3
	cj1AUtvVdEPVaHuWcDok8/gHWTx6aJbIFJrKW9aeQc7jnTduAB64WtUNDwxMG6yzlbJv
	et0w==
MIME-Version: 1.0
X-Received: by 10.152.45.100 with SMTP id l4mr2465341lam.112.1424326430754;
	Wed, 18 Feb 2015 22:13:50 -0800 (PST)
Received: by 10.112.44.97 with HTTP; Wed, 18 Feb 2015 22:13:50 -0800 (PST)
Date: Thu, 19 Feb 2015 11:43:50 +0530
Message-ID: <CAAxKdCh6p+9nxGmayUjcLLsDF-Ka98AMZZtXEUMusSCaXvM=Cw@mail.gmail.com>
From: suneet saini <suneet.saini@gmail.com>
To: poky@yoctoproject.org, linux-yocto@yoctoproject.org
Subject: Kernel Panic : Not Syncing : Exit code 0x00000004
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
X-List-Received-Date: Thu, 19 Feb 2015 06:13:54 -0000
X-Groupsio-MsgNum: 9927
Content-Type: multipart/mixed; boundary=001a11c1b9bef36e60050f6ad6fe

--001a11c1b9bef36e60050f6ad6fe
Content-Type: multipart/alternative; boundary=001a11c1b9bef36e5a050f6ad6fc

--001a11c1b9bef36e5a050f6ad6fc
Content-Type: text/plain; charset=UTF-8

Hello Team,

          I am using the 'hob' from poky and building the image by
selecting the machine as "qemuarm". Initially this file having architecture
as followed
qemuarm.conf
+++++++++++++++++++++++++++++++++++++++
#@TYPE: Machine
#@NAME: arm_versatile_926ejs
#@DESCRIPTION: arm_versatile_926ejs

require conf/machine/include/qemu.inc
require conf/machine/include/tune-arm926ejs.inc
#require conf/machine/include/tune-arm1136jf-s.inc

KERNEL_IMAGETYPE = "zImage"

SERIAL_CONSOLE = "115200 ttyAMA0"
+++++++++++++++++++++++++++++++++++++++

After building the image with "core-image-minimal" or
"core-image-full-cmdline" while running the image with qemu it works fine.
I want to change qemu working for "arm v7a" means support "Cortex A8".
That's why for this I make the changes in qemuarm.conf as in the
"~/poky/meta/conf/machine.conf"

qemuarm.conf
+++++++++++++++++++++++++++++++++++++++

require conf/machine/include/qemu.inc
require conf/machine/include/tune-cortexa8.inc

KERNEL_IMAGETYPE = "zImage"

SERIAL_CONSOLE = "115200 ttyAMA0"
+++++++++++++++++++++++++++++++++++++++

After that I am building the image and running it with qemu; I am getting
the kernel panic.

*Kernel Panic - not syncing : Attempting to kill Init! exitcode=0x00000004
*

For that snapshot of that is also attached with this mail.

-- 
*Suneet Kumar Saini*

--001a11c1b9bef36e5a050f6ad6fc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello Team,<br><br></div>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I am using the &#39;hob&#3=
9; from poky and building the image by selecting the machine as &quot;qemua=
rm&quot;. Initially this file having architecture as followed <br>qemuarm.c=
onf<br>+++++++++++++++++++++++++++++++++++++++<br>#@TYPE: Machine<br>#@NAME=
: arm_versatile_926ejs<br>#@DESCRIPTION: arm_versatile_926ejs<br><br>requir=
e conf/machine/include/qemu.inc<br>require conf/machine/include/tune-arm926=
ejs.inc<br>#require conf/machine/include/tune-arm1136jf-s.inc<br><br>KERNEL=
_IMAGETYPE =3D &quot;zImage&quot;<br><br>SERIAL_CONSOLE =3D &quot;115200 tt=
yAMA0&quot;<br>+++++++++++++++++++++++++++++++++++++++<br><br></div>After b=
uilding the image with &quot;core-image-minimal&quot; or &quot;core-image-f=
ull-cmdline&quot; while running the image with qemu it works fine.=C2=A0 I =
want to change qemu working for &quot;arm v7a&quot; means support &quot;Cor=
tex A8&quot;. That&#39;s why for this I make the changes in qemuarm.conf as=
 in the &quot;~/poky/meta/conf/machine.conf&quot;<br><br>qemuarm.conf<br>++=
+++++++++++++++++++++++++++++++++++++<br><br>require conf/machine/include/q=
emu.inc<br>require conf/machine/include/tune-cortexa8.inc<br><br>KERNEL_IMA=
GETYPE =3D &quot;zImage&quot;<br><br>SERIAL_CONSOLE =3D &quot;115200 ttyAMA=
0&quot;<br>+++++++++++++++++++++++++++++++++++++++<br><br></div>After that =
I am building the image and running it with qemu; I am getting the kernel p=
anic.<br><br></div><b>Kernel Panic - not syncing : Attempting to kill Init!=
 exitcode=3D0x00000004=C2=A0 </b><br><br></div>For that snapshot of that is=
 also attached with this mail.<br clear=3D"all"><div><div><div><div><div><d=
iv><div><br>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><b>Sunee=
t Kumar Saini</b></div></div>
</div></div></div></div></div></div></div></div>

--001a11c1b9bef36e5a050f6ad6fc--

--001a11c1b9bef36e60050f6ad6fe
Content-Type: image/png; name="1.png"
Content-Disposition: attachment; filename="1.png"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i6br4oct0

iVBORw0KGgoAAAANSUhEUgAAAokAAAH6CAIAAADk60GEAAAAiHpUWHRSYXcgcHJvZmlsZSB0eXBl
IGV4aWYAAHjaVY7RDQMxCEP/M0VHIEAMjHM6XaTboOOXiGujvg9jWchyu973bK9FJ246zBEAJRoa
fKRxKoSoM/V1U4vnSk/HO27CZRBupPtRn/zLEDimqRkGTpyc7XwJl2bRaqU1I3aJB1WN/Ofz+A2o
FR9IbiyG4mvqcgAACgZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i
77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0i
YWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDQuNC4wLUV4aXYyIj4KIDxyZGY6UkRG
IHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+
CiAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9u
cy5hZG9iZS5jb20vZXhpZi8xLjAvIgogICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNv
bS90aWZmLzEuMC8iCiAgIGV4aWY6UGl4ZWxYRGltZW5zaW9uPSI2NDkiCiAgIGV4aWY6UGl4ZWxZ
RGltZW5zaW9uPSI1MDYiCiAgIHRpZmY6SW1hZ2VXaWR0aD0iNjQ5IgogICB0aWZmOkltYWdlSGVp
Z2h0PSI1MDYiCiAgIHRpZmY6T3JpZW50YXRpb249IjEiLz4KIDwvcmRmOlJERj4KPC94OnhtcG1l
dGE+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAK
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

--001a11c1b9bef36e60050f6ad6fe--
