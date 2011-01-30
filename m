Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A26AF4C8026D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 01:46:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Jan 2011 23:46:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; 
	d="scan'208,217";a="597752189"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 29 Jan 2011 23:46:41 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 30 Jan 2011 15:46:40 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sun, 30 Jan 2011 15:46:39 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Sun, 30 Jan 2011 15:46:38 +0800
Thread-Topic: [poky] poky-image-sato-sdk failed at do_rootfs
Thread-Index: AcvAHa7DEgaiKAszTBSLa/7R7NS9YQAAmF4gAAu9U+A=
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F20F8C329A6@shsmsx502.ccr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB685EBCB6C3C@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685EBCB6C3C@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Sun, 30 Jan 2011 07:46:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C10D3FB0CD45994C8A51FEC1227CE22F20F8C329A6shsmsx502ccrc_"

--_000_C10D3FB0CD45994C8A51FEC1227CE22F20F8C329A6shsmsx502ccrc_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SmVzc2ljYSwNCg0KSSBkaWQgdHJ5IKGwYml0YmFrZSBwb2t5LWltYWdlLW1pbmltYWyhsSB1c2lu
ZyBJUEsgdG8gZG8gcm9vdGZzIG9uIHllc3RlcmRheaGvcyBtYXN0ZXIgKGxhdGVzdCBjb21taXQg
aWQgNzU0MDQ3YjZlYzAxZGY1ZjMxNTljY2U5M2IxN2I4NDkzZDBhZjVlMTxodHRwOi8vZ2l0LnBv
a3lsaW51eC5vcmcvY2dpdC9jZ2l0LmNnaS9wb2t5LWNvbnRyaWIvY29tbWl0Lz9oPWxsdS9idWcy
MjcmaWQ9NzU0MDQ3YjZlYzAxZGY1ZjMxNTljY2U5M2IxN2I4NDkzZDBhZjVlMT4pLCBhbmQgaXQg
c3VjY2VlZGVkLg0KDQpCdXQgd2hlbiBJIHRyaWVkIHRoZSBzYW1lIGNvbW1hbmQgb24gdG9kYXmh
r3MgbWFzdGVyKGxhdGVzdCBjb21taXQgaWQgZmZkMTJmYzQ3NmQ2MDYxYmExZTAxOWExZTc4OWNm
MWEyZDNjODJlNiksIEkgbWV0IHRoZSBzYW1lIHByb2JsZW0gYXMgeW91cnMuDQoNCkFueXdheSwg
aWYgeW91IHRyeSB0byB1c2UgUlBNIHRvIGRvIHJvb3RmcywgdGhlIHByb2JsZW0gc2VlbXMgZ29u
ZS4NCg0KQmVzdCBSZWdhcmRzLA0KLUxpYW5oYW8NCkZyb206IHBva3ktYm91bmNlc0B5b2N0b3By
b2plY3Qub3JnIFttYWlsdG86cG9reS1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFs
ZiBPZiBDdWksIERleHVhbg0KU2VudDogU3VuZGF5LCBKYW51YXJ5IDMwLCAyMDExIDEwOjAwIEFN
DQpUbzogWmhhbmcsIEplc3NpY2E7IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6
IFtwb2t5XSBwb2t5LWltYWdlLXNhdG8tc2RrIGZhaWxlZCBhdCBkb19yb290ZnMNCg0KSGkgSmVz
c2ljYSwNCkkgZGlkbid0IG1lZXQgd2l0aCB0aGUgc2FtZSBpc3N1ZSAtLSBteSBsYXN0LXRpbWUg
YnVpbGRpbmcgcG9reS1pbWFnZS1zYXRvLXNkayBvbiBhbGwgdGhlIHFlbXUgdGFyZ2V0cyBpcyBK
YW4gMjYgYW5kIGl0J3Mgb2suDQoNCkkgbG9va2VkIGF0IHJlY2VudCBuaWdodGx5IGJ1aWxkIGxv
Z3MganVzdCBub3cgYW5kIGxvb2tzIEkgZGlkbid0IGZpbmQgdGhlIHNpbWlsYXIgRVJST1IsIGJ1
dCBtYXN0ZXIgZG9lcyBzZWVtIHVuc3RhYmxlLCBlLmcuLCBtZXRhLXRvb2xjaGFpbi1zZGsgZmFp
bGVkIG9uIG1hbnkgcWVtdSB0YXJnZXRzIGJlY2F1c2UgbGludXgtbGliYy1oZWFkZXJzIGNhbid0
IGJ1aWxkLg0KSSdtIGJ1aWxkaW5nIGxvY2FsbHkgYW5kIHRyeWluZyB0byByZXNsb3ZlIHRoZSBp
c3N1ZS4uLg0KDQpUaGFua3MsDQotLSBEZXh1YW4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQpGcm9tOiBwb2t5LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnBva3kt
Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgWmhhbmcsIEplc3NpY2ENClNl
bnQ6IDIwMTHE6jHUwjMwyNUgOTozMw0KVG86IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVj
dDogW3Bva3ldIHBva3ktaW1hZ2Utc2F0by1zZGsgZmFpbGVkIGF0IGRvX3Jvb3Rmcw0KTXkgcG9r
eS1pbWFnZS1zYXRvLXNkayBhZ2FpbnN0IHRoZSBsYXRlc3QgbWFzdGVyIGlzIGNvbnNpc3RlbnRs
eSBmYWlsZWQgYXQgbGFzdCBzdGVwIG9mIGRvX3Jvb3RmcywgaGVyZSdzIHRoZSBlcnJvcjoNCg0K
IFByb2Nlc3NpbmcgdGFzay1wb2t5LXF0LWRlbW9zLi4uDQp8IGVycm9yOiBGYWlsZWQgZGVwZW5k
ZW5jaWVzOg0KfCAgZWdsaWJjID49IDIuMTIgaXMgbmVlZGVkIGJ5IGxpYnN0ZGMrKzYtNC41LjEt
cjIuYXJtdjV0ZQ0KfCAgZWdsaWJjID49IDIuMTIgaXMgbmVlZGVkIGJ5IGxpYmdjYzEtNC41LjEt
cjAuYXJtdjV0ZQ0KfCBGdW5jdGlvbiAnZG9fcm9vdGZzJyBmYWlsZWQgKHNlZSAvaG9tZS9qemhh
bmcvbWFzdGVyLWFybS1idWlsZC90bXAvd29yay9xZW11YXJtLXBva3ktbGludXgtZ251ZWFiaS9w
b2t5LWltYWdlLXNhdG8tc2RrLTEuMC1yMC90ZW1wL2xvZy5kb19yb290ZnMuNjE0MiBmb3IgZnVy
dGhlciBpbmZvcm1hdGlvbikNCnwgRVJST1I6IEZ1bmN0aW9uICdkb19yb290ZnMnIGZhaWxlZCAo
c2VlIC9ob21lL2p6aGFuZy9tYXN0ZXItYXJtLWJ1aWxkL3RtcC93b3JrL3FlbXVhcm0tcG9reS1s
aW51eC1nbnVlYWJpL3Bva3ktaW1hZ2Utc2F0by1zZGstMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rm
cy42MTQyIGZvciBmdXJ0aGVyIGluZm9ybWF0aW9uKQ0KSGFzIGFueWJvZHkgcnVuIGludG8gc2Ft
ZSBpc3N1ZSBvciBhbnkgaWRlYT8NCg0KVGhhbmtzLA0KSmVzc2ljYQ0K

--_000_C10D3FB0CD45994C8A51FEC1227CE22F20F8C329A6shsmsx502ccrc_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dgb2312">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:=CB=CE=CC=E5;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@=CB=CE=CC=E5";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=CB=CE=CC=E5;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.apple-style-span
	{mso-style-name:apple-style-span;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DZH-CN link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>Jessica,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>I did try =A1=B0bitbake poky-image-minimal=A1=B1 using IPK t=
o do rootfs on
yesterday=A1=AFs master (latest commit id </span><span class=3Dapple-style-=
span><span
lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Courier New";color:#3333=
33'><a
href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dllu=
/bug227&amp;id=3D754047b6ec01df5f3159cce93b17b8493d0af5e1"><span
style=3D'text-decoration:none'>754047b6ec01df5f3159cce93b17b8493d0af5e1</sp=
an></a>),
and it succeeded.<o:p></o:p></span></span></p>

<p class=3DMsoNormal><span class=3Dapple-style-span><span lang=3DEN-US
style=3D'font-size:9.0pt;font-family:"Courier New";color:#333333'><o:p>&nbs=
p;</o:p></span></span></p>

<p class=3DMsoNormal><span class=3Dapple-style-span><span lang=3DEN-US
style=3D'font-size:9.0pt;font-family:"Courier New";color:#333333'>But when =
I
tried the same command on today=A1=AFs master(latest commit id ffd12fc476d6=
061ba1e019a1e789cf1a2d3c82e6),
I met the same problem as yours.<o:p></o:p></span></span></p>

<p class=3DMsoNormal><span class=3Dapple-style-span><span lang=3DEN-US
style=3D'font-size:9.0pt;font-family:"Courier New";color:#333333'><o:p>&nbs=
p;</o:p></span></span></p>

<p class=3DMsoNormal><span class=3Dapple-style-span><span lang=3DEN-US
style=3D'font-size:9.0pt;font-family:"Courier New";color:#333333'>Anyway, i=
f you
try to use RPM to do rootfs, the problem seems gone.<o:p></o:p></span></spa=
n></p>

<p class=3DMsoNormal><span class=3Dapple-style-span><span lang=3DEN-US
style=3D'font-size:9.0pt;font-family:"Courier New";color:#333333'><o:p>&nbs=
p;</o:p></span></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>Best Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";
color:#1F497D'>-Lianhao <o:p></o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'>

<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:
"Tahoma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;
font-family:"Tahoma","sans-serif"'> poky-bounces@yoctoproject.org
[mailto:poky-bounces@yoctoproject.org] <b>On Behalf Of </b>Cui, Dexuan<br>
<b>Sent:</b> Sunday, January 30, 2011 10:00 AM<br>
<b>To:</b> Zhang, Jessica; poky@yoctoproject.org<br>
<b>Subject:</b> Re: [poky] poky-image-sato-sdk failed at do_rootfs<o:p></o:=
p></span></p>

</div>

</div>

<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt'>Hi Jessi=
ca,</span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt'>I didn't=
 meet with
the same issue -- my last-time building poky-image-sato-sdk&nbsp;on all the
qemu targets is Jan 26 and it's ok.</span><span lang=3DEN-US><o:p></o:p></s=
pan></p>

<p class=3DMsoNormal><span lang=3DEN-US>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt'>I looked=
 at recent
nightly build logs just now and looks I didn't find the similar ERROR, but
master does seem unstable, e.g., meta-toolchain-sdk failed&nbsp;on many qem=
u
targets because linux-libc-headers can't build.</span><span lang=3DEN-US><o=
:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt'>I'm buil=
ding
locally and trying to reslove the issue...</span><span lang=3DEN-US><o:p></=
o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt'>Thanks,<=
/span><span
lang=3DEN-US><o:p></o:p></span></p>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt'>-- Dexua=
n</span><span
lang=3DEN-US> <o:p></o:p></span></p>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US>

<hr size=3D2 width=3D"100%" align=3Dcenter>

</span></div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><b><span lang=3DEN-US
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></=
b><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>
poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] <b>On
Behalf Of </b>Zhang, Jessica<br>
<b>Sent:</b> 2011</span><span style=3D'font-size:10.0pt'>=C4=EA</span><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>1=
</span><span
style=3D'font-size:10.0pt'>=D4=C2</span><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;
font-family:"Tahoma","sans-serif"'>30</span><span style=3D'font-size:10.0pt=
'>=C8=D5</span><span
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
9:33<br>
<b>To:</b> poky@yoctoproject.org<br>
<b>Subject:</b> [poky] poky-image-sato-sdk failed at do_rootfs</span><span
lang=3DEN-US><o:p></o:p></span></p>

<div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>My
poky-image-sato-sdk against the latest master is consistently failed at las=
t
step of do_rootfs, here's the error:</span><span lang=3DEN-US><o:p></o:p></=
span></p>

</div>

<div>

<p class=3DMsoNormal><span lang=3DEN-US>&nbsp;<o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>&nbsp;Processing
task-poky-qt-demos...<br>
| error: Failed dependencies:<br>
| &nbsp;eglibc &gt;=3D 2.12 is needed by libstdc++6-4.5.1-r2.armv5te<br>
| &nbsp;eglibc &gt;=3D 2.12 is needed by libgcc1-4.5.1-r0.armv5te<br>
| Function 'do_rootfs' failed (see
/home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-imag=
e-sato-sdk-1.0-r0/temp/log.do_rootfs.6142
for further information)<br>
| ERROR: Function 'do_rootfs' failed (see /home/jzhang/master-arm-build/tmp=
/work/qemuarm-poky-linux-gnueabi/poky-image-sato-sdk-1.0-r0/temp/log.do_roo=
tfs.6142
for further information)</span><span lang=3DEN-US><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>Has
anybody run into same issue or any idea?</span><span lang=3DEN-US><o:p></o:=
p></span></p>

</div>

<div>

<p class=3DMsoNormal><span lang=3DEN-US>&nbsp;<o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>Thanks,</span><span
lang=3DEN-US><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>Jessica<o:p></o:p></span></p>

</div>

</div>

</div>

</body>

</html>

--_000_C10D3FB0CD45994C8A51FEC1227CE22F20F8C329A6shsmsx502ccrc_--
