Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE116E00E83; Wed, 11 Jul 2018 05:32:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1074 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Jul 2018 05:32:25 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0044.outbound.protection.outlook.com [104.47.101.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0438CE00E65
	for <poky@yoctoproject.org>; Wed, 11 Jul 2018 05:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=39d2c3l3E5nRLws8UTm77gVmEtzCjXaQFogIHIsSNI0=;
	b=p41HHaGOy04rGiI2k1cI/UExjgdo54LNanq6ml22qBXhvgm5zyh1Z6XuTeAkYk5emb8Zxv0UMbxfiS5eq9jv1ipH8D4i9k2pI7lKTKd5B3FfjQB/q+mRDvjP3xcN6R610Q2CoEu20WuX4Qs4S1mB2y/05s538stvYGIYnu9rLnI=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0281.INDPRD01.PROD.OUTLOOK.COM (10.164.150.16) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.930.20; Wed, 11 Jul 2018 12:00:17 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::ed1f:1874:1aa5:1e26]) by
	MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::ed1f:1874:1aa5:1e26%5]) with mapi id 15.20.0930.022;
	Wed, 11 Jul 2018 12:00:17 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [do_package_qa] QA Issue: -dev package contains non-symlink .so
Thread-Index: AQHUGQ2JXBzi3GoHWUO1IoSuA8L51g==
Date: Wed, 11 Jul 2018 12:00:17 +0000
Message-ID: <MAXPR01MB03480862C61EEC86A4B64980915A0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0281;
	7:JtBYIJmev5PGhtuuO6huAmmcV8ldZUWii8PnTsE3vJjv/GsL0qpsI0GNatRJEz32vrgkNPrhY8AyO0HrC5NEbuxBSFJbgr/mwRGFI60mKyqkP7dYCN8spLrsNmn9aFcrdttoogFCv6FmQbsRZC2ggXWJ3BkD65/krQPJX0UgAI5ZQ/Mg1h4SxPNBaSQVpjuxkqVQ8QJnWU39DsHQtYEg0omCDG9hueSbTwy+JDLdKkOAyn/0UK6rfsJDNpO+GSCi
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 4a5e12f3-c7f8-47f4-56f4-08d5e725de8a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(5600053)(711020)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(8990107)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0281; 
x-ms-traffictypediagnostic: MAXPR01MB0281:
x-microsoft-antispam-prvs: <MAXPR01MB028121A5704259453E29327F915A0@MAXPR01MB0281.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(223705240517415);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(3231311)(944501410)(52105095)(10201501046)(6055026)(149027)(150027)(6041310)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123558120)(6072148)(201708071742011)(7699016);
	SRVR:MAXPR01MB0281; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0281; 
x-forefront-prvs: 0730093765
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(366004)(39860400002)(346002)(136003)(376002)(53474002)(199004)(189003)(3846002)(1857600001)(55016002)(2906002)(33656002)(14454004)(5640700003)(7696005)(256004)(6436002)(26005)(186003)(2501003)(14444005)(19627405001)(74316002)(54896002)(99286004)(55236004)(316002)(6506007)(102836004)(9686003)(2900100001)(6606003)(81156014)(81166006)(476003)(86362001)(97736004)(106356001)(8936002)(6916009)(5250100002)(1730700003)(7736002)(68736007)(8676002)(66066001)(486006)(2351001)(53936002)(478600001)(72206003)(6116002)(25786009)(5660300001)(105586002)(142923001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0281;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: vqJev8qtmAJXUFe1QGbKRHz7xVzRTVuhZEuFSMH7rRJxYg9p9LUXPyueMWMK4c66RkSMnmJWIIt+KESd44IJedgdPljiBL8Vt2bIRg8kT2OF4PhbmDaubxfmxdb9fwi/H8TeIZ+L95j7Ls5MiPCsq/dssUFsEJsioaM/7weyskEZ/vifmDDRYuHwukPI3snuy7zPdF840LKmqicECu+oQEzTOUpjgnA4EuF6wm0Jd6xZQ2oN0UaWZFOHlpZ3Ge/63JfGwIr7x4dDKTVOpLWkEPZ/5RdFbLH/X8dkpS9DcZFy3rXJEUEiMtlsGdZSoLKuPubFHq01NwAA+KoN13NouoQ6YWWFtNlsgFu03SX0c/Q=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a5e12f3-c7f8-47f4-56f4-08d5e725de8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2018 12:00:17.4226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0281
Subject: [do_package_qa] QA Issue: -dev package contains non-symlink .so
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
X-List-Received-Date: Wed, 11 Jul 2018 12:32:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB03480862C61EEC86A4B64980915A0MAXPR01MB0348INDP_"

--_000_MAXPR01MB03480862C61EEC86A4B64980915A0MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I am getting do_package_qa: QA Issue while compiling mediasdk.bb.

Configuration set up in mediasdk.bb file are as follows:
INSANE_SKIP_${PN} +=3D " already-stripped dev-so dev-deps ldflags"
INHIBIT_SYSROOT_STRIP =3D "1"

RDEPENDS_${PN} +=3D "wayland libdrm-3rdparty media-libva libpciaccess libdr=
m mediasdk-dev"
DEPENDS +=3D "libva"

FILES_${PN}             +=3D "/opt/3rdparty/mediasdk/lib64/libmfxhw64.so"
FILES_${PN}-dbg         +=3D "/opt/3rdparty/mediasdk/lib64/.debug/i965_drv_=
video.so"
FILES_${PN}-dev         +=3D "/opt/3rdparty/mediasdk/include"
FILES_${PN}-samples     +=3D "/opt/3rdparty/mediasdk/samples"
FILES_${PN}-staticdev   +=3D "/opt/3rdparty/mediasdk/lib/lin_x64/libmfx.a"
FILES_${PN}-doc         +=3D "/opt/3rdparty/mediasdk/doc"



ERROR: mediasdk-16.7-772-r0 do_package_qa: QA Issue: -dev package contains =
non-symlink .so: mediasdk-samples-dev path '/work/corei7-64-work-linux/medi=
asdk/16.7-772-r0/packages-split/mediasdk-samples-dev/usr/share/3rdparty/med=
iasdk/samples/_bin/x64/libsample_rotate_plugin.so'
-dev package contains non-symlink .so: mediasdk-samples-dev path '/work/cor=
ei7-64-work-linux/mediasdk/16.7-772-r0/packages-split/mediasdk-samples-dev/=
usr/share/3rdparty/mediasdk/samples/_bin/x64/libmfx_wayland.so' [dev-elf]
ERROR: mediasdk-16.7-772-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.
ERROR: mediasdk-16.7-772-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/builder/src/base/build_work-high=
/tmp-glibc/work/corei7-64-work-linux/mediasdk/16.7-772-r0/temp/log.do_packa=
ge_qa.20727
ERROR: Task (/home/builder/src/base/meta-3rdparty-ias/meta-ias-mediasdk/rec=
ipes-multimedia/mediasdk/mediasdk_16.7-772.bb:do_package_qa) failed with ex=
it code '1'

Could you please help me with this.

Regards,
Aditya Tayade

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB03480862C61EEC86A4B64980915A0MAXPR01MB0348INDP_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I am getting <span>do_package_qa:=
 QA Issue</span> while compiling mediasdk.bb.
<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div><br>
</div>
<div>Configuration set up in mediasdk.bb file are as follows:<br>
<div>INSANE_SKIP_${PN} &#43;=3D &quot; already-stripped dev-so dev-deps ldf=
lags&quot;<br>
INHIBIT_SYSROOT_STRIP =3D &quot;1&quot;<br>
<br>
RDEPENDS_${PN} &#43;=3D &quot;wayland libdrm-3rdparty media-libva libpciacc=
ess libdrm mediasdk-dev&quot;<br>
DEPENDS &#43;=3D &quot;libva&quot;<br>
<br>
FILES_${PN}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; &#43;=3D &quot;/opt/3rdparty/mediasdk/lib64/libmfxhw64.so&quot;<br=
>
FILES_${PN}-dbg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;=3D &q=
uot;/opt/3rdparty/mediasdk/lib64/.debug/i965_drv_video.so&quot;<br>
FILES_${PN}-dev&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;=3D &q=
uot;/opt/3rdparty/mediasdk/include&quot;<br>
FILES_${PN}-samples&nbsp;&nbsp;&nbsp;&nbsp; &#43;=3D &quot;/opt/3rdparty/me=
diasdk/samples&quot;<br>
FILES_${PN}-staticdev&nbsp;&nbsp; &#43;=3D &quot;/opt/3rdparty/mediasdk/lib=
/lin_x64/libmfx.a&quot;<br>
FILES_${PN}-doc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;=3D &q=
uot;/opt/3rdparty/mediasdk/doc&quot;</div>
</div>
<div><br>
</div>
<div><br>
</div>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>
<div>
<div>ERROR: mediasdk-16.7-772-r0 do_package_qa: QA Issue: -dev package cont=
ains non-symlink .so: mediasdk-samples-dev path '/work/corei7-64-work-linux=
/mediasdk/16.7-772-r0/packages-split/mediasdk-samples-dev/usr/share/3rdpart=
y/mediasdk/samples/_bin/x64/libsample_rotate_plugin.so'<br>
-dev package contains non-symlink .so: mediasdk-samples-dev path '/work/cor=
ei7-64-work-linux/mediasdk/16.7-772-r0/packages-split/mediasdk-samples-dev/=
usr/share/3rdparty/mediasdk/samples/_bin/x64/libmfx_wayland.so' [dev-elf]<b=
r>
ERROR: mediasdk-16.7-772-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.<br>
ERROR: mediasdk-16.7-772-r0 do_package_qa: Function failed: do_package_qa<b=
r>
ERROR: Logfile of failure stored in: /home/builder/src/base/build_work-high=
/tmp-glibc/work/corei7-64-work-linux/mediasdk/16.7-772-r0/temp/log.do_packa=
ge_qa.20727<br>
ERROR: Task (/home/builder/src/base/meta-3rdparty-ias/meta-ias-mediasdk/rec=
ipes-multimedia/mediasdk/mediasdk_16.7-772.bb:do_package_qa) failed with ex=
it code '1'</div>
<br>
</div>
<div>Could you please help me with this.</div>
<div><br>
</div>
<div>Regards,</div>
<div>Aditya Tayade<br>
</div>
</div>
<p></p>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB03480862C61EEC86A4B64980915A0MAXPR01MB0348INDP_--
