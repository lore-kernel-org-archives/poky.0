Return-Path: <raymond.tan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ACB4E00C40; Fri, 23 Mar 2018 05:10:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA56EE00B58;
	Fri, 23 Mar 2018 05:10:52 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Mar 2018 05:10:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,349,1517904000"; d="scan'208,217";a="39974222"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by fmsmga004.fm.intel.com with ESMTP; 23 Mar 2018 05:10:48 -0700
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.116]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.51]) with mapi id
	14.03.0319.002; Fri, 23 Mar 2018 20:10:47 +0800
From: "Tan, Raymond" <raymond.tan@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	"meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>
Thread-Topic: [poky] lttng-modules build error on linux-yocto-4.4 with KVM
	on [rocko] branch
Thread-Index: AdPCntvfMBG24SQwTBeGDDTA6NZVyA==
Date: Fri, 23 Mar 2018 12:10:46 +0000
Message-ID: <F0CA9E243F4F424B836EAC30E41BF4CF781DBB3F@PGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWRhZWFiYzgtZDc1YS00ZDBiLTgyOGYtNTZiMzFlZjVlZDc0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJQUUVsVUQ4Z3dOT0ZSSlZrV1JsTlBUTDdqeDZndTNjZzZraDh6Rlwva0I1bVpJcm1aXC9lb2tpdXpXT2kwM2xoa3EifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "ray.danks@se-eng.com" <ray.danks@se-eng.com>
Subject: lttng-modules build error on linux-yocto-4.4 with KVM on [rocko] branch
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
X-List-Received-Date: Fri, 23 Mar 2018 12:10:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F0CA9E243F4F424B836EAC30E41BF4CF781DBB3FPGSMSX104garcor_"

--_000_F0CA9E243F4F424B836EAC30E41BF4CF781DBB3FPGSMSX104garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Maintainers,

I'm building the image core-image-sato-sdk on ROCKO branch with the poky, m=
eta-virtualization and meta-intel.

When I enabled virtualization and kvm,

DISTRO_FEATURES_append =3D " virtualization"
DISTRO_FEATURES_append =3D " kvm"

PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
PREFERRED_VERSION_linux-yocto ?=3D "4.4%"

I get the error as follow :

....
                 from /home/rahul/raymond/workingdir/pyro/build/tmp/work/in=
tel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/=
lttng-probe-kvm.c:42:
/home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-lin=
ux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/../probes/lttng-tracep=
oint-event-impl.h:142:6: error: conflicting types for 'trace_kvm_mmio'
void trace_##_name(_proto);
      ^
/home/rahul/raymond/workingdir/pyro/build/tmp/work/intel_corei7_64-poky-lin=
ux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes/../probes/lttng-tracep=
oint-event-impl.h:54:2: note: in expansion of macro 'LTTNG_TRACEPOINT_EVENT=
_INSTANCE_MAP'
  LTTNG_TRACEPOINT_EVENT_INSTANCE_MAP(map, name, map, PARAMS(proto), PARAMS=
(args))
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.....

Checking online, same issue was reported with the lttng-modules 2.9.5 on ke=
rnel 4.9 as well, albeit in different project https://jira.automotivelinux.=
org/browse/SPEC-1302

With the proposed solution in the AGL thread, updating lttng-modules to 2.1=
0.5 does fix this issue, since 2.10.5 is upstreamed into master-branch, wil=
l this version be patched to ROCKO as well?

/Ray

--_000_F0CA9E243F4F424B836EAC30E41BF4CF781DBB3FPGSMSX104garcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
<p class=3D"MsoNormal">Dear Maintainers,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m building the image core-image-sato-sdk on =
ROCKO branch with the poky, meta-virtualization and meta-intel.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I enabled virtualization and kvm, <o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">DISTRO_FEATURES_append =3D &quot; virtualization&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_FEATURES_append =3D &quot; kvm&quot;<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-y=
octo&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PREFERRED_VERSION_linux-yocto ?=3D &quot;4.4%&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I get the error as follow : <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8230;.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/rahul/raymond/worki=
ngdir/pyro/build/tmp/work/intel_corei7_64-poky-linux/lttng-modules/2.9.5-r0=
/lttng-modules-2.9.5/probes/lttng-probe-kvm.c:42:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/rahul/raymond/workingdir/pyro/build/tmp/work/i=
ntel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes=
/../probes/lttng-tracepoint-event-impl.h:142:6: error: conflicting types fo=
r 'trace_kvm_mmio'<o:p></o:p></p>
<p class=3D"MsoNormal">void trace_##_name(_proto);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<o:p></o:p></p>
<p class=3D"MsoNormal">/home/rahul/raymond/workingdir/pyro/build/tmp/work/i=
ntel_corei7_64-poky-linux/lttng-modules/2.9.5-r0/lttng-modules-2.9.5/probes=
/../probes/lttng-tracepoint-event-impl.h:54:2: note: in expansion of macro =
'LTTNG_TRACEPOINT_EVENT_INSTANCE_MAP'<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; LTTNG_TRACEPOINT_EVENT_INSTANCE_MAP(map, name=
, map, PARAMS(proto), PARAMS(args))<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<o:p></o:p=
></p>
<p class=3D"MsoNormal">&#8230;..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Checking online, same issue was reported with the lt=
tng-modules 2.9.5 on kernel 4.9 as well, albeit in different project
<a href=3D"https://jira.automotivelinux.org/browse/SPEC-1302">https://jira.=
automotivelinux.org/browse/SPEC-1302</a>
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With the proposed solution in the AGL thread, updati=
ng lttng-modules to 2.10.5 does fix this issue, since 2.10.5 is upstreamed =
into master-branch, will this version be patched to ROCKO as well?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/Ray<o:p></o:p></p>
</div>
</body>
</html>

--_000_F0CA9E243F4F424B836EAC30E41BF4CF781DBB3FPGSMSX104garcor_--
