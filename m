Return-Path: <sivan.wang@huawei.com>
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [58.251.152.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69EA7E0059A
	for <poky@yoctoproject.org>; Sat, 31 Mar 2012 03:00:04 -0700 (PDT)
Received: from huawei.com (szxga03-in [172.24.2.9])
	by szxga03-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1Q00BYCUAFTQ@szxga03-in.huawei.com> for
	poky@yoctoproject.org; Sat, 31 Mar 2012 17:56:39 +0800 (CST)
Received: from szxrg01-dlp.huawei.com ([172.24.2.119])
	by szxga03-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1Q005W5UAFBK@szxga03-in.huawei.com> for
	poky@yoctoproject.org; Sat, 31 Mar 2012 17:56:39 +0800 (CST)
Received: from szxeml211-edg.china.huawei.com ([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AHY26832; Sat,
	31 Mar 2012 17:55:50 +0800
Received: from SZXEML405-HUB.china.huawei.com (10.82.67.60)
	by szxeml211-edg.china.huawei.com (172.24.2.182) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Sat, 31 Mar 2012 17:55:39 +0800
Received: from SZXEML526-MBX.china.huawei.com ([169.254.2.214])
	by szxeml405-hub.china.huawei.com ([::1]) with mapi id 14.01.0323.003;
	Sat, 31 Mar 2012 17:55:24 +0800
Date: Sat, 31 Mar 2012 09:55:23 +0000
From: "Wangdawei (Sivan)" <sivan.wang@huawei.com>
X-Originating-IP: [10.66.60.200]
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Message-id: <7E29EF69110C17499E6B3A9844CD4FD913424EF9@szxeml526-mbx.china.huawei.com>
MIME-version: 1.0
Accept-Language: zh-CN, en-US
Thread-topic: [poky]The problem of using the external toolchain
Thread-index: Ac0PJF284C0GT/wNTOibuaSLIETGIw==
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: 2M8= ArlN C9Kz DACi Dl7x Fiqo Glt/ HIjg HkwG IB0F IaB0 IveP
	Jvbc J78P Knod
	K4jw; 1; cABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcA;
	Sosha1_v1; 7; {A531FF12-8473-42AF-95C6-A7966FDED7D3};
	cwBpAHYAYQBuAC4AdwBhAG4AZwBAAGgAdQBhAHcAZQBpAC4AYwBvAG0A; Sat,
	31 Mar 2012 09:55:13 GMT;
	WwBwAG8AawB5AF0AVABoAGUAIABwAHIAbwBiAGwAZQBtACAAbwBmACAAdQBzAGkAbgBnACAAdABoAGUAIABlAHgAdABlAHIAbgBhAGwAIAB0AG8AbwBsAGMAaABhAGkAbgA=
x-cr-puzzleid: {A531FF12-8473-42AF-95C6-A7966FDED7D3}
X-CFilter-Loop: Reflected
Subject: The problem of using the external toolchain
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
X-List-Received-Date: Sat, 31 Mar 2012 10:00:11 -0000
X-Groupsio-MsgNum: 7618
Content-type: multipart/related;
	boundary="Boundary_(ID_OjA+a/kExoNTTlt2CX1CdQ)";
	type="multipart/alternative"
Content-language: en-US

--Boundary_(ID_OjA+a/kExoNTTlt2CX1CdQ)
Content-type: multipart/alternative;
 boundary="Boundary_(ID_42SWqDee6IsNuFIMnlDppQ)"

--Boundary_(ID_42SWqDee6IsNuFIMnlDppQ)
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: quoted-printable

The reason is that I want to use the binary toolchain I have own in yocto, =
and I don't have the source code of the toolchain , then I do the steps bel=
ow:



1. add a line in local.conf like this TCMODE ?=3D "external-csl2008q3"

2.modify the file tcmode-external-csl2008q3.inc, change EXTERNAL_TOOLCHAIN =
=3D "/opt/toolchain-be8/armeb-linux-gnueabi" to refer to where my binary to=
olchain stored

3. comment the line "#SRC_URI =3D "file://SUPPORTED<file:///\\SUPPORTED>"" =
in file "external-csl-toolchain_2008q3-72.bb",because we don't have the sou=
rce code ,so I think the SRC_URI maybe will be NULL



When I do this , but it failed , below is the log I have got:



NOTE: package binutils-cross-2.21.1a-r0: task do_configure: Started

ERROR: Function 'do_configure' failed (see /home/ccc/poky-second/build/tmp/=
work/i586-none-linux/binutils-cross-2.21.1a-r0/temp/log.do_configure.5085 f=
or further information)

ERROR: Logfile of failure stored in: /home/ccc/poky-second/build/tmp/work/i=
586-none-linux/binutils-cross-2.21.1a-r0/temp/log.do_configure.5085

Log data follows:

| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',

| 'bit-64', 'x86_64-linux', 'common']

| configure.ac:32: error: Please use exactly Autoconf 2.64 instead of 2.68.

| config/override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is expanded from...

| configure.ac:32: the top level

| autom4te: /home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/m=
4 failed with exit status: 1

| NOTE: Running /home/ccc/poky-second/build/tmp/work/i586-none-linux/binuti=
ls-cross-2.21.1a-r0/binutils-2.21.1/configure                 --build=3Dx86=
_64-linux             --host=3Dx86_64-linux             --target=3Di586-non=
e-linux               --prefix=3D/home/ccc/poky-second/build/tmp/sysroots/x=
86_64-linux/usr              --exec_prefix=3D/home/ccc/poky-second/build/tm=
p/sysroots/x86_64-linux/usr                 --bindir=3D/home/ccc/poky-secon=
d/build/tmp/sysroots/x86_64-linux/usr/bin/i586-none-linux                 -=
-sbindir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/i5=
86-none-linux                 --libexecdir=3D/home/ccc/poky-second/build/tm=
p/sysroots/x86_64-linux/usr/libexec/i586-none-linux                 --datad=
ir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share       =
        --sysconfdir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linu=
x/etc                 --sharedstatedir=3D/home/ccc/poky-second/build/tmp/sy=
sroots/x86_64-linux/com              --localstatedir=3D/home/ccc/poky-secon=
d/build/tmp/sysroots/x86_64-linux/var              --libdir=3D/home/ccc/pok=
y-second/build/tmp/sysroots/x86_64-linux/usr/lib/i586-none-linux           =
       --includedir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux=
/usr/include                 --oldincludedir=3D/home/ccc/poky-second/build/=
tmp/sysroots/x86_64-linux/usr/include               --infodir=3D/home/ccc/p=
oky-second/build/tmp/sysroots/x86_64-linux/usr/share/info                 -=
-mandir=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share/m=
an            --disable-silent-rules                  --with-libtool-sysroo=
t=3D/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux --with-sysroot=3D=
/home/ccc/poky-second/build/tmp/sysroots/qemux86                 --program-=
prefix=3Di586-none-linux-                 --disable-install-libbfd         =
        --disable-werror                 --enable-poison-system-directories=
                  --enable-nls ...

| checking build system type... x86_64-pc-linux-gnu checking host system

| type... x86_64-pc-linux-gnu checking target system type...

| i586-none-linux-gnu checking for a BSD-compatible install...

| /usr/bin/install -c checking whether ln works... yes checking whether

| ln -s works... yes checking for a sed that does not truncate output...

| /bin/sed checking for gawk... gawk checking for x86_64-linux-gcc...

| gcc checking for C compiler default output file name...

| configure: error: in `/home/ccc/poky-second/build/tmp/work/i586-none-linu=
x/binutils-cross-2.21.1a-r0/binutils-2.21.1/build.x86_64-linux.i586-none-li=
nux':

| configure: error: C compiler cannot create executables See

| `config.log' for more details.

| ERROR: oe_runconf failed

| ERROR: Function 'do_configure' failed (see

| /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.

| 21.1a-r0/temp/log.do_configure.5085 for further information)

NOTE: package binutils-cross-2.21.1a-r0: task do_configure: Failed

ERROR: Task 787 (/home/ccc/poky-second/meta/recipes-devtools/binutils/binut=
ils-cross_2.21.1a.bb, do_configure) failed with exit code '1'

ERROR: '/home/ccc/poky-second/meta/recipes-devtools/binutils/binutils-cross=
_2.21.1a.bb' failed



We can see the toolchain it checked is also the x86_64-linux-gcc , not the =
toolchain I assigned  "EXTERNAL_TOOLCHAIN =3D "/opt/toolchain-be8/armeb-lin=
ux-gnueabi""

Did the poky support the binary toolchain but the source code ?How can I fi=
nish this work ? Did anyone face the same problem ?


Best Regards

kyle sivan
Huawei Technologies Co., Ltd.
cell phone: +86-18665326540
(Office) 755-28384488
sivan.wang@huawei.com<mailto:sivan.wang@huawei.com>
[cid:image002.png@01CD0F67.6BDCE820]


--Boundary_(ID_42SWqDee6IsNuFIMnlDppQ)
Content-type: text/html; charset=us-ascii
Content-transfer-encoding: 7BIT

<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word" xmlns:m="http://schemas.microsoft.com/office/2004/12/omml" xmlns="http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
<meta name="Generator" content="Microsoft Word 12 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Segoe Script";
	panose-1:2 11 5 4 2 0 0 0 0 3;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:8.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
 /* Page Definitions */
 @page Section1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:1820732486;
	mso-list-type:hybrid;
	mso-list-template-ids:-2037878050 926999212 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body lang="ZH-CN" link="blue" vlink="purple" style="text-justify-trim:punctuation">
<div class="Section1">
<p class="MsoPlainText"><span lang="EN-US">The reason is that I want to use the binary toolchain I have own in yocto, and I don</span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8217;</span><span lang="EN-US">t have the source code of the toolchain , then
 I do the steps below:<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">1. add a line in local.conf like this TCMODE ?= &quot;external-csl2008q3&quot;<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">2.modify the file tcmode-external-csl2008q3.inc, change EXTERNAL_TOOLCHAIN = &quot;/opt/toolchain-be8/armeb-linux-gnueabi&quot; to refer to where my binary toolchain stored<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">3. comment the line </span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8220;</span><span lang="EN-US">#SRC_URI = &quot;<a href="file:///\\SUPPORTED">file://SUPPORTED</a>&quot;</span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8221;</span><span lang="EN-US">
 in file </span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8220;</span><span lang="EN-US">external-csl-toolchain_2008q3-72.bb</span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8221;</span><span lang="EN-US">,because we don</span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8217;</span><span lang="EN-US">t
 have the source code ,so I think the SRC_URI maybe will be NULL<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">When I do this , but it failed , below is the log I have got:<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">NOTE: package binutils-cross-2.21.1a-r0: task do_configure: Started<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">ERROR: Function 'do_configure' failed (see /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/temp/log.do_configure.5085 for further information)<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">ERROR: Logfile of failure stored in: /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/temp/log.do_configure.5085<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">Log data follows:<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| 'bit-64', 'x86_64-linux', 'common']<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| configure.ac:32: error: Please use exactly Autoconf 2.64 instead of 2.68.<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| config/override.m4:12: _GCC_AUTOCONF_VERSION_CHECK is expanded from...<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| configure.ac:32: the top level<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| autom4te: /home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/m4 failed with exit status: 1<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| NOTE: Running /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/binutils-2.21.1/configure&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --build=x86_64-linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --host=x86_64-linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --target=i586-none-linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 --prefix=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --exec_prefix=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --bindir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/i586-none-linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 --sbindir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/bin/i586-none-linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --libexecdir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/libexec/i586-none-linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --datadir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;--sysconfdir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/etc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --sharedstatedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --localstatedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/var&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--libdir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/lib/i586-none-linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --includedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/include&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --oldincludedir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/include&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 --infodir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share/info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --mandir=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux/usr/share/man&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-silent-rules&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--with-libtool-sysroot=/home/ccc/poky-second/build/tmp/sysroots/x86_64-linux
 --with-sysroot=/home/ccc/poky-second/build/tmp/sysroots/qemux86&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --program-prefix=i586-none-linux-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-install-libbfd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--disable-werror&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-poison-system-directories&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 --enable-nls ...<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| checking build system type... x86_64-pc-linux-gnu checking host system
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| type... x86_64-pc-linux-gnu checking target system type...
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| i586-none-linux-gnu checking for a BSD-compatible install...
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| /usr/bin/install -c checking whether ln works... yes checking whether
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| ln -s works... yes checking for a sed that does not truncate output...
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| /bin/sed checking for gawk... gawk checking for x86_64-linux-gcc...
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| gcc checking for C compiler default output file name...<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| configure: error: in `/home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.21.1a-r0/binutils-2.21.1/build.x86_64-linux.i586-none-linux':<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| configure: error: C compiler cannot create executables See
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| `config.log' for more details.<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| ERROR: oe_runconf failed<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| ERROR: Function 'do_configure' failed (see
<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| /home/ccc/poky-second/build/tmp/work/i586-none-linux/binutils-cross-2.<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">| 21.1a-r0/temp/log.do_configure.5085 for further information)<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">NOTE: package binutils-cross-2.21.1a-r0: task do_configure: Failed<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">ERROR: Task 787 (/home/ccc/poky-second/meta/recipes-devtools/binutils/binutils-cross_2.21.1a.bb, do_configure) failed with exit code '1'<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">ERROR: '/home/ccc/poky-second/meta/recipes-devtools/binutils/binutils-cross_2.21.1a.bb' failed<o:p></o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
<p class="MsoPlainText"><span lang="EN-US">We can see the toolchain it checked is also the x86_64-linux-gcc , not the toolchain I assigned &nbsp;</span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8220;</span><span lang="EN-US">EXTERNAL_TOOLCHAIN = &quot;/opt/toolchain-be8/armeb-linux-gnueabi&quot;</span><span lang="EN-US" style="font-family:&quot;Courier New&quot;">&#8221;</span><span lang="EN-US"><o:p></o:p></span></p>
<p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNormal"><span lang="EN-US">Did the poky support the binary toolchain but the source code ?How can I finish this work ? Did anyone face the same problem ?
<o:p></o:p></span></p>
<p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNormal" align="left" style="text-align:left;text-autospace:none"><span lang="EN-US" style="font-size:11.0pt;color:#004080">Best Regards<o:p></o:p></span></p>
<p class="MsoNormal" align="left" style="text-align:left;text-autospace:none"><span lang="EN-US" style="font-size:11.0pt;color:#004080"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNormal" align="left" style="text-align:left;text-autospace:none"><b><span lang="EN-US" style="font-size:11.0pt;font-family:&quot;Segoe Script&quot;,&quot;sans-serif&quot;;
color:black">kyle sivan<o:p></o:p></span></b></p>
<p class="MsoNormal" align="left" style="text-align:left;text-autospace:none"><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Comic Sans MS&quot;;color:#333333">Huawei Technologies Co., Ltd.</span><b><span lang="EN-US" style="font-size:10.0pt;
font-family:&quot;Comic Sans MS&quot;;color:black"><o:p></o:p></span></b></p>
<p class="MsoNormal" align="left" style="text-align:left;text-autospace:none"><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Comic Sans MS&quot;;color:#004080">cell phone: &#43;86-18665326540<o:p></o:p></span></p>
<p class="MsoNormal" align="left" style="text-align:left;text-autospace:none"><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Comic Sans MS&quot;;color:#004080">(Office) 755-28384488<o:p></o:p></span></p>
<p class="MsoNormal" align="left" style="text-align:left;text-autospace:none"><span lang="EN-US" style="font-size:10.0pt;font-family:&quot;Comic Sans MS&quot;;color:#004080"><a href="mailto:sivan.wang@huawei.com"><i><span style="color:blue;text-shadow:
auto">sivan.wang@huawei.com</span></i></a></span><span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;color:black;
text-shadow:auto">
<o:p></o:p></span></p>
<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
color:black;text-shadow:auto"><img border="0" width="87" height="79" id="Picture_x0020_1" src="cid:image002.png@01CD0F67.6BDCE820"></span><span lang="EN-US"><o:p></o:p></span></p>
<p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--Boundary_(ID_42SWqDee6IsNuFIMnlDppQ)--

--Boundary_(ID_OjA+a/kExoNTTlt2CX1CdQ)
Content-id: <image002.png@01CD0F67.6BDCE820>
Content-type: image/png; name=image002.png
Content-transfer-encoding: base64
Content-disposition: inline; filename=image002.png; size=6069;
 creation-date="Sat, 31 Mar 2012 09:55:23 GMT";
 modification-date="Sat, 31 Mar 2012 09:55:23 GMT"
Content-description: image002.png

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
d3/ofdQ/AHIkg9bc73HOAAAAAElFTkSuQmCC

--Boundary_(ID_OjA+a/kExoNTTlt2CX1CdQ)--
