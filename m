Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1716AE00DCA; Wed, 24 Jan 2018 06:47:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.112 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0112.outbound.protection.outlook.com [104.47.0.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F6CE00CE8
	for <poky@yoctoproject.org>; Wed, 24 Jan 2018 06:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=zW/TSogr2OF/Ww8TvcYY/hlaV+Gko/+3dee+MFq67bs=;
	b=hQM5aDLRP6ORnTAGquyWNI801foimJIi88vlGr5AJ/1paYGuo5zEY/u282fek3E6EVG+ho5BEtG0+96JIcxb1KR5QFQvhWHWcVoDt2mJmSsob/XVTpD9kJU20EM5p/MjKCw5StJBHHp0EBs6HbPXj5Byv3vne155kfbATW/E2Kk=
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com (10.167.125.20) by
	HE1PR0402MB3322.eurprd04.prod.outlook.com (10.167.125.19) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.428.17; Wed, 24 Jan 2018 14:14:17 +0000
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::70c2:d51e:8aee:c95]) by
	HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::70c2:d51e:8aee:c95%13]) with mapi id 15.20.0428.019;
	Wed, 24 Jan 2018 14:14:16 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: eSDK build fails on Ubuntu 17.10
Thread-Index: AQHTlIQHUXRa2YFxOkOaEXs61NiDOqODEdP2
Date: Wed, 24 Jan 2018 14:14:16 +0000
Message-ID: <HE1PR0402MB33235F011871698406B5CB4FC4E20@HE1PR0402MB3323.eurprd04.prod.outlook.com>
References: <HE1PR0402MB3323D7287DDE10F1162ACAE2C4E30@HE1PR0402MB3323.eurprd04.prod.outlook.com>
In-Reply-To: <HE1PR0402MB3323D7287DDE10F1162ACAE2C4E30@HE1PR0402MB3323.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [192.38.129.224]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0402MB3322;
	7:mA+SGKLKUSVaZFjQHq5dq/MhzuH1aDbt9MWk/dljgU6x5pFXj50ly7JQ595amw9GLY7fx0nqCRq2Yl5dNTdQUnOdBf5Ag8lv3fH54lBjUlm6kVWwOsLPZEB8UF2/dFlqr4tojRWPql64JhkohP8XpsQNFe9txvUPr/U6Ff6SEBpnQjbgMNKHJYbSDY8j9M/OlgRXGGBKjW0yG9Q0PUdmVxTGAU7lMs58BxSMI/EhCGFrVkNV06Nj1zGXMMXCBTdq
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: eba4fe89-b1d9-4497-fc4b-08d56334c0f9
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(4604075)(3008032)(2017052603307)(7153060)(49563074)(7193020);
	SRVR:HE1PR0402MB3322; 
x-ms-traffictypediagnostic: HE1PR0402MB3322:
x-microsoft-antispam-prvs: <HE1PR0402MB33229115471F62BEE9F6FFB4C4E20@HE1PR0402MB3322.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040501)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231023)(2400081)(944501161)(6041288)(20161123564045)(20161123562045)(20161123558120)(2016111802025)(20161123560045)(6072148)(6043046)(201708071742011);
	SRVR:HE1PR0402MB3322; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0402MB3322; 
x-forefront-prvs: 056297E276
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(396003)(39840400004)(366004)(346002)(39380400002)(189003)(199004)(6116002)(97736004)(3660700001)(3846002)(6436002)(3280700002)(14454004)(76176011)(68736007)(9686003)(26005)(66066001)(25786009)(7736002)(74316002)(86362001)(81156014)(54896002)(59450400001)(8676002)(53936002)(6506007)(81166006)(105586002)(2906002)(99936001)(5250100002)(5890100001)(55016002)(2501003)(5640700003)(1730700003)(102836004)(33656002)(7696005)(2900100001)(8936002)(99286004)(2351001)(2950100002)(316002)(6606003)(6916009)(19627405001)(5660300001)(478600001)(106356001)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0402MB3322;
	H:HE1PR0402MB3323.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 2qZAs2BMSusWQig9J1jKJllQl53UBZDUqY9Z4Li6ZnsFhFIdnjIQKGtglBnqfHI3LA6qhl61UEAxJ/l4Dv0FiQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eba4fe89-b1d9-4497-fc4b-08d56334c0f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2018 14:14:16.8444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3322
Subject: eSDK build fails on Ubuntu 17.10
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
X-List-Received-Date: Wed, 24 Jan 2018 14:47:55 -0000
X-Groupsio-MsgNum: 11111
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_"

--_004_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_"

--_000_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I encounter the below issue when generating the Poky eSDK for qemux86 (and =
also other architectures):

martin@martin-Precision-5510:~/work/tmp/build$ time bitbake core-image-mini=
mal -c populate_sdk_ext
WARNING: Host distribution "ubuntu-17.10" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Parsing recipes: 100% |####################################################=
###########################################################################=
###########################################################################=
################################| Time: 0:00:52
Parsing of 819 .bb files complete (0 cached, 819 parsed). 1276 targets, 44 =
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "1.36.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "i586-poky-linux"
MACHINE              =3D "qemux86"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.4.1"
TUNE_FEATURES        =3D "m32 i586"
TARGET_FPU           =3D ""
meta
meta-poky
meta-yocto-bsp       =3D "rocko:a03c452917842b15451ad7098c1216eaec09cd2b"

Initialising tasks: 100% |#################################################=
###########################################################################=
###########################################################################=
################################| Time: 0:00:14
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Error executing a pyt=
hon function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:copy_buildsystem(d)
     0003:
File: '/home/martin/work/tmp/poky/meta/classes/populate_sdk_ext.bbclass', l=
ineno: 422, function: copy_buildsystem
     0418:    sdk_ext_type =3D d.getVar('SDK_EXT_TYPE')
     0419:    if sdk_ext_type !=3D 'minimal' or sdk_include_toolchain or de=
rivative:
     0420:        # Create the filtered task list used to generate the ssta=
te cache shipped with the SDK
     0421:        tasklistfn =3D d.getVar('WORKDIR') + '/tasklist.txt'
 *** 0422:        create_filtered_tasklist(d, baseoutpath, tasklistfn, conf=
_initpath)
     0423:    else:
     0424:        tasklistfn =3D None
     0425:
     0426:    # Add packagedata if enabled
File: '/home/martin/work/tmp/poky/meta/classes/populate_sdk_ext.bbclass', l=
ineno: 169, function: create_filtered_tasklist
     0165:        try:
     0166:            cmdprefix =3D '. %s .; ' % conf_initpath
     0167:            logfile =3D d.getVar('WORKDIR') + '/tasklist_bb_log.t=
xt'
     0168:            try:
 *** 0169:                oe.copy_buildsystem.check_sstate_task_list(d, get=
_sdk_install_targets(d), tasklistfile, cmdprefix=3Dcmdprefix, cwd=3Dtemp_sd=
kbasepath, logfile=3Dlogfile)
     0170:            except bb.process.ExecutionError as e:
     0171:                msg =3D 'Failed to generate filtered task list fo=
r extensible SDK:\n%s' %  e.stdout.rstrip()
     0172:                if 'attempted to execute unexpectedly and should =
have been setscened' in e.stdout:
     0173:                    msg +=3D '\n----------\n\nNOTE: "attempted to=
 execute unexpectedly and should have been setscened" errors indicate this =
may be caused by missing sstate artifacts that were likely produced in earl=
ier builds, but have been subsequently deleted for some reason.\n'
File: '/home/martin/work/tmp/poky/meta/lib/oe/copy_buildsystem.py', lineno:=
 257, function: check_sstate_task_list
     0253:        logparam =3D '-l %s' % logfile
     0254:    else:
     0255:        logparam =3D ''
     0256:    cmd =3D "%sBB_SETSCENE_ENFORCE=3D1 PSEUDO_DISABLED=3D1 oe-che=
ck-sstate %s -s -o %s %s" % (cmdprefix, targets, filteroutfile, logparam)
 *** 0257:    env =3D dict(d.getVar('BB_ORIGENV', False))
     0258:    env.pop('BUILDDIR', '')
     0259:    env.pop('BBPATH', '')
     0260:    pathitems =3D env['PATH'].split(':')
     0261:    env['PATH'] =3D ':'.join([item for item in pathitems if not i=
tem.endswith('/bitbake/bin')])
File: '/home/martin/work/tmp/poky/bitbake/lib/bb/data_smart.py', lineno: 99=
5, function: __getitem__
     0991:
     0992:    def __getitem__(self, item):
     0993:        value =3D self.getVar(item, False)
     0994:        if value is None:
 *** 0995:            raise KeyError(item)
     0996:        else:
     0997:            return value
     0998:
     0999:    def __setitem__(self, var, value):
Exception: KeyError: 'ga_auto'

ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed: copy=
_buildsystem
ERROR: Logfile of failure stored in: /home/martin/work/tmp/build/tmp/work/q=
emux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_populate_sdk_ext.67=
64
ERROR: Task (/home/martin/work/tmp/poky/meta/recipes-core/images/core-image=
-minimal.bb:do_populate_sdk_ext) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3040 tasks of which 332 didn't need to be re=
run and 1 failed.

Summary: 1 task failed:
  /home/martin/work/tmp/poky/meta/recipes-core/images/core-image-minimal.bb=
:do_populate_sdk_ext
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

I am aware that Ubuntu 17.10 is not yet supported, but perhaps there is an =
easy workaround? Image- and ordinary SDK builds without issues - attached i=
s the log file.

Thanks,
Martin

--_000_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-size: 11pt;">=
Hi,</span><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText"><br>
I encounter the below issue when generating the Poky eSDK for qemux86 (and =
also other architectures):<br>
<br>
martin@martin-Precision-5510:~/work/tmp/build$ time bitbake core-image-mini=
mal -c populate_sdk_ext<br>
WARNING: Host distribution &quot;ubuntu-17.10&quot; has not been validated =
with this version of the build system; you may possibly experience unexpect=
ed failures. It is recommended that you use a tested distribution.<br>
Parsing recipes: 100% |####################################################=
###########################################################################=
###########################################################################=
################################|
 Time: 0:00:52<br>
Parsing of 819 .bb files complete (0 cached, 819 parsed). 1276 targets, 44 =
skipped, 0 masked, 0 errors.<br>
NOTE: Resolving any missing task queue dependencies<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;1.36.0&quot;<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;universal&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;i586-poky-linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D &quot;qemux86&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;2.4.1&quot;<br=
>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 i586&=
quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;&quot;<br>
meta<br>
meta-poky<br>
meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;rocko:a03c4529=
17842b15451ad7098c1216eaec09cd2b&quot;<br>
<br>
Initialising tasks: 100% |#################################################=
###########################################################################=
###########################################################################=
################################|
 Time: 0:00:14<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Error executing a pyt=
hon function in exec_python_func() autogenerated:<br>
<br>
The stack trace of python calls that resulted in this exception/failure was=
:<br>
File: 'exec_python_func() autogenerated', lineno: 2, function: &lt;module&g=
t;<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0001:<br>
&nbsp;*** 0002:copy_buildsystem(d)<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0003:<br>
File: '/home/martin/work/tmp/poky/meta/classes/populate_sdk_ext.bbclass', l=
ineno: 422, function: copy_buildsystem<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0418:&nbsp;&nbsp;&nbsp; sdk_ext_type =3D d.getVar(=
'SDK_EXT_TYPE')<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0419:&nbsp;&nbsp;&nbsp; if sdk_ext_type !=3D 'mini=
mal' or sdk_include_toolchain or derivative:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0420:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # =
Create the filtered task list used to generate the sstate cache shipped wit=
h the SDK<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0421:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ta=
sklistfn =3D d.getVar('WORKDIR') &#43; '/tasklist.txt'<br>
&nbsp;*** 0422:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; create_filtered_t=
asklist(d, baseoutpath, tasklistfn, conf_initpath)<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0423:&nbsp;&nbsp;&nbsp; else:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0424:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ta=
sklistfn =3D None<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0425:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0426:&nbsp;&nbsp;&nbsp; # Add packagedata if enabl=
ed<br>
File: '/home/martin/work/tmp/poky/meta/classes/populate_sdk_ext.bbclass', l=
ineno: 169, function: create_filtered_tasklist<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0165:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tr=
y:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0166:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; cmdprefix =3D '. %s .; ' % conf_initpath<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0167:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; logfile =3D d.getVar('WORKDIR') &#43; '/tasklist_bb_l=
og.txt'<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0168:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; try:<br>
&nbsp;*** 0169:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe.copy_buildsystem.check_sstate_task_list(d=
, get_sdk_install_targets(d), tasklistfile, cmdprefix=3Dcmdprefix, cwd=3Dte=
mp_sdkbasepath, logfile=3Dlogfile)<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0170:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; except bb.process.ExecutionError as e:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0171:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msg =3D 'Failed to generate f=
iltered task list for extensible SDK:\n%s' %&nbsp; e.stdout.rstrip()<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0172:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if 'attempted to execute unex=
pectedly and should have been setscened' in e.stdout:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0173:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; msg &=
#43;=3D '\n----------\n\nNOTE: &quot;attempted to execute unexpectedly and =
should have been setscened&quot; errors indicate this may be caused by miss=
ing sstate artifacts that were likely produced in earlier builds, but have =
been subsequently
 deleted for some reason.\n'<br>
File: '/home/martin/work/tmp/poky/meta/lib/oe/copy_buildsystem.py', lineno:=
 257, function: check_sstate_task_list<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0253:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lo=
gparam =3D '-l %s' % logfile<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0254:&nbsp;&nbsp;&nbsp; else:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0255:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lo=
gparam =3D ''<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0256:&nbsp;&nbsp;&nbsp; cmd =3D &quot;%sBB_SETSCEN=
E_ENFORCE=3D1 PSEUDO_DISABLED=3D1 oe-check-sstate %s -s -o %s %s&quot; % (c=
mdprefix, targets, filteroutfile, logparam)<br>
&nbsp;*** 0257:&nbsp;&nbsp;&nbsp; env =3D dict(d.getVar('BB_ORIGENV', False=
))<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0258:&nbsp;&nbsp;&nbsp; env.pop('BUILDDIR', '')<br=
>
&nbsp;&nbsp;&nbsp;&nbsp; 0259:&nbsp;&nbsp;&nbsp; env.pop('BBPATH', '')<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0260:&nbsp;&nbsp;&nbsp; pathitems =3D env['PATH'].=
split(':')<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0261:&nbsp;&nbsp;&nbsp; env['PATH'] =3D ':'.join([=
item for item in pathitems if not item.endswith('/bitbake/bin')])<br>
File: '/home/martin/work/tmp/poky/bitbake/lib/bb/data_smart.py', lineno: 99=
5, function: __getitem__<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0991:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0992:&nbsp;&nbsp;&nbsp; def __getitem__(self, item=
):<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0993:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; va=
lue =3D self.getVar(item, False)<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0994:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if=
 value is None:<br>
&nbsp;*** 0995:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; raise KeyError(item)<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0996:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; el=
se:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0997:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return value<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0998:<br>
&nbsp;&nbsp;&nbsp;&nbsp; 0999:&nbsp;&nbsp;&nbsp; def __setitem__(self, var,=
 value):<br>
Exception: KeyError: 'ga_auto'<br>
<br>
ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed: copy=
_buildsystem<br>
ERROR: Logfile of failure stored in: /home/martin/work/tmp/build/tmp/work/q=
emux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_populate_sdk_ext.67=
64<br>
ERROR: Task (/home/martin/work/tmp/poky/meta/recipes-core/images/core-image=
-minimal.bb:do_populate_sdk_ext) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 3040 tasks of which 332 didn't need to be re=
run and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
&nbsp; /home/martin/work/tmp/poky/meta/recipes-core/images/core-image-minim=
al.bb:do_populate_sdk_ext<br>
Summary: There was 1 WARNING message shown.<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
<br>
I am aware that Ubuntu 17.10 is not yet supported, but perhaps there is an =
easy workaround? Image- and ordinary SDK builds without issues - attached i=
s the log file.<br>
<br>
Thanks,<br>
Martin</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_--

--_004_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_
Content-Type: application/octet-stream; name="log.do_populate_sdk_ext.6764"
Content-Description: log.do_populate_sdk_ext.6764
Content-Disposition: attachment; filename="log.do_populate_sdk_ext.6764";
	size=32110; creation-date="Tue, 23 Jan 2018 20:00:28 GMT";
	modification-date="Tue, 23 Jan 2018 20:06:17 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc3N0YXRlX3Rhc2tfcHJlZnVuYwpERUJV
RzogUHl0aG9uIGZ1bmN0aW9uIHNzdGF0ZV90YXNrX3ByZWZ1bmMgZmluaXNoZWQKREVCVUc6IEV4
ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5PVEU6IERpcmVj
dCBkZXBlbmRlbmNpZXMgYXJlIFsnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNp
cGVzLXN1cHBvcnQvYXR0ci9hY2xfMi4yLjUyLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmly
dHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBv
cnQvbHpvcC9sem9wXzEuMDMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4v
d29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcWVtdS9xZW11LWhlbHBlci1uYXRp
dmVfMS4wLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvbnNwci9uc3ByXzQuMTYuYmI6
ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90
bXAvcG9reS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQveHoveHpfNS4yLjMuYmI6ZG9fcG9wdWxhdGVf
c3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRh
L3JlY2lwZXMtZ25vbWUvZ3RrLWRvYy9ndGstZG9jXzEuMjUuYmI6ZG9fcG9wdWxhdGVfc3lzcm9v
dCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lw
ZXMtZXh0ZW5kZWQvc2hhZG93L3NoYWRvd180LjIuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
J3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1j
b3JlL3VwZGF0ZS1yYy5kL3VwZGF0ZS1yYy5kXzAuNy5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
Jy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2RidXMvZGJ1c18x
LjEwLjIwLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2VsZnV0aWxzL2VsZnV0aWxz
XzAuMTcwLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bv
a3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL200L200XzEuNC4xOC5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVj
aXBlcy1zdXBwb3J0L3NxbGl0ZS9zcWxpdGUzXzMuMjAuMC5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2Mv
bGliZ2NjLWluaXRpYWxfNy4yLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGlu
L3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvYnVzeWJveC9idXN5Ym94XzEuMjQuMS5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3Jr
L3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L2xpYnBjcmUvbGlicGNyZV84LjQxLmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1w
L3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2F1dG9tYWtlL2F1dG9tYWtlXzEuMTUuMS5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3Rt
cC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLXByb3RvL2lucHV0cHJvdG9fMi4zLjIu
YmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRh
L3JlY2lwZXMtZGV2dG9vbHMvcHl0aG9uL3B5dGhvbjMtbmF0aXZlXzMuNS4zLmJiOmRvX3BvcHVs
YXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNv
bm5lY3Rpdml0eS9vcGVuc3NsL29wZW5zc2xfMS4wLjJtLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3Qn
LCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2UyZnNw
cm9ncy9lMmZzcHJvZ3NfMS40My41LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvemxpYi96bGliXzEuMi4xMS5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3Rt
cC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLWxpYi9saWJ4ZXh0XzEuMy4zLmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1w
L3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL3hvcmctcHJvdG8va2Jwcm90b18xLjAuNy5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVj
aXBlcy1jb3JlL2Jhc2UtcGFzc3dkL2Jhc2UtcGFzc3dkXzMuNS4yOS5iYjpkb19wb3B1bGF0ZV9z
eXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEv
cmVjaXBlcy1kZXZ0b29scy9iaW51dGlscy9iaW51dGlsc18yLjI5LjEuYmI6ZG9fcG9wdWxhdGVf
c3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRh
L3JlY2lwZXMtc3VwcG9ydC9wb3B0L3BvcHRfMS4xNi5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
J3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1z
dXBwb3J0L2xpYm1wYy9saWJtcGNfMS4wLjMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9t
ZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2xpYmdjY183
LjIuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9t
ZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1saWIvbGlicHRocmVhZC1zdHVic18wLjQuYmI6ZG9f
cG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAv
cG9reS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1saWIvbGlieGRtY3BfMS4xLjIuYmI6ZG9f
cG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAv
cG9reS9tZXRhL3JlY2lwZXMtbXVsdGltZWRpYS9saWJwbmcvbGlicG5nXzEuNi4zMS5iYjpkb19w
b3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBl
cy1zdXBwb3J0L2xpYmNhcC9saWJjYXBfMi4yNS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9o
b21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLXByb3Rv
L2lucHV0cHJvdG9fMi4zLjIuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4v
d29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtY29yZS9kYnVzL2RidXMtdGVzdF8xLjEwLjIwLmJi
OmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9y
ZWNpcGVzLWdyYXBoaWNzL3hvcmctbGliL2xpYngxMV8xLjYuNS5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVj
aXBlcy1zdXBwb3J0L2xpYmNoZWNrL2xpYmNoZWNrXzAuMTAuMC5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2dsaWJj
L2Nyb3NzLWxvY2FsZWRlZi1uYXRpdmVfMi4yNi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9o
b21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L2dub21lLWRlc2t0
b3AtdGVzdGluZy9nbm9tZS1kZXNrdG9wLXRlc3RpbmdfMjAxNC4xLmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQv
cHRlc3QtcnVubmVyL3B0ZXN0LXJ1bm5lcl8yLjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvbGlicmVwby9saWJyZXBvX2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21l
L21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1rZXJuZWwvbW9kdXRpbHMtaW5pdHNj
cmlwdHMvbW9kdXRpbHMtaW5pdHNjcmlwdHMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0
dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9v
bHMvcHl0aG9uL3B5dGhvbjMtc2l4XzEuMTAuMC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3Zp
cnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0
b29scy9maWxlL2ZpbGVfNS4zMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRp
bi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL3JlYWRsaW5lL3JlYWRsaW5lXzcuMC5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3Jr
L3RtcC9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9tYWtlZGV2cy9tYWtlZGV2c18xLjAuMS5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEv
cmVjaXBlcy1kZXZ0b29scy9ta2xpYnMvbWtsaWJzLW5hdGl2ZV8wLjEuNDMuYmI6ZG9fcG9wdWxh
dGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvbTQvbTQtbmF0aXZlXzEuNC4xOC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1
YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGlj
cy94b3JnLWxpYi94dHJhbnNfMS4zLjUuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9t
YXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1wcm90by94ZXh0
cHJvdG9fNy4zLjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90
bXAvcG9reS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1wcm90by9rYnByb3RvXzEuMC43LmJi
OmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9y
ZWNpcGVzLWV4dGVuZGVkL3RleGluZm8tZHVtbXktbmF0aXZlL3RleGluZm8tZHVtbXktbmF0aXZl
LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0
YS9yZWNpcGVzLXN1cHBvcnQvYmFzaC1jb21wbGV0aW9uL2Jhc2gtY29tcGxldGlvbl8yLjcuYmI6
ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3Jl
Y2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzQuMTIuYmI6ZG9fcG9wdWxhdGVfc3lzcm9v
dCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvZ3Jl
cC9ncmVwXzMuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3Rt
cC9wb2t5L21ldGEvcmVjaXBlcy1leHRlbmRlZC9wcm9jcHMvcHJvY3BzXzMuMy4xMi5iYjpkb19w
b3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBl
cy1leHRlbmRlZC9iYXNoL2Jhc2hfNC40LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVh
bDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVk
L3BpZ3ovcGlnel8yLjMuNC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZl
Oi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L3NoYXJlZC1t
aW1lLWluZm8vc2hhcmVkLW1pbWUtaW5mb18xLjguYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcv
aG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvYnRyZnMtdG9v
bHMvYnRyZnMtdG9vbHNfNC4xMi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0
aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3Jn
LXByb3RvL3hjYi1wcm90b18xLjEyLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvbGliZmZpL2xpYmZmaV8zLjIu
MS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93
b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9nbnUtY29uZmlnL2dudS1jb25maWdf
Z2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGlu
L3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvbGliZmZpL2xpYmZmaV8zLjIuMS5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3Jr
L3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2xpYnhtbC9saWJ4bWwyXzIuOS40LmJiOmRvX3Bv
cHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVz
LWV4dGVuZGVkL3NoYWRvdy9zaGFkb3dfNC4yLjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvcHJlbGluay9wcmVsaW5rX2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21l
L21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L2x6by9sem9fMi4xMC5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3Jr
L3RtcC9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9hdXRvY29uZi9hdXRvY29uZl8yLjY5LmJi
OmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9y
ZWNpcGVzLWdyYXBoaWNzL3hvcmctdXRpbC91dGlsLW1hY3Jvc18xLjE5LjEuYmI6ZG9fcG9wdWxh
dGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9t
ZXRhL3JlY2lwZXMtZXh0ZW5kZWQvcGl4ei9waXh6XzEuMC42LmJiOmRvX3BvcHVsYXRlX3N5c3Jv
b3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNp
cGVzLWNvcmUvZ2V0dGV4dC9nZXR0ZXh0XzAuMTkuOC4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3Qn
LCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVz
LWNvcmUvZ2xpYi0yLjAvZ2xpYi0yLjBfMi41Mi4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAn
dmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWdy
YXBoaWNzL3hvcmctbGliL2xpYnhyYW5kcl8xLjUuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
J3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1j
b25uZWN0aXZpdHkvb3BlbnNzbC9vcGVuc3NsXzEuMC4ybS5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBl
cy1kZXZ0b29scy9kbmYvZG5mXzIuNi4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUv
bWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWtlcm5lbC9rbW9kL2ttb2RfZ2l0LmJi
OmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsv
dG1wL3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL2xpYnNkbC9saWJzZGxfMS4yLjE1LmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNp
cGVzLWRldnRvb2xzL3BlcmwvcGVybC1uYXRpdmVfNS4yNC4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jv
b3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3F1
aWx0L3F1aWx0LW5hdGl2ZV8wLjY1LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvdWRldi9ldWRldl8zLjIuMi5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3Rt
cC9wb2t5L21ldGEvcmVjaXBlcy1leHRlbmRlZC9wYnppcDIvcGJ6aXAyXzEuMS4xMy5iYjpkb19w
b3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBl
cy1rZXJuZWwva21vZC9kZXBtb2R3cmFwcGVyLWNyb3NzXzEuMC5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L3No
YXJlZC1taW1lLWluZm8vc2hhcmVkLW1pbWUtaW5mb18xLjguYmI6ZG9fcG9wdWxhdGVfc3lzcm9v
dCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lw
ZXMtZGV2dG9vbHMvcHl0aG9uL3B5dGhvbjMtaW5pcGFyc2VfMC40LmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9y
ZWNpcGVzLWRldnRvb2xzL3JwbS9ycG1fZ2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmly
dHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBo
aWNzL3hvcmctcHJvdG8veHByb3RvXzcuMC4zMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3Zp
cnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBw
b3J0L2dkYm0vZ2RibV8xLjEzLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRp
dmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL3hvcmct
bGliL2xpYnB0aHJlYWQtc3R1YnNfMC40LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVh
bDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVk
L2JjL2JjXzEuMDYuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90
bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZmxleC9mbGV4XzIuNi4wLmJiOmRvX3BvcHVs
YXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kv
bWV0YS9yZWNpcGVzLWRldnRvb2xzL2ludGx0b29sL2ludGx0b29sXzAuNTEuMC5iYjpkb19wb3B1
bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1k
ZXZ0b29scy9nZGIvZ2RiLWNyb3NzXzguMC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1
YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGlj
cy94b3JnLWxpYi9waXhtYW5fMC4zNC4wLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUv
bWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvZ21wL2dtcF82LjEuMi5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3Jr
L3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L2xpYmFzc3Vhbi9saWJhc3N1YW5fMi40LjMu
YmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRh
L3JlY2lwZXMtZXh0ZW5kZWQvZGlmZnV0aWxzL2RpZmZ1dGlsc18zLjYuYmI6ZG9fcG9wdWxhdGVf
c3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRh
L3JlY2lwZXMtc3VwcG9ydC9saWJncGctZXJyb3IvbGliZ3BnLWVycm9yXzEuMjcuYmI6ZG9fcG9w
dWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMt
ZXh0ZW5kZWQvYnppcDIvYnppcDJfMS4wLjYuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0
dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9v
bHMvZTJmc3Byb2dzL2UyZnNwcm9nc18xLjQzLjUuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvY3JlYXRlcmVwby1jL2NyZWF0ZXJlcG8tY19naXQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9v
dCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lw
ZXMta2VybmVsL2NyeXB0b2Rldi9jcnlwdG9kZXYtbGludXhfMS45LmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9y
ZWNpcGVzLWdyYXBoaWNzL3hvcmctbGliL2xpYnhjYl8xLjEyLmJiOmRvX3BvcHVsYXRlX3N5c3Jv
b3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3R6
ZGF0YS90emRhdGFfMjAxN2MuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2
ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtY29yZS9leHBhdC9leHBh
dF8yLjIuMy5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9w
b2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L2xpYnBjcmUvbGlicGNyZV84LjQxLmJiOmRvX3BvcHVs
YXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kv
bWV0YS9yZWNpcGVzLWNvcmUvdXRpbC1saW51eC91dGlsLWxpbnV4XzIuMzAuYmI6ZG9fcG9wdWxh
dGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvdW5mczMvdW5mczNfMC45LjIyLnI0OTcuYmI6ZG9fcG9wdWxh
dGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZXh0
ZW5kZWQveHoveHpfNS4yLjMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4v
d29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvbGlidG9vbC9saWJ0b29sLW5hdGl2
ZV8yLjQuNi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9w
b2t5L21ldGEvcmVjaXBlcy1jb3JlL2luaXQtaWZ1cGRvd24vaW5pdC1pZnVwZG93bl8xLjAuYmI6
ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3Jl
Y2lwZXMtY29yZS91dGlsLWxpbnV4L3V0aWwtbGludXhfMi4zMC5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVj
aXBlcy1kZXZ0b29scy9wa2djb25maWcvcGtnY29uZmlnX2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVj
aXBlcy1kZXZ0b29scy9vcGtnL29wa2dfMC4zLjUuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtbXVs
dGltZWRpYS9hbHNhL2Fsc2EtbGliXzEuMS40LjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvcWVtdS9xZW11XzIuMTAuMC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6
bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1leHRlbmRlZC9s
aWJzb2x2L2xpYnNvbHZfMC42LjI4LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvZ2V0dGV4dC9nZXR0ZXh0LW1pbmlt
YWwtbmF0aXZlXzAuMTkuOC4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRp
dmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvZ3BnbWUv
Z3BnbWVfMS45LjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9t
ZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1wcm90by94
ZXh0cHJvdG9fNy4zLjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29y
ay90bXAvcG9reS9tZXRhL3JlY2lwZXMta2VybmVsL2tlcm4tdG9vbHMva2Vybi10b29scy1uYXRp
dmVfZ2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL2N3YXV0b21hY3Jvcy9jd2F1
dG9tYWNyb3NfMjAxMTAyMDEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2
ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1w
cm90by9yZW5kZXJwcm90b18wLjExLjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9t
YXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1jcm9zcy1p
bml0aWFsXzcuMi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21l
L21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1rZXJuZWwvZHRjL2R0Y18xLjQuNC5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEv
cmVjaXBlcy1leHRlbmRlZC9iYy9iY18xLjA2LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hv
bWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvbGlieG1sL2xpYnhtbDJf
Mi45LjQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0
aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtY29yZS96bGliL3psaWJfMS4yLjExLmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1w
L3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL3hvcmctbGliL2xpYngxMV8xLjYuNS5iYjpkb19w
b3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9w
b2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9mbGV4L2ZsZXhfMi42LjAuYmI6ZG9fcG9wdWxhdGVf
c3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtY29yZS9t
ZXRhL21ldGEtZXh0c2RrLXRvb2xjaGFpbi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1
YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGlj
cy94b3JnLXV0aWwvdXRpbC1tYWNyb3NfMS4xOS4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAn
L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvZGIvZGJfNS4z
LjI4LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kv
bWV0YS9yZWNpcGVzLWRldnRvb2xzL3J1bi1wb3N0aW5zdHMvcnVuLXBvc3RpbnN0c18xLjAuYmI6
ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3Jl
Y2lwZXMtZ3JhcGhpY3MveG9yZy1saWIvbGlieGF1XzEuMC44LmJiOmRvX3BvcHVsYXRlX3N5c3Jv
b3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNp
cGVzLWdyYXBoaWNzL3hvcmctdXRpbC9tYWtlZGVwZW5kXzEuMC41LmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9y
ZWNpcGVzLWRldnRvb2xzL3VuaWZkZWYvdW5pZmRlZl8yLjExLmJiOmRvX3BvcHVsYXRlX3N5c3Jv
b3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3Nl
ZC9zZWRfNC4yLjIuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90
bXAvcG9reS9tZXRhL3JlY2lwZXMtc3VwcG9ydC9hdHRyL2F0dHJfMi40LjQ3LmJiOmRvX3BvcHVs
YXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kv
bWV0YS9yZWNpcGVzLWNvcmUvbmN1cnNlcy9uY3Vyc2VzXzYuMCsyMDE3MDcxNS5iYjpkb19wb3B1
bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1r
ZXJuZWwvY3J5cHRvZGV2L2NyeXB0b2Rldi1saW51eF8xLjkuYmI6ZG9fcG9wdWxhdGVfc3lzcm9v
dCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lw
ZXMtZ25vbWUvZ29iamVjdC1pbnRyb3NwZWN0aW9uL2dvYmplY3QtaW50cm9zcGVjdGlvbl8xLjUy
LjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9t
ZXRhL3JlY2lwZXMtY29yZS91cGRhdGUtcmMuZC91cGRhdGUtcmMuZF8wLjcuYmI6ZG9fcG9wdWxh
dGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZXh0
ZW5kZWQvd2hpY2gvd2hpY2hfMi4yMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6
bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L25z
cy9uc3NfMy4zMS4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hv
bWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvbHpvL2x6b18yLjEw
LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0
YS9yZWNpcGVzLWNvcmUvbmN1cnNlcy9uY3Vyc2VzXzYuMCsyMDE3MDcxNS5iYjpkb19wb3B1bGF0
ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1rZXJu
ZWwva21vZC9rbW9kLW5hdGl2ZV9naXQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9t
YXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvc2hhZG93L3NoYWRvdy1z
ZWN1cmV0dHlfNC4yLjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29y
ay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvYmludXRpbHMvYmludXRpbHMtY3Jvc3Nf
Mi4yOS4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bv
a3kvbWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvZ2xpYmNfMi4yNi5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2NvcmV1
dGlscy9jb3JldXRpbHNfOC4yNy5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRp
bi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL3N5c3Zpbml0L3N5c3Zpbml0XzIuODhk
c2YuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvcGVybC9wZXJsXzUuMjQuMS5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVj
aXBlcy1zdXBwb3J0L2F0dHIvYXR0cl8yLjQuNDcuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2
aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvcHNldWRvL3BzZXVkb18xLjguMi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21l
L21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLXByb3RvL3hw
cm90b183LjAuMzEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9t
ZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvYmlzb24vYmlzb25f
My4wLjQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9r
eS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1saWIvbGlieGRtY3BfMS4xLjIuYmI6ZG9fcG9w
dWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9r
eS9tZXRhL3JlY2lwZXMtc3VwcG9ydC9kYi9kYl81LjMuMjguYmI6ZG9fcG9wdWxhdGVfc3lzcm9v
dCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMta2VybmVsL2xpbnV4
LWxpYmMtaGVhZGVycy9saW51eC1saWJjLWhlYWRlcnNfNC4xMi5iYjpkb19wb3B1bGF0ZV9zeXNy
b290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVj
aXBlcy1kZXZ0b29scy9wZXJsL2xpYnhtbC1wYXJzZXItcGVybF8yLjQ0LmJiOmRvX3BvcHVsYXRl
X3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0
YS9yZWNpcGVzLWV4dGVuZGVkL2dwZXJmL2dwZXJmXzMuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9xZW11
L3FlbXV3cmFwcGVyLWNyb3NzXzEuMC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21h
cnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLWxpYi9saWJzbV8x
LjIuMi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5
L21ldGEvcmVjaXBlcy1kZXZ0b29scy9saWJ0b29sL2xpYnRvb2wtY3Jvc3NfMi40LjYuYmI6ZG9f
cG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lw
ZXMtZXh0ZW5kZWQvc2hhZG93L3NoYWRvdy1zeXNyb290XzQuMi4xLmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvc3lz
dmluaXQvc3lzdmluaXQtaW5pdHRhYl8yLjg4ZHNmLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAn
L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3B5dGhvbi9w
eXRob24zXzMuNS4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hv
bWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2xpYmRuZi9saWJk
bmZfMC45LjMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9t
YXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvdW56aXAvdW56aXBfNi4w
LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dv
cmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL2J6aXAyL2J6aXAyXzEuMC42LmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1w
L3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL3hvcmctbGliL2xpYnhhdV8xLjAuOC5iYjpkb19w
b3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBl
cy1kZXZ0b29scy9vcGtnLXV0aWxzL29wa2ctdXRpbHNfMC4zLjUuYmI6ZG9fcG9wdWxhdGVfc3lz
cm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3Jl
Y2lwZXMtc3VwcG9ydC9jdXJsL2N1cmxfNy41NC4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAn
L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvbGRjb25m
aWctbmF0aXZlXzIuMTIuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZl
Oi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L21wZnIvbXBm
cl8zLjEuNS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9w
b2t5L21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLXByb3RvL3hjYi1wcm90b18xLjEyLmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNp
cGVzLWV4dGVuZGVkL3R6Y29kZS90emNvZGUtbmF0aXZlXzIwMTdjLmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNz
L3hvcmctbGliL3h0cmFuc18xLjMuNS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21h
cnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2dsaWJjLWxvY2FsZV8y
LjI2LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kv
bWV0YS9yZWNpcGVzLWNvcmUvaW5pdHNjcmlwdHMvaW5pdHNjcmlwdHNfMS4wLmJiOmRvX3BvcHVs
YXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWNv
cmUvYmFzZS1maWxlcy9iYXNlLWZpbGVzXzMuMC4xNC5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
Jy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2dsaWJj
LWluaXRpYWxfMi4yNi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3Jr
L3RtcC9wb2t5L21ldGEvcmVjaXBlcy1zdXBwb3J0L3NxbGl0ZS9zcWxpdGUzXzMuMjAuMC5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3Rt
cC9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9zd2lnL3N3aWdfMy4wLjEyLmJiOmRvX3BvcHVs
YXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kv
bWV0YS9yZWNpcGVzLXN1cHBvcnQvZ21wL2dtcF82LjEuMi5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBl
cy1ncmFwaGljcy94b3JnLXByb3RvL3JhbmRycHJvdG9fMS41LjAuYmI6ZG9fcG9wdWxhdGVfc3lz
cm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtY29yZS9uZXRi
YXNlL25ldGJhc2VfNS40LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6
L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3B5dGhvbi9w
eXRob24zLXNldHVwdG9vbHNfMzYuMi43LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUv
bWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL3hvcmctbGliL2xpYnhj
Yl8xLjEyLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL29wa2ctdXRpbHMvb3BrZy11
dGlsc18wLjMuNS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21l
L21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL2RidXMvZGJ1c18xLjEwLjIw
LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0
YS9yZWNpcGVzLWNvcmUvZ2xpYi0yLjAvZ2xpYi0yLjBfMi41Mi4zLmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9y
ZWNpcGVzLWdyYXBoaWNzL3hvcmctbGliL2xpYnhyZW5kZXJfMC45LjEwLmJiOmRvX3BvcHVsYXRl
X3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRv
b2xzL21ha2UvbWFrZV80LjIuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRp
bi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1ic3Avdjg2ZC92ODZkXzAuMS4xMC5iYjpkb19w
b3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9w
b2t5L21ldGEvcmVjaXBlcy1leHRlbmRlZC9saWJhcmNoaXZlL2xpYmFyY2hpdmVfMy4zLjIuYmI6
ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3Jl
Y2lwZXMtZGV2dG9vbHMvY21ha2UvY21ha2UtbmF0aXZlXzMuOC4yLmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQv
Z2RibS9nZGJtXzEuMTMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTov
aG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtY29yZS9yZWFkbGluZS9yZWFk
bGluZV83LjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAv
cG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1ydW50aW1lXzcuMi5iYjpkb19wb3B1
bGF0ZV9zeXNyb290JywgJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBlcy1j
b3JlL2V4cGF0L2V4cGF0XzIuMi4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFy
dGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2djYy9nY2MtY3Jvc3NfNy4y
LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0
YS9yZWNpcGVzLWV4dGVuZGVkL2dhd2svZ2F3a180LjEuNC5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvcmVjaXBl
cy1kZXZ0b29scy9saWJjb21wcy9saWJjb21wc19naXQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcs
ICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9tZXRhL3JlY2lwZXMtZ3JhcGhpY3MveG9yZy1s
aWIvbGliaWNlXzEuMC45LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6
L2hvbWUvbWFydGluL3dvcmsvdG1wL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvbGlieHNsdC9s
aWJ4c2x0XzEuMS4yOS5iYjpkb19wb3B1bGF0ZV9zeXNyb290J10KTk9URTogU2tpcHBpbmcgaW5p
dGlhbCBzZXRzY2VuZSBkZXBlbmRlbmN5IGxpYmdjYy1pbml0aWFsIGZvciBpbnN0YWxsYXRpb24g
aW50byB0aGUgc3lzcm9vdApOT1RFOiBTa2lwcGluZyBpbml0aWFsIHNldHNjZW5lIGRlcGVuZGVu
Y3kgZ2xpYmMtaW5pdGlhbCBmb3IgaW5zdGFsbGF0aW9uIGludG8gdGhlIHN5c3Jvb3QKTk9URTog
SW5zdGFsbGVkIGludG8gc3lzcm9vdDogWydwaXh6LW5hdGl2ZScsICdkZWJpYW51dGlscy1uYXRp
dmUnXQpOT1RFOiBTa2lwcGluZyBhcyBhbHJlYWR5IGV4aXN0cyBpbiBzeXNyb290OiBbJ2FjbCcs
ICdsem9wLW5hdGl2ZScsICdxZW11LWhlbHBlci1uYXRpdmUnLCAnbnNwci1uYXRpdmUnLCAneHot
bmF0aXZlJywgJ2d0ay1kb2MtbmF0aXZlJywgJ3NoYWRvdy1uYXRpdmUnLCAndXBkYXRlLXJjLmQt
bmF0aXZlJywgJ2RidXMnLCAnZWxmdXRpbHMtbmF0aXZlJywgJ200JywgJ3NxbGl0ZTMtbmF0aXZl
JywgJ2J1c3lib3gnLCAnbGlicGNyZS1uYXRpdmUnLCAnYXV0b21ha2UtbmF0aXZlJywgJ2lucHV0
cHJvdG8tbmF0aXZlJywgJ3B5dGhvbjMtbmF0aXZlJywgJ29wZW5zc2wnLCAnZTJmc3Byb2dzJywg
J3psaWInLCAnbGlieGV4dC1uYXRpdmUnLCAna2Jwcm90by1uYXRpdmUnLCAnYmFzZS1wYXNzd2Qn
LCAnYmludXRpbHMtbmF0aXZlJywgJ3BvcHQtbmF0aXZlJywgJ2xpYm1wYy1uYXRpdmUnLCAnbGli
Z2NjJywgJ2xpYnB0aHJlYWQtc3R1YnMnLCAnbGlieGRtY3AtbmF0aXZlJywgJ2xpYnBuZy1uYXRp
dmUnLCAnbGliY2FwJywgJ2lucHV0cHJvdG8nLCAnZGJ1cy10ZXN0JywgJ2xpYngxMScsICdsaWJj
aGVjay1uYXRpdmUnLCAnY3Jvc3MtbG9jYWxlZGVmLW5hdGl2ZScsICdnbm9tZS1kZXNrdG9wLXRl
c3RpbmcnLCAncHRlc3QtcnVubmVyJywgJ2xpYnJlcG8tbmF0aXZlJywgJ21vZHV0aWxzLWluaXRz
Y3JpcHRzJywgJ3B5dGhvbjMtc2l4LW5hdGl2ZScsICdmaWxlLW5hdGl2ZScsICdyZWFkbGluZScs
ICdtYWtlZGV2cy1uYXRpdmUnLCAnbWtsaWJzLW5hdGl2ZScsICdtNC1uYXRpdmUnLCAneHRyYW5z
LW5hdGl2ZScsICd4ZXh0cHJvdG8nLCAna2Jwcm90bycsICd0ZXhpbmZvLWR1bW15LW5hdGl2ZScs
ICdiYXNoLWNvbXBsZXRpb24nLCAnbGludXgteW9jdG8nLCAnZ3JlcCcsICdwcm9jcHMnLCAnYmFz
aCcsICdwaWd6LW5hdGl2ZScsICdzaGFyZWQtbWltZS1pbmZvLW5hdGl2ZScsICdidHJmcy10b29s
cycsICd4Y2ItcHJvdG8tbmF0aXZlJywgJ2xpYmZmaScsICdnbnUtY29uZmlnLW5hdGl2ZScsICds
aWJmZmktbmF0aXZlJywgJ2xpYnhtbDItbmF0aXZlJywgJ3NoYWRvdycsICdwcmVsaW5rLW5hdGl2
ZScsICdsem8nLCAnYXV0b2NvbmYtbmF0aXZlJywgJ3V0aWwtbWFjcm9zJywgJ2dldHRleHQtbmF0
aXZlJywgJ2dsaWItMi4wLW5hdGl2ZScsICdsaWJ4cmFuZHItbmF0aXZlJywgJ29wZW5zc2wtbmF0
aXZlJywgJ2RuZi1uYXRpdmUnLCAna21vZCcsICdsaWJzZGwtbmF0aXZlJywgJ3BlcmwtbmF0aXZl
JywgJ3F1aWx0LW5hdGl2ZScsICdldWRldicsICdwYnppcDItbmF0aXZlJywgJ2RlcG1vZHdyYXBw
ZXItY3Jvc3MnLCAnc2hhcmVkLW1pbWUtaW5mbycsICdweXRob24zLWluaXBhcnNlLW5hdGl2ZScs
ICdycG0tbmF0aXZlJywgJ3hwcm90by1uYXRpdmUnLCAnZ2RibS1uYXRpdmUnLCAnbGlicHRocmVh
ZC1zdHVicy1uYXRpdmUnLCAnYmMtbmF0aXZlJywgJ2ZsZXgnLCAnaW50bHRvb2wtbmF0aXZlJywg
J2dkYi1jcm9zcy1pNTg2JywgJ3BpeG1hbi1uYXRpdmUnLCAnZ21wJywgJ2xpYmFzc3Vhbi1uYXRp
dmUnLCAnZGlmZnV0aWxzJywgJ2xpYmdwZy1lcnJvci1uYXRpdmUnLCAnYnppcDInLCAnZTJmc3By
b2dzLW5hdGl2ZScsICdjcmVhdGVyZXBvLWMtbmF0aXZlJywgJ2NyeXB0b2Rldi1saW51eC1uYXRp
dmUnLCAnbGlieGNiLW5hdGl2ZScsICd0emRhdGEnLCAnZXhwYXQtbmF0aXZlJywgJ2xpYnBjcmUn
LCAndXRpbC1saW51eC1uYXRpdmUnLCAndW5mczMtbmF0aXZlJywgJ3h6JywgJ2xpYnRvb2wtbmF0
aXZlJywgJ2luaXQtaWZ1cGRvd24nLCAndXRpbC1saW51eCcsICdwa2djb25maWctbmF0aXZlJywg
J29wa2ctbmF0aXZlJywgJ2Fsc2EtbGliLW5hdGl2ZScsICdxZW11LW5hdGl2ZScsICdsaWJzb2x2
LW5hdGl2ZScsICdnZXR0ZXh0LW1pbmltYWwtbmF0aXZlJywgJ2dwZ21lLW5hdGl2ZScsICd4ZXh0
cHJvdG8tbmF0aXZlJywgJ2tlcm4tdG9vbHMtbmF0aXZlJywgJ2N3YXV0b21hY3Jvcy1uYXRpdmUn
LCAncmVuZGVycHJvdG8tbmF0aXZlJywgJ2djYy1jcm9zcy1pbml0aWFsLWk1ODYnLCAnZHRjLW5h
dGl2ZScsICdiYycsICdsaWJ4bWwyJywgJ3psaWItbmF0aXZlJywgJ2xpYngxMS1uYXRpdmUnLCAn
ZmxleC1uYXRpdmUnLCAnbWV0YS1leHRzZGstdG9vbGNoYWluJywgJ3V0aWwtbWFjcm9zLW5hdGl2
ZScsICdkYicsICdydW4tcG9zdGluc3RzJywgJ2xpYnhhdScsICdtYWtlZGVwZW5kLW5hdGl2ZScs
ICd1bmlmZGVmLW5hdGl2ZScsICdzZWQnLCAnYXR0cicsICduY3Vyc2VzLW5hdGl2ZScsICdjcnlw
dG9kZXYtbGludXgnLCAnZ29iamVjdC1pbnRyb3NwZWN0aW9uLW5hdGl2ZScsICd1cGRhdGUtcmMu
ZCcsICd3aGljaCcsICduc3MtbmF0aXZlJywgJ2x6by1uYXRpdmUnLCAnbmN1cnNlcycsICdrbW9k
LW5hdGl2ZScsICdzaGFkb3ctc2VjdXJldHR5JywgJ2JpbnV0aWxzLWNyb3NzLWk1ODYnLCAnZ2xp
YmMnLCAnY29yZXV0aWxzJywgJ3N5c3Zpbml0JywgJ3BlcmwnLCAnYXR0ci1uYXRpdmUnLCAncHNl
dWRvLW5hdGl2ZScsICd4cHJvdG8nLCAnYmlzb24tbmF0aXZlJywgJ2xpYnhkbWNwJywgJ2RiLW5h
dGl2ZScsICdsaW51eC1saWJjLWhlYWRlcnMnLCAnbGlieG1sLXBhcnNlci1wZXJsLW5hdGl2ZScs
ICdncGVyZi1uYXRpdmUnLCAncWVtdXdyYXBwZXItY3Jvc3MnLCAnbGlic20nLCAnbGlidG9vbC1j
cm9zcycsICdzaGFkb3ctc3lzcm9vdCcsICdzeXN2aW5pdC1pbml0dGFiJywgJ3B5dGhvbjMnLCAn
bGliZG5mLW5hdGl2ZScsICd1bnppcC1uYXRpdmUnLCAnYnppcDItbmF0aXZlJywgJ2xpYnhhdS1u
YXRpdmUnLCAnb3BrZy11dGlscycsICdjdXJsLW5hdGl2ZScsICdsZGNvbmZpZy1uYXRpdmUnLCAn
bXBmci1uYXRpdmUnLCAneGNiLXByb3RvJywgJ3R6Y29kZS1uYXRpdmUnLCAneHRyYW5zJywgJ2ds
aWJjLWxvY2FsZScsICdpbml0c2NyaXB0cycsICdiYXNlLWZpbGVzJywgJ3NxbGl0ZTMnLCAnc3dp
Zy1uYXRpdmUnLCAnZ21wLW5hdGl2ZScsICdyYW5kcnByb3RvLW5hdGl2ZScsICduZXRiYXNlJywg
J3B5dGhvbjMtc2V0dXB0b29scy1uYXRpdmUnLCAnbGlieGNiJywgJ29wa2ctdXRpbHMtbmF0aXZl
JywgJ2RidXMtbmF0aXZlJywgJ2dsaWItMi4wJywgJ2xpYnhyZW5kZXItbmF0aXZlJywgJ21ha2Un
LCAndjg2ZCcsICdsaWJhcmNoaXZlLW5hdGl2ZScsICdjbWFrZS1uYXRpdmUnLCAnZ2RibScsICdy
ZWFkbGluZS1uYXRpdmUnLCAnZ2NjLXJ1bnRpbWUnLCAnZXhwYXQnLCAnZ2NjLWNyb3NzLWk1ODYn
LCAnZ2F3aycsICdsaWJjb21wcy1uYXRpdmUnLCAnbGliaWNlJywgJ2xpYnhzbHQtbmF0aXZlJ10K
REVCVUc6IFB5dGhvbiBmdW5jdGlvbiBleHRlbmRfcmVjaXBlX3N5c3Jvb3QgZmluaXNoZWQKREVC
VUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZG9fcG9wdWxhdGVfc2RrX2V4dApOT1RFOiBJ
bnN0YWxsaW5nIFRBUkdFVCBwYWNrYWdlcwpOT1RFOiBFeGVjdXRpbmcgJy9ob21lL21hcnRpbi93
b3JrL3RtcC9idWlsZC90bXAvd29yay9xZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS1taW5p
bWFsLzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9jcmVhdGVyZXBvX2MgLS11
cGRhdGUgLXEgL2hvbWUvbWFydGluL3dvcmsvdG1wL2J1aWxkL3RtcC93b3JrL3FlbXV4ODYtcG9r
eS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL29lLXNkay1leHQtcmVwbycgLi4uCk5P
VEU6IEFkZGVkIG9lLXJlcG8gcmVwbyBmcm9tIC9ob21lL21hcnRpbi93b3JrL3RtcC9idWlsZC90
bXAvd29yay9xZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9vZS1z
ZGstZXh0LXJlcG8Kb2UtcmVwbyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDUzIE1CL3MgfCAxLjYgTUIgICAgIDAwOjAwICAgIApMYXN0IG1ldGFkYXRhIGV4cGlyYXRp
b24gY2hlY2s6IDA6MDA6MDIgYWdvIG9uIFR1ZSAyMyBKYW4gMjAxOCAwNzo0MDozNiBQTSBVVEMu
Ck1ldGFkYXRhIGNhY2hlIGNyZWF0ZWQuCgpOT1RFOiBJbnN0YWxsaW5nIGNvbXBsZW1lbnRhcnkg
cGFja2FnZXMgLi4uCk5PVEU6IFJ1bm5pbmcgWycvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9z
Y3JpcHRzL29lLXBrZ2RhdGEtdXRpbCcsICctcCcsICcvaG9tZS9tYXJ0aW4vd29yay90bXAvYnVp
bGQvdG1wL3BrZ2RhdGEvcWVtdXg4NicsICdnbG9iJywgJy90bXAvaW5zdGFsbGVkLXBrZ3NxYnl2
azJraicsICcqLWRldiAqLWRiZyddCk5PVEU6IEV4ZWN1dGluZyByb290ZnNfc3lzcm9vdF9yZWxh
dGl2ZWxpbmtzIC4uLgpERUJVRzogRXhlY3V0aW5nIHNoZWxsIGZ1bmN0aW9uIHJvb3Rmc19zeXNy
b290X3JlbGF0aXZlbGlua3MKREVCVUc6IFNoZWxsIGZ1bmN0aW9uIHJvb3Rmc19zeXNyb290X3Jl
bGF0aXZlbGlua3MgZmluaXNoZWQKTk9URTogRXhlY3V0aW5nIHdyaXRlX3Nka190ZXN0X2RhdGEg
Li4uCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIHdyaXRlX3Nka190ZXN0X2RhdGEK
REVCVUc6IFB5dGhvbiBmdW5jdGlvbiB3cml0ZV9zZGtfdGVzdF9kYXRhIGZpbmlzaGVkCk5PVEU6
IEFkZGVkIG9lLXJlcG8gcmVwbyBmcm9tIC9ob21lL21hcnRpbi93b3JrL3RtcC9idWlsZC90bXAv
d29yay9xZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9vZS1zZGst
ZXh0LXJlcG8KNSBmaWxlcyByZW1vdmVkCgpOT1RFOiBJbnN0YWxsaW5nIE5BVElWRVNESyBwYWNr
YWdlcwpOT1RFOiBFeGVjdXRpbmcgJy9ob21lL21hcnRpbi93b3JrL3RtcC9idWlsZC90bXAvd29y
ay9xZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9yZWNpcGUtc3lz
cm9vdC1uYXRpdmUvdXNyL2Jpbi9jcmVhdGVyZXBvX2MgLS11cGRhdGUgLXEgL2hvbWUvbWFydGlu
L3dvcmsvdG1wL2J1aWxkL3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLW1p
bmltYWwvMS4wLXIwL29lLXNkay1leHQtcmVwbycgLi4uCk5PVEU6IEFkZGVkIG9lLXJlcG8gcmVw
byBmcm9tIC9ob21lL21hcnRpbi93b3JrL3RtcC9idWlsZC90bXAvd29yay9xZW11eDg2LXBva3kt
bGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9vZS1zZGstZXh0LXJlcG8Kb2UtcmVwbyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQ2IE1CL3MgfCAxLjYgTUIg
ICAgIDAwOjAwICAgIApMYXN0IG1ldGFkYXRhIGV4cGlyYXRpb24gY2hlY2s6IDA6MDA6MDEgYWdv
IG9uIFR1ZSAyMyBKYW4gMjAxOCAwNzo0MDo1NSBQTSBVVEMuCk1ldGFkYXRhIGNhY2hlIGNyZWF0
ZWQuCgpOT1RFOiBBZGRlZCBvZS1yZXBvIHJlcG8gZnJvbSAvaG9tZS9tYXJ0aW4vd29yay90bXAv
YnVpbGQvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAt
cjAvb2Utc2RrLWV4dC1yZXBvCkxhc3QgbWV0YWRhdGEgZXhwaXJhdGlvbiBjaGVjazogMDowMDow
MyBhZ28gb24gVHVlIDIzIEphbiAyMDE4IDA3OjQwOjU1IFBNIFVUQy4KRGVwZW5kZW5jaWVzIHJl
c29sdmVkLgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQogUGFja2FnZSAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEFyY2ggICAgICAgICAgICAgICBWZXJzaW9uICAgUmVwb3NpdG9yeQogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBTaXplCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Ckluc3RhbGxpbmc6CiBtZXRh
LWVudmlyb25tZW50LWV4dHNkay1xZW11eDg2ICAgeDg2XzY0X25hdGl2ZXNkayAgIDEuMC1yOCAg
ICBvZS1yZXBvICAgIDExIGsKClRyYW5zYWN0aW9uIFN1bW1hcnkKPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KSW5zdGFsbCAgMSBQYWNrYWdlCgpUb3RhbCBzaXplOiAxMSBrCkluc3RhbGxlZCBzaXpl
OiAxNyBrCkRvd25sb2FkaW5nIFBhY2thZ2VzOgpSdW5uaW5nIHRyYW5zYWN0aW9uIGNoZWNrClRy
YW5zYWN0aW9uIGNoZWNrIHN1Y2NlZWRlZC4KUnVubmluZyB0cmFuc2FjdGlvbiB0ZXN0ClRyYW5z
YWN0aW9uIHRlc3Qgc3VjY2VlZGVkLgpSdW5uaW5nIHRyYW5zYWN0aW9uCiAgUHJlcGFyaW5nICAg
ICAgICA6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAxLzEgCiAgSW5zdGFsbGluZyAgICAgICA6IG1ldGEtZW52aXJvbm1lbnQtZXh0c2RrLXFl
bXV4ODYtMS4wLXI4Lng4Nl82NF9uYXRpdmUgICAxLzEgCiAgVmVyaWZ5aW5nICAgICAgICA6IG1l
dGEtZW52aXJvbm1lbnQtZXh0c2RrLXFlbXV4ODYtMS4wLXI4Lng4Nl82NF9uYXRpdmUgICAxLzEg
CgpJbnN0YWxsZWQ6CiAgbWV0YS1lbnZpcm9ubWVudC1leHRzZGstcWVtdXg4Ni54ODZfNjRfbmF0
aXZlc2RrIDEuMC1yOCAgICAgICAgICAgICAgICAgICAgICAgCgpDb21wbGV0ZSEKCk5PVEU6IEFk
ZGVkIG9lLXJlcG8gcmVwbyBmcm9tIC9ob21lL21hcnRpbi93b3JrL3RtcC9idWlsZC90bXAvd29y
ay9xZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9vZS1zZGstZXh0
LXJlcG8KNSBmaWxlcyByZW1vdmVkCgpOT1RFOiBFeGVjdXRpbmcgY29weV9idWlsZHN5c3RlbSAu
Li4KREVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gY29weV9idWlsZHN5c3RlbQpOT1RF
OiBHZW5lcmF0aW5nIHNzdGF0ZSB0YXNrIGxpc3QuLi4KRVJST1I6IEVycm9yIGV4ZWN1dGluZyBh
IHB5dGhvbiBmdW5jdGlvbiBpbiBleGVjX3B5dGhvbl9mdW5jKCkgYXV0b2dlbmVyYXRlZDoKClRo
ZSBzdGFjayB0cmFjZSBvZiBweXRob24gY2FsbHMgdGhhdCByZXN1bHRlZCBpbiB0aGlzIGV4Y2Vw
dGlvbi9mYWlsdXJlIHdhczoKRmlsZTogJ2V4ZWNfcHl0aG9uX2Z1bmMoKSBhdXRvZ2VuZXJhdGVk
JywgbGluZW5vOiAyLCBmdW5jdGlvbjogPG1vZHVsZT4KICAgICAwMDAxOgogKioqIDAwMDI6Y29w
eV9idWlsZHN5c3RlbShkKQogICAgIDAwMDM6CkZpbGU6ICcvaG9tZS9tYXJ0aW4vd29yay90bXAv
cG9reS9tZXRhL2NsYXNzZXMvcG9wdWxhdGVfc2RrX2V4dC5iYmNsYXNzJywgbGluZW5vOiA0MjIs
IGZ1bmN0aW9uOiBjb3B5X2J1aWxkc3lzdGVtCiAgICAgMDQxODogICAgc2RrX2V4dF90eXBlID0g
ZC5nZXRWYXIoJ1NES19FWFRfVFlQRScpCiAgICAgMDQxOTogICAgaWYgc2RrX2V4dF90eXBlICE9
ICdtaW5pbWFsJyBvciBzZGtfaW5jbHVkZV90b29sY2hhaW4gb3IgZGVyaXZhdGl2ZToKICAgICAw
NDIwOiAgICAgICAgIyBDcmVhdGUgdGhlIGZpbHRlcmVkIHRhc2sgbGlzdCB1c2VkIHRvIGdlbmVy
YXRlIHRoZSBzc3RhdGUgY2FjaGUgc2hpcHBlZCB3aXRoIHRoZSBTREsKICAgICAwNDIxOiAgICAg
ICAgdGFza2xpc3RmbiA9IGQuZ2V0VmFyKCdXT1JLRElSJykgKyAnL3Rhc2tsaXN0LnR4dCcKICoq
KiAwNDIyOiAgICAgICAgY3JlYXRlX2ZpbHRlcmVkX3Rhc2tsaXN0KGQsIGJhc2VvdXRwYXRoLCB0
YXNrbGlzdGZuLCBjb25mX2luaXRwYXRoKQogICAgIDA0MjM6ICAgIGVsc2U6CiAgICAgMDQyNDog
ICAgICAgIHRhc2tsaXN0Zm4gPSBOb25lCiAgICAgMDQyNToKICAgICAwNDI2OiAgICAjIEFkZCBw
YWNrYWdlZGF0YSBpZiBlbmFibGVkCkZpbGU6ICcvaG9tZS9tYXJ0aW4vd29yay90bXAvcG9reS9t
ZXRhL2NsYXNzZXMvcG9wdWxhdGVfc2RrX2V4dC5iYmNsYXNzJywgbGluZW5vOiAxNjksIGZ1bmN0
aW9uOiBjcmVhdGVfZmlsdGVyZWRfdGFza2xpc3QKICAgICAwMTY1OiAgICAgICAgdHJ5OgogICAg
IDAxNjY6ICAgICAgICAgICAgY21kcHJlZml4ID0gJy4gJXMgLjsgJyAlIGNvbmZfaW5pdHBhdGgK
ICAgICAwMTY3OiAgICAgICAgICAgIGxvZ2ZpbGUgPSBkLmdldFZhcignV09SS0RJUicpICsgJy90
YXNrbGlzdF9iYl9sb2cudHh0JwogICAgIDAxNjg6ICAgICAgICAgICAgdHJ5OgogKioqIDAxNjk6
ICAgICAgICAgICAgICAgIG9lLmNvcHlfYnVpbGRzeXN0ZW0uY2hlY2tfc3N0YXRlX3Rhc2tfbGlz
dChkLCBnZXRfc2RrX2luc3RhbGxfdGFyZ2V0cyhkKSwgdGFza2xpc3RmaWxlLCBjbWRwcmVmaXg9
Y21kcHJlZml4LCBjd2Q9dGVtcF9zZGtiYXNlcGF0aCwgbG9nZmlsZT1sb2dmaWxlKQogICAgIDAx
NzA6ICAgICAgICAgICAgZXhjZXB0IGJiLnByb2Nlc3MuRXhlY3V0aW9uRXJyb3IgYXMgZToKICAg
ICAwMTcxOiAgICAgICAgICAgICAgICBtc2cgPSAnRmFpbGVkIHRvIGdlbmVyYXRlIGZpbHRlcmVk
IHRhc2sgbGlzdCBmb3IgZXh0ZW5zaWJsZSBTREs6XG4lcycgJSAgZS5zdGRvdXQucnN0cmlwKCkK
ICAgICAwMTcyOiAgICAgICAgICAgICAgICBpZiAnYXR0ZW1wdGVkIHRvIGV4ZWN1dGUgdW5leHBl
Y3RlZGx5IGFuZCBzaG91bGQgaGF2ZSBiZWVuIHNldHNjZW5lZCcgaW4gZS5zdGRvdXQ6CiAgICAg
MDE3MzogICAgICAgICAgICAgICAgICAgIG1zZyArPSAnXG4tLS0tLS0tLS0tXG5cbk5PVEU6ICJh
dHRlbXB0ZWQgdG8gZXhlY3V0ZSB1bmV4cGVjdGVkbHkgYW5kIHNob3VsZCBoYXZlIGJlZW4gc2V0
c2NlbmVkIiBlcnJvcnMgaW5kaWNhdGUgdGhpcyBtYXkgYmUgY2F1c2VkIGJ5IG1pc3Npbmcgc3N0
YXRlIGFydGlmYWN0cyB0aGF0IHdlcmUgbGlrZWx5IHByb2R1Y2VkIGluIGVhcmxpZXIgYnVpbGRz
LCBidXQgaGF2ZSBiZWVuIHN1YnNlcXVlbnRseSBkZWxldGVkIGZvciBzb21lIHJlYXNvbi5cbicK
RmlsZTogJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L21ldGEvbGliL29lL2NvcHlfYnVpbGRz
eXN0ZW0ucHknLCBsaW5lbm86IDI1NywgZnVuY3Rpb246IGNoZWNrX3NzdGF0ZV90YXNrX2xpc3QK
ICAgICAwMjUzOiAgICAgICAgbG9ncGFyYW0gPSAnLWwgJXMnICUgbG9nZmlsZQogICAgIDAyNTQ6
ICAgIGVsc2U6CiAgICAgMDI1NTogICAgICAgIGxvZ3BhcmFtID0gJycKICAgICAwMjU2OiAgICBj
bWQgPSAiJXNCQl9TRVRTQ0VORV9FTkZPUkNFPTEgUFNFVURPX0RJU0FCTEVEPTEgb2UtY2hlY2st
c3N0YXRlICVzIC1zIC1vICVzICVzIiAlIChjbWRwcmVmaXgsIHRhcmdldHMsIGZpbHRlcm91dGZp
bGUsIGxvZ3BhcmFtKQogKioqIDAyNTc6ICAgIGVudiA9IGRpY3QoZC5nZXRWYXIoJ0JCX09SSUdF
TlYnLCBGYWxzZSkpCiAgICAgMDI1ODogICAgZW52LnBvcCgnQlVJTERESVInLCAnJykKICAgICAw
MjU5OiAgICBlbnYucG9wKCdCQlBBVEgnLCAnJykKICAgICAwMjYwOiAgICBwYXRoaXRlbXMgPSBl
bnZbJ1BBVEgnXS5zcGxpdCgnOicpCiAgICAgMDI2MTogICAgZW52WydQQVRIJ10gPSAnOicuam9p
bihbaXRlbSBmb3IgaXRlbSBpbiBwYXRoaXRlbXMgaWYgbm90IGl0ZW0uZW5kc3dpdGgoJy9iaXRi
YWtlL2JpbicpXSkKRmlsZTogJy9ob21lL21hcnRpbi93b3JrL3RtcC9wb2t5L2JpdGJha2UvbGli
L2JiL2RhdGFfc21hcnQucHknLCBsaW5lbm86IDk5NSwgZnVuY3Rpb246IF9fZ2V0aXRlbV9fCiAg
ICAgMDk5MToKICAgICAwOTkyOiAgICBkZWYgX19nZXRpdGVtX18oc2VsZiwgaXRlbSk6CiAgICAg
MDk5MzogICAgICAgIHZhbHVlID0gc2VsZi5nZXRWYXIoaXRlbSwgRmFsc2UpCiAgICAgMDk5NDog
ICAgICAgIGlmIHZhbHVlIGlzIE5vbmU6CiAqKiogMDk5NTogICAgICAgICAgICByYWlzZSBLZXlF
cnJvcihpdGVtKQogICAgIDA5OTY6ICAgICAgICBlbHNlOgogICAgIDA5OTc6ICAgICAgICAgICAg
cmV0dXJuIHZhbHVlCiAgICAgMDk5ODoKICAgICAwOTk5OiAgICBkZWYgX19zZXRpdGVtX18oc2Vs
ZiwgdmFyLCB2YWx1ZSk6CkV4Y2VwdGlvbjogS2V5RXJyb3I6ICdnYV9hdXRvJwoKREVCVUc6IFB5
dGhvbiBmdW5jdGlvbiBjb3B5X2J1aWxkc3lzdGVtIGZpbmlzaGVkCkRFQlVHOiBQeXRob24gZnVu
Y3Rpb24gZG9fcG9wdWxhdGVfc2RrX2V4dCBmaW5pc2hlZApFUlJPUjogRnVuY3Rpb24gZmFpbGVk
OiBjb3B5X2J1aWxkc3lzdGVtCg==

--_004_HE1PR0402MB33235F011871698406B5CB4FC4E20HE1PR0402MB3323_--
