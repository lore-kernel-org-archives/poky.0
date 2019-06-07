Return-Path: <jonas.hoeppner@garz-fricke.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAEC0E00BAA; Fri,  7 Jun 2019 07:57:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.72.187.39 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1586 seconds by postgrey-1.32 at yocto-www;
	Fri, 07 Jun 2019 07:57:53 PDT
Received: from mailout-afstr39.mailout.artfiles.de
	(mailout-afstr39.mailout.artfiles.de [212.72.187.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D8F8E006EE
	for <poky@yoctoproject.org>; Fri,  7 Jun 2019 07:57:53 -0700 (PDT)
Received: from [89.27.136.47] (helo=mail.garz-fricke.com)
	auth=mx@garz-fricke.com by mailout.artfiles.de with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_CBC_SHA384:256) (Exim 4.86_2)
	id 1hZFtu-0007OW-6r
	for poky@yoctoproject.org; Fri, 07 Jun 2019 16:31:26 +0200
Received: from SRV24.hamburg.garz-fricke.de ([fe80::91bd:d629:787:188]) by
	SRV24.hamburg.garz-fricke.de ([fe80::91bd:d629:787:188%12]) with mapi
	id 14.03.0439.000; Fri, 7 Jun 2019 16:31:25 +0200
From: =?iso-8859-1?Q?Jonas_H=F6ppner?= <jonas.hoeppner@garz-fricke.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: module.bbclass, dependent module handling
Thread-Index: AdUcUzVGgDXMjaS8Qn6Yfof1R/LQEQ==
Date: Fri, 7 Jun 2019 14:31:24 +0000
Message-ID: <9E27E505FFE47144BFD52305D1A13EEC6DBF8273@SRV24.hamburg.garz-fricke.de>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.15.165]
MIME-Version: 1.0
Subject: module.bbclass, dependent module handling
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
X-List-Received-Date: Fri, 07 Jun 2019 14:57:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9E27E505FFE47144BFD52305D1A13EEC6DBF8273SRV24hamburggar_"

--_000_9E27E505FFE47144BFD52305D1A13EEC6DBF8273SRV24hamburggar_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have a question regarding the dependecy mechanism for external/out-of-tre=
e kernel modules.

In module.bbclass the DEPENDS variable s checked for dependencies starting =
kernel-module-,
if it it found the Module.symver is passed to the makefile to make modpost =
happy.

But, it is (from what I've seen) is uncommon to call the recipe/PN kernel-m=
odule ... as this
is added later by the kernel-modules-split.bbclass for the actual package.
When the PN already starts with kernel-module- the package later has this p=
art doubled.

I'm using this patch to make module builds fail on missing symbols.
modpost: make KBUILD_MODPOST_WARN also configurable for external modules
https://github.com/torvalds/linux/commit/83da1bed86cdfe3abb2a33c36a2a5aaf5f=
390ef6

Is there something I've overseen?

I currently don't have a simple fix for this. The duplicate kernel-module- =
in the package name could be handled,
but the real problem is to detect if a dependency in DEPENDS provides an ex=
ternal kernel module.

Thanks, Jonas

Jonas H=F6ppner
www.garz-fricke.com


--_000_9E27E505FFE47144BFD52305D1A13EEC6DBF8273SRV24hamburggar_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Verdana;color: #000000;font-size:=
 10pt;">
<div>I have a question regarding the dependecy mechanism for external/out-o=
f-tree kernel modules.</div>
<div><br>
</div>
<div>In module.bbclass the&nbsp;DEPENDS variable s checked for dependencies=
 starting kernel-module-,&nbsp;</div>
<div>if it it found the Module.symver is passed to the makefile to make mod=
post happy.</div>
<div><br>
</div>
<div>But, it is (from what I've seen) is uncommon to call the recipe/PN ker=
nel-module ... as this&nbsp;</div>
<div>is added later by the&nbsp;kernel-modules-split.bbclass for the actual=
 package.&nbsp;</div>
<div>When the PN already starts with kernel-module- the package later has t=
his part doubled.</div>
<div><br>
</div>
<div><span style=3D"font-size: 10pt;">I'm using this patch&nbsp;to make mod=
ule builds fail on missing symbols.</span></div>
<div>modpost: make KBUILD_MODPOST_WARN also configurable for external modul=
es</div>
<div>https://github.com/torvalds/linux/commit/83da1bed86cdfe3abb2a33c36a2a5=
aaf5f390ef6</div>
<div><br>
</div>
<div>Is there something I've overseen?&nbsp;</div>
<div><br>
</div>
<div>I currently don't have a simple fix for this. The duplicate kernel-mod=
ule- in the package name could be handled,&nbsp;</div>
<div>but the real problem is to detect if a dependency in DEPENDS provides =
an external kernel module.</div>
<div><br>
</div>
<div>Thanks, Jonas</div>
<div><br>
</div>
<div>Jonas H=F6ppner</div>
<div>www.garz-fricke.com</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_9E27E505FFE47144BFD52305D1A13EEC6DBF8273SRV24hamburggar_--
