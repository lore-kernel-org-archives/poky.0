Return-Path: <f.suligoi@asem.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0347E009DA; Thu, 19 Jan 2017 02:06:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0013]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 313 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Jan 2017 02:06:37 PST
Received: from smtp.asem.it (smtp.asem.it [151.1.184.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25419E009DA
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 02:06:36 -0800 (PST)
Received: from webmail.asem.it by asem.it (smtp.asem.it)
	(SecurityGateway 4.0.1) with ESMTP id SG002511124.MSG 
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 11:01:21 +0100S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
	(172.16.16.44) with Microsoft SMTP Server (TLS) id 15.1.225.42;
	Thu, 19 Jan 2017 11:01:19 +0100
Received: from ASAS044.asem.intra ([::1]) by ASAS044.asem.intra ([::1]) with
	mapi id 15.01.0225.041; Thu, 19 Jan 2017 11:01:19 +0100
From: Flavio Suligoi <f.suligoi@asem.it>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: connman 1.33  takes very long time to start
Thread-Index: AQHScjjGCkdLrkvzoUC17HhsnD7BGA==
Date: Thu, 19 Jan 2017 10:01:19 +0000
Message-ID: <2c4eb5acb08c4038878801c3143d070b@asem.it>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [172.16.17.96]
MIME-Version: 1.0
X-SGHeloLookup-Result: hardfail smtp.helo=webmail.asem.it (does not match
	172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A0B0207.58808E70.03BC, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
Subject: connman 1.33 takes very long time to start
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
X-List-Received-Date: Thu, 19 Jan 2017 10:06:41 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_2c4eb5acb08c4038878801c3143d070basemit_"

--_000_2c4eb5acb08c4038878801c3143d070basemit_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I'm using Yocto "Morty" for my custom i.MX6 DualLite embedded system board,=
 with the Freescale kernel 4.1.35.



The new "connman 1.33" takes a lot of time to start; sometime it hangs for =
120 seconds and more

The cause is the poor entropy of my kernel:


[    4.659894] random: udevd urandom read with 12 bits of entropy available


If, for test, I connect an USB keyboard and, during the boot, press the key=
s quickly, the entropy level goes to 45 bits or more and the boot speed is =
normal.


Using the previous "Krogoth" version, with "connman 1.31", the boot speed w=
as always fast, so the problem is related to the new connman version.


As workaround for this problem, now I use the "rng-tools", starting the "rn=
gd" daemon before starting the "connmand" daemon .


Do you have any idea to solve this problem or other suggestions?


Thanks,


Flavio


--_000_2c4eb5acb08c4038878801c3143d070basemit_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:10pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>I'm using Yocto &quot;Morty&quot; for my custom i.MX6 DualLite embedded =
system&nbsp;board, with the Freescale kernel 4.1.35.</p>
<p>&nbsp; <br>
</p>
<p>The new &quot;connman 1.33&quot; takes a lot of time to start; sometime =
it hangs for 120 seconds and more</p>
<p>The cause is the poor entropy of my kernel:</p>
<p><br>
</p>
<p>[&nbsp;&nbsp;&nbsp; 4.659894] random: udevd urandom read with 12 bits of=
 entropy available</p>
<p><br>
</p>
<p>If, for test, I connect an USB keyboard and, during the boot, press the =
keys quickly, the entropy level goes to 45 bits or more and the boot speed =
is normal.</p>
<p><br>
</p>
<p>Using the previous &quot;Krogoth&quot; version, with &quot;connman 1.31&=
quot;, the boot speed was always fast, so the problem is related to the new=
 connman version.</p>
<p><br>
</p>
<p>As workaround for this problem, now I use the &quot;rng-tools&quot;, sta=
rting the &quot;rngd&quot; daemon before starting the &quot;connmand&quot; =
daemon .</p>
<p><br>
</p>
<p>Do you have any idea to solve this problem or other suggestions?</p>
<p><br>
</p>
<p>Thanks,</p>
<p><br>
</p>
<p>Flavio<br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_2c4eb5acb08c4038878801c3143d070basemit_--
