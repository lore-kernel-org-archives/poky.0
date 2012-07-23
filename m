Return-Path: <sparsh150847@yahoo.com>
Received: from nm5-vm6.bullet.mail.sg3.yahoo.com
	(nm5-vm6.bullet.mail.sg3.yahoo.com [106.10.148.149])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0B875E0034A
	for <poky@yoctoproject.org>; Mon, 23 Jul 2012 03:33:36 -0700 (PDT)
Received: from [106.10.166.123] by nm5.bullet.mail.sg3.yahoo.com with NNFMP;
	23 Jul 2012 10:33:35 -0000
Received: from [106.10.150.29] by tm12.bullet.mail.sg3.yahoo.com with NNFMP;
	23 Jul 2012 10:33:35 -0000
Received: from [127.0.0.1] by omp1030.mail.sg3.yahoo.com with NNFMP;
	23 Jul 2012 10:33:35 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 326940.3805.bm@omp1030.mail.sg3.yahoo.com
Received: (qmail 18375 invoked by uid 60001); 23 Jul 2012 10:33:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1343039615; bh=Jf1a50uRd7XmxXBzq4wQrqy/eFP7U78x2EZVq6H+eQ8=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=u0doDcTu9cFBz+pu3ztX/qZJRP011k/yemajUJ39CNEiAB8pmsb5Y67mJXAp/5mkiNerQh7FqJ8Lu7B4TvvxXBOMdi7NSIdfWtonvm1Sq9eg9fB+D6inkbfIREkb2f0WJcyFtZVvCXtccHcLkHORGaJ3bjGDSI2knTWwBpW6nAU=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=xhZoAVNAGgVyrP6XcKNeu6zkeBy6xNARpMz94T6jBP8NcIbsWW4lxV19IthP3MlVpkAY7NMqG/LMXg9njsCjpSw6+G9qP6vWVvjTjV2eJ9LpI7lm0mPISbL7wCorqS7nbFNW2apUspzufZy6vPGlsztU9d+HoMOFzAg8w0hQbD4=;
X-YMail-OSG: ADsEIFMVM1nEArTTaoZE1l0.EZvbDX9zD1OS0gk4zmxLs7W
	6RMVwoNs7o1fP5L6QtziREsLzFAVBuX8BpWHwfpgStvRHNe9inlI54hXDlSZ
	9zzK9UeqxuhN53c55Ikhfc59JeweW1F6nFNpcRorh_8EcjgRlgK3W2OL1bou
	W5AQCYJHARwBSJWyRunoMoaiXL0fwNFWH2RGESU7jNFYV5xb8TpB8KS4dkOt
	eJ6zH.BkD22FKFzskvSS9iJXh1UR8lr2WTSYKJCR6DQ5dP0lw2N8ZGj8ro59
	Hzd_lDLN5eRy3yLfVEr5C89Y.UUUEaX26LnQB2KXWojzJ.J2KSFpLHd8BNm6
	.g94B2nSGKedCZHqDbJ_mQoYZynOQfkee2KYNDmG3xufNDzgq9TEsTWoUoFc
	LUI8kyfZXUqtJ7DFMuIs-
Received: from [115.111.25.162] by web194902.mail.sg3.yahoo.com via HTTP;
	Mon, 23 Jul 2012 18:33:35 SGT
X-Mailer: YahooMailWebService/0.8.120.356233
Message-ID: <1343039615.14150.YahooMailNeo@web194902.mail.sg3.yahoo.com>
Date: Mon, 23 Jul 2012 18:33:35 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Configure Error while compiling xbmc
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Sparsh Wid hope <sparsh150847@yahoo.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Jul 2012 10:33:38 -0000
Content-Type: multipart/alternative;
	boundary="-421573433-284829850-1343039615=:14150"

---421573433-284829850-1343039615=:14150
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=0AI'm compiling the xbmc through poky, got some error. Error log=
 is given below:=0A=0A| checking librtmp/amf.h presence... no=0A| checking =
for librtmp/amf.h... no=0A| checking librtmp/rtmp.h usability... no=0A| che=
cking librtmp/rtmp.h presence... no=0A| checking for librtmp/rtmp.h... no=
=0A| checking for main in -lsmbclient... yes=0A| checking nfsc/libnfs.h usa=
bility... no=0A| checking nfsc/libnfs.h presence... no=0A| checking for nfs=
c/libnfs.h... no=0A| configure: =3D=3D Could not find libnfs. NFS client su=
pport disabled. =3D=3D=0A| checking afpfs-ng/libafpclient.h usability... no=
=0A| checking afpfs-ng/libafpclient.h presence... no=0A| checking for afpfs=
-ng/libafpclient.h... no=0A| configure: =3D=3D Could not find libafpclient.=
 AFP client support disabled. =3D=3D=0A| checking for main in -lplist... no=
=0A| configure: =3D=3D Could not find libplist. AirPlay support disabled. =
=3D=3D=0A| checking for shairport_set_ao in -lshairport... no=0A| configure=
: =3D=3D Could not find libshairport. AirTunes support disabled. =3D=3D=0A|=
 checking for UDEV... yes=0A| configure: =3D=3D libusb disabled. =3D=3D=0A|=
 checking for CEC... no=0A| =3D=3D libcec disabled. CEC adapter support wil=
l not be available. =3D=3D=0A| configure: =3D=3D libcec disabled. CEC adapt=
er support will not be available. =3D=3D=0A| checking for FFMPEG... no=0A| =
configure: error: Could not find a required library. Please see the README =
for your platform.=0A| FATAL: oe_runconf failed=0A| ERROR: Function 'do_con=
figure' failed (see /home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar201=
2/build/tmp/work/atom-poky-linux/xbmc-11.1-r0/temp/log.do_configure.6718 fo=
r further information)=0ANOTE: package xbmc-11.1-r0: task do_configure: Fai=
led=0AERROR: Task 693 (/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar=
2012/meta-sct/recipes-sct/xbmc/xbmc_11.1.bb, do_configure) failed with exit=
 code '1'=0A=0AI've already compiled ffmpeg=A0package, even I got this erro=
r.=0A=0APlease help me to resolve this error.=0A=0AThanks in advance

---421573433-284829850-1343039615=:14150
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif; font-size: 12pt; ">Hi Al=
l,</div><div style=3D"font-family: 'times new roman', 'new york', times, se=
rif; font-size: 12pt; "><br></div><div style=3D"font-family: 'times new rom=
an', 'new york', times, serif; font-size: 12pt; ">I'm compiling the xbmc th=
rough poky, got some error. Error log is given below:</div><div style=3D"fo=
nt-family: 'times new roman', 'new york', times, serif; font-size: 12pt; ">=
<br></div><div><div><font face=3D"'times new roman', 'new york', times, ser=
if" style=3D"font-weight: bold;">| checking librtmp/amf.h presence... no</f=
ont></div><div><font face=3D"'times new roman', 'new york', times, serif" s=
tyle=3D"font-weight: bold;">| checking for librtmp/amf.h... no</font></div>=
<div><font face=3D"'times new roman', 'new york', times, serif" style=3D"fo=
nt-weight:
 bold;">| checking librtmp/rtmp.h usability... no</font></div><div><font fa=
ce=3D"'times new roman', 'new york', times, serif" style=3D"font-weight: bo=
ld;">| checking librtmp/rtmp.h presence... no</font></div><div><font face=
=3D"'times new roman', 'new york', times, serif" style=3D"font-weight: bold=
;">| checking for librtmp/rtmp.h... no</font></div><div><font face=3D"'time=
s new roman', 'new york', times, serif" style=3D"font-weight: bold;">| chec=
king for main in -lsmbclient... yes</font></div><div><font face=3D"'times n=
ew roman', 'new york', times, serif" style=3D"font-weight: bold;">| checkin=
g nfsc/libnfs.h usability... no</font></div><div><font face=3D"'times new r=
oman', 'new york', times, serif" style=3D"font-weight: bold;">| checking nf=
sc/libnfs.h presence... no</font></div><div><font face=3D"'times new roman'=
, 'new york', times, serif" style=3D"font-weight: bold;">| checking for nfs=
c/libnfs.h... no</font></div><div><font face=3D"'times new roman', 'new yor=
k', times, serif"
 style=3D"font-weight: bold;">| configure: =3D=3D Could not find libnfs. NF=
S client support disabled. =3D=3D</font></div><div><font face=3D"'times new=
 roman', 'new york', times, serif" style=3D"font-weight: bold;">| checking =
afpfs-ng/libafpclient.h usability... no</font></div><div><font face=3D"'tim=
es new roman', 'new york', times, serif" style=3D"font-weight: bold;">| che=
cking afpfs-ng/libafpclient.h presence... no</font></div><div><font face=3D=
"'times new roman', 'new york', times, serif" style=3D"font-weight: bold;">=
| checking for afpfs-ng/libafpclient.h... no</font></div><div><font face=3D=
"'times new roman', 'new york', times, serif" style=3D"font-weight: bold;">=
| configure: =3D=3D Could not find libafpclient. AFP client support disable=
d. =3D=3D</font></div><div><font face=3D"'times new roman', 'new york', tim=
es, serif" style=3D"font-weight: bold;">| checking for main in -lplist... n=
o</font></div><div><font face=3D"'times new roman', 'new york', times, seri=
f" style=3D"font-weight: bold;">|
 configure: =3D=3D Could not find libplist. AirPlay support disabled. =3D=
=3D</font></div><div><font face=3D"'times new roman', 'new york', times, se=
rif" style=3D"font-weight: bold;">| checking for shairport_set_ao in -lshai=
rport... no</font></div><div><font face=3D"'times new roman', 'new york', t=
imes, serif" style=3D"font-weight: bold;">| configure: =3D=3D Could not fin=
d libshairport. AirTunes support disabled. =3D=3D</font></div><div><font fa=
ce=3D"'times new roman', 'new york', times, serif" style=3D"font-weight: bo=
ld;">| checking for UDEV... yes</font></div><div><font face=3D"'times new r=
oman', 'new york', times, serif" style=3D"font-weight: bold;">| configure: =
=3D=3D libusb disabled. =3D=3D</font></div><div><font face=3D"'times new ro=
man', 'new york', times, serif" style=3D"font-weight: bold;">| checking for=
 CEC... no</font></div><div><font face=3D"'times new roman', 'new york', ti=
mes, serif" style=3D"font-weight: bold;">| =3D=3D libcec disabled. CEC adap=
ter support will not be available.
 =3D=3D</font></div><div><font face=3D"'times new roman', 'new york', times=
, serif" style=3D"font-weight: bold;">| configure: =3D=3D libcec disabled. =
CEC adapter support will not be available. =3D=3D</font></div><div><font fa=
ce=3D"'times new roman', 'new york', times, serif" style=3D"font-weight: bo=
ld; color: rgb(255, 0, 127);">| checking for FFMPEG... no</font></div><div>=
<font face=3D"'times new roman', 'new york', times, serif" style=3D"font-we=
ight: bold; color: rgb(255, 0, 127);">| configure: error: Could not find a =
required library. Please see the README for your platform.</font></div><div=
><font face=3D"'times new roman', 'new york', times, serif" style=3D"font-w=
eight: bold;">| FATAL: oe_runconf failed</font></div><div><font face=3D"'ti=
mes new roman', 'new york', times, serif" style=3D"font-weight: bold;">| ER=
ROR: Function 'do_configure' failed (see /home/sct/xbmc_final/test/xbmc_11j=
ul/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-linux/xbmc-11.1-r0/temp/log=
.do_configure.6718 for
 further information)</font></div><div><font face=3D"'times new roman', 'ne=
w york', times, serif" style=3D"font-weight: bold;">NOTE: package xbmc-11.1=
-r0: task do_configure: Failed</font></div><div><font face=3D"'times new ro=
man', 'new york', times, serif" style=3D"font-weight: bold;">ERROR: Task 69=
3 (/home/sct/xbmc_final/test/xbmc_11jul/poky_xbmc_09Mar2012/meta-sct/recipe=
s-sct/xbmc/xbmc_11.1.bb, do_configure) failed with exit code '1'</font></di=
v><div><font face=3D"'times new roman', 'new york', times, serif" style=3D"=
font-weight: bold;"><br></font></div><div><span style=3D"font-family: 'time=
s new roman', 'new york', times, serif; ">I've already compiled <span style=
=3D"font-weight: bold;">ffmpeg</span>&nbsp;package, even I got this error.<=
/span></div><div><span style=3D"font-family: 'times new roman', 'new york',=
 times, serif; "><br></span></div><div><span style=3D"font-family: 'times n=
ew roman', 'new york', times, serif; ">Please help me to resolve this
 error.</span></div><div><span style=3D"font-family: 'times new roman', 'ne=
w york', times, serif; "><br></span></div><div><span style=3D"font-family: =
'times new roman', 'new york', times, serif; ">Thanks in advance</span></di=
v></div></div></body></html>

---421573433-284829850-1343039615=:14150--
