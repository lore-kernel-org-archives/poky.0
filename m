Return-Path: <pdemetrotion@winsystems.com>
Received: from mail.winsystems.com (mail.winsystems.com [50.84.106.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 489D0E006D9
	for <poky@yoctoproject.org>; Tue, 26 Jun 2012 10:25:02 -0700 (PDT)
Received: from PDEMEW7322012 ([192.168.0.152])
	by mail.winsystems.com (Glickman Mail Server 2.32.45.dat0192854) with
	ESMTP id KXZ04600
	for <poky@yoctoproject.org>; Tue, 26 Jun 2012 12:25:00 -0500
From: "Paul Demetrotion" <pdemetrotion@winsystems.com>
To: <poky@yoctoproject.org>
References: 
In-Reply-To: 
Date: Tue, 26 Jun 2012 12:25:00 -0500
Message-ID: <009701cd53c0$9d41e4e0$d7c5aea0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: Ac1Tv8O+erDHaFzIQqCNYElUHon5LQAAK+jw
Expiry-Date: Thu, 4 Oct 2012 00:00:00 -0500
X-Antivirus: avast! (VPS 120626-0, 06/26/2012), Outbound message
X-Antivirus-Status: Clean
Subject: Linux Build Help Needed
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
X-List-Received-Date: Tue, 26 Jun 2012 17:25:02 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0098_01CD5396.B46BDCE0"
Content-Language: en-us

------=_NextPart_000_0098_01CD5396.B46BDCE0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am new (2 days) to the Yocto Project. Am trying to do a Linux build for
the Freescale IMX53 QSB. Am running into trouble and cannot find any
assistance on-line. Any help would be appreciated. 

 

Build log as follows:

 

pauld@ubuntu:~/yocto/imx53qsb/poky-denzil-7.0/build$ bitbake
core-image-minimal

WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated with
this version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.

ERROR: Unable to parse
/home/pauld/yocto/imx53qsb/poky-denzil-7.0/meta-oe/recipes-connectivity/rfki
ll/rfkill_0.4.bb

Traceback (most recent call last):

  File
"/home/pauld/yocto/imx53qsb/poky-denzil-7.0/bitbake/lib/bb/parse/ast.py",
line 323, in
finalize(fn='/home/pauld/yocto/imx53qsb/poky-denzil-7.0/meta-oe/recipes-conn
ectivity/rfkill/rfkill_0.4.bb', d=<bb.data_smart.DataSmart object at
0xdcd0650>, variant=None):

             code.append("%s(d)" % funcname)

    >    bb.utils.simple_exec("\n".join(code), {"d": d})

         bb.data.update_data(d)

  File "/home/pauld/yocto/imx53qsb/poky-denzil-7.0/bitbake/lib/bb/utils.py",
line 394, in
simple_exec(code='__anon_119__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta
_classes_staging_bbclass(d)\n__anon_524__home_pauld_yocto_imx53qsb_poky_denz
il_7_0_meta_classes_base_bbclass(d)\n__anon_183__home_pauld_yocto_imx53qsb_p
oky_denzil_7_0_meta_classes_package_bbclass(d)\n__anon_1116__home_pauld_yoct
o_imx53qsb_poky_denzil_7_0_meta_classes_package_rpm_bbclass(d)\n__anon_732__
home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_insane_bbclass(d)\n__
anon_20__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_debian_bbcla
ss(d)\n__anon_52__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_sst
ate_bbclass(d)\n__anon_95__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_cl
asses_update_alternatives_bbclass(d)', context={'d':
<bb.data_smart.DataSmart object at 0xdcd0650>}):

     def simple_exec(code, context):

    >    exec(code, _context, context)

     

  File "<string>", line 8, in <module>

  File
"__anon_95__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_update_al
ternatives_bbclass", line 2, in
__anon_95__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_update_alt
ernatives_bbclass(d=<bb.data_smart.DataSmart object at 0xdcd0650>)

  File "update-alternatives.bbclass", line 12, in
update_alternatives_after_parse(d=<bb.data_smart.DataSmart object at
0xdcd0650>)

FuncFailed: Function failed:
/home/pauld/yocto/imx53qsb/poky-denzil-7.0/meta-oe/recipes-connectivity/rfki
ll/rfkill_0.4.bb inherits update-alternatives but doesn't set
ALTERNATIVE_NAME

 

ERROR: Command execution failed: Exited with 1

 

Summary: There was 1 WARNING message shown.

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

 

Thanks,

Paul DeMetrotion

Software Group Manager

WinSystems, Inc. 

(817) 274-7553 x136

www.winsystems.com <http://www.winsystems.com/>  

 


------=_NextPart_000_0098_01CD5396.B46BDCE0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 12 =
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>I am new =
(2 days) to the Yocto Project. Am trying to do a Linux build for the =
Freescale IMX53 QSB. Am running into trouble and cannot find any =
assistance on-line. Any help would be appreciated. <span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Build log as follows:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><a =
href=3D"mailto:pauld@ubuntu:~/yocto/imx53qsb/poky-denzil-7.0/build$">paul=
d@ubuntu:~/yocto/imx53qsb/poky-denzil-7.0/build$</a> bitbake =
core-image-minimal<o:p></o:p></p><p class=3DMsoNormal>WARNING: Host =
distribution &quot;Ubuntu 12.04 LTS&quot; has not been validated with =
this version of the build system; you may possibly experience unexpected =
failures. It is recommended that you use a tested =
distribution.<o:p></o:p></p><p class=3DMsoNormal>ERROR: Unable to parse =
/home/pauld/yocto/imx53qsb/poky-denzil-7.0/meta-oe/recipes-connectivity/r=
fkill/rfkill_0.4.bb<o:p></o:p></p><p class=3DMsoNormal>Traceback (most =
recent call last):<o:p></o:p></p><p class=3DMsoNormal>&nbsp; File =
&quot;/home/pauld/yocto/imx53qsb/poky-denzil-7.0/bitbake/lib/bb/parse/ast=
.py&quot;, line 323, in =
finalize(fn=3D'/home/pauld/yocto/imx53qsb/poky-denzil-7.0/meta-oe/recipes=
-connectivity/rfkill/rfkill_0.4.bb', d=3D&lt;bb.data_smart.DataSmart =
object at 0xdcd0650&gt;, variant=3DNone):<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; code.append(&quot;%s(d)&quot; % =
funcname)<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; =
&gt;&nbsp;&nbsp;&nbsp; bb.utils.simple_exec(&quot;\n&quot;.join(code), =
{&quot;d&quot;: d})<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
bb.data.update_data(d)<o:p></o:p></p><p class=3DMsoNormal>&nbsp; File =
&quot;/home/pauld/yocto/imx53qsb/poky-denzil-7.0/bitbake/lib/bb/utils.py&=
quot;, line 394, in =
simple_exec(code=3D'__anon_119__home_pauld_yocto_imx53qsb_poky_denzil_7_0=
_meta_classes_staging_bbclass(d)\n__anon_524__home_pauld_yocto_imx53qsb_p=
oky_denzil_7_0_meta_classes_base_bbclass(d)\n__anon_183__home_pauld_yocto=
_imx53qsb_poky_denzil_7_0_meta_classes_package_bbclass(d)\n__anon_1116__h=
ome_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_package_rpm_bbclass=
(d)\n__anon_732__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_i=
nsane_bbclass(d)\n__anon_20__home_pauld_yocto_imx53qsb_poky_denzil_7_0_me=
ta_classes_debian_bbclass(d)\n__anon_52__home_pauld_yocto_imx53qsb_poky_d=
enzil_7_0_meta_classes_sstate_bbclass(d)\n__anon_95__home_pauld_yocto_imx=
53qsb_poky_denzil_7_0_meta_classes_update_alternatives_bbclass(d)', =
context=3D{'d': &lt;bb.data_smart.DataSmart object at =
0xdcd0650&gt;}):<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp; def simple_exec(code, =
context):<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; =
&gt;&nbsp;&nbsp;&nbsp; exec(code, _context, context)<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;File &quot;&lt;string&gt;&quot;, line 8, =
in &lt;module&gt;<o:p></o:p></p><p class=3DMsoNormal>&nbsp; File =
&quot;__anon_95__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_u=
pdate_alternatives_bbclass&quot;, line 2, in =
__anon_95__home_pauld_yocto_imx53qsb_poky_denzil_7_0_meta_classes_update_=
alternatives_bbclass(d=3D&lt;bb.data_smart.DataSmart object at =
0xdcd0650&gt;)<o:p></o:p></p><p class=3DMsoNormal>&nbsp; File =
&quot;update-alternatives.bbclass&quot;, line 12, in =
update_alternatives_after_parse(d=3D&lt;bb.data_smart.DataSmart object =
at 0xdcd0650&gt;)<o:p></o:p></p><p class=3DMsoNormal>FuncFailed: =
Function failed: =
/home/pauld/yocto/imx53qsb/poky-denzil-7.0/meta-oe/recipes-connectivity/r=
fkill/rfkill_0.4.bb inherits update-alternatives but doesn't set =
ALTERNATIVE_NAME<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>ERROR: =
Command execution failed: Exited with 1<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Summary: =
There was 1 WARNING message shown.<o:p></o:p></p><p =
class=3DMsoNormal>Summary: There were 2 ERROR messages shown, returning =
a non-zero exit code.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Paul =
DeMetrotion<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Software Group Manager<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>WinSystems, Inc. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>(817) 274-7553 x136<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'><a =
href=3D"http://www.winsystems.com/">www.winsystems.com</a> =
<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0098_01CD5396.B46BDCE0--
