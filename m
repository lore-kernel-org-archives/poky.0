Return-Path: <sparsh150847@yahoo.com>
Received: from nm1-vm0.bullet.mail.in.yahoo.com
	(nm1-vm0.bullet.mail.in.yahoo.com [121.101.151.211])
	by mx1.pokylinux.org (Postfix) with SMTP id 8CC504C800B8
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 08:51:29 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.238] by nm1.bullet.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 13:51:28 -0000
Received: from [121.101.151.234] by tm3.bullet.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 13:51:30 -0000
Received: from [127.0.0.1] by omp1003.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 13:51:19 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 945602.45874.bm@omp1003.mail.in.yahoo.com
Received: (qmail 29757 invoked by uid 60001); 25 Mar 2011 13:51:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1301061088; bh=wiN8hMGyoGcT+SYvGyIOtWw9Mk8NTLUVvLWoX/OYRWg=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=gGlBU7qGoKYKrxJofkPsd6qMNGx5ehKNm6D7+NXID0JF8Nn2hVTVK6CH4Q415vQo5nqIUIie/7Jh+yJkzZw0j9xUI5qCBMyEn3s/R+TXCdcSNZUZS4ZYwJshLBwf/ynmtbsOp7oNJRqk4QX3lTft254eS52yy54ZNOs282/MS6Y=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=liKyGqzirqgfG9MobvT6BJzBG3Sc9jSsM0e5qwqOiCmUoeBnYmBOLfP9M0DJ7KIDoph1hhkk7P/PNe6QJiUnTxwVHB0QkPO5hXPI3LIJIo1nhOT+lo+y1JAw4gJKo/Eo4CN9PMu562ODZzz7BbucH1dZNjQosc7kC9aqLaeJ3rA=;
Message-ID: <177088.27801.qm@web95702.mail.in.yahoo.com>
X-YMail-OSG: vCmpsKwVM1k1HGKulrROm9qovVXBGke6Hwp3MtcpEGAbScP
	cjLthIt5oa2T6.Uyvz92yqwX2pYuRC8jGZvm4_EtXRKJxMZvgjKVo0Rszayk
	KmrB8jso1YowTmCpEHPpCyPC_V123E1BRPOp9BF0jRFwFwEXRbfLdnY.jSqg
	6LZ9TWKNB9Oq7Yiqp7pojlJRVjSUEQZc36hjB62RTk29UzdRZRPPk2vAy5_C
	MLFEI0FRM
Received: from [115.111.25.162] by web95702.mail.in.yahoo.com via HTTP;
	Fri, 25 Mar 2011 19:21:28 IST
X-Mailer: YahooMailClassic/12.0.2 YahooMailWebService/0.8.109.295617
Date: Fri, 25 Mar 2011 19:21:28 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Help me to create poky image for beagleboard
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Mar 2011 13:51:31 -0000
Content-Type: multipart/alternative; boundary="0-1079076469-1301061088=:27801"

--0-1079076469-1301061088=:27801
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,
I'm trying to build a POKY image for beagleboard and getting error.
I followed the steps as:
a. Downloaded the source as=A0wget -c http://git.pokylinux.org/cgit/cgit.cg=
i/poky/snapshot/poky-laverne-4.0.1.tar.bz2=A0and then untar it.b. I modifie=
d the file laverne-4.0.1/meta/conf/local.conf.sample as
MACHINE ?=3D "beagleboard"and tried to build as=A0
source poky-init-build-envbitbake poky-image-minimal-live
then i got message on my terminal as:
NOTE: Handling BitBake files: \ (0845/0845) [100 %]Parsing of 845 .bb files=
 complete (798 cached, 47 parsed). 977 targets, 55 skipped, 0 masked, 0 err=
ors.
OE Build Configuration:BB_VERSION =A0 =A0 =A0 =A0=3D "1.11.0"METADATA_BRANC=
H =A0 =3D "<unknown>"METADATA_REVISION =3D "<unknown>"TARGET_ARCH =A0 =A0 =
=A0 =3D "arm"TARGET_OS =A0 =A0 =A0 =A0 =3D "linux-gnueabi"MACHINE =A0 =A0 =
=A0 =A0 =A0 =3D "beagleboard"DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"DISTRO=
_VERSION =A0 =A0=3D "0.9"TARGET_FPU =A0 =A0 =A0 =A0=3D "soft"
NOTE: Resolving any missing task queue dependenciesERROR: Nothing PROVIDES =
'syslinux'ERROR: Required build target 'poky-image-minimal-live' has no bui=
ldable providers.Missing or unbuildable dependency chain was: ['poky-image-=
minimal-live', 'syslinux']Command execution failed: Traceback (most recent =
call last):=A0=A0File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/../=
/bitbake/lib/bb/command.py", line 88, in runAsyncCommand=A0=A0 =A0commandme=
thod(self.cmds_async, self, options)=A0=A0File "/home/surya/Surya/pro/POKY/=
laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 184, in buildTar=
gets=A0=A0 =A0command.cooker.buildTargets(pkgs_to_build, task)=A0=A0File "/=
home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.p=
y", line 758, in buildTargets=A0=A0 =A0taskdata.add_unresolved(localdata, s=
elf.status)=A0=A0File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/../=
/bitbake/lib/bb/taskdata.py", line 535, in add_unresolved=A0=A0
 =A0self.remove_buildtarget(targetid)=A0=A0File "/home/surya/Surya/pro/POKY=
/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 497, in remove=
_buildtarget=A0=A0 =A0self.fail_fnid(self.tasks_fnid[taskid], missing_list)=
=A0=A0File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/li=
b/bb/taskdata.py", line 472, in fail_fnid=A0=A0 =A0self.remove_buildtarget(=
target, missing_list)=A0=A0File "/home/surya/Surya/pro/POKY/laverne-4.0.1/s=
cripts/..//bitbake/lib/bb/taskdata.py", line 502, in remove_buildtarget=A0=
=A0 =A0raise bb.providers.NoProvider(target)NoProvider: poky-image-minimal-=
live_______________________________________________________________________=
______
I noticed the dependancy of syslinux and open the file laverne-4.0.1/meta/r=
ecipes-devtools/syslinux/syslinux_3.86.bb=A0=A0and notice that=A0COMPATIBLE=
_HOST =3D '(x86_64|i.86).*-(linux|freebsd.*)' =A0=A0so I thought that it is=
 X86 compatible so I downloaded=A0"recipes_images_beagleboard-demo-image.bb=
" from http://gitorious.org/angstrom/openembedded/blobs/org.openembedded.de=
v/recipes/images/beagleboard-demo-image.bb and added in laverne-4.0.1/meta/=
recipes-core/images and then i tried to build as=A0bitbake=A0recipes_images=
_beagleboard-demo-imageand got error as :
NOTE: Handling BitBake files: \ (0845/0845) [100 %]Parsing of 845 .bb files=
 complete (797 cached, 48 parsed). 977 targets, 55 skipped, 0 masked, 0 err=
ors.
OE Build Configuration:BB_VERSION =A0 =A0 =A0 =A0=3D "1.11.0"METADATA_BRANC=
H =A0 =3D "<unknown>"METADATA_REVISION =3D "<unknown>"TARGET_ARCH =A0 =A0 =
=A0 =3D "arm"TARGET_OS =A0 =A0 =A0 =A0 =3D "linux-gnueabi"MACHINE =A0 =A0 =
=A0 =A0 =A0 =3D "beagleboard"DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"DISTRO=
_VERSION =A0 =A0=3D "0.9"TARGET_FPU =A0 =A0 =A0 =A0=3D "soft"
ERROR: Nothing PROVIDES 'recipes_images_beagleboard-demo-image'Command exec=
ution failed: Traceback (most recent call last):=A0=A0File "/home/surya/Sur=
ya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 88, =
in runAsyncCommand=A0=A0 =A0commandmethod(self.cmds_async, self, options)=
=A0=A0File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/li=
b/bb/command.py", line 184, in buildTargets=A0=A0 =A0command.cooker.buildTa=
rgets(pkgs_to_build, task)=A0=A0File "/home/surya/Surya/pro/POKY/laverne-4.=
0.1/scripts/..//bitbake/lib/bb/cooker.py", line 756, in buildTargets=A0=A0 =
=A0taskdata.add_provider(localdata, self.status, k)=A0=A0File "/home/surya/=
Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line =
354, in add_provider=A0=A0 =A0self.add_provider_internal(cfgData, dataCache=
, item)=A0=A0File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bit=
bake/lib/bb/taskdata.py", line 374, in add_provider_internal=A0=A0 =A0raise
 bb.providers.NoProvider(item)NoProvider: recipes_images_beagleboard-demo-i=
mage
please help me to solve the error.
Thanks in advencedSparsh

=0A=0A

--0-1079076469-1301061088=:27801
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><font class=3D"Apple-style-span" face=3D"aria=
l" size=3D"2">Hi all,</font><div style=3D"font-family: arial; font-size: 10=
pt; "><br></div><div style=3D"font-family: arial; font-size: 10pt; ">I'm tr=
ying to build a POKY image for beagleboard and getting error.</div><div sty=
le=3D"font-family: arial; font-size: 10pt; "><br></div><div style=3D"font-f=
amily: arial; font-size: 10pt; ">I followed the steps as:</div><div style=
=3D"font-family: arial; font-size: 10pt; "><br></div><div style=3D"font-fam=
ily: arial; font-size: 10pt; ">a. Downloaded the source as&nbsp;wget -c <a =
href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4=
.0.1.tar.bz2" target=3D"_blank">http://git.pokylinux.org/cgit/<wbr>cgit.cgi=
/poky/snapshot/poky-<wbr>laverne-4.0.1.tar.bz2</a></div><div style=3D"font-=
family: arial; font-size: 10pt; ">&nbsp;and then untar it.</div><div style=
=3D"font-family: arial;
 font-size: 10pt; ">b. I modified the file <span class=3D"Apple-style-span"=
 style=3D"background-color: rgb(128, 255, 0);">laverne-4.0.1/meta/conf/loca=
l.conf.sample</span> as</div><div style=3D"font-family: arial; font-size: 1=
0pt; "><br></div><div style=3D"font-family: arial; font-size: 10pt; "><span=
 class=3D"Apple-style-span" style=3D"background-color: rgb(128, 255, 0);">M=
ACHINE ?=3D "beagleboard"</span></div><div style=3D"font-family: arial; fon=
t-size: 10pt; ">and tried to build as&nbsp;</div><div style=3D"font-family:=
 arial; font-size: 10pt; "><br></div><div style=3D"font-family: arial; font=
-size: 10pt; "><span class=3D"Apple-style-span" style=3D"background-color: =
rgb(128, 255, 0);">source poky-init-build-env</span></div><div style=3D"fon=
t-family: arial; font-size: 10pt; "><span class=3D"Apple-style-span" style=
=3D"background-color: rgb(128, 255, 0);">bitbake poky-image-minimal-live</s=
pan></div><div style=3D"font-family: arial; font-size: 10pt; "><br></div><d=
iv style=3D"font-family:
 arial; font-size: 10pt; ">then i got message on my terminal as:</div><div =
style=3D"font-family: arial; font-size: 10pt; "><br></div><div><div><font c=
lass=3D"Apple-style-span" face=3D"arial" size=3D"2">NOTE: Handling BitBake =
files: \ (0845/0845) [100 %]</font></div><div><font class=3D"Apple-style-sp=
an" face=3D"arial" size=3D"2">Parsing of 845 .bb files complete (798 cached=
, 47 parsed). 977 targets, 55 skipped, 0 masked, 0 errors.</font></div><div=
><font class=3D"Apple-style-span" face=3D"arial" size=3D"2"><br></font></di=
v><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">OE Build =
Configuration:</font></div><div><font class=3D"Apple-style-span" face=3D"ar=
ial" size=3D"2">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.11.0"</font></=
div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">METADAT=
A_BRANCH &nbsp; =3D "&lt;unknown&gt;"</font></div><div><font class=3D"Apple=
-style-span" face=3D"arial" size=3D"2">METADATA_REVISION =3D "&lt;unknown&g=
t;"</font></div><div><font
 class=3D"Apple-style-span" face=3D"arial" size=3D"2">TARGET_ARCH &nbsp; &n=
bsp; &nbsp; =3D "arm"</font></div><div><font class=3D"Apple-style-span" fac=
e=3D"arial" size=3D"2">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D "linux-gnu=
eabi"</font></div><div><font class=3D"Apple-style-span" face=3D"arial" size=
=3D"2">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "beagleboard"</font><=
/div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">DISTRO=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</font></div><div><font=
 class=3D"Apple-style-span" face=3D"arial" size=3D"2">DISTRO_VERSION &nbsp;=
 &nbsp;=3D "0.9"</font></div><div><font class=3D"Apple-style-span" face=3D"=
arial" size=3D"2">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D "soft"</font></=
div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2"><br></f=
ont></div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">N=
OTE: Resolving any missing task queue dependencies</font></div><div><font c=
lass=3D"Apple-style-span" face=3D"arial" size=3D"2">ERROR:
 Nothing PROVIDES 'syslinux'</font></div><div><font class=3D"Apple-style-sp=
an" face=3D"arial" size=3D"2">ERROR: Required build target 'poky-image-mini=
mal-live' has no buildable providers.</font></div><div><font class=3D"Apple=
-style-span" face=3D"arial" size=3D"2">Missing or unbuildable dependency ch=
ain was: ['poky-image-minimal-live', 'syslinux']</font></div><div><font cla=
ss=3D"Apple-style-span" face=3D"arial" size=3D"2">Command execution failed:=
 Traceback (most recent call last):</font></div><div><font class=3D"Apple-s=
tyle-span" face=3D"arial" size=3D"2">&nbsp;&nbsp;File "/home/surya/Surya/pr=
o/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 88, in ru=
nAsyncCommand</font></div><div><font class=3D"Apple-style-span" face=3D"ari=
al" size=3D"2">&nbsp;&nbsp; &nbsp;commandmethod(self.cmds_async, self, opti=
ons)</font></div><div><font class=3D"Apple-style-span" face=3D"arial" size=
=3D"2">&nbsp;&nbsp;File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/.=
.//bitbake/lib/bb/command.py",
 line 184, in buildTargets</font></div><div><font class=3D"Apple-style-span=
" face=3D"arial" size=3D"2">&nbsp;&nbsp; &nbsp;command.cooker.buildTargets(=
pkgs_to_build, task)</font></div><div><font class=3D"Apple-style-span" face=
=3D"arial" size=3D"2">&nbsp;&nbsp;File "/home/surya/Surya/pro/POKY/laverne-=
4.0.1/scripts/..//bitbake/lib/bb/cooker.py", line 758, in buildTargets</fon=
t></div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">&nb=
sp;&nbsp; &nbsp;taskdata.add_unresolved(localdata, self.status)</font></div=
><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">&nbsp;&nbs=
p;File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb=
/taskdata.py", line 535, in add_unresolved</font></div><div><font class=3D"=
Apple-style-span" face=3D"arial" size=3D"2">&nbsp;&nbsp; &nbsp;self.remove_=
buildtarget(targetid)</font></div><div><font class=3D"Apple-style-span" fac=
e=3D"arial" size=3D"2">&nbsp;&nbsp;File
 "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskd=
ata.py", line 497, in remove_buildtarget</font></div><div><font class=3D"Ap=
ple-style-span" face=3D"arial" size=3D"2">&nbsp;&nbsp; &nbsp;self.fail_fnid=
(self.tasks_fnid[taskid], missing_list)</font></div><div><font class=3D"App=
le-style-span" face=3D"arial" size=3D"2">&nbsp;&nbsp;File "/home/surya/Sury=
a/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 472,=
 in fail_fnid</font></div><div><font class=3D"Apple-style-span" face=3D"ari=
al" size=3D"2">&nbsp;&nbsp; &nbsp;self.remove_buildtarget(target, missing_l=
ist)</font></div><div><font class=3D"Apple-style-span" face=3D"arial" size=
=3D"2">&nbsp;&nbsp;File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/.=
.//bitbake/lib/bb/taskdata.py", line 502, in remove_buildtarget</font></div=
><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">&nbsp;&nbs=
p; &nbsp;raise bb.providers.NoProvider(target)</font></div><div><font class=
=3D"Apple-style-span"
 face=3D"arial" size=3D"2">NoProvider: poky-image-minimal-live</font></div>=
</div><div style=3D"font-family: arial; font-size: 10pt; ">________________=
_____________________________________________________________</div><div sty=
le=3D"font-family: arial; font-size: 10pt; "><br></div><div style=3D"font-f=
amily: arial; font-size: 10pt; ">I noticed the dependancy of syslinux and o=
pen the file laverne-4.0.1/meta/recipes-devtools/syslinux/<span class=3D"Ap=
ple-style-span" style=3D"background-color: rgb(128, 255, 0);">syslinux_3.86=
.bb</span><span class=3D"Apple-style-span" style=3D"background-color: rgb(2=
55, 255, 255);">&nbsp;&nbsp;</span></div><div style=3D"font-family: arial; =
font-size: 10pt; "><span class=3D"Apple-style-span" style=3D"background-col=
or: rgb(255, 255, 255);">and notice that&nbsp;</span><span class=3D"Apple-s=
tyle-span" style=3D"background-color: rgb(128, 255, 0);">COMPATIBLE_HOST =
=3D '(x86_64|i.86).*-(linux|freebsd.*)' </span><span class=3D"Apple-style-s=
pan"
 style=3D"background-color: rgb(255, 255, 255);">&nbsp;&nbsp;</span></div><=
div style=3D"font-family: arial; font-size: 10pt; "><span class=3D"Apple-st=
yle-span" style=3D"background-color: rgb(255, 255, 255);">so I thought that=
 it is X86 compatible so I downloaded&nbsp;"recipes_images_beagleboard-demo=
-image.bb" from http://gitorious.org/angstrom/openembedded/blobs/org.openem=
bedded.dev/recipes/images/beagleboard-demo-image.bb and added in laverne-4.=
0.1/meta/recipes-core/images and then i tried to build as&nbsp;bitbake&nbsp=
;recipes_images_beagleboard-demo-image</span></div><div style=3D"font-famil=
y: arial; font-size: 10pt; "><span class=3D"Apple-style-span" style=3D"back=
ground-color: rgb(255, 255, 255);">and got error as :</span></div><div styl=
e=3D"font-family: arial; font-size: 10pt; "><span class=3D"Apple-style-span=
" style=3D"background-color: rgb(255, 255, 255);"><br></span></div><div><sp=
an class=3D"Apple-style-span" style=3D"background-color: rgb(255, 255, 255)=
; "><div><font
 class=3D"Apple-style-span" face=3D"arial" size=3D"2">NOTE: Handling BitBak=
e files: \ (0845/0845) [100 %]</font></div><div><font class=3D"Apple-style-=
span" face=3D"arial" size=3D"2">Parsing of 845 .bb files complete (797 cach=
ed, 48 parsed). 977 targets, 55 skipped, 0 masked, 0 errors.</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"arial" size=3D"2"><br></font></=
div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">OE Buil=
d Configuration:</font></div><div><font class=3D"Apple-style-span" face=3D"=
arial" size=3D"2">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.11.0"</font>=
</div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">METAD=
ATA_BRANCH &nbsp; =3D "&lt;unknown&gt;"</font></div><div><font class=3D"App=
le-style-span" face=3D"arial" size=3D"2">METADATA_REVISION =3D "&lt;unknown=
&gt;"</font></div><div><font class=3D"Apple-style-span" face=3D"arial" size=
=3D"2">TARGET_ARCH &nbsp; &nbsp; &nbsp; =3D "arm"</font></div><div><font cl=
ass=3D"Apple-style-span" face=3D"arial"
 size=3D"2">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D "linux-gnueabi"</font=
></div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">MACH=
INE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "beagleboard"</font></div><div><=
font class=3D"Apple-style-span" face=3D"arial" size=3D"2">DISTRO &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</font></div><div><font class=3D"A=
pple-style-span" face=3D"arial" size=3D"2">DISTRO_VERSION &nbsp; &nbsp;=3D =
"0.9"</font></div><div><font class=3D"Apple-style-span" face=3D"arial" size=
=3D"2">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D "soft"</font></div><div><f=
ont class=3D"Apple-style-span" face=3D"arial" size=3D"2"><br></font></div><=
div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">ERROR: Nothi=
ng PROVIDES 'recipes_images_beagleboard-demo-image'</font></div><div><font =
class=3D"Apple-style-span" face=3D"arial" size=3D"2">Command execution fail=
ed: Traceback (most recent call last):</font></div><div><font class=3D"Appl=
e-style-span" face=3D"arial"
 size=3D"2">&nbsp;&nbsp;File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scri=
pts/..//bitbake/lib/bb/command.py", line 88, in runAsyncCommand</font></div=
><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">&nbsp;&nbs=
p; &nbsp;commandmethod(self.cmds_async, self, options)</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"arial" size=3D"2">&nbsp;&nbsp;File "/=
home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.=
py", line 184, in buildTargets</font></div><div><font class=3D"Apple-style-=
span" face=3D"arial" size=3D"2">&nbsp;&nbsp; &nbsp;command.cooker.buildTarg=
ets(pkgs_to_build, task)</font></div><div><font class=3D"Apple-style-span" =
face=3D"arial" size=3D"2">&nbsp;&nbsp;File "/home/surya/Surya/pro/POKY/lave=
rne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py", line 756, in buildTargets<=
/font></div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2"=
>&nbsp;&nbsp; &nbsp;taskdata.add_provider(localdata, self.status, k)</font>=
</div><div><font
 class=3D"Apple-style-span" face=3D"arial" size=3D"2">&nbsp;&nbsp;File "/ho=
me/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.p=
y", line 354, in add_provider</font></div><div><font class=3D"Apple-style-s=
pan" face=3D"arial" size=3D"2">&nbsp;&nbsp; &nbsp;self.add_provider_interna=
l(cfgData, dataCache, item)</font></div><div><font class=3D"Apple-style-spa=
n" face=3D"arial" size=3D"2">&nbsp;&nbsp;File "/home/surya/Surya/pro/POKY/l=
averne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 374, in add_prov=
ider_internal</font></div><div><font class=3D"Apple-style-span" face=3D"ari=
al" size=3D"2">&nbsp;&nbsp; &nbsp;raise bb.providers.NoProvider(item)</font=
></div><div><font class=3D"Apple-style-span" face=3D"arial" size=3D"2">NoPr=
ovider: recipes_images_beagleboard-demo-image</font></div><div style=3D"fon=
t-family: arial; font-size: 10pt; "><br></div><div style=3D"font-family: ar=
ial; font-size: 10pt; ">please help me to solve the error.</div><div style=
=3D"font-family: arial;
 font-size: 10pt; "><br></div><div style=3D"font-family: arial; font-size: =
10pt; ">Thanks in advenced</div><div style=3D"font-family: arial; font-size=
: 10pt; ">Sparsh</div></span></div><div style=3D"font-family: arial; font-s=
ize: 10pt; "><br></div><div style=3D"font-family: arial; font-size: 10pt; "=
><br></div></td></tr></table><br>

--0-1079076469-1301061088=:27801--
