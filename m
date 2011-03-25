Return-Path: <sparsh150847@yahoo.com>
Received: from nm1-vm0.bullet.mail.in.yahoo.com
	(nm1-vm0.bullet.mail.in.yahoo.com [121.101.151.211])
	by mx1.pokylinux.org (Postfix) with SMTP id 389264C800A0
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 07:57:04 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.238] by nm1.bullet.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 12:57:03 -0000
Received: from [121.101.151.234] by tm3.bullet.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 12:57:05 -0000
Received: from [127.0.0.1] by omp1003.mail.in.yahoo.com with NNFMP;
	25 Mar 2011 12:56:55 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 12095.56044.bm@omp1003.mail.in.yahoo.com
Received: (qmail 69802 invoked by uid 60001); 25 Mar 2011 12:57:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1301057823; bh=AZeORZdtjJnHYlzAHF9BP53118/kkrXxQqE1RHfelX8=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=YPXP7u588vCxy52GG4h3WLYufuo6K+FDgVMei+MvhzPAPn2f+y6mAXyEJ0bLWXIgQ4no9kFCfPe6ZpEJz/8Bp8IOtivFMkoj2MyeeUimyJRxgzwXmzTaGfpmNfRDpYnd5P1UY46EPVMFkXv9kqp9v8yR7yrIwizHL5xNvG2Meso=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type;
	b=cAt3/7heWoppGBSwNBI+lRYIB+apWILREBz5I0/r0EjKsk0FEcfFPLTB/ANPPrrJst7rSYVhFsDV93cmjhzvQ72ghpm0xkNU0hx/qDy3p37TWvHY12k0BGge2dOyEoSFATVcD5KAkZpNeRs5hOU10rodnzXfjucmt2Pegphx8Uc=;
Message-ID: <309753.66684.qm@web95716.mail.in.yahoo.com>
X-YMail-OSG: 72_5iRoVM1mB.URDS_G_DqBgzFnfiH259E0EW8SHuXB3LIk
	eM8Df081RYofVBuIdtLXF9fYlXR6PkWPA1ThVHqN3WS7fLwG9K5AASN42zp7
	mRb8GilYn.Uk71.1WLocS7vrGX4TKeNk7QeTY8sEy6YlpRxoolo.w6Fs6qFH
	jHFLOg7o0WWmguFdXCWQBBNI1vrfG7myJZ5xL1unRMDuiBTez0a15LgGsNGx
	yd3PLR5V3
Received: from [115.111.25.162] by web95716.mail.in.yahoo.com via HTTP;
	Fri, 25 Mar 2011 18:27:02 IST
X-Mailer: YahooMailClassic/12.0.2 YahooMailWebService/0.8.109.295617
Date: Fri, 25 Mar 2011 18:27:02 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky@yoctoproject.org
MIME-Version: 1.0
Subject: Need help to build poky image for beagle board
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
X-List-Received-Date: Fri, 25 Mar 2011 12:57:07 -0000
Content-Type: multipart/alternative; boundary="0-1401411592-1301057822=:66684"

--0-1401411592-1301057822=:66684
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable




Hi All,
I'm trying to build poky image for beagle board.=A0I followed the steps bel=
ow-
1.Downloaded the source=A0wget -c http://git.poky linux.org/cgit/ cgit.cgi/=
poky/s napshot/poky-laverne-4.0.1.tar .bz2
2. untar it
3. I want it build for beagleboard, so i downloaded=A0recipes_images_beagle=
board-demo-image.bb recipe from=A0http://gitorious.org/angstrom/openembedde=
d/blobs/org.openembedded.dev/recipes/images/beagleboard-demo-image.bb and c=
opied that in laverne-4.0.1/meta/recipes-core/images
4. Build!cd=A0laverne-4.0.1source poky-init-build-envbitbake recipes_images=
_beagleboard-demo-imageand get error as=20
ERROR: Nothing PROVIDES 'recipes_images_beagleboard-demo-image'=0ACommand e=
xecution failed: Traceback (most recent call last):=0A  File "/home/surya/S=
urya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/command.py", line 88=
, in runAsyncCommand=0A    commandmethod(self.cmds_async, self, options)=0A=
  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb=
/command.py", line 184, in buildTargets=0A    command.cooker.buildTargets(p=
kgs_to_build, task)=0A  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scri=
pts/..//bitbake/lib/bb/cooker.py", line 756, in buildTargets=0A    taskdata=
.add_provider(localdata, self.status, k)=0A  File "/home/surya/Surya/pro/PO=
KY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskdata.py", line 354, in add_=
provider=0A    self.add_provider_internal(cfgData, dataCache, item)=0A  Fil=
e "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/task=
data.py", line 374, in add_provider_internal=0A    raise bb.providers.NoPro=
vider(item)=0ANoProvider: recipes_images_beagleboard-demo-image=0A
Help me to solve this error.Thanks in advance          Sparsh=0A=0A

--0-1401411592-1301057822=:66684
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;"><br><br><br><blockquote style=3D"border-left:=
 2px solid rgb(16, 16, 255); margin-left: 5px; padding-left: 5px;"><div id=
=3D"yiv1392351131"><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0">=
<tbody><tr><td valign=3D"top" style=3D"font:inherit;"><div id=3D"yiv1392351=
131"><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" id=3D"yiv13923=
51131bodyDrftID" class=3D"yiv1392351131"><tbody><tr><td id=3D"yiv1392351131=
drftMsgContent" style=3D"font: inherit; "><font class=3D"yiv1392351131Apple=
-style-span" face=3D"arial" size=3D"2" style=3D"font-size: 10pt; font-famil=
y: arial; ">Hi All,</font><div style=3D"font-family: arial; font-size: 10pt=
; "><br></div><div style=3D"font-family: arial; font-size: 10pt; ">I'm tryi=
ng to build poky image for beagle board.&nbsp;</div><div style=3D"font-fami=
ly: arial; font-size: 10pt; "><pre style=3D"font-family:arial;font-size:10p=
t;"><span class=3D"Apple-style-span"
 style=3D"white-space: normal; ">I followed the steps below-</span></pre></=
div><div style=3D"font-family: arial; font-size: 10pt; "><br></div><div sty=
le=3D"font-family: arial; font-size: 10pt; ">1.Downloaded the source&nbsp;<=
/div><div style=3D"font-family: arial; font-size: 10pt; "><span class=3D"yi=
v1392351131Apple-style-span" style=3D"white-space:pre;">wget -c <a rel=3D"n=
ofollow" target=3D"_blank" href=3D"http://git.pokylinux.org/cgit/cgit.cgi/p=
oky/snapshot/poky-laverne-4.0.1.tar.bz2">http://git.poky linux.org/cgit/ cg=
it.cgi/poky/s napshot/poky-laverne-4.0.1.tar .bz2</a></span></div><div styl=
e=3D"font-family: arial; font-size: 10pt; "><br></div><div style=3D"font-fa=
mily: arial; font-size: 10pt; ">2. untar it</div><div style=3D"font-family:=
 arial; font-size: 10pt; "><br></div><div style=3D"font-family: arial; font=
-size: 10pt; ">3. I want it build for beagleboard, so i downloaded&nbsp;rec=
ipes_images_beagleboard-demo-image.bb recipe
 from&nbsp;http://gitorious.org/angstrom/openembedded/blobs/org.openembedde=
d.dev/recipes/images/beagleboard-demo-image.bb and copied that in laverne-4=
.0.1/meta/recipes-core/images</div><div style=3D"font-family: arial; font-s=
ize: 10pt; "><br></div><div style=3D"font-family: arial; font-size: 10pt; "=
><span class=3D"Apple-style-span" style=3D"white-space: pre; ">4. Build!</s=
pan></div><div><pre style=3D"font-family: arial; font-size: 10pt; ">cd&nbsp=
;laverne-4.0.1</pre><pre style=3D"font-family: arial; font-size: 10pt; ">so=
urce poky-init-build-env</pre><pre style=3D"font-family: arial; font-size: =
10pt; ">bitbake recipes_images_beagleboard-demo-image</pre><pre style=3D"fo=
nt-family: arial; font-size: 10pt; ">and get error as </pre><pre style=3D"f=
ont-family: arial; font-size: 10pt; "><br></pre><pre><font class=3D"Apple-s=
tyle-span" face=3D"arial">ERROR: Nothing PROVIDES 'recipes_images_beagleboa=
rd-demo-image'=0ACommand execution failed: Traceback (most recent call last=
):=0A  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/l=
ib/bb/command.py", line 88, in runAsyncCommand=0A    commandmethod(self.cmd=
s_async, self, options)=0A  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/=
scripts/..//bitbake/lib/bb/command.py", line 184, in buildTargets=0A    com=
mand.cooker.buildTargets(pkgs_to_build, task)=0A  File "/home/surya/Surya/p=
ro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py", line 756, in b=
uildTargets=0A    taskdata.add_provider(localdata, self.status, k)=0A  File=
 "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/taskd=
ata.py", line 354, in add_provider=0A    self.add_provider_internal(cfgData=
, dataCache, item)=0A  File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scrip=
ts/..//bitbake/lib/bb/taskdata.py", line 374, in add_provider_internal=0A  =
  raise bb.providers.NoProvider(item)=0ANoProvider: recipes_images_beaglebo=
ard-demo-image</font><span class=3D"Apple-style-span" style=3D"font-family:=
 arial; font-size: 10pt; ">=0A</span></pre><div style=3D"font-family: arial=
; font-size: 10pt; "><br></div><pre style=3D"font-family: arial; font-size:=
 10pt; ">Help me to solve this error.</pre><pre style=3D"font-family: arial=
; font-size: 10pt; ">Thanks in advance          </pre></div></td></tr></tbo=
dy></table></div></td></tr></tbody></table>Sparsh</div></blockquote></td></=
tr></table><br>

--0-1401411592-1301057822=:66684--
