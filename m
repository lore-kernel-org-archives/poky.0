Return-Path: <Christoph.Stoidner@continental-corporation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 840B0E00BA2; Thu, 10 Aug 2017 02:36:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.93.140.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 329 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Aug 2017 02:36:53 PDT
Received: from mailout02.de1.retarus.com (mailout02.de1.retarus.com
	[185.93.140.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16694E00B77
	for <poky@yoctoproject.org>; Thu, 10 Aug 2017 02:36:53 -0700 (PDT)
Received: from kdin01.de1.retarus.com (unknown [10.241.12.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout02.de1.retarus.com (Postfix) with ESMTPS id 3xSjZ0562Dz1m226
	for <poky@yoctoproject.org>; Thu, 10 Aug 2017 11:31:20 +0200 (CEST)
Received: from FRHB103.fr.ge.conti.de (unknown [10.220.1.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by kdin01.de1.retarus.com (Postfix) with ESMTPS id 3xSjZ0321lz12Lkx
	for <poky@yoctoproject.org>; Thu, 10 Aug 2017 11:31:20 +0200 (CEST)
Received: from frhb103.fr.ge.conti.de (frhb103.fr.ge.conti.de [172.29.13.42])
	by FRHB103.fr.ge.conti.de (8.14.4/8.14.4) with ESMTP id
	v7A9VKsO003197
	for <poky@yoctoproject.org>; Thu, 10 Aug 2017 11:31:20 +0200
Received: from frhb008.auto.contiwan.com ([172.29.8.54])
	by frhb103.fr.ge.conti.de (IBM Domino Release 9.0.1FP6)
	with ESMTP id 2017081011311930-3524247 ;
	Thu, 10 Aug 2017 11:31:19 +0200 
In-Reply-To: <3183f139833546c3b9d35084f7259243@SGPMBX1023.APAC.bosch.com>
References: <3183f139833546c3b9d35084f7259243@SGPMBX1023.APAC.bosch.com>
To: poky@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: B21F7091:69364EDC-C1258178:003245AB;
	type=4; flags=0; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP6 SHF603 February 03, 2016
Message-ID: <OFB21F7091.69364EDC-ONC1258178.003245AB-C1258178.00344D8A@continental-corporation.com>
From: Christoph.Stoidner@continental-corporation.com
Date: Thu, 10 Aug 2017 11:31:16 +0200
X-MIMETrack: Serialize by Router on frhb008/srvc7/srvc/cag(Release
	9.0.1FP8HF240 | May 5, 2017) at 08/10/2017 11:31:18 AM,
	Serialize complete at 08/10/2017 11:31:18 AM,
	Itemize by SMTP Server on vshb101/srvcMX/srvc/cag(Release
	9.0.1FP6|April 20, 2016) at 08/10/2017 11:31:19 AM,
	Serialize by Router on vshb101/srvcMX/srvc/cag(Release 9.0.1FP6|April
	20, 2016) at 08/10/2017 11:31:20 AM,
	Serialize complete at 08/10/2017 11:31:20 AM
X-TNEFEvaluated: 1
X-AutoFooter: AFMA Version 2.0.11 (frhb103.fr.ge.conti.de)
X-RMX-ID: 20170810-113120-3xSjZ0321lz12Lkx-0@10
X-RMX-TRACE: 2017-08-10 11:31:20 KdIn2013@10/mailcc03 [0.0s]
	20170810-113120-3xSjZ0321lz12Lkx-0@10 0:00:00
X-RMX-TRACE: 2017-08-10 11:31:20 RmxMSO@kdin01/mailcc02 [0.1s]
	20170810-113120-3xSjZ0321lz12Lkx-0@10 0:00:00
Subject: Antwort: How do you use a latest package version in a Yocto (older	version) ?
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
X-List-Received-Date: Thu, 10 Aug 2017 09:36:55 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00344D8AC1258178_="

--=_alternative 00344D8AC1258178_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-1"

Hi,

looking in your configure log output it seems that there is a dependency=20=

to CURL that could not be solved:

   configure:4536: error: failed: I need CURL due https support

The dependency it-self is clear since it is part of the apt's recipe:=20

   DEPENDS =3D =22curl db zlib=22
=20
So is there some CURL recipe at your side? And are you able to build it=20
separatly? Maybe old CURL recipe and new apt are not compatible? Could=20
help to have a look to the CURL recipe that is part of the poky version=20
from where your get your apt recipe update.

Regards,
Christoph




Von:    =22Anurag Raghavan (RBEI/ETW1)=22 <Raghavan.Anurag=40in.bosch.com>
An:     =22poky=40yoctoproject.org=22 <poky=40yoctoproject.org>,=20
Datum:  10.08.2017 06:13
Betreff:        =5Bpoky=5D How do you use a latest package version in a Yoc=
to=20
(older  version) ?
Gesendet von:   poky-bounces=40yoctoproject.org



I am using the following Yocto version,
=20
DISTRO =3D =22poky=22
DISTRO_NAME =3D =22Poky 8.0.1 (Yocto Project 1.3.1 Reference Distro)=22
DISTRO_VERSION =3D =221.3.1=22
SDK_VENDOR =3D =22-pokysdk=22
=20
I want to upgrade the following packages.
=20
1.     Currently using package apt_0.7.14 and nee to upgrade to the latest=
=20
version (say apt_1.2.12).
2.     Currently using package eglibc-2.16 and nee to upgrade to the=20
latest version. I think latest Yocto versions using glibc instead of=20
eglibc.
=20
I tried the following steps,
=20
1.     Copied the apt recipes=20
Yocto-2.3=5Cpoky-pyro-17.0.0=5Cmeta=5Crecipes-devtools/apt to my work space=
.
2.     Initiated bitbake.
3.     But I am getting some do_configure error.
=20
Log attached
=20
It will be much appreciated, if anyone can help to solve this issue.=20
=20
=20
=20
Best regards,=20

Raghavan Anurag
RBEI/ETW1

Tel. +91 422 667-4001 =7C Mobil 9986968950 =5BAnhang =22log.do_configure.22=
682=22=20
gel=F6scht von Christoph Stoidner/usr/cag=5D --=20
_______________________________________________
poky mailing list
poky=40yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky


--=_alternative 00344D8AC1258178_=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="ISO-8859-1"

<font size=3D2 face=3D=22sans-serif=22>Hi,</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>looking in your configure log ou=
tput
it seems that there is a dependency to CURL that could not be solved:</font=
>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; &nbsp;configure:4536: err=
or:
failed: I need CURL due https support</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>The dependency it-self is clear =
since
it is part of the apt's recipe: </font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp; &nbsp;DEPENDS =3D &quot;c=
url db
zlib&quot;</font>
<br><font size=3D2 face=3D=22sans-serif=22>&nbsp;</font>
<br><font size=3D2 face=3D=22sans-serif=22>So is there some CURL recipe at =
your
side? And are you able to build it separatly? Maybe old CURL recipe and
new apt are not compatible? Could help to have a look to the CURL recipe
that is part of the poky version from where your get your apt recipe update=
.</font>
<br>
<br><font size=3D2 face=3D=22sans-serif=22>Regards,<br>
Christoph<br>
</font>
<br>
<br>
<br>
<br><font size=3D1 color=3D=235f5f5f face=3D=22sans-serif=22>Von: &nbsp; &n=
bsp; &nbsp;
&nbsp;</font><font size=3D1 face=3D=22sans-serif=22>&quot;Anurag Raghavan
(RBEI/ETW1)&quot; &lt;Raghavan.Anurag=40in.bosch.com&gt;</font>
<br><font size=3D1 color=3D=235f5f5f face=3D=22sans-serif=22>An: &nbsp; &nb=
sp; &nbsp;
&nbsp;</font><font size=3D1 face=3D=22sans-serif=22>&quot;poky=40yoctoproje=
ct.org&quot;
&lt;poky=40yoctoproject.org&gt;, </font>
<br><font size=3D1 color=3D=235f5f5f face=3D=22sans-serif=22>Datum: &nbsp; =
&nbsp; &nbsp;
&nbsp;</font><font size=3D1 face=3D=22sans-serif=22>10.08.2017 06:13</font>=

<br><font size=3D1 color=3D=235f5f5f face=3D=22sans-serif=22>Betreff: &nbsp=
; &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D=22sans-serif=22>=5Bpoky=5D How d=
o
you use a latest package version in a Yocto (older &nbsp; &nbsp; &nbsp;
&nbsp;version) ?</font>
<br><font size=3D1 color=3D=235f5f5f face=3D=22sans-serif=22>Gesendet von: =
&nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D=22sans-serif=22>poky-bounces=40y=
octoproject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3 face=3D=22Arial=22>I am using the following Yocto versio=
n,</font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22><b><i>DISTRO =3D &quot;poky&quot;</i>=
</b></font>
<br><font size=3D3 face=3D=22Arial=22><b><i>DISTRO_NAME =3D &quot;Poky 8.0.=
1 (Yocto
Project 1.3.1 Reference Distro)&quot;</i></b></font>
<br><font size=3D3 face=3D=22Arial=22><b><i>DISTRO_VERSION =3D &quot;1.3.1&=
quot;</i></b></font>
<br><font size=3D3 face=3D=22Arial=22><b><i>SDK_VENDOR =3D &quot;-pokysdk&q=
uot;</i></b></font>
<br><font size=3D3 face=3D=22Arial=22><b><i>&nbsp;</i></b></font>
<br><font size=3D3 face=3D=22Arial=22>I want to upgrade the following packa=
ges.</font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22>1. &nbsp; &nbsp; Currently using pack=
age
apt_0.7.14 and nee to upgrade to the latest version (say apt_1.2.12).</font=
>
<br><font size=3D3 face=3D=22Arial=22>2. &nbsp; &nbsp; Currently using pack=
age
eglibc-2.16 and nee to upgrade to the latest version. I think latest Yocto
versions using glibc instead of eglibc.</font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22>I tried the following steps,</font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22>1. &nbsp; &nbsp; Copied the apt recip=
es Yocto-2.3=5Cpoky-pyro-17.0.0=5Cmeta=5Crecipes-devtools/apt
to my work space.</font>
<br><font size=3D3 face=3D=22Arial=22>2. &nbsp; &nbsp; Initiated bitbake.</=
font>
<br><font size=3D3 face=3D=22Arial=22>3. &nbsp; &nbsp; But I am getting som=
e do_configure
error.</font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22><b>Log attached</b></font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22>It will be much appreciated, if anyon=
e can
help to solve this issue. </font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22>&nbsp;</font>
<br><font size=3D3 face=3D=22Arial=22>Best regards, <br>
<b><br>
Raghavan Anurag<br>
RBEI/ETW1</b><br>
<br>
Tel. +91 422 667-4001 =7C Mobil 9986968950 =5BAnhang &quot;log.do_configure=
.22682&quot;
gel=F6scht von Christoph Stoidner/usr/cag=5D </font><tt><font size=3D2>-- <=
br>
_______________________________________________<br>
poky mailing list<br>
poky=40yoctoproject.org<br>
</font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/poky><tt><fon=
t size=3D2>https://lists.yoctoproject.org/listinfo/poky</font></tt></a><tt>=
<font size=3D2><br>
</font></tt>
<br>

--=_alternative 00344D8AC1258178_=--
