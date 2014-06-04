Return-Path: <dario.dabronzo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACF7FE00B68; Wed,  4 Jun 2014 03:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dario.dabronzo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* 0.0 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42336E00B20
	for <poky@yoctoproject.org>; Wed,  4 Jun 2014 03:23:09 -0700 (PDT)
Received: by mail-yh0-f48.google.com with SMTP id a41so6142702yho.7
	for <poky@yoctoproject.org>; Wed, 04 Jun 2014 03:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EHjCTe4THx9+Ek/mNS1lbL+R1LzFBd2EPahT2uCilfA=;
	b=JdcJRLqY5XfXPOEW5NdRwPHArlSUP5f+Wx+Fel67Woxg0RnyGElFrdqYQGKMkjfs0g
	3Rh6XUSDjvG0Z2gRfoVsFXFih5KXB8oH3l9dr9JTBXfS/lp9qNAd7DOSmD0sFvuG10Na
	d/dFMALPxtb/ZiLOz6izPKygFS72MPvkCrxhyNtYoC9IN+OcEgKJgQPxiygyUf8mn/Mo
	g6jWYxjmszgn9/5MstZFP4mgXP3P3Y5fZ7S+0y8/zIpwQEQu0C7vzJv3SdIm6bJCYMFQ
	dyvpGYAu/cviIcSe5F1STDIJ+GC71sjdTTQc2QMWW93cgOxdavZjvUooJCHAu5l9ejz9
	WSZQ==
MIME-Version: 1.0
X-Received: by 10.236.63.35 with SMTP id z23mr71923706yhc.39.1401877388929;
	Wed, 04 Jun 2014 03:23:08 -0700 (PDT)
Received: by 10.170.123.17 with HTTP; Wed, 4 Jun 2014 03:23:08 -0700 (PDT)
Date: Wed, 4 Jun 2014 12:23:08 +0200
Message-ID: <CALDaZEH3CnFjQmbH=Xwuc11WTFXS2pq--VSZne=muRsAgOdEdw@mail.gmail.com>
From: "Dario D'Abronzo" <dario.dabronzo@gmail.com>
To: poky@yoctoproject.org
Subject: Syntax error in bitbake / HOB
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
X-List-Received-Date: Wed, 04 Jun 2014 10:23:11 -0000
Content-Type: multipart/alternative; boundary=089e013a10bec9340904fb00036c

--089e013a10bec9340904fb00036c
Content-Type: text/plain; charset=UTF-8

Hi everybody!

Dears, my name is Dario D'Abronzo and I'm working with an nvidia tegra 3
SOM.
I've already built the image with the instructions of the developer and I
succeded with oe-core.

Now I'm trying to build an image importing the BSP in Yocto and compiling
trough poky and HOB.
When I add the layer from the manufacturer in HOB (meta toradex) I get a
general error with no explaination, and when I try to bitbake I get:

NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/console-trdx-image.bb
NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/qt4e-demo-image.bb
NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/angstrom-qt-x11-image.bb
NOTE: Error during finalise of
/home/ddalnx/poky/meta-toradex/recipes/images/angstrom-lxde-image.bb
ERROR: ExpansionError during parsing
/home/ddalnx/poky/meta-toradex/recipes/images/console-trdx-image.bb:
Failure expanding variable do_rootfs: SyntaxError: invalid syntax (<string>,
line 2)

the BB file begin with:
#Angstrom image
DESCRIPTION = "Image booting to a console"

So the line 2 is just the description code.

Why am I failing bitbaking from ~/poky/build/  ??
I'm giving exactly the same code as oe-core:

ddalnx@ddassgdeb:~$ cd poky/
ddalnx@ddassgdeb:~/poky$ source oe-init-build-env
.
. etc ...
.
ddalnx@ddassgdeb:~/poky/build$ bitbake angstrom-qt-x11-image

if you're interested on analyzing the source I gitted from
http://git.toradex.com/gitweb specifically from gt://
git.toradex.com/gitweb/meta-toradex.git
PS. I verified that I'm using the correct python version and I do, it's the
v. 2.7.3 and the bitbake folder is unaltered in both oe-core and in poky
folder.


Many thanks for your precious help,
Kind Regards,

Dario.

--089e013a10bec9340904fb00036c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Hi everybody!</span><br style=3D"font-family:arial,sans-serif;font-size:1=
3px"><br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=
=3D"font-family:arial,sans-serif;font-size:13px">Dears, my name is Dario D&=
#39;Abronzo and I&#39;m working with an nvidia tegra 3 SOM.</span><br style=
=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">I&#39;ve alread=
y built the image with the instructions of the developer and I succeded wit=
h oe-core.</span><br style=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">Now I&#39;m trying to build an i=
mage importing the BSP in Yocto and compiling trough poky and HOB.</span><b=
r style=3D"font-family:arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">When I add the =
layer from the manufacturer in HOB (meta toradex) I get a general=C2=A0</sp=
an><span class=3D"" style=3D"font-family:arial,sans-serif;font-size:13px;ba=
ckground:rgb(255,255,204)">error</span><span style=3D"font-family:arial,san=
s-serif;font-size:13px">=C2=A0with no explaination, and when I try to bitba=
ke I get:</span><br style=3D"font-family:arial,sans-serif;font-size:13px">
<br style=3D"font-family:arial,sans-serif;font-size:13px"><div style=3D"fon=
t-family:arial,sans-serif;font-size:13px"><div>NOTE:=C2=A0<span class=3D"" =
style=3D"background:rgb(255,255,204)">Error</span>=C2=A0during finalise of =
/home/ddalnx/poky/meta-toradex/recipes/images/<a href=3D"http://console-trd=
x-image.bb/" target=3D"_blank">console-trdx-image.bb</a></div>
<div>NOTE:=C2=A0<span class=3D"" style=3D"background:rgb(255,255,204)">Erro=
r</span>=C2=A0during finalise of /home/ddalnx/poky/meta-toradex/recipes/ima=
ges/<a href=3D"http://qt4e-demo-image.bb/" target=3D"_blank">qt4e-demo-imag=
e.bb</a></div>
<div>NOTE:=C2=A0<span class=3D"" style=3D"background:rgb(255,255,204)">Erro=
r</span>=C2=A0during finalise of /home/ddalnx/poky/meta-toradex/recipes/ima=
ges/<a href=3D"http://angstrom-qt-x11-image.bb/" target=3D"_blank">angstrom=
-qt-x11-image.bb</a></div>
<div>NOTE:=C2=A0<span class=3D"" style=3D"background:rgb(255,255,204)">Erro=
r</span>=C2=A0during finalise of /home/ddalnx/poky/meta-toradex/recipes/ima=
ges/<a href=3D"http://angstrom-lxde-image.bb/" target=3D"_blank">angstrom-l=
xde-image.bb</a></div>
<div><span class=3D"" style=3D"background:rgb(255,255,204)">ERROR</span>: E=
xpansionError during parsing /home/ddalnx/poky/meta-toradex/recipes/images/=
<a href=3D"http://console-trdx-image.bb/" target=3D"_blank">console-trdx-im=
age.bb</a>: Failure expanding variable do_rootfs:=C2=A0<span class=3D"" sty=
le=3D"background:rgb(255,255,204)">SyntaxError</span>: invalid=C2=A0<span c=
lass=3D"" style=3D"background:rgb(255,255,204)">syntax</span>=C2=A0(&lt;str=
ing&gt;, line 2)</div>
</div><div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div>=
<div style=3D"font-family:arial,sans-serif;font-size:13px">the BB file begi=
n with:<br><div>#Angstrom image</div><div>DESCRIPTION =3D &quot;Image booti=
ng to a console&quot;<br>
<br>So the line 2 is just the description code.<br><br>Why am I failing bit=
baking from ~/poky/build/ =C2=A0??<br>I&#39;m giving exactly the same code =
as oe-core:<br><br><div>ddalnx@ddassgdeb:~$ cd poky/</div><div>ddalnx@ddass=
gdeb:~/poky$ source oe-init-build-env</div>
<div>.</div><div>. etc ...</div><div>.</div><div>ddalnx@ddassgdeb:~/poky/bu=
ild$ bitbake angstrom-qt-x11-image</div></div></div><div style=3D"font-fami=
ly:arial,sans-serif;font-size:13px"><br></div><div style=3D"font-family:ari=
al,sans-serif;font-size:13px">
if you&#39;re interested on analyzing the source I gitted from=C2=A0<a href=
=3D"http://git.toradex.com/gitweb" target=3D"_blank">http://git.toradex.com=
/gitweb</a>=C2=A0specifically from=C2=A0gt://<a href=3D"http://git.toradex.=
com/gitweb/meta-toradex.git" target=3D"_blank">git.toradex.com/gitweb/meta-=
toradex.git</a><br>
PS. I verified that I&#39;m using the correct python version and I do, it&#=
39;s the v. 2.7.3 and the bitbake folder is unaltered in both oe-core and i=
n poky folder.<br><br><br>Many thanks for your precious help,<br>Kind Regar=
ds,=C2=A0<div class=3D"">
<div id=3D":3cy" class=3D"" tabindex=3D"0"><img class=3D"" src=3D"https://m=
ail.google.com/mail/u/0/images/cleardot.gif"></div></div><span class=3D""><=
font color=3D"#888888"><br>Dario.</font></span></div></div>

--089e013a10bec9340904fb00036c--
