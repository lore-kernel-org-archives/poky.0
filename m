Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CAD4E00DB6; Fri, 29 Dec 2017 04:06:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.8 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 412 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Dec 2017 04:06:19 PST
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4E07E00D89
	for <poky@yoctoproject.org>; Fri, 29 Dec 2017 04:06:19 -0800 (PST)
Received: from [216.82.251.44] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-8.bemta-12.messagelabs.com id 8F/40-02572-E1E264A5;
	Fri, 29 Dec 2017 11:59:26 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGKsWRWlGSWpSXmKPExsXi5LtOQFdOzy3
	K4OEPDovp/9awOzB6tJ/oYwtgjGLNzEvKr0hgzTjbm1vQUllx/MgMtgbGuQVdjFwcQgKrGCWe
	TZ/NBuEsYZTY2tDO2sXIycEmYC4x7fBBFhBbRMBYYuanJWBxYQFPidPXTkDF/SUen3wNZetJX
	F86hR3EZhFQlZjT/hHM5hXwlVh8cDOYzSggK7Hy/GlGEJtZQFzi1pP5TCC2hICAxJI955khbF
	GJl4//sULYChJtn+6xQtTnSdzZuokJYqagxMmZT8D2CgmoSbTNmcA8gVFwFpKxs5C0zELSAhH
	XkViw+xMbhK0tsWzha2YY+8yBx0zI4gsY2VcxahSnFpWlFukam+slFWWmZ5TkJmbm6BoaGunl
	phYXJ6an5iQmFesl5+duYgTGRT0DA+MOxif7ow8xSnIwKYny+km5RgnxJeWnVGYkFmfEF5Xmp
	BYfYpTh4FCS4I3TdYsSEixKTU+tSMvMAUYoTFqCg0dJhDcGJM1bXJCYW5yZDpE6xejKcejF7T
	9MHI9u3AWSG26CyH1g8tnM1w3MQix5+XmpUuK8liDNAiDNGaV5cKNhyeUSo6yUMC8jAwODEE9
	BalFuZgmq/CtGcQ5GJWHeDJApPJl5JXAXvAI6jgnoOK7nriDHlSQipKQaGBW8Lr2Na/XpucBy
	LGKBpZan/222pfWbf/E2zPr+/Z73c7fvOz/f4xDJK//MfD+qVWzrpWnCapq8Nn/tHzxq/9eQ1
	Nh15pi/2cLUhyr3jxwQq5vlIpnwwEtZqq5qfUi8jtwldrOXUmt8ErY/XNW0qP7Ijx+bGvPtev
	1VucT5v+3p7Pjk/U/QUYmlOCPRUIu5qDgRAAhIkF0pAwAA
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-6.tower-200.messagelabs.com!1514548765!36683045!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24548 invoked from network); 29 Dec 2017 11:59:25 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-6.tower-200.messagelabs.com with SMTP;
	29 Dec 2017 11:59:25 -0000
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Fri, 29 Dec 2017 05:59:22 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Fri, 29 Dec 2017 12:59:20 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Trying to use python3-pygobject-native to compile NetworkManager
Thread-Index: AdOAnHShmPTFPgPkTue0DcyRypmuSA==
Date: Fri, 29 Dec 2017 11:59:19 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.179]
MIME-Version: 1.0
Subject: Trying to use python3-pygobject-native to compile NetworkManager
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
X-List-Received-Date: Fri, 29 Dec 2017 12:06:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0B2EBCD48D33654381E736352034C70C01B37B75dorsmsxch01digi_"

--_000_0B2EBCD48D33654381E736352034C70C01B37B75dorsmsxch01digi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using Yocto 2.4 and trying to compile NetworkManager using the followi=
ng recipe:

https://pastebin.com/zryYY6Fj

Notice the python3-pygobject-native on the dependencies.

This recipe was working fine with Yocto 2.2, but in Yocto 2.4 I get the fol=
lowing error:

(...)
| checking for python extension module directory... ${libdir}/python3.5/sit=
e-packages
| checking for gtk-doc... no
| configure: WARNING:
|   You will not be able to create source packages with 'make dist'
|   because gtk-doc >=3D 1.0 is not found.
| checking for gtkdoc-check... gtkdoc-check.test
| checking for gtkdoc-check... /home/jdepedro/workspaces-yocto/2.4/tmp/work=
/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-n=
ative/usr/bin/gtkdoc-check
| checking for gtkdoc-rebase... /home/jdepedro/workspaces-yocto/2.4/tmp/wor=
k/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-=
native/usr/bin/gtkdoc-rebase
| checking for gtkdoc-mkpdf... /home/jdepedro/workspaces-yocto/2.4/tmp/work=
/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-n=
ative/usr/bin/gtkdoc-mkpdf
| checking whether to build gtk-doc documentation... no
| checking for glib-2.0 >=3D 2.10.0 gobject-2.0  >=3D 2.10.0... yes
| configure: error: "--enable-introspection aims to build the settings docu=
mentation. This requires GObject introspection for python (pygobject)
(...)
networkmanager_1.8.2.bb:do_configure) failed with exit code '1'
(...)

Looking at the log.do_configure and NetworkManager configure.ac file I find=
 the line throwing the error:

# If g-i is installed we know we have python, but we might not have pygobje=
ct
    if ! "$PYTHON" -c 'from gi.repository import GObject' >& /dev/null; the=
n
        as_fn_error $? "\"--enable-introspection aims to build the settings=
 documentation. This requires GObject introspection for python (pygobject)"=
 "$LINENO" 5
    fi

I am able to reproduce the problem in the devshell:

# bitbake -c devshell NetworkManager
(....)
root:~/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/netw=
orkmanager/1.8.2-r0/NetworkManager-1.8.2# "$PYTHON" -c 'from gi.repository =
import GObject'
Traceback (most recent call last):
  File "<frozen importlib._bootstrap>", line 890, in _find_spec
AttributeError: 'DynamicImporter' object has no attribute 'find_spec'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "<string>", line 1, in <module>
  File "workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/net=
workmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/python3.5/site-packages/=
gi/importer.py", line 127, in find_module
    'introspection typelib not found' % namespace)
ImportError: cannot import name GObject, introspection typelib not found


I tried finding more information about the python3 installation in the SDK =
for the NetworkManager recipe:

root:~/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/netw=
orkmanager/1.8.2-r0/NetworkManager-1.8.2# echo $PYTHON
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/bin/python3-native/py=
thon3

root:~/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/netw=
orkmanager/1.8.2-r0/NetworkManager-1.8.2# find /home/jdepedro/workspaces-yo=
cto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/=
recipe-sysroot-native/ -name "*GObject*"
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/share/gir-1.0/GObject=
-2.0.gir
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/python3.5/site-pa=
ckages/gi/overrides/GObject.py
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/python3.5/site-pa=
ckages/gi/overrides/__pycache__/GObject.cpython-35.pyc
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/python3.5/site-pa=
ckages/gi/overrides/__pycache__/GObject.cpython-35.opt-1.pyc
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/python2.7/site-pa=
ckages/gi/overrides/GObject.py
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/python2.7/site-pa=
ckages/gi/overrides/GObject.pyo
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/python2.7/site-pa=
ckages/gi/overrides/GObject.pyc
/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnue=
abi/networkmanager/1.8.2-r0/recipe-sysroot-native/usr/lib/girepository-1.0/=
GObject-2.0.typelib


Seems to me like GObject is in fact available in the native SDK that is bei=
ng used to compile the NetworkManager.

I am not sure how to keep on to debug and solve this problem. Any help is m=
uch appreciated.

--_000_0B2EBCD48D33654381E736352034C70C01B37B75dorsmsxch01digi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using Yocto 2.4 and trying to compile NetworkMa=
nager using the following recipe:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">https://pastebin.com/zryYY6Fj<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Notice the python3-pygobject-native on the dependenc=
ies.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This recipe was working fine with Yocto 2.2, but in =
Yocto 2.4 I get the following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(...)<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for python extension module directory... =
${libdir}/python3.5/site-packages<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for gtk-doc... no<o:p></o:p></p>
<p class=3D"MsoNormal">| configure: WARNING:<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; You will not be able to create source =
packages with 'make dist'<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; because gtk-doc &gt;=3D 1.0 is not fou=
nd.<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for gtkdoc-check... gtkdoc-check.test<o:p=
></o:p></p>
<p class=3D"MsoNormal">| checking for gtkdoc-check... /home/jdepedro/worksp=
aces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1.=
8.2-r0/recipe-sysroot-native/usr/bin/gtkdoc-check<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for gtkdoc-rebase... /home/jdepedro/works=
paces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1=
.8.2-r0/recipe-sysroot-native/usr/bin/gtkdoc-rebase<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for gtkdoc-mkpdf... /home/jdepedro/worksp=
aces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1.=
8.2-r0/recipe-sysroot-native/usr/bin/gtkdoc-mkpdf<o:p></o:p></p>
<p class=3D"MsoNormal">| checking whether to build gtk-doc documentation...=
 no<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for glib-2.0 &gt;=3D 2.10.0 gobject-2.0&n=
bsp; &gt;=3D 2.10.0... yes<o:p></o:p></p>
<p class=3D"MsoNormal">| configure: error: &quot;--enable-introspection aim=
s to build the settings documentation. This requires GObject introspection =
for python (pygobject)<o:p></o:p></p>
<p class=3D"MsoNormal">(...)<o:p></o:p></p>
<p class=3D"MsoNormal">networkmanager_1.8.2.bb:do_configure) failed with ex=
it code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">(...)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking at the log.do_configure and NetworkManager c=
onfigure.ac file I find the line throwing the error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># If g-i is installed we know we have python, but we=
 might not have pygobject<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; if ! &quot;$PYTHON&quot; -c 'from=
 gi.repository import GObject' &gt;&amp; /dev/null; then<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as_fn_err=
or $? &quot;\&quot;--enable-introspection aims to build the settings docume=
ntation. This requires GObject introspection for python (pygobject)&quot; &=
quot;$LINENO&quot; 5<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; fi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am able to reproduce the problem in the devshell:<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># bitbake -c devshell NetworkManager<o:p></o:p></p>
<p class=3D"MsoNormal">(....)<o:p></o:p></p>
<p class=3D"MsoNormal">root:~/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon=
-dey-linux-gnueabi/networkmanager/1.8.2-r0/NetworkManager-1.8.2# &quot;$PYT=
HON&quot; -c 'from gi.repository import GObject'<o:p></o:p></p>
<p class=3D"MsoNormal">Traceback (most recent call last):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; File &quot;&lt;frozen importlib._bootstrap&gt=
;&quot;, line 890, in _find_spec<o:p></o:p></p>
<p class=3D"MsoNormal">AttributeError: 'DynamicImporter' object has no attr=
ibute 'find_spec'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">During handling of the above exception, another exce=
ption occurred:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Traceback (most recent call last):<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; File &quot;&lt;string&gt;&quot;, line 1, in &=
lt;module&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; File &quot;workspaces-yocto/2.4/tmp/work/cort=
exa9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native=
/usr/lib/python3.5/site-packages/gi/importer.py&quot;, line 127, in find_mo=
dule<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; &nbsp;'introspection typelib not found'=
 % namespace)<o:p></o:p></p>
<p class=3D"MsoNormal">ImportError: cannot import name GObject, introspecti=
on typelib not found<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried finding more information about the python3 i=
nstallation in the SDK for the NetworkManager recipe:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root:~/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon=
-dey-linux-gnueabi/networkmanager/1.8.2-r0/NetworkManager-1.8.2# echo $PYTH=
ON<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/bin/python3-native/python3<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">root:~/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon=
-dey-linux-gnueabi/networkmanager/1.8.2-r0/NetworkManager-1.8.2# find /home=
/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/n=
etworkmanager/1.8.2-r0/recipe-sysroot-native/
 -name &quot;*GObject*&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/share/gir-1.0/GObject-2.0.gir<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/lib/python3.5/site-packages/gi/overrides/GObject.py<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/lib/python3.5/site-packages/gi/overrides/__pycache__/GObject.cpython-35.p=
yc<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/lib/python3.5/site-packages/gi/overrides/__pycache__/GObject.cpython-35.o=
pt-1.pyc<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/lib/python2.7/site-packages/gi/overrides/GObject.py<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/lib/python2.7/site-packages/gi/overrides/GObject.pyo<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/lib/python2.7/site-packages/gi/overrides/GObject.pyc<o:p></o:p></p>
<p class=3D"MsoNormal">/home/jdepedro/workspaces-yocto/2.4/tmp/work/cortexa=
9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/recipe-sysroot-native/us=
r/lib/girepository-1.0/GObject-2.0.typelib<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Seems to me like GObject is in fact available in the=
 native SDK that is being used to compile the NetworkManager.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am not sure how to keep on to debug and solve this=
 problem. Any help is much appreciated.<o:p></o:p></p>
</div>
</body>
</html>

--_000_0B2EBCD48D33654381E736352034C70C01B37B75dorsmsxch01digi_--
