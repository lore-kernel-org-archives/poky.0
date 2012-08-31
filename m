Return-Path: <sparsh150847@yahoo.com>
Received: from nm12-vm8.bullet.mail.sg3.yahoo.com
	(nm12-vm8.bullet.mail.sg3.yahoo.com [106.10.149.8])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id D1FE3E004AB
	for <poky@yoctoproject.org>; Fri, 31 Aug 2012 03:15:57 -0700 (PDT)
Received: from [106.10.166.124] by nm12.bullet.mail.sg3.yahoo.com with NNFMP;
	31 Aug 2012 10:15:54 -0000
Received: from [106.10.151.239] by tm13.bullet.mail.sg3.yahoo.com with NNFMP;
	31 Aug 2012 10:15:53 -0000
Received: from [127.0.0.1] by omp1023.mail.sg3.yahoo.com with NNFMP;
	31 Aug 2012 10:15:53 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 976884.64873.bm@omp1023.mail.sg3.yahoo.com
Received: (qmail 28731 invoked by uid 60001); 31 Aug 2012 10:15:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1346408153; bh=zOLaFCtUOQ+tSHSKe6NQvnoSwEIg1boIAkSs2DcCHd8=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=g2Ko/XxhwXurgexc29J6zSsK0BKEuSHdzbf65Swgeu85MYDbfWmzzUoZbAzJv9HlrzlN1ApOS6WlRTKDgJUcZ0UFlGSK+dfqKdpkV6KD6wHSk8Cmk+zC5T9oBDU5Mj0JzmbyewBT93Dl6Z1SpEAQu9o5FB6AYhZYa5SJxdJmnCs=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=z+tVX8FUjnQ/ywyDkMcaFfsYm4xBbBeTK8g2ZFVsLxNWr/ioYkUB3wkYdNUfoZPthGLIIVXcBwwaP23dx240IxT0klvNV17PbqGNH+ZXPjnNVv7hLQcatzgFVvXkyVa5v/v879LqkvpDDWlyOcLB4XYKXqi9oPd6j7OQipxL08E=;
X-YMail-OSG: BKwrO98VM1nJQTkYcas3gAMWHSpbSYW3HhxGjT2EYw0J1qE
	ajGTzSUQeGJ_BTX1Xzj_iHM8JPOa0uM22IC5pHPeCAedpd90g.0plc_SbwSS
	0ponCFrE_BHK6kgOP51v9cPnsV6W.wVAWj1Ci45FSw6aDGSaGqTbmqy03XTN
	agFIQPf980goqkehVxoqWo.OMVz2eGyQG5V7dbOdNQgqHsGYOIUXaDivNtQN
	ZWUKbExNuQ8YJGJlwYTppXn11htJ2Op3O4W47vDEi1eQZmNtm0cM6M5flSV8
	ji0c_.uxxMLZjZFeYGqky32xsSU2T.46vEZf4wsPc8HPeRrDicoHVZUVHnXm
	yLDMYTbaICw2DQIHUkqRPMcKHWKJr9m4QDm1fKxkzc1KtmlzJ
Received: from [115.111.25.162] by web194601.mail.sg3.yahoo.com via HTTP;
	Fri, 31 Aug 2012 18:15:53 SGT
X-Mailer: YahooMailWebService/0.8.121.416
Message-ID: <1346408153.27994.YahooMailNeo@web194601.mail.sg3.yahoo.com>
Date: Fri, 31 Aug 2012 18:15:53 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: XBMC configuration get failed because of libpostproc library from FFMPEG package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Sparsh Wid hope <sparsh150847@yahoo.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 10:15:59 -0000
Content-Type: multipart/alternative;
	boundary="734958990-945323523-1346408153=:27994"

--734958990-945323523-1346408153=:27994
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=0AI'm Compiling xbmc-11.1 with the help of poky. But it's gettin=
g fail at configure time.=A0=0AThe OE build configuration is given below:=
=0A=0AOE Build Configuration:=0ABB_VERSION =A0 =A0 =A0 =A0=3D "1.11.0"=0AME=
TADATA_BRANCH =A0 =3D "bernard-cur"=0AMETADATA_REVISION =3D "1f2e1abbe2726e=
a6fc83e83b644ce7ee32a54fa2"=0ATARGET_ARCH =A0 =A0 =A0 =3D "i586"=0ATARGET_O=
S =A0 =A0 =A0 =A0 =3D "linux"=0AMACHINE =A0 =A0 =A0 =A0 =A0 =3D "fishriver"=
=0ADISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"=0ADISTRO_VERSION =A0 =A0=3D "1.=
0"=0ATARGET_FPU =A0 =A0 =A0 =A0=3D ""=0A=0AThe error log I got is:=0A=0Ache=
cking for FFMPEG... no=0A| configure: error: Could not find a required libr=
ary. Please see the README for your platform.=0A| FATAL: oe_runconf failed=
=0A| ERROR: Function 'do_configure' failed (see /home/sct/my_workspace/poky=
_xbmc_09Mar2012/build/tmp/work/atom-poky-linux/xbmc-11.1-r0/temp/log.do_con=
figure.24741 for further information)=0ANOTE: package xbmc-11.1-r0: task do=
_configure: Failed=0A=0ATo find out the reason I looked into config.log =A0=
file in xbmc and the information I got is :=0A=0Aconfigure:23490: checking =
for FFMPEG=0Aconfigure:23497: $PKG_CONFIG --exists --print-errors "$FFMPEG_=
LIBNAMES"=0APackage libpostproc was not found in the pkg-config search path=
.=0APerhaps you should add the directory containing `libpostproc.pc'=0Ato t=
he PKG_CONFIG_PATH environment variable=0ANo package 'libpostproc' found=0A=
configure:23500: $? =3D 1=0Aconfigure:23513: $PKG_CONFIG --exists --print-e=
rrors "$FFMPEG_LIBNAMES"=0APackage libpostproc was not found in the pkg-con=
fig search path.=0APerhaps you should add the directory containing `libpost=
proc.pc'=0Ato the PKG_CONFIG_PATH environment variable=0ANo package 'libpos=
tproc' found=0Aconfigure:23516: $? =3D 1=0Aconfigure:23529: result: no=0ANo=
 package 'libpostproc' found=0Aconfigure:23545: error: Could not find a req=
uired library. Please see the README for your platform.=0A=0AI'm using=A0ff=
mpeg-0.11.1, inside this package I didn't get any=A0libpostproc.pc director=
y.=0A=0AI'm unable to understand what is the meaning of this error message =
and how to resolve it. Please help me to solve the problem.=0A=0AThanks in =
Advance

--734958990-945323523-1346408153=:27994
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif; font-size: 12pt; ">Hi Al=
l,</div><div style=3D"font-family: 'times new roman', 'new york', times, se=
rif; font-size: 12pt; "><br></div><div style=3D"font-family: 'times new rom=
an', 'new york', times, serif; font-size: 16px; color: rgb(0, 0, 0); backgr=
ound-color: transparent; font-style: normal; ">I'm Compiling xbmc-11.1 with=
 the help of poky. But it's getting fail at configure time.&nbsp;</div><div=
 style=3D"font-family: 'times new roman', 'new york', times, serif; font-si=
ze: 16px; color: rgb(0, 0, 0); background-color: transparent; font-style: n=
ormal; ">The OE build configuration is given below:</div><div style=3D"font=
-family: 'times new roman', 'new york', times, serif; font-size: 16px; colo=
r: rgb(0, 0, 0); background-color: transparent; font-style: normal;
 "><br></div><div style=3D"background-color: transparent; "><div style=3D"b=
ackground-color: transparent; "><font face=3D"times new roman, new york, ti=
mes, serif">OE Build Configuration:</font></div><div style=3D"background-co=
lor: transparent; "><font face=3D"times new roman, new york, times, serif">=
BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.11.0"</font></div><div style=
=3D"background-color: transparent; "><font face=3D"times new roman, new yor=
k, times, serif">METADATA_BRANCH &nbsp; =3D "bernard-cur"</font></div><div =
style=3D"background-color: transparent; "><font face=3D"times new roman, ne=
w york, times, serif">METADATA_REVISION =3D "1f2e1abbe2726ea6fc83e83b644ce7=
ee32a54fa2"</font></div><div style=3D"background-color: transparent; "><fon=
t face=3D"times new roman, new york, times, serif">TARGET_ARCH &nbsp; &nbsp=
; &nbsp; =3D "i586"</font></div><div style=3D"background-color: transparent=
; "><font face=3D"times new roman, new york, times, serif">TARGET_OS &nbsp;=
 &nbsp; &nbsp; &nbsp; =3D
 "linux"</font></div><div style=3D"background-color: transparent; "><font f=
ace=3D"times new roman, new york, times, serif">MACHINE &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; =3D "fishriver"</font></div><div style=3D"background-color:=
 transparent; "><font face=3D"times new roman, new york, times, serif">DIST=
RO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</font></div><div sty=
le=3D"background-color: transparent; "><font face=3D"times new roman, new y=
ork, times, serif">DISTRO_VERSION &nbsp; &nbsp;=3D "1.0"</font></div><div s=
tyle=3D"background-color: transparent; "><font face=3D"times new roman, new=
 york, times, serif">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D ""</font></d=
iv><div style=3D"color: rgb(0, 0, 0); font-family: 'times new roman', 'new =
york', times, serif; font-size: 16px; font-style: normal; "><br></div><div =
style=3D"color: rgb(0, 0, 0); font-family: 'times new roman', 'new york', t=
imes, serif; font-size: 16px; font-style: normal; background-color: transpa=
rent; ">The error log
 I got is:</div><div style=3D"color: rgb(0, 0, 0); font-family: 'times new =
roman', 'new york', times, serif; font-size: 16px; font-style: normal; back=
ground-color: transparent; "><br></div><div style=3D"background-color: tran=
sparent; "><div style=3D"background-color: transparent; "><font face=3D"tim=
es new roman, new york, times, serif" style=3D"font-weight: bold; color: rg=
b(255, 0, 127);">checking for FFMPEG... no</font></div><div style=3D"backgr=
ound-color: transparent; "><font face=3D"times new roman, new york, times, =
serif">| configure: error: Could not find a required library. Please see th=
e README for your platform.</font></div><div style=3D"background-color: tra=
nsparent; "><font face=3D"times new roman, new york, times, serif">| FATAL:=
 oe_runconf failed</font></div><div style=3D"background-color: transparent;=
 "><font face=3D"times new roman, new york, times, serif">| ERROR: Function=
 'do_configure' failed (see
 /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-linux/=
xbmc-11.1-r0/temp/log.do_configure.24741 for further information)</font></d=
iv><div style=3D"background-color: transparent; "><font face=3D"times new r=
oman, new york, times, serif">NOTE: package xbmc-11.1-r0: task do_configure=
: Failed</font></div><div style=3D"color: rgb(0, 0, 0); font-family: 'times=
 new roman', 'new york', times, serif; font-size: 16px; font-style: normal;=
 "><br></div><div style=3D"color: rgb(0, 0, 0); font-family: 'times new rom=
an', 'new york', times, serif; font-size: 16px; font-style: normal; backgro=
und-color: transparent; ">To find out the reason I looked into <span style=
=3D"font-weight: bold;">config.log </span>&nbsp;file in <span style=3D"font=
-weight: bold;">xbmc </span>and the information I got is :</div><div style=
=3D"color: rgb(0, 0, 0); font-family: 'times new roman', 'new york', times,=
 serif; font-size: 16px; font-style: normal; background-color: transparent;
 "><br></div><div style=3D"background-color: transparent; "><span style=3D"=
font-family: 'times new roman', 'new york', times, serif;">configure:23490:=
 checking for FFMPEG</span></div><div style=3D"background-color: transparen=
t; "><span style=3D"font-family: 'times new roman', 'new york', times, seri=
f;">configure:23497: $PKG_CONFIG --exists --print-errors "$FFMPEG_LIBNAMES"=
</span></div><div style=3D"background-color: transparent; "><span style=3D"=
font-family: 'times new roman', 'new york', times, serif;">Package libpostp=
roc was not found in the pkg-config search path.</span></div><div style=3D"=
background-color: transparent; "><span style=3D"font-family: 'times new rom=
an', 'new york', times, serif;">Perhaps you should add the directory contai=
ning `libpostproc.pc'</span></div><div style=3D"background-color: transpare=
nt; "><span style=3D"font-family: 'times new roman', 'new york', times, ser=
if;">to the PKG_CONFIG_PATH environment variable</span></div><div
 style=3D"background-color: transparent; "><span style=3D"font-family: 'tim=
es new roman', 'new york', times, serif; font-weight: bold; color: rgb(255,=
 0, 127);">No package 'libpostproc' found</span></div><div style=3D"backgro=
und-color: transparent; "><span style=3D"font-family: 'times new roman', 'n=
ew york', times, serif;">configure:23500: $? =3D 1</span></div><div style=
=3D"background-color: transparent; "><span style=3D"font-family: 'times new=
 roman', 'new york', times, serif;">configure:23513: $PKG_CONFIG --exists -=
-print-errors "$FFMPEG_LIBNAMES"</span></div><div style=3D"background-color=
: transparent; "><span style=3D"font-family: 'times new roman', 'new york',=
 times, serif;">Package libpostproc was not found in the pkg-config search =
path.</span></div><div style=3D"background-color: transparent; "><span styl=
e=3D"font-family: 'times new roman', 'new york', times, serif;">Perhaps you=
 should add the directory containing `libpostproc.pc'</span></div><div
 style=3D"background-color: transparent; "><span style=3D"font-family: 'tim=
es new roman', 'new york', times, serif;">to the PKG_CONFIG_PATH environmen=
t variable</span></div><div style=3D"background-color: transparent; "><span=
 style=3D"font-family: 'times new roman', 'new york', times, serif; font-we=
ight: bold; color: rgb(255, 0, 127);">No package 'libpostproc' found</span>=
</div><div style=3D"background-color: transparent; "><span style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif;">configure:23516: $? =3D=
 1</span></div><div style=3D"background-color: transparent; "><span style=
=3D"font-family: 'times new roman', 'new york', times, serif;">configure:23=
529: result: no</span></div><div style=3D"background-color: transparent; ">=
<span style=3D"font-family: 'times new roman', 'new york', times, serif;">N=
o package 'libpostproc' found</span></div><div style=3D"background-color: t=
ransparent; "><span style=3D"font-family: 'times new roman', 'new york', ti=
mes,
 serif;">configure:23545: error: Could not find a required library. Please =
see the README for your platform.</span></div><div style=3D"color: rgb(0, 0=
, 0); font-family: 'times new roman', 'new york', times, serif; font-size: =
16px; font-style: normal; background-color: transparent; "><br></div><div s=
tyle=3D"color: rgb(0, 0, 0); font-family: 'times new roman', 'new york', ti=
mes, serif; font-size: 16px; font-style: normal; background-color: transpar=
ent; ">I'm using&nbsp;<span style=3D"font-weight: bold;">ffmpeg-0.11.1</spa=
n>, inside this package I didn't get any&nbsp;<span style=3D"background-col=
or: transparent; ">libpostproc.pc directory.</span></div><div style=3D"colo=
r: rgb(0, 0, 0); font-family: 'times new roman', 'new york', times, serif; =
font-size: 16px; font-style: normal; background-color: transparent; "><span=
 style=3D"background-color: transparent; "><br></span></div><div style=3D"c=
olor: rgb(0, 0, 0); font-family: 'times new roman', 'new york', times, seri=
f;
 font-size: 16px; font-style: normal; background-color: transparent; ">I'm =
unable to understand what is the meaning of this error message and how to r=
esolve it. Please help me to solve the problem.</div><div style=3D"color: r=
gb(0, 0, 0); font-family: 'times new roman', 'new york', times, serif; font=
-size: 16px; font-style: normal; background-color: transparent; "><br></div=
><div style=3D"color: rgb(0, 0, 0); font-family: 'times new roman', 'new yo=
rk', times, serif; font-size: 16px; font-style: normal; background-color: t=
ransparent; ">Thanks in Advance</div></div></div></div></body></html>

--734958990-945323523-1346408153=:27994--
