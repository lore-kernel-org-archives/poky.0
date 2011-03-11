Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F38CE4C800A3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:09:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2011 17:09:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,299,1297065600"; 
	d="scan'208,217";a="611572041"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2011 17:09:17 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 11 Mar 2011 09:09:16 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 11 Mar 2011 09:09:15 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: chinmaya hoshing <cahoshing@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Fri, 11 Mar 2011 09:09:14 +0800
Thread-Topic: [poky] Error while pulling mpeg2dec library
Thread-Index: AcvfDzgsS/TKghepSTG6FOaCr+k5aAAeZToA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1505770D74695@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=Rqe+q0EPir=m+un8c0LYtv9BS40LrPtZyXMRr@mail.gmail.com>
In-Reply-To: <AANLkTi=Rqe+q0EPir=m+un8c0LYtv9BS40LrPtZyXMRr@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Error while pulling mpeg2dec library
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
X-List-Received-Date: Fri, 11 Mar 2011 01:09:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F1505770D74695shsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F1505770D74695shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

where's your mpeg2dec recipe located?

if it's in a separate directory than meta, you need include it in conf/bbla=
yers.conf to make sure it can be reached by the bitbake.

Thanks
Kevin

From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of chinmaya hoshing
Sent: Thursday, March 10, 2011 6:37 PM
To: poky@yoctoproject.org
Subject: [poky] Error while pulling mpeg2dec library

Hi,
I am getting error while pulling mpeg2dec library,also i have checked the b=
b file for the same but still it is saying unbuildable,
what is getting wrong??

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'mpeg2dec' (but /home/sct/poky-chrome/meta/recipes=
-core/images/poky-image-minimal-akshat.bb<http://poky-image-minimal-akshat.=
bb> RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'mpeg2dec' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['mpeg2dec']
ERROR: Required build target 'poky-image-minimal-akshat-live' has no builda=
ble providers.
Missing or unbuildable dependency chain was: ['poky-image-minimal-akshat-li=
ve', 'poky-image-minimal-akshat', 'mpeg2dec']
Command execution failed: Traceback (most recent call last):
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/command.py", line =
88, in runAsyncCommand
    commandmethod(self.cmds_async, self, options)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/command.py", line =
184, in buildTargets
    command.cooker.buildTargets(pkgs_to_build, task)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/cooker.py", line 7=
58, in buildTargets
    taskdata.add_unresolved(localdata, self.status)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line=
 541, in add_unresolved
    self.remove_runtarget(self.getrun_id(target))
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line=
 518, in remove_runtarget
    self.fail_fnid(fnid, missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line=
 472, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line=
 497, in remove_buildtarget
    self.fail_fnid(self.tasks_fnid[taskid], missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line=
 472, in fail_fnid
    self.remove_buildtarget(target, missing_list)
  File "/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py", line=
 502, in remove_buildtarget
    raise bb.providers.NoProvider(target)
NoProvider: poky-image-minimal-akshat-live

Wtih Regards
Chinmaya

--_000_625BA99ED14B2D499DC4E29D8138F1505770D74695shsmsx502ccrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META HTTP-EQUI=
V=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii"><meta name=3DG=
enerator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
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
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F49=
7D'>where&#8217;s your mpeg2dec recipe located?<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Ca=
libri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>if it&#8217;s in a separate directory than met=
a, you need include it in conf/bblayers.conf to make sure it can be reached=
 by the bitbake.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F49=
7D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'>Th=
anks<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'>Kevin<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-si=
ze:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:=
p></span></p><div style=3D'border:none;border-left:solid blue 1.5pt;padding=
:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:none;border-top:solid #B5C4DF=
 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans=
-serif"'> poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.o=
rg] <b>On Behalf Of </b>chinmaya hoshing<br><b>Sent:</b> Thursday, March 10=
, 2011 6:37 PM<br><b>To:</b> poky@yoctoproject.org<br><b>Subject:</b> [poky=
] Error while pulling mpeg2dec library<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><div>=
<p class=3DMsoNormal><span lang=3DEN-US>Hi,<o:p></o:p></span></p></div><div=
><p class=3DMsoNormal><span lang=3DEN-US>I am getting error while pulling m=
peg2dec library,also i have checked the bb file for the same but still it i=
s saying unbuildable,<o:p></o:p></span></p></div><div><p class=3DMsoNormal>=
<span lang=3DEN-US>what is getting wrong??<o:p></o:p></span></p></div><div>=
<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div><=
div><p class=3DMsoNormal><span lang=3DEN-US>NOTE: Resolving any missing tas=
k queue dependencies<o:p></o:p></span></p></div><div><p class=3DMsoNormal><=
span lang=3DEN-US>ERROR: Nothing RPROVIDES 'mpeg2dec' (but /home/sct/poky-c=
hrome/meta/recipes-core/images/<a href=3D"http://poky-image-minimal-akshat.=
bb">poky-image-minimal-akshat.bb</a> RDEPENDS on or otherwise requires it)<=
o:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>NOT=
E: Runtime target 'mpeg2dec' is unbuildable, removing...<o:p></o:p></span><=
/p></div><div><p class=3DMsoNormal><span lang=3DEN-US>Missing or unbuildabl=
e dependency chain was: ['mpeg2dec']<o:p></o:p></span></p></div><div><p cla=
ss=3DMsoNormal><span lang=3DEN-US>ERROR: Required build target 'poky-image-=
minimal-akshat-live' has no buildable providers.<o:p></o:p></span></p></div=
><div><p class=3DMsoNormal><span lang=3DEN-US>Missing or unbuildable depend=
ency chain was: ['poky-image-minimal-akshat-live', 'poky-image-minimal-aksh=
at', 'mpeg2dec']<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span=
 lang=3DEN-US>Command execution failed: Traceback (most recent call last):<=
o:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>&nb=
sp;&nbsp;File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/comman=
d.py&quot;, line 88, in runAsyncCommand<o:p></o:p></span></p></div><div><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp; &nbsp;commandmethod(self.=
cmds_async, self, options)<o:p></o:p></span></p></div><div><p class=3DMsoNo=
rmal><span lang=3DEN-US>&nbsp;&nbsp;File &quot;/home/sct/poky-chrome/script=
s/..//bitbake/lib/bb/command.py&quot;, line 184, in buildTargets<o:p></o:p>=
</span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp; =
&nbsp;command.cooker.buildTargets(pkgs_to_build, task)<o:p></o:p></span></p=
></div><div><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;File &quot;=
/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/cooker.py&quot;, line 758,=
 in buildTargets<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span=
 lang=3DEN-US>&nbsp;&nbsp; &nbsp;taskdata.add_unresolved(localdata, self.st=
atus)<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-=
US>&nbsp;&nbsp;File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/=
taskdata.py&quot;, line 541, in add_unresolved<o:p></o:p></span></p></div><=
div><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp; &nbsp;self.remove_=
runtarget(self.getrun_id(target))<o:p></o:p></span></p></div><div><p class=
=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;File &quot;/home/sct/poky-chrom=
e/scripts/..//bitbake/lib/bb/taskdata.py&quot;, line 518, in remove_runtarg=
et<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>=
&nbsp;&nbsp; &nbsp;self.fail_fnid(fnid, missing_list)<o:p></o:p></span></p>=
</div><div><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;File &quot;/=
home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py&quot;, line 472=
, in fail_fnid<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span l=
ang=3DEN-US>&nbsp;&nbsp; &nbsp;self.remove_buildtarget(target, missing_list=
)<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>&=
nbsp;&nbsp;File &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/task=
data.py&quot;, line 497, in remove_buildtarget<o:p></o:p></span></p></div><=
div><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp; &nbsp;self.fail_fn=
id(self.tasks_fnid[taskid], missing_list)<o:p></o:p></span></p></div><div><=
p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;File &quot;/home/sct/pok=
y-chrome/scripts/..//bitbake/lib/bb/taskdata.py&quot;, line 472, in fail_fn=
id<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>=
&nbsp;&nbsp; &nbsp;self.remove_buildtarget(target, missing_list)<o:p></o:p>=
</span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp;F=
ile &quot;/home/sct/poky-chrome/scripts/..//bitbake/lib/bb/taskdata.py&quot=
;, line 502, in remove_buildtarget<o:p></o:p></span></p></div><div><p class=
=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp; &nbsp;raise bb.providers.NoPro=
vider(target)<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span la=
ng=3DEN-US>NoProvider: poky-image-minimal-akshat-live<o:p></o:p></span></p>=
</div><div><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span>=
</p></div><div><p class=3DMsoNormal><span lang=3DEN-US>Wtih Regards&nbsp;<o=
:p></o:p></span></p></div><div><p class=3DMsoNormal><span lang=3DEN-US>Chin=
maya<o:p></o:p></span></p></div></div></div></div></body></html>=

--_000_625BA99ED14B2D499DC4E29D8138F1505770D74695shsmsx502ccrc_--
