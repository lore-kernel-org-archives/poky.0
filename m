Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B59E00CCF; Thu,  2 Jun 2016 05:27:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_40,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2804]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1421 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Jun 2016 05:27:33 PDT
Received: from intranet.lincoln.ln-systems.com (post.ln-systems.com
	[62.49.123.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99271E00CAF
	for <poky@yoctoproject.org>; Thu,  2 Jun 2016 05:27:32 -0700 (PDT)
Received: from LNSYSCH3 (firewall-ext.lincoln.ln-systems.com [62.49.123.65])
	by intranet.lincoln.ln-systems.com (8.13.1/8.13.1) with ESMTP id
	u52C2t85013515
	for <poky@yoctoproject.org>; Thu, 2 Jun 2016 13:03:00 +0100
From: "Colin Helliwell" <colin.helliwell@ln-systems.com>
To: <poky@yoctoproject.org>
Date: Thu, 2 Jun 2016 13:03:35 +0100
Organization: LN Systems Limited
Message-ID: <29e601d1bcc6$ce4b1a70$6ae14f50$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdG8xneVD92SS5XhSEiOX86MG4GQJQ==
Subject: Mismatch (armel/armhf) between debs and dpkg
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Jun 2016 12:27:37 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_29E7_01D1BCCF.3011F370"
Content-Language: en-gb

------=_NextPart_000_29E7_01D1BCCF.3011F370
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm trying to understand where/why/how [the target] dpkg is setting it's
default architecture. I'm building for BeagleBoneBlack, which is compiling
for hardware floating point. The .deb packages created are suffixed armhf
(correctly picked up through package_deb.class), yet the dpkg binary itself
reports the architecture as armel.

Hence, other than forcing/overriding this, dpkg complains about the
architecture mismatch.

Is there something in there somewhere which will correct dpkg's behaviour?

 


------=_NextPart_000_29E7_01D1BCCF.3011F370
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>I&#8217;m trying to understand where/why/how [the =
target] dpkg is setting it&#8217;s default architecture. I&#8217;m =
building for BeagleBoneBlack, which is compiling for hardware floating =
point. The .deb packages created are suffixed armhf (correctly picked up =
through package_deb.class), yet the dpkg binary itself reports the =
architecture as armel.<o:p></o:p></p><p class=3DMsoNormal>Hence, other =
than forcing/overriding this, dpkg complains about the architecture =
mismatch.<o:p></o:p></p><p class=3DMsoNormal>Is there something in there =
somewhere which will correct dpkg&#8217;s behaviour?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_29E7_01D1BCCF.3011F370--
