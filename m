Return-Path: <simon.chen@lmco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AA9DE0076B; Tue, 14 Apr 2015 09:20:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.31.106.12 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 8776 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Apr 2015 09:20:57 PDT
Received: from mailfo01.lmco.com (mailfo01.lmco.com [192.31.106.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD375E003A8
	for <poky@yoctoproject.org>; Tue, 14 Apr 2015 09:20:57 -0700 (PDT)
Received: from HVXHTPN8.us.lmco.com (hvxhtpn8.ems.lmco.com [158.186.149.26])
	by mailfo01.lmco.com (8.14.5/8.14.5) with ESMTP id t3EDsZtj013779
	for <poky@yoctoproject.org>; Tue, 14 Apr 2015 14:54:39 +0100
Received: from HVXDSP45.us.lmco.com ([fe80::e5e8:eada:5adc:d92a]) by
	HVXHTPN8.us.lmco.com ([fe80::10bd:9768:f118:60b1%15]) with mapi id
	14.03.0174.001; Tue, 14 Apr 2015 09:54:03 -0400
From: "Chen, Simon (N-DCR SYSTEM HOUSE)" <simon.chen@lmco.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Configuring Yocto's GRUB with Custom Boot Parameters 
Thread-Index: AdB2unYbP8O03mvtSFmOOUaL0L6nbQ==
Date: Tue, 14 Apr 2015 13:54:03 +0000
Message-ID: <D3EFC6D8DB6B2D48A91E6F02D0DB338FA737A2@HVXDSP45.us.lmco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.186.156.90]
MIME-Version: 1.0
X-LM-Outbound: External 158.186.149.26 cntry=us
	g=870a8075d59882489ca56c2f2e192215 q=t3EDsZtj013779 m=6
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.13.68, 1.0.33,
	0.0.0000
	definitions=2015-04-14_04:2015-04-14, 2015-04-14,
	1970-01-01 signatures=0
Subject: Configuring Yocto's GRUB with Custom Boot Parameters
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
X-List-Received-Date: Tue, 14 Apr 2015 16:20:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA737A2HVXDSP45uslmcocom_"

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA737A2HVXDSP45uslmcocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to configure my YOCTO OS, built from poky-dizzy-12.0.1, to use =
the uvesafb driver upon booting. I am trying to add a few boot parameters t=
o GRUB by appending the following into GRUB: "vesafb:mtrr,ywrap vga=3D0x31A=
," but nothing seems to be implemented. I've also tried entering "setparams=
 vesafb:mtrr,ywrap vga=3D0x31A" into the GRUB command line which doesn't wo=
rk either. I understand that adding boot parameters in a GRUB menu is only =
for temporary implementations, which could be the source of my problem. For=
 a permanent implementation, I've also tried looking for the file etc/defau=
lt/grub, and the update-grub command that creates it. Both of these do not =
exist for Yocto. I thought about brute forcing my changes to the EFI/BOOT/g=
rub.cfg file in my boot drive, which is probably not recommended. My main q=
uestion is, how would I permanently add custom boot parameters into GRUB?

Curiously enough, I was able to get the OS to boot with the Vesa driver onl=
y when I append my boot parameters in GRUB, select boot in the GRUB menu, a=
nd quickly do a force restart mid-way during booting, and then do another r=
eboot after that. When booting, the CPU also skips the GRUB menu page. This=
 is extremely hackish, and most likely not a good implementation. I hope I =
can find a better method.

Thanks,
Simon

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA737A2HVXDSP45uslmcocom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to configure my YOCTO OS, built from pok=
y-dizzy-12.0.1, to use the uvesafb driver upon booting. I am trying to add =
a few boot parameters to GRUB by appending the following into GRUB: &#8220;=
vesafb:mtrr,ywrap vga=3D0x31A,&#8221; but nothing
 seems to be implemented. I&#8217;ve also tried entering &#8220;setparams v=
esafb:mtrr,ywrap vga=3D0x31A&#8221; into the GRUB command line which doesn&=
#8217;t work either. I understand that adding boot parameters in a GRUB men=
u is only for temporary implementations, which could be the
 source of my problem. For a permanent implementation, I&#8217;ve also trie=
d looking for the file etc/default/grub, and the update-grub command that c=
reates it. Both of these do not exist for Yocto. I thought about brute forc=
ing my changes to the EFI/BOOT/grub.cfg
 file in my boot drive, which is probably not recommended. My main question=
 is, how would I permanently add custom boot parameters into GRUB?<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Curiously enough, I was able to get the OS to boot w=
ith the Vesa driver only when I append my boot parameters in GRUB, select b=
oot in the GRUB menu, and quickly do a force restart mid-way during booting=
, and then do another reboot after
 that. When booting, the CPU also skips the GRUB menu page. This is extreme=
ly hackish, and most likely not a good implementation. I hope I can find a =
better method.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Simon<o:p></o:p></p>
</div>
</body>
</html>

--_000_D3EFC6D8DB6B2D48A91E6F02D0DB338FA737A2HVXDSP45uslmcocom_--
