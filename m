Return-Path: <tobias.andersson@multiq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 801A7E009DF; Wed, 14 Sep 2016 06:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.245.230.163 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 384 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Sep 2016 06:01:06 PDT
Received: from mail1.bemta3.messagelabs.com (mail1.bemta3.messagelabs.com
	[195.245.230.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16FD4E009CD
	for <poky@yoctoproject.org>; Wed, 14 Sep 2016 06:01:06 -0700 (PDT)
Received: from [85.158.137.19] by server-3.bemta-3.messagelabs.com id
	F6/E6-23620-09849D75; Wed, 14 Sep 2016 12:54:40 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJIsWRWlGSWpSXmKPExsVy2HCNuW6vx81
	wg8+9lhbT/61hd2D0aD/RxxbAGMWamZeUX5HAmnGvoY+l4JRExbnLx1kaGBvEuhi5OIQEZjBK
	vHzdx9TFyMHBJmAisWq9VRcjJ4eIgLHEzE9LWEFsYQEZiUP7rrNBxBUl9rZ/Zoew9SQmzDsPF
	mcRUJWYfXcuM4jNKxAk8ffeOzCbUUBW4v73eywgNrOAuMTnuQ+YQGwJAQGJJXvOM0PYohIvH/
	9jhbDlJabNb2GDqM+T6G85zQIxU1Di5MwnLBMY+WchGTULSdksJGUQcT2JG1OnsEHY2hLLFr5
	mhrB1JWb8O8SCLL6AkX0Vo0ZxalFZapGukYFeUlFmekZJbmJmjq6hgbFebmpxcWJ6ak5iUrFe
	cn7uJkZgkNczMDDuYGw+4XeIUZKDSUmUV0rvZrgQX1J+SmVGYnFGfFFpTmrxIUYZDg4lCd6J7
	kA5waLU9NSKtMwcYLzBpCU4eJREeHtA0rzFBYm5xZnpEKlTjIpS4rzJIAkBkERGaR5cGyzGLz
	HKSgnzMjIwMAjxFKQW5WaWoMq/YhTnYFQS5t0AMoUnM68EbvoroMVMQIu3rLkOsrgkESEl1cA
	Ytnpf3xJG+70nBd69vTGT3ZTxrEeGjm+t0JyFdjYT0/8yebm9T1w5eUGnlbgP+9Nd1Yy+ce7T
	buryLztiuoFR6GzgyUbrhBoR/e4Im2XnmJbYzDPM9dH1zrjYc2CbCsu/Y3vT1CJ++qszdqz8t
	MR7uesSneW6S7zvrYpqy25M4IkP/vzss5ASS3FGoqEWc1FxIgAuTe567AIAAA==
X-Env-Sender: tobias.andersson@multiq.com
X-Msg-Ref: server-11.tower-39.messagelabs.com!1473857677!62429962!1
X-Originating-IP: [195.49.172.55]
X-StarScan-Received: 
X-StarScan-Version: 8.84; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 10457 invoked from network); 14 Sep 2016 12:54:37 -0000
Received: from unknown (HELO exch02-esl-se.Multiq2.local) (195.49.172.55)
	by server-11.tower-39.messagelabs.com with AES256-SHA encrypted SMTP;
	14 Sep 2016 12:54:37 -0000
Received: from exch02-esl-se.Multiq2.local ([::1]) by
	exch02-esl-se.Multiq2.local ([::1]) with mapi id 14.03.0224.002;
	Wed, 14 Sep 2016 14:54:37 +0200
From: Tobias Andersson <tobias.andersson@multiq.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky][autobuilder]
Thread-Index: AdIOhRp+qw12snZ4Qw2gE1p29aT3ug==
Date: Wed, 14 Sep 2016 12:54:36 +0000
Message-ID: <A126740DBD3CFF4C92C08C03B00BC6C8013D4C6B@exch02-esl-se.Multiq2.local>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [85.235.1.83]
MIME-Version: 1.0
Subject: [autobuilder]
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
X-List-Received-Date: Wed, 14 Sep 2016 13:01:11 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4C6Bexch02eslseMult_"

--_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4C6Bexch02eslseMult_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have an issue with useradd command not succeeding. The issue is appearing=
 when building the image with autobuilder.

error msg:
"do_populate_sysroot_setscene: mqclient-base-files: useradd command did not=
 succeed."

The user being added in the recipe depends on another group that i add from=
 another recipe, which the logs states that the group does not exits, even =
though i check in the sysroot that it does.
I even had to apply the --force flag to the recipe adding the group because=
 it generated an error stating it already existed.

What could be the problem ?

---------------------------------------------------------
Med v=E4nlig h=E4lsning/ Kind Regards

Tobias Andersson

Software Developer

Direct: +46 (0)10 211 66 05
Office: +46 (0)10 211 66 00

tobias.andersson@multiq.com

www.multiq.com

--_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4C6Bexch02eslseMult_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">I have an issue with useradd command not succeeding. The issue is ap=
pearing when building the image with autobuilder.<br>
<br>
error msg:<span class=3D"stderr"><br>
&quot;do_populate_sysroot_setscene: mqclient-base-files: useradd command di=
d not succeed.&quot;<br>
<br>
The user being added in the recipe depends on another group that i add from=
 another recipe, which the logs states that the group does not exits, even =
though i check in the sysroot that it does.<br>
I even had to apply the --force flag to the recipe adding the group because=
 it generated an error stating it already existed.<br>
<br>
What could be the problem ?<br>
</span>
<div><br>
<div style=3D"font-family:Tahoma; font-size:13px">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:10pt"=
>
<div class=3D"PlainText">--------------------------------------------------=
-------<br>
Med v=E4nlig h=E4lsning/ Kind Regards<br>
<br>
Tobias Andersson<br>
<br>
Software Developer<br>
<br>
Direct: &#43;46 (0)10 211 66 05<br>
Office: &#43;46 (0)10 211 66 00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<br>
tobias.andersson@multiq.com<br>
<br>
www.multiq.com </div>
</span></font></div>
</div>
</div>
</div>
</body>
</html>

--_000_A126740DBD3CFF4C92C08C03B00BC6C8013D4C6Bexch02eslseMult_--
