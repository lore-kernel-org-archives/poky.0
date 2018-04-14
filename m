Return-Path: <Nisha.Parrakat@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9F40E00ADB; Sat, 14 Apr 2018 00:47:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.66 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www;
	Sat, 14 Apr 2018 00:47:11 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0066.outbound.protection.outlook.com [104.47.101.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 612E8E00843
	for <poky@yoctoproject.org>; Sat, 14 Apr 2018 00:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=8vv+luERMdiB0nC/c8pDbYHaAuPvEujDQHUJ3pHBXT8=;
	b=E7R+tE5+OviNNbcQxG1UZ2OZFBJgJqm/bEhAqs1mP/Ct/djwE6/oRH0/73i9hf+z7d/Z0nITAT5Tns/ex2tZnN82Rt+UvMcnAtDnBNvbN7EtFzSArlh+4nYjCq4xMB35rNfOFhAd8Z0onNvaEb4BxQ02H2D+Bwh5UOPjhI1lndk=
Received: from BM1PR01MB0930.INDPRD01.PROD.OUTLOOK.COM (10.174.211.22) by
	BM1PR01MB0532.INDPRD01.PROD.OUTLOOK.COM (10.164.132.7) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.675.9; Sat, 14 Apr 2018 07:32:00 +0000
Received: from BM1PR01MB0930.INDPRD01.PROD.OUTLOOK.COM
	([fe80::ccf1:e98b:4005:d939]) by
	BM1PR01MB0930.INDPRD01.PROD.OUTLOOK.COM
	([fe80::ccf1:e98b:4005:d939%18]) with mapi id 15.20.0675.014;
	Sat, 14 Apr 2018 07:31:59 +0000
From: Nisha Parrakat <Nisha.Parrakat@kpit.com>
To: Khem Raj <raj.khem@gmail.com>, Nisha Parrakat <Nisha.Parrakat@kpit.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] how to get mount verion >=2.30 for latest systemd
Thread-Index: AQHT04kRdecgrgC0gEKAR/M21yARq6P/3kVj
Date: Sat, 14 Apr 2018 07:31:58 +0000
Message-ID: <BM1PR01MB0930A26FA11FF2CA85525C5EEEB20@BM1PR01MB0930.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB093884598A66E22A48969213EEBC0@MA1PR01MB0938.INDPRD01.PROD.OUTLOOK.COM>,
	<dfd6d897-ceca-e5ec-7608-641e7e59453a@gmail.com>
In-Reply-To: <dfd6d897-ceca-e5ec-7608-641e7e59453a@gmail.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Nisha.Parrakat@kpit.com; 
x-originating-ip: [46.189.28.208]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BM1PR01MB0532;
	7:+6oS2N+3UcnHcmdPIkR4ivX3//xW8houF7jIknDQeq40d+VemRS08zED69PBvGG+GhUbaDJcgFeDde74EpPuW94iEcXs0JQtyE9pMqARRqtYI+Km7SJqfvO2k8yJUzg71EqH1HaFVtMLlfPEzKpwiHBPO+YcnW6VXPCuxWvJW0VAYURWc1NT1VXPJv9+nzFLijvE80iqvO0R///0r2nCFXhWGtOi12D/xBgPwmpTFV53IEL+ile42RFVtEJ2K1uU
x-ms-exchange-antispam-srfa-diagnostics: SOS;SOR;
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:BM1PR01MB0532; 
x-ms-traffictypediagnostic: BM1PR01MB0532:
x-microsoft-antispam-prvs: <BM1PR01MB0532F72E2D8875CC616225B7EEB20@BM1PR01MB0532.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(158342451672863)(146161314209440)(85827821059158); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231232)(944501327)(52105095)(10201501046)(3002001)(93006095)(93001095)(6055026)(6041310)(20161123560045)(20161123558120)(20161123564045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:BM1PR01MB0532; BCL:0; PCL:0; RULEID:; SRVR:BM1PR01MB0532; 
x-forefront-prvs: 0642A5E7BA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(39380400002)(366004)(346002)(39860400002)(376002)(189003)(199004)(110136005)(9686003)(2501003)(86362001)(575784001)(5250100002)(26005)(53936002)(229853002)(66066001)(186003)(54896002)(105586002)(106356001)(6116002)(7736002)(3846002)(6246003)(446003)(74316002)(6436002)(33656002)(25786009)(99946001)(478600001)(316002)(39060400002)(3280700002)(55016002)(2906002)(59450400001)(3660700001)(53546011)(6506007)(68736007)(7696005)(14454004)(76176011)(486006)(102836004)(2900100001)(72206003)(99286004)(8676002)(81156014)(476003)(97736004)(5660300001)(11346002)(81166006)(8936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BM1PR01MB0532;
	H:BM1PR01MB0930.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:3; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: DgiL/0insrOM9Lz4Xg2mTVViLN/iG+DT3/A+Hn6IdydPsMFd/WfuP1/D5A8ZBB/JvdPLz1uGdeg83Zsnr2Qeou6+wUBWtELLWYp8kWwZRe8gHhSxhryxMPf9JBxBIIDNE3DYnEDNMgOOAdUSd9VCTL36fd4sbkh+IgLaSyv85lWdg6yWClp3mfeLLB5DjJGv
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 21c1733d-6ca3-4ad1-03f1-08d5a1d9cf0b
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c1733d-6ca3-4ad1-03f1-08d5a1d9cf0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2018 07:31:58.8717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR01MB0532
Subject: Re: how to get mount verion >=2.30 for latest systemd
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
X-List-Received-Date: Sat, 14 Apr 2018 07:47:15 -0000
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB0930A26FA11FF2CA85525C5EEEB20BM1PR01MB0930INDP_"

--_000_BM1PR01MB0930A26FA11FF2CA85525C5EEEB20BM1PR01MB0930INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Noted.

This time I found the problem .
The latest util-linux was being overridden by an older recipe of util-linux=
 in the project that caused older version of util-linux installing; that wa=
s failing with the new systemd recipe build.
Regards
Nisha


-------- Original message --------
From: Khem Raj <raj.khem@gmail.com>
Date: 14/04/2018 02:39 (GMT+01:00)
To: Nisha Parrakat <Nisha.Parrakat@kpit.com>, poky@yoctoproject.org
Subject: Re: [poky] how to get mount verion >=3D2.30 for latest systemd



On 4/12/18 1:51 PM, Nisha Parrakat wrote:
> Hi Poky team,
>
> I am using poky from master of sha ***0a0d01addd. *
>
> The systemd checks for a dependency of mount version >=3D2.30 but the
> util-linux(*util-linux_2.31.bb*) of in the same version of poky installs
> mount of earlier version 2.27.0.
>
> Please advice on  how to get mount version 2.30 ?

you should share more information e.g. your local changes, build
configuration etc. which can help to understand the underlying issue
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_BM1PR01MB0930A26FA11FF2CA85525C5EEEB20BM1PR01MB0930INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<div>Noted.&nbsp;</div>
<div><br>
</div>
<div>This time I found the problem .</div>
<div>The latest util-linux was being overridden by an older recipe of util-=
linux in the project that caused older version of util-linux installing; th=
at was failing with the new systemd recipe build.</div>
<div>Regards</div>
<div>Nisha</div>
<div><br>
</div>
<div><br>
</div>
<div>-------- Original message --------</div>
<div>From: Khem Raj &lt;raj.khem@gmail.com&gt; </div>
<div>Date: 14/04/2018 02:39 (GMT&#43;01:00) </div>
<div>To: Nisha Parrakat &lt;Nisha.Parrakat@kpit.com&gt;, poky@yoctoproject.=
org </div>
<div>Subject: Re: [poky] how to get mount verion &gt;=3D2.30 for latest sys=
temd </div>
<div><br>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText"><br>
<br>
On 4/12/18 1:51 PM, Nisha Parrakat wrote:<br>
&gt; Hi Poky team,<br>
&gt; <br>
&gt; I am using poky from master of sha ***0a0d01addd. *<br>
&gt; <br>
&gt; The systemd checks for a dependency of mount version &gt;=3D2.30 but t=
he <br>
&gt; util-linux(*util-linux_2.31.bb*) of in the same version of poky instal=
ls <br>
&gt; mount of earlier version 2.27.0.<br>
&gt; <br>
&gt; Please advice on&nbsp; how to get mount version 2.30 ?<br>
<br>
you should share more information e.g. your local changes, build <br>
configuration etc. which can help to understand the underlying issue<br>
</div>
</span></font>This message contains information that may be privileged or c=
onfidential and is the property of the KPIT Technologies Ltd. It is intende=
d only for the person to whom it is addressed. If you are not the intended =
recipient, you are not authorized
 to read, print, retain copy, disseminate, distribute, or use this message =
or any part thereof. If you receive this message in error, please notify th=
e sender immediately and delete all copies of this message. KPIT Technologi=
es Ltd. does not accept any liability
 for virus infected mails.
</body>
</html>

--_000_BM1PR01MB0930A26FA11FF2CA85525C5EEEB20BM1PR01MB0930INDP_--
