Return-Path: <sparsh150847@yahoo.com>
Received: from nm36-vm5.bullet.mail.sg3.yahoo.com
	(nm36-vm5.bullet.mail.sg3.yahoo.com [106.10.151.92])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 27F94E0049B
	for <poky@yoctoproject.org>; Tue, 28 Aug 2012 21:57:17 -0700 (PDT)
Received: from [106.10.166.126] by nm36.bullet.mail.sg3.yahoo.com with NNFMP;
	29 Aug 2012 04:57:14 -0000
Received: from [106.10.151.187] by tm15.bullet.mail.sg3.yahoo.com with NNFMP;
	29 Aug 2012 04:57:14 -0000
Received: from [127.0.0.1] by omp1013.mail.sg3.yahoo.com with NNFMP;
	29 Aug 2012 04:57:14 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 93054.94828.bm@omp1013.mail.sg3.yahoo.com
Received: (qmail 64819 invoked by uid 60001); 29 Aug 2012 04:57:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1346216233; bh=NpYk42DClYTPlQJjPcPup/cMnkA2hgq2EIV9M7LXpNk=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=Rgnq76XfNuPe1u+aUpYdUuljIT1xY0T1KXpkhls3ZMMc1XWfBKPdzwvN2/eirTo5gqGSwOaQ5xu/8YBGofbX/f5Yy81XrJxgSIQXYCN7o1TIo1y4tZF4fxmnJrKF0MBHIjoiA5BAeSYkBi+NICyxao+0g7JPe4JQU/HTBRK/Bfk=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=uhkMThFzy6Ww7kTnqaZksHf8yGHC31x9CRNbsUi9KbDO5cH2BuNTBFgevmtr20+GiOH51cxob87tQtzJmmnu0GhttwG+AqjPEm0uyVuW9hP+bIEX5ukO/PCeOciNHVMAWGA48pM4OAK0NyZDXRrawEWgS7SGDUftBTBjX3RPCZY=;
X-YMail-OSG: YcLwjxYVM1lLH40Dq5639Wh.DOw6b5RKPxoLmpw22zixn4u
	.eJKJ5ItNHdwnqQt2PuHKdfrtW69qR2NXABQQh4a_59sT7fuZZ70zkA0d6vn
	g7qLYxM660xUT8EsTMTJzMJxjNO8q6tikBssdgCEFZ2hHpXLofTKX26JwrLA
	nY_bpSL5mxmE_fTrxMX1cUgJQoBKQsov0YLRh_eQjJ67wJz.pZQw2FOch7nw
	8KiIEFH4lywQ1e31G8lIDbtTZBvoHhUnqOwEENyfYSTYYV5uLkbhUOfMXo3W
	pB4U4QzOe2K8PnEG2Qhkt.mU_pdjGkq4wXCakOlHx1kFUx7HTjZRMd.bY7EY
	OOICWXESEudPA_Q7Fr4MZF_u9tJyIeIlPDpsnm2vPBj2zbUsbHhlCO8_VRn5
	NnNXoogB0XTI-
Received: from [115.111.25.162] by web194606.mail.sg3.yahoo.com via HTTP;
	Wed, 29 Aug 2012 12:57:13 SGT
X-Mailer: YahooMailWebService/0.8.121.416
References: <mailman.5.1346180401.14702.poky@yoctoproject.org>
Message-ID: <1346216233.64654.YahooMailNeo@web194606.mail.sg3.yahoo.com>
Date: Wed, 29 Aug 2012 12:57:13 +0800 (SGT)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
In-Reply-To: <mailman.5.1346180401.14702.poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Re: poky Digest, Vol 23, Issue 39
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
X-List-Received-Date: Wed, 29 Aug 2012 04:57:19 -0000
Content-Type: multipart/alternative;
	boundary="-1722158877-1134554724-1346216233=:64654"

---1722158877-1134554724-1346216233=:64654
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for your quick response. I looked into config.err =A0file, and got f=
ollowing information:=0Ai586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtu=
ne=3Dgeneric -mfpmath=3Dsse --sysroot=3D/home/sct/my_workspace/poky_xbmc_09=
Mar2012/build/tmp/sysroots/fishriver -fexpensive-optimizations -fomit-frame=
-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types -m32 -=
fomit-frame-pointer -O3 -fPIC -D_FORTIFY_SOURCE=3D0 -D_LARGEFILE_SOURCE -D_=
FILE_OFFSET_BITS=3D64 -Wall -Wdeclaration-after-statement -Wdisabled-optimi=
zation -Wpointer-arith -Wtype-limits -Wcast-qual -Wimplicit-function-declar=
ation -Wuninitialized -Wunused-variable -Wunused-but-set-variable -c -o /tm=
p/vpx-conf-2242-22036.o /tmp/vpx-conf-2242-24853.c=0A=0Acc1: error: unrecog=
nized command line option "-Wunused-but-set-variable"=0A=0AI'm trying to co=
mpile libvpx =A0for i586, =A0does libvpx supports this architecture. I'm se=
nding config.err =A0file in attachment.=0A=0A=0A=0A________________________=
________=0A From: "poky-request@yoctoproject.org" <poky-request@yoctoprojec=
t.org>=0ATo: poky@yoctoproject.org =0ASent: Wednesday, 29 August 2012 12:30=
 AM=0ASubject: poky Digest, Vol 23, Issue 39=0A =0ASend poky mailing list s=
ubmissions to=0A=A0=A0=A0 poky@yoctoproject.org=0A=0ATo subscribe or unsubs=
cribe via the World Wide Web, visit=0A=A0=A0=A0 https://lists.yoctoproject.=
org/listinfo/poky=0Aor, via email, send a message with subject or body 'hel=
p' to=0A=A0=A0=A0 poky-request@yoctoproject.org=0A=0AYou can reach the pers=
on managing the list at=0A=A0=A0=A0 poky-owner@yoctoproject.org=0A=0AWhen r=
eplying, please edit your Subject line so it is more specific=0Athan "Re: C=
ontents of poky digest..."=0A=0A=0AToday's Topics:=0A=0A=A0  1. Problem whi=
le compiling libvpx (Sparsh Wid hope)=0A=A0  2. Re: Problem while compiling=
 libvpx (Khem Raj)=0A=0A=0A------------------------------------------------=
----------------------=0A=0AMessage: 1=0ADate: Tue, 28 Aug 2012 14:50:18 +0=
800 (SGT)=0AFrom: Sparsh Wid hope <sparsh150847@yahoo.com>=0ATo: poky <poky=
@yoctoproject.org>=0ASubject: [poky] Problem while compiling libvpx=0AMessa=
ge-ID:=0A=A0=A0=A0 <1346136618.70838.YahooMailNeo@web194606.mail.sg3.yahoo.=
com>=0AContent-Type: text/plain; charset=3D"iso-8859-1"=0A=0AHi All,=0A=0AI=
'm compiling libvpx through poky and got the error related to linking of to=
olchain.?Build info is here:=0A=0AOE Build Configuration:=0ABB_VERSION ? ? =
? ?=3D "1.11.0"=0AMETADATA_BRANCH ? =3D "bernard-cur"=0AMETADATA_REVISION =
=3D "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"=0ATARGET_ARCH ? ? ? =3D "i58=
6"=0ATARGET_OS ? ? ? ? =3D "linux"=0AMACHINE ? ? ? ? ? =3D "fishriver"=0ADI=
STRO ? ? ? ? ? ?=3D "poky"=0ADISTRO_VERSION ? ?=3D "1.0"=0ATARGET_FPU ? ? ?=
 ?=3D ""=0A=0AError log is as follows:=0A=0AERROR: Logfile of failure store=
d in: /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-l=
inux/libvpx-1.0-r0/temp/log.do_configure.4510=0ALog data follows:=0A| Confi=
guring selected codecs=0A| ? enabling vp8_encoder=0A| ? enabling vp8_decode=
r=0A| Configuring for target 'x86-linux-gcc'=0A| ? enabling x86=0A| ? enabl=
ing pic=0A| ? enabling runtime_cpu_detect=0A| ? enabling mmx=0A| ? enabling=
 sse=0A| ? enabling sse2=0A| ? enabling sse3=0A| ? enabling ssse3=0A| ? ena=
bling sse4_1=0A| ? using i586-poky-linux-as=0A| ? enabling postproc=0A| Too=
lchain is unable to link executables=0A|?=0A| Configuration failed. This co=
uld reflect a misconfiguration of your=0A| toolchains, improper options sel=
ected, or another problem. If you=0A| don't see any useful error messages a=
bove, the next step is to look=0A| at the configure error log file (config.=
err) to determine what=0A| configure was trying to do when it died.=0A=0APl=
ease help me to resolve the error.=0A-------------- next part -------------=
-=0AAn HTML attachment was scrubbed...=0AURL: <http://lists.yoctoproject.or=
g/pipermail/poky/attachments/20120828/64e4361a/attachment-0001.html>=0A=0A-=
-----------------------------=0A=0AMessage: 2=0ADate: Tue, 28 Aug 2012 10:0=
5:02 -0700=0AFrom: Khem Raj <raj.khem@gmail.com>=0ATo: Sparsh Wid hope <spa=
rsh150847@yahoo.com>=0ACc: poky <poky@yoctoproject.org>=0ASubject: Re: [pok=
y] Problem while compiling libvpx=0AMessage-ID:=0A=A0=A0=A0 <CAMKF1spJJ0Naw=
=3DY7PR6uvNGG_1etM3XfJUYraTRyb8SSVpxH7g@mail.gmail.com>=0AContent-Type: tex=
t/plain; charset=3DUTF-8=0A=0AOn Mon, Aug 27, 2012 at 11:50 PM, Sparsh Wid =
hope=0A<sparsh150847@yahoo.com> wrote:=0A> Hi All,=0A>=0A> I'm compiling li=
bvpx through poky and got the error related to linking of=0A> toolchain. Bu=
ild info is here:=0A>=0A> OE Build Configuration:=0A> BB_VERSION=A0 =A0 =A0=
 =A0 =3D "1.11.0"=0A> METADATA_BRANCH=A0  =3D "bernard-cur"=0A> METADATA_RE=
VISION =3D "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"=0A> TARGET_ARCH=A0 =
=A0 =A0  =3D "i586"=0A> TARGET_OS=A0 =A0 =A0 =A0  =3D "linux"=0A> MACHINE=
=A0 =A0 =A0 =A0 =A0  =3D "fishriver"=0A> DISTRO=A0 =A0 =A0 =A0 =A0 =A0 =3D =
"poky"=0A> DISTRO_VERSION=A0 =A0 =3D "1.0"=0A> TARGET_FPU=A0 =A0 =A0 =A0 =
=3D ""=0A>=0A> Error log is as follows:=0A>=0A> ERROR: Logfile of failure s=
tored in:=0A> /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/ato=
m-poky-linux/libvpx-1.0-r0/temp/log.do_configure.4510=0A> Log data follows:=
=0A> | Configuring selected codecs=0A> |=A0  enabling vp8_encoder=0A> |=A0 =
 enabling vp8_decoder=0A> | Configuring for target 'x86-linux-gcc'=0A> |=A0=
  enabling x86=0A> |=A0  enabling pic=0A> |=A0  enabling runtime_cpu_detect=
=0A> |=A0  enabling mmx=0A> |=A0  enabling sse=0A> |=A0  enabling sse2=0A> =
|=A0  enabling sse3=0A> |=A0  enabling ssse3=0A> |=A0  enabling sse4_1=0A> =
|=A0  using i586-poky-linux-as=0A> |=A0  enabling postproc=0A> | Toolchain =
is unable to link executables=0A> |=0A> | Configuration failed. This could =
reflect a misconfiguration of your=0A> | toolchains, improper options selec=
ted, or another problem. If you=0A> | don't see any useful error messages a=
bove, the next step is to look=0A> | at the configure error log file (confi=
g.err) to determine what=0A> | configure was trying to do when it died.=0A>=
=0A> Please help me to resolve the error.=0A>=0A=0Ayou need to send more in=
formation. are there config.log files generated in=0Athe build tree?=0A=0A=
=0A> _______________________________________________=0A> poky mailing list=
=0A> poky@yoctoproject.org=0A> https://lists.yoctoproject.org/listinfo/poky=
=0A>=0A=0A=0A------------------------------=0A=0A__________________________=
_____________________=0Apoky mailing list=0Apoky@yoctoproject.org=0Ahttps:/=
/lists.yoctoproject.org/listinfo/poky=0A=0A=0AEnd of poky Digest, Vol 23, I=
ssue 39=0A************************************

---1722158877-1134554724-1346216233=:64654
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif; font-size: 12pt; ">Thank=
s for your quick response. I looked into <span style=3D"font-weight: bold;"=
>config.err </span>&nbsp;file, and got following information:</div><div sty=
le=3D"background-color: transparent; "><div style=3D"background-color: tran=
sparent; font-size: 16px; font-family: 'times new roman', 'new york', times=
, serif; font-style: normal; "><span style=3D"color: rgb(0, 0, 0); ">i586-p=
oky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse --=
sysroot=3D/home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/sysroots/fis=
hriver -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O=
2 -ggdb -feliminate-unused-debug-types -m32 -fomit-frame-pointer -O3 -fPIC =
-D_FORTIFY_SOURCE=3D0 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=3D64 -Wall
 -Wdeclaration-after-statement -Wdisabled-optimization -Wpointer-arith -Wty=
pe-limits -Wcast-qual -Wimplicit-function-declaration -Wuninitialized -Wunu=
sed-variable </span><span style=3D"color: rgb(255, 0, 127);">-Wunused-but-s=
et-variable</span> -c -o /tmp/vpx-conf-2242-22036.o /tmp/vpx-conf-2242-2485=
3.c</div><div style=3D"background-color: transparent; "><br></div><div styl=
e=3D"background-color: transparent; font-size: 16px; font-family: 'times ne=
w roman', 'new york', times, serif; font-style: normal; "><span style=3D"co=
lor: rgb(255, 0, 127);">cc1: error: unrecognized command line option "-Wunu=
sed-but-set-variable"</span></div><div style=3D"background-color: transpare=
nt; font-size: 16px; font-family: 'times new roman', 'new york', times, ser=
if; font-style: normal; color: rgb(255, 0, 127); "><br></div><div style=3D"=
background-color: transparent; font-size: 16px; font-family: 'times new rom=
an', 'new york', times, serif; font-style: normal; ">I'm trying to compile =
<span
 style=3D"font-weight: bold;">libvpx </span>&nbsp;for <span style=3D"font-w=
eight: bold;">i586, </span>&nbsp;does libvpx supports this architecture. I'=
m sending <span style=3D"font-weight: bold;">config.err </span>&nbsp;file i=
n attachment.</div><div style=3D"color: rgb(0, 0, 0); font-family: 'times n=
ew roman', 'new york', times, serif; font-size: 16px; font-style: normal; "=
><br></div></div><div style=3D"font-family: 'times new roman', 'new york', =
times, serif; font-size: 12pt; "><br></div>  <div style=3D"font-family: 'ti=
mes new roman', 'new york', times, serif; font-size: 12pt; "> <div style=3D=
"font-family: 'times new roman', 'new york', times, serif; font-size: 12pt;=
 "> <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> <hr size=3D"1">  <b>=
<span style=3D"font-weight:bold;">From:</span></b> "poky-request@yoctoproje=
ct.org" &lt;poky-request@yoctoproject.org&gt;<br> <b><span style=3D"font-we=
ight: bold;">To:</span></b> poky@yoctoproject.org <br> <b><span style=3D"fo=
nt-weight:
 bold;">Sent:</span></b> Wednesday, 29 August 2012 12:30 AM<br> <b><span st=
yle=3D"font-weight: bold;">Subject:</span></b> poky Digest, Vol 23, Issue 3=
9<br> </font> </div> <br>Send poky mailing list submissions to<br>&nbsp;&nb=
sp;&nbsp; <a ymailto=3D"mailto:poky@yoctoproject.org" href=3D"mailto:poky@y=
octoproject.org">poky@yoctoproject.org</a><br><br>To subscribe or unsubscri=
be via the World Wide Web, visit<br>&nbsp;&nbsp;&nbsp; <a href=3D"https://l=
ists.yoctoproject.org/listinfo/poky" target=3D"_blank">https://lists.yoctop=
roject.org/listinfo/poky</a><br>or, via email, send a message with subject =
or body 'help' to<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:poky-request@y=
octoproject.org" href=3D"mailto:poky-request@yoctoproject.org">poky-request=
@yoctoproject.org</a><br><br>You can reach the person managing the list at<=
br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:poky-owner@yoctoproject.org" hre=
f=3D"mailto:poky-owner@yoctoproject.org">poky-owner@yoctoproject.org</a><br=
><br>When
 replying, please edit your Subject line so it is more specific<br>than "Re=
: Contents of poky digest..."<br><br><br>Today's Topics:<br><br>&nbsp;  1. =
Problem while compiling libvpx (Sparsh Wid hope)<br>&nbsp;  2. Re: Problem =
while compiling libvpx (Khem Raj)<br><br><br>------------------------------=
----------------------------------------<br><br>Message: 1<br>Date: Tue, 28=
 Aug 2012 14:50:18 +0800 (SGT)<br>From: Sparsh Wid hope &lt;<a ymailto=3D"m=
ailto:sparsh150847@yahoo.com" href=3D"mailto:sparsh150847@yahoo.com">sparsh=
150847@yahoo.com</a>&gt;<br>To: poky &lt;<a ymailto=3D"mailto:poky@yoctopro=
ject.org" href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>&g=
t;<br>Subject: [poky] Problem while compiling libvpx<br>Message-ID:<br>&nbs=
p;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:1346136618.70838.YahooMailNeo@web19=
4606.mail.sg3.yahoo.com"
 href=3D"mailto:1346136618.70838.YahooMailNeo@web194606.mail.sg3.yahoo.com"=
>1346136618.70838.YahooMailNeo@web194606.mail.sg3.yahoo.com</a>&gt;<br>Cont=
ent-Type: text/plain; charset=3D"iso-8859-1"<br><br>Hi All,<br><br>I'm comp=
iling libvpx through poky and got the error related to linking of toolchain=
.?Build info is here:<br><br>OE Build Configuration:<br>BB_VERSION ? ? ? ?=
=3D "1.11.0"<br>METADATA_BRANCH ? =3D "bernard-cur"<br>METADATA_REVISION =
=3D "1f2e1abbe2726ea6fc83e83b644ce7ee32a54fa2"<br>TARGET_ARCH ? ? ? =3D "i5=
86"<br>TARGET_OS ? ? ? ? =3D "linux"<br>MACHINE ? ? ? ? ? =3D "fishriver"<b=
r>DISTRO ? ? ? ? ? ?=3D "poky"<br>DISTRO_VERSION ? ?=3D "1.0"<br>TARGET_FPU=
 ? ? ? ?=3D ""<br><br>Error log is as follows:<br><br>ERROR: Logfile of fai=
lure stored in: /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/a=
tom-poky-linux/libvpx-1.0-r0/temp/log.do_configure.4510<br>Log data follows=
:<br>| Configuring selected codecs<br>| ? enabling vp8_encoder<br>| ? enabl=
ing
 vp8_decoder<br>| Configuring for target 'x86-linux-gcc'<br>| ? enabling x8=
6<br>| ? enabling pic<br>| ? enabling runtime_cpu_detect<br>| ? enabling mm=
x<br>| ? enabling sse<br>| ? enabling sse2<br>| ? enabling sse3<br>| ? enab=
ling ssse3<br>| ? enabling sse4_1<br>| ? using i586-poky-linux-as<br>| ? en=
abling postproc<br>| Toolchain is unable to link executables<br>|?<br>| Con=
figuration failed. This could reflect a misconfiguration of your<br>| toolc=
hains, improper options selected, or another problem. If you<br>| don't see=
 any useful error messages above, the next step is to look<br>| at the conf=
igure error log file (config.err) to determine what<br>| configure was tryi=
ng to do when it died.<br><br>Please help me to resolve the error.<br>-----=
--------- next part --------------<br>An HTML attachment was scrubbed...<br=
>URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/poky/attachmen=
ts/20120828/64e4361a/attachment-0001.html"
 target=3D"_blank">http://lists.yoctoproject.org/pipermail/poky/attachments=
/20120828/64e4361a/attachment-0001.html</a>&gt;<br><br>--------------------=
----------<br><br>Message: 2<br>Date: Tue, 28 Aug 2012 10:05:02 -0700<br>Fr=
om: Khem Raj &lt;<a ymailto=3D"mailto:raj.khem@gmail.com" href=3D"mailto:ra=
j.khem@gmail.com">raj.khem@gmail.com</a>&gt;<br>To: Sparsh Wid hope &lt;<a =
ymailto=3D"mailto:sparsh150847@yahoo.com" href=3D"mailto:sparsh150847@yahoo=
.com">sparsh150847@yahoo.com</a>&gt;<br>Cc: poky &lt;<a ymailto=3D"mailto:p=
oky@yoctoproject.org" href=3D"mailto:poky@yoctoproject.org">poky@yoctoproje=
ct.org</a>&gt;<br>Subject: Re: [poky] Problem while compiling libvpx<br>Mes=
sage-ID:<br>&nbsp;&nbsp;&nbsp; &lt;CAMKF1spJJ0Naw=3D<a ymailto=3D"mailto:Y7=
PR6uvNGG_1etM3XfJUYraTRyb8SSVpxH7g@mail.gmail.com" href=3D"mailto:Y7PR6uvNG=
G_1etM3XfJUYraTRyb8SSVpxH7g@mail.gmail.com">Y7PR6uvNGG_1etM3XfJUYraTRyb8SSV=
pxH7g@mail.gmail.com</a>&gt;<br>Content-Type: text/plain; charset=3DUTF-8<b=
r><br>On Mon,
 Aug 27, 2012 at 11:50 PM, Sparsh Wid hope<br>&lt;<a ymailto=3D"mailto:spar=
sh150847@yahoo.com" href=3D"mailto:sparsh150847@yahoo.com">sparsh150847@yah=
oo.com</a>&gt; wrote:<br>&gt; Hi All,<br>&gt;<br>&gt; I'm compiling libvpx =
through poky and got the error related to linking of<br>&gt; toolchain. Bui=
ld info is here:<br>&gt;<br>&gt; OE Build Configuration:<br>&gt; BB_VERSION=
&nbsp; &nbsp; &nbsp; &nbsp; =3D "1.11.0"<br>&gt; METADATA_BRANCH&nbsp;  =3D=
 "bernard-cur"<br>&gt; METADATA_REVISION =3D "1f2e1abbe2726ea6fc83e83b644ce=
7ee32a54fa2"<br>&gt; TARGET_ARCH&nbsp; &nbsp; &nbsp;  =3D "i586"<br>&gt; TA=
RGET_OS&nbsp; &nbsp; &nbsp; &nbsp;  =3D "linux"<br>&gt; MACHINE&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;  =3D "fishriver"<br>&gt; DISTRO&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; =3D "poky"<br>&gt; DISTRO_VERSION&nbsp; &nbsp; =3D "1.=
0"<br>&gt; TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; =3D ""<br>&gt;<br>&gt; Err=
or log is as follows:<br>&gt;<br>&gt; ERROR: Logfile of failure stored in:<=
br>&gt;
 /home/sct/my_workspace/poky_xbmc_09Mar2012/build/tmp/work/atom-poky-linux/=
libvpx-1.0-r0/temp/log.do_configure.4510<br>&gt; Log data follows:<br>&gt; =
| Configuring selected codecs<br>&gt; |&nbsp;  enabling vp8_encoder<br>&gt;=
 |&nbsp;  enabling vp8_decoder<br>&gt; | Configuring for target 'x86-linux-=
gcc'<br>&gt; |&nbsp;  enabling x86<br>&gt; |&nbsp;  enabling pic<br>&gt; |&=
nbsp;  enabling runtime_cpu_detect<br>&gt; |&nbsp;  enabling mmx<br>&gt; |&=
nbsp;  enabling sse<br>&gt; |&nbsp;  enabling sse2<br>&gt; |&nbsp;  enablin=
g sse3<br>&gt; |&nbsp;  enabling ssse3<br>&gt; |&nbsp;  enabling sse4_1<br>=
&gt; |&nbsp;  using i586-poky-linux-as<br>&gt; |&nbsp;  enabling postproc<b=
r>&gt; | Toolchain is unable to link executables<br>&gt; |<br>&gt; | Config=
uration failed. This could reflect a misconfiguration of your<br>&gt; | too=
lchains, improper options selected, or another problem. If you<br>&gt; | do=
n't see any useful error messages above, the next step is to
 look<br>&gt; | at the configure error log file (config.err) to determine w=
hat<br>&gt; | configure was trying to do when it died.<br>&gt;<br>&gt; Plea=
se help me to resolve the error.<br>&gt;<br><br>you need to send more infor=
mation. are there config.log files generated in<br>the build tree?<br><br><=
br>&gt; _______________________________________________<br>&gt; poky mailin=
g list<br>&gt; <a ymailto=3D"mailto:poky@yoctoproject.org" href=3D"mailto:p=
oky@yoctoproject.org">poky@yoctoproject.org</a><br>&gt; <a href=3D"https://=
lists.yoctoproject.org/listinfo/poky" target=3D"_blank">https://lists.yocto=
project.org/listinfo/poky</a><br>&gt;<br><br><br>--------------------------=
----<br><br>_______________________________________________<br>poky mailing=
 list<br><a ymailto=3D"mailto:poky@yoctoproject.org" href=3D"mailto:poky@yo=
ctoproject.org">poky@yoctoproject.org</a><br><a href=3D"https://lists.yocto=
project.org/listinfo/poky"
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br><br>=
<br>End of poky Digest, Vol 23, Issue 39<br>*******************************=
*****<br><br><br> </div> </div>  </div></body></html>

---1722158877-1134554724-1346216233=:64654--
