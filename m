Return-Path: <sparsh150847@yahoo.com>
Received: from nm4-vm0.bullet.mail.in.yahoo.com
	(nm4-vm0.bullet.mail.in.yahoo.com [121.101.151.213])
	by mx1.pokylinux.org (Postfix) with SMTP id 2801E4C80050
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 23:15:18 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@yahoo.com;
	x-dkim-adsp=none (insecure policy)
Received: from [121.101.151.236] by nm4.bullet.mail.in.yahoo.com with NNFMP;
	22 Mar 2011 04:15:24 -0000
Received: from [121.101.151.234] by tm1.bullet.mail.in.yahoo.com with NNFMP;
	22 Mar 2011 04:15:15 -0000
Received: from [127.0.0.1] by omp1003.mail.in.yahoo.com with NNFMP;
	22 Mar 2011 04:15:09 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 788516.59968.bm@omp1003.mail.in.yahoo.com
Received: (qmail 20498 invoked by uid 60001); 22 Mar 2011 04:15:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1300767317; bh=6tg7Eo+MN4GLlQsW4aJkaYchnbzIAoHHTVI2Icyr8uM=;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=BlzV3IkI74QNJe+nnbDi5HfxkRwHVX2JNI3QjrgT8K1Y3zv/FVnj3TXwm1P19KVxKlco28DndeSw0Uz/3EmZREkYOVGIb/b4sKq8ByLP/2n2BL6oRK6xfD0TzIPY5emNNi4/Ll+flgbVwuYlCwwKogiKFs62kw6JK62BRYw7SSQ=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=LvCqVY+tNKVRqKhbi50uM7o/O0QNfIi/5VzC2x8bTD2TQOK3FTuK83Dmaal1iyXkvpd0qiLjCHkX2vF7xcmcA8QkNxxSzLlwWdbCHH8REKP2Xuijra8rKrrrluMciJ6qoTDPF3O65Sn2AvVmE5mNMx2CDHGVi58z1G2DnsbOgbE=;
Message-ID: <734172.3537.qm@web95711.mail.in.yahoo.com>
X-YMail-OSG: 0691ZzsVM1mRUt4fdPdLLKJvzwgGp7AcBSkjboqJEOcBT3J
	WL4iqGEtwynlkdBpsMqKhR5GrmgOJyObepiLWVhgPEyHTcG4ULQxk5HbSqnO
	k92OQnlNDDFx1jy2371qRocmSLZqSxN3rVTVPLLGh_t_TaogQ7qOoHkyDTZP
	OzSb9VIFvI67I8u.4cxAp8mEqWCQKUVzz554ccSA5BTLDhWgzDhwupP4onTJ
	Iwe.eAShwnofxexppHFSFGZPjwL6sy4I78MB73Mz4.to-
Received: from [115.111.25.162] by web95711.mail.in.yahoo.com via HTTP;
	Tue, 22 Mar 2011 09:45:14 IST
X-Mailer: YahooMailClassic/12.0.2 YahooMailWebService/0.8.109.295617
Date: Tue, 22 Mar 2011 09:45:14 +0530 (IST)
From: Sparsh Wid hope <sparsh150847@yahoo.com>
To: poky@yoctoproject.org
In-Reply-To: <93102E2F-F094-409F-AB37-B9887256A219@dominion.thruhere.net>
MIME-Version: 1.0
Subject: Re: Need help to build poky image for beagle board
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
X-List-Received-Date: Tue, 22 Mar 2011 04:15:21 -0000
Content-Type: multipart/alternative; boundary="0-338846836-1300767314=:3537"

--0-338846836-1300767314=:3537
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for your guidance, I downloaded angstrom-angstrom-layers package fro=
m the link=20
http://gitorious.org/angstrom/angstrom-layers/ and updated laverne-4.0.1/me=
ta/conf, /recipes-bsp, /recipes-ti, added image recipes_images_beagleboard-=
demo-image.bb in /meta/recipes/core/images and modified /meta/conf/local.co=
nf.sample as=20
#MACHINE=A0 ?=3D"qemux86" and
MACHINE ?=3D"beagleboard"
and bitbake it as bitbake omap-image-beagleboard-demo and got the error :
NOTE: <type 'exceptions.Exception'>:variable BBPATH references itself! whil=
e evaluating:
/home/surya/Surya/pro/POKY/laverne-4.0.1/meta:${BBPATH}
NOTE: <type 'exceptions.Exception'>:variable BBPATH references itself! whil=
e evaluating:
${BBPATH}:${LAYERDIR}
FATAL: Traceback (most recent call last):
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake//bin=
/bitbake", line 216, in <module>
=A0=A0=A0 ret =3D main()
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake//bin=
/bitbake", line 177, in main
=A0=A0=A0 cooker =3D bb.cooker.BBCooker(configuration, server)
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/=
bb/cooker.py", line 85, in __init__
=A0=A0=A0 self.parseConfigurationFiles(self.configuration.file)
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/=
bb/cooker.py", line 515, in parseConfigurationFiles
=A0=A0=A0 data =3D bb.parse.handle(os.path.join(layer, "conf", "layer.conf"=
), data)
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/=
bb/parse/__init__.py", line 75, in handle
=A0=A0=A0 return h['handle'](fn, data, include)
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/=
bb/parse/parse_py/ConfHandler.py", line 105, in handle
=A0=A0=A0 statements.eval(data)
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/=
bb/parse/ast.py", line 37, in eval
=A0=A0=A0 statement.eval(data)
=A0 File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/=
bb/parse/ast.py", line 97, in eval
=A0=A0=A0 val =3D bb.data.expand(groupd["value"], e)
Exception: variable BBPATH references itself!

Help me to solve the problem.
Thanks in advance.


--- On Mon, 21/3/11, Koen Kooi <koen@dominion.thruhere.net> wrote:

From: Koen Kooi <koen@dominion.thruhere.net>
Subject: Re: [poky] Need help to build poky image for beagle board
To: "Sparsh Wid hope" <sparsh150847@yahoo.com>
Cc: "poky" <poky@yoctoproject.org>, "Patches and discussions about the oe-c=
ore layer" <openembedded-core@lists.openembedded.org>
Date: Monday, 21 March, 2011, 11:49 AM


Op 21 mrt 2011, om 11:29 heeft Sparsh Wid hope het volgende geschreven:

> Hi All,
>=20
> I'm trying to build poky image for beagle board.=20

I'll address the 'beagleboard' portion of your question below.

> I got the following error-=20
> FATAL: Error when parsing []: file classes/packaged-staging.bbclass not f=
ound in /home/surya/Surya/pro/POKY/meta-texasinstruments:/home/surya/Surya/=
pro/POKY/meta
>=20
> I followed the steps below-
>=20
> 1.Downloaded the source=20
> wget -c http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne=
-4.0.1.tar.bz2
>=20
> and rename it as POKY.
> 2. Get TI's overlay
> git clone git://github.com/mrchapp/meta-texasinstruments.git
> cd meta-texasinstruments
> git checkout -b gitomapzoom --track origin/gitomapzoom

That's not a TI overlay, it's an overlay done by someone to add the dspbrid=
ge stuff to OE. If you want better beagleboard support, use the following l=
ayer:

http://gitorious.org/angstrom/angstrom-layers/

If you don't want to manually resolve all the layer dependencies have a loo=
k at the scripts mentioned in the readme:

http://gitorious.org/angstrom/angstrom-layers/blobs/master/README

The 'better' in the above is aimed at hw support like cpufreq, DSP, 1GHz/72=
0MHz, etc. The standard yocto kernel lacks all that because it's focussed a=
t different things like 100% POSIX compliance.

regards,

Koen

>=20
> 3. Copy configuration
> cp -p POKY/meta-texasinstruments/conf/misc/local.conf POKY/build/conf/loc=
al.conf
>=20
> 4. Build!
> cd POKY
> source poky-init-build-env
>=20
> from the link http://elinux.org/BeagleBoard/Poky
> Help me to solve this error.
> Thanks in advance=A0 =A0 =A0 =A0 =A0=20
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

=0A=0A

--0-338846836-1300767314=:3537
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;">Thanks for your guidance, I downloaded <span =
style=3D"background-color: rgb(0, 255, 128);">angstrom-angstrom-layers</spa=
n> package from the link <br><a href=3D"http://gitorious.org/angstrom/angst=
rom-layers/" target=3D"_blank">http://gitorious.org/angstrom/angstrom-layer=
s/</a> and updated <span style=3D"background-color: rgb(0, 191, 96);">laver=
ne-4.0.1/meta/conf, /recipes-bsp, /recipes-ti,</span> added image <span sty=
le=3D"background-color: rgb(0, 191, 96);">recipes_images_beagleboard-demo-i=
mage.bb in /meta/recipes/core/images</span> and modified <span style=3D"bac=
kground-color: rgb(0, 191, 96);">/meta/conf/local.conf.sample</span> as <br=
><span style=3D"background-color: rgb(64, 160, 255);">#MACHINE&nbsp; ?=3D"q=
emux86"</span> and<br style=3D"background-color: rgb(0, 191, 191);"><span s=
tyle=3D"background-color: rgb(0, 191, 96);">MACHINE ?=3D"beagleboard"</span=
><br>and bitbake it as
 bitbake omap-image-beagleboard-demo and got the error :<br>NOTE: &lt;type =
'exceptions.Exception'&gt;:variable BBPATH references itself! while evaluat=
ing:<br>/home/surya/Surya/pro/POKY/laverne-4.0.1/meta:${BBPATH}<br>NOTE: &l=
t;type 'exceptions.Exception'&gt;:variable BBPATH references itself! while =
evaluating:<br>${BBPATH}:${LAYERDIR}<br>FATAL: Traceback (most recent call =
last):<br>&nbsp; File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/../=
/bitbake//bin/bitbake", line 216, in &lt;module&gt;<br>&nbsp;&nbsp;&nbsp; r=
et =3D main()<br>&nbsp; File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scri=
pts/..//bitbake//bin/bitbake", line 177, in main<br>&nbsp;&nbsp;&nbsp; cook=
er =3D bb.cooker.BBCooker(configuration, server)<br>&nbsp; File "/home/sury=
a/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooker.py", line =
85, in __init__<br>&nbsp;&nbsp;&nbsp; self.parseConfigurationFiles(self.con=
figuration.file)<br>&nbsp; File
 "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/cooke=
r.py", line 515, in parseConfigurationFiles<br>&nbsp;&nbsp;&nbsp; data =3D =
bb.parse.handle(os.path.join(layer, "conf", "layer.conf"), data)<br>&nbsp; =
File "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/p=
arse/__init__.py", line 75, in handle<br>&nbsp;&nbsp;&nbsp; return h['handl=
e'](fn, data, include)<br>&nbsp; File "/home/surya/Surya/pro/POKY/laverne-4=
.0.1/scripts/..//bitbake/lib/bb/parse/parse_py/ConfHandler.py", line 105, i=
n handle<br>&nbsp;&nbsp;&nbsp; statements.eval(data)<br>&nbsp; File "/home/=
surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/parse/ast.py"=
, line 37, in eval<br>&nbsp;&nbsp;&nbsp; statement.eval(data)<br>&nbsp; Fil=
e "/home/surya/Surya/pro/POKY/laverne-4.0.1/scripts/..//bitbake/lib/bb/pars=
e/ast.py", line 97, in eval<br>&nbsp;&nbsp;&nbsp; val =3D bb.data.expand(gr=
oupd["value"], e)<br>Exception: variable BBPATH references
 itself!<br><br>Help me to solve the problem.<br>Thanks in advance.<br><br>=
<br>--- On <b>Mon, 21/3/11, Koen Kooi <i>&lt;koen@dominion.thruhere.net&gt;=
</i></b> wrote:<br><blockquote style=3D"border-left: 2px solid rgb(16, 16, =
255); margin-left: 5px; padding-left: 5px;"><br>From: Koen Kooi &lt;koen@do=
minion.thruhere.net&gt;<br>Subject: Re: [poky] Need help to build poky imag=
e for beagle board<br>To: "Sparsh Wid hope" &lt;sparsh150847@yahoo.com&gt;<=
br>Cc: "poky" &lt;poky@yoctoproject.org&gt;, "Patches and discussions about=
 the oe-core layer" &lt;openembedded-core@lists.openembedded.org&gt;<br>Dat=
e: Monday, 21 March, 2011, 11:49 AM<br><br><div class=3D"plainMail"><br>Op =
21 mrt 2011, om 11:29 heeft Sparsh Wid hope het volgende geschreven:<br><br=
>&gt; Hi All,<br>&gt; <br>&gt; I'm trying to build poky image for beagle bo=
ard. <br><br>I'll address the 'beagleboard' portion of your question below.=
<br><br>&gt; I got the following error- <br>&gt; FATAL: Error when
 parsing []: file classes/packaged-staging.bbclass not found in /home/surya=
/Surya/pro/POKY/meta-texasinstruments:/home/surya/Surya/pro/POKY/meta<br>&g=
t; <br>&gt; I followed the steps below-<br>&gt; <br>&gt; 1.Downloaded the s=
ource <br>&gt; wget -c <a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/po=
ky/snapshot/poky-laverne-4.0.1.tar.bz2" target=3D"_blank">http://git.pokyli=
nux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.tar.bz2</a><br>&gt; =
<br>&gt; and rename it as POKY.<br>&gt; 2. Get TI's overlay<br>&gt; git clo=
ne git://github.com/mrchapp/meta-texasinstruments.git<br>&gt; cd meta-texas=
instruments<br>&gt; git checkout -b gitomapzoom --track origin/gitomapzoom<=
br><br>That's not a TI overlay, it's an overlay done by someone to add the =
dspbridge stuff to OE. If you want better beagleboard support, use the foll=
owing layer:<br><br><a href=3D"http://gitorious.org/angstrom/angstrom-layer=
s/"
 target=3D"_blank">http://gitorious.org/angstrom/angstrom-layers/</a><br><b=
r>If you don't want to manually resolve all the layer dependencies have a l=
ook at the scripts mentioned in the readme:<br><br><a href=3D"http://gitori=
ous.org/angstrom/angstrom-layers/blobs/master/README" target=3D"_blank">htt=
p://gitorious.org/angstrom/angstrom-layers/blobs/master/README</a><br><br>T=
he 'better' in the above is aimed at hw support like cpufreq, DSP, 1GHz/720=
MHz, etc. The standard yocto kernel lacks all that because it's focussed at=
 different things like 100% POSIX compliance.<br><br>regards,<br><br>Koen<b=
r><br>&gt; <br>&gt; 3. Copy configuration<br>&gt; cp -p POKY/meta-texasinst=
ruments/conf/misc/local.conf POKY/build/conf/local.conf<br>&gt; <br>&gt; 4.=
 Build!<br>&gt; cd POKY<br>&gt; source poky-init-build-env<br>&gt; <br>&gt;=
 from the link <a href=3D"http://elinux.org/BeagleBoard/Poky" target=3D"_bl=
ank">http://elinux.org/BeagleBoard/Poky</a><br>&gt; Help me to solve this
 error.<br>&gt; Thanks in advance&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>&gt=
; <br>&gt; _______________________________________________<br>&gt; poky mai=
ling list<br>&gt; <a ymailto=3D"mailto:poky@yoctoproject.org" href=3D"/mc/c=
ompose?to=3Dpoky@yoctoproject.org">poky@yoctoproject.org</a><br>&gt; <a hre=
f=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">https:=
//lists.yoctoproject.org/listinfo/poky</a><br><br></div></blockquote></td><=
/tr></table><br>

--0-338846836-1300767314=:3537--
