Return-Path: <prvs=06395e23ef=jens.erdmann@auerswald.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77936E00B9E; Wed, 11 Apr 2018 01:10:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.winet.de (mailout02.winet.de [84.17.108.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E18C3E009E2
	for <poky@yoctoproject.org>; Wed, 11 Apr 2018 01:10:24 -0700 (PDT)
Received: from fw2.winet.de (mr00.winet.de [192.168.12.10])
	by smtp.winet.de (Postfix) with ESMTPS id 44CF0E5643
	for <poky@yoctoproject.org>; Wed, 11 Apr 2018 10:10:21 +0200 (CEST)
Received: from smtp.winet.de (localhost [127.0.0.1])
	by fw2.winet.de (Postfix) with ESMTP id B8E8CE00E7
	for <poky@yoctoproject.org>; Wed, 11 Apr 2018 10:10:20 +0200 (CEST)
Received: from mail.auerswald.de (unknown [81.14.169.68])
	by smtp.winet.de (Postfix) with ESMTPSA id 827C2E38A4
	for <poky@yoctoproject.org>; Wed, 11 Apr 2018 10:10:20 +0200 (CEST)
Received: from wsex02.auerswald.de ([172.20.0.66]:14397)
	by mail.auerswald.de with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Jens.Erdmann@auerswald.de>)
	id 1f6Ape-0002YZ-2A; Wed, 11 Apr 2018 08:10:18 +0000
Received: from wsex02.auerswald.de (172.20.0.66) by wsex02.auerswald.de
	(172.20.0.66) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1034.26;
	Wed, 11 Apr 2018 10:10:18 +0200
Received: from wsex02.auerswald.de ([fe80::84d7:58d0:dd97:6e40]) by
	wsex02.auerswald.de ([fe80::84d7:58d0:dd97:6e40%14]) with mapi id
	15.01.1034.033; Wed, 11 Apr 2018 10:10:18 +0200
X-CTCH-RefID: str=0001.0A0C0208.5ACDC2EA.023F, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: "Erdmann, Jens" <Jens.Erdmann@auerswald.de>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [PATCH] externalsrc: Change absolute symlinks to relative
	ones
Thread-Index: AQHTy1D5uEO/YfzTpkWnbgzIXBSlI6PwsIUmgAniEICAAK14AQ==
Date: Wed, 11 Apr 2018 08:10:18 +0000
Message-ID: <ce823c4534ba4af089bd6f00a0f4056b@auerswald.de>
References: <bcd607cf3fb44128b1233e50c96add58@auerswald.de>
	<e8c188e7eb8e4f03a9ec5b544145334c@auerswald.de>,
	<2405485.rjGM1RfBcv@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2405485.rjGM1RfBcv@peggleto-mobl.ger.corp.intel.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.12.203]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH] externalsrc: Change absolute symlinks to relative ones
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
X-List-Received-Date: Wed, 11 Apr 2018 08:10:26 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_ce823c4534ba4af089bd6f00a0f4056bauerswaldde_"

--_000_ce823c4534ba4af089bd6f00a0f4056bauerswaldde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


>> In 3eee8e99 sstate got changed to refuse absolute symlinks. Externalsrc
>> creates absolute symlinks for oe-logs and oe-workdir which causes
>> errors at do_populate_sysroot.
>> Changing symlinks to relative paths will make externalsrc comply with ss=
tate
>> changesi and will avoid those errors.
>
>This implies that you (or more precisely, the build system of whatever you=
r
>recipe is building) is installing these symlinks to ${D} from the source t=
ree
>- I would recommend avoiding that, since those symlinks are of no use on t=
he
>target or indeed the sysroot, and making them relative means they will
>definitely be broken when moved elsewhere in any case.
>
>Which recipe(s) are you experiencing this issue with? If they are custom o=
nes,
>how is what happens during do_install defined there?

Hi Paul,

Thanks for your reply. The problem occured after altering custom recipes wi=
th
devtool. We worked on a native and on a nonnative recipe and got following
messages:

NOTE: api-gen-native: compiling from external source tree /home/erdmann/yoc=
to/build/workspace/sources/api-gen-native
ERROR: api-gen-native-1.0.0+git999-r0 do_populate_sysroot: sstate found an =
absolute path symlink /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-g=
en-native/1.0.0+git999-r0/sysroot-destdir/home/erdmann/yocto/build/tmp/work=
/x86_64-linux/api-gen-native/1.0.0+git999-r0/recipe-sysroot-native/usr/lib/=
api-gen-native/oe-workdir pointing at /home/erdmann/yocto/build/tmp/work/x8=
6_64-linux/api-gen-native/1.0.0+git999-r0. Please replace this with a relat=
ive link.
ERROR: api-gen-native-1.0.0+git999-r0 do_populate_sysroot: sstate found an =
absolute path symlink /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-g=
en-native/1.0.0+git999-r0/sysroot-destdir/home/erdmann/yocto/build/tmp/work=
/x86_64-linux/api-gen-native/1.0.0+git999-r0/recipe-sysroot-native/usr/lib/=
api-gen-native/oe-logs pointing at /home/erdmann/yocto/build/tmp/work/x86_6=
4-linux/api-gen-native/1.0.0+git999-r0/temp. Please replace this with a rel=
ative link.

I tried to double check and am quite conviced we did not try to install the=
se
symlinks. I hope these informations draw a more clear picture of the
problem which lead to this attempt to fix this.

Regards,

Jens Erdmann


--_000_ce823c4534ba4af089bd6f00a0f4056bauerswaldde_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<br>
<div style=3D"color: rgb(0, 0, 0);"><font size=3D"2"><span style=3D"font-si=
ze:10pt;">
<div class=3D"PlainText">&gt;&gt; In 3eee8e99 sstate got changed to refuse =
absolute symlinks. Externalsrc<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>&gt; cre=
ates absolute symlinks for oe-logs and oe-workdir which causes<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>&gt; err=
ors at do_populate_sysroot.<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>&gt; Cha=
nging symlinks to relative paths will make externalsrc comply with sstate<b=
r>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>&gt; cha=
ngesi and will avoid those errors.<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font><br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>This imp=
lies that you (or more precisely, the build system of whatever your
<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>recipe i=
s building) is installing these symlinks to ${D} from the source tree
<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>-<font s=
ize=3D"2"><span style=3D"font-size:10pt;"></span></font> I would recommend =
avoiding that, since those symlinks are of no use on the
<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>target o=
r indeed the sysroot, and making them relative means they will
<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>definite=
ly be broken when moved elsewhere in any case.<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font><br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>Which re=
cipe(s) are you experiencing this issue with? If they are custom ones,
<br>
<font size=3D"2"><span style=3D"font-size:10pt;">&gt;</span></font>how is w=
hat happens during do_install defined there?<br>
<br>
Hi Paul,<br>
<br>
Thanks for your reply. The problem occured after altering custom recipes wi=
th<br>
devtool. We worked on a native and on a nonnative recipe and got following<=
br>
messages:<br>
<font size=3D"2"><span style=3D"font-size:10pt;"></span></font><br>
<div>NOTE: api-gen-native: compiling from external source tree /home/erdman=
n/yocto/build/workspace/sources/api-gen-native<br>
ERROR: api-gen-native-1.0.0&#43;git999-r0 do_populate_sysroot: sstate found=
 an absolute path symlink /home/erdmann/yocto/build/tmp/work/x86_64-linux/a=
pi-gen-native/1.0.0&#43;git999-r0/sysroot-destdir/home/erdmann/yocto/build/=
tmp/work/x86_64-linux/api-gen-native/1.0.0&#43;git999-r0/recipe-sysroot-nat=
ive/usr/lib/api-gen-native/oe-workdir
 pointing at /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native=
/1.0.0&#43;git999-r0. Please replace this with a relative link.<br>
ERROR: api-gen-native-1.0.0&#43;git999-r0 do_populate_sysroot: sstate found=
 an absolute path symlink /home/erdmann/yocto/build/tmp/work/x86_64-linux/a=
pi-gen-native/1.0.0&#43;git999-r0/sysroot-destdir/home/erdmann/yocto/build/=
tmp/work/x86_64-linux/api-gen-native/1.0.0&#43;git999-r0/recipe-sysroot-nat=
ive/usr/lib/api-gen-native/oe-logs
 pointing at /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native=
/1.0.0&#43;git999-r0/temp. Please replace this with a relative link.</div>
<br>
I tried to double check and am quite conviced we did not try to install the=
se<br>
symlinks. I hope these informations draw a more clear picture of the<br>
problem which lead to this attempt to fix this.<br>
<br>
Regards,<br>
<br>
Jens Erdmann<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_ce823c4534ba4af089bd6f00a0f4056bauerswaldde_--
