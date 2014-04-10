Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1blp0182.outbound.protection.outlook.com [207.46.163.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48763E00C76
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 13:20:49 -0700 (PDT)
Received: from BLUPR05MB040.namprd05.prod.outlook.com (10.255.210.156) by
	BLUPR05MB069.namprd05.prod.outlook.com (10.255.214.14) with Microsoft
	SMTP Server (TLS) id 15.0.918.8; Thu, 10 Apr 2014 20:20:46 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB040.namprd05.prod.outlook.com (10.255.210.156) with Microsoft
	SMTP Server (TLS) id 15.0.913.9; Thu, 10 Apr 2014 20:20:44 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.209]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.209]) with mapi id
	15.00.0918.000; Thu, 10 Apr 2014 20:20:44 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: openssl: Need PRINC+1 in recipe?
Thread-Index: Ac9U+SZni8TJrmcKSoKhwSOGSV0iHg==
Date: Thu, 10 Apr 2014 20:20:43 +0000
Message-ID: <72fd694877e24e5a95574a18a2e31d09@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 01D756B0006E2201D757FD
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(428001)(199002)(189002)(164054003)(87936001)(79102001)(80022001)(66066001)(33646001)(46102001)(2656002)(4396001)(76482001)(50986999)(54356999)(77982001)(76576001)(92566001)(74662001)(31966008)(99396002)(81342001)(83322001)(83072002)(81542001)(85852003)(86362001)(74316001)(80976001)(74502001)(20776003)(99286001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB040;
	H:BLUPR05MB037.namprd05.prod.outlook.com;
	FPR:B0AAF072.1D3367C8.35F194F6.4868F1FB.200F1; PTR:InfoNoRecords;
	A:1; MX:1; LANG:en; 
received-spf: None (: melinkcorp.com does not designate permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: openssl: Need PRINC+1 in recipe?
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
X-List-Received-Date: Thu, 10 Apr 2014 20:20:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I was previously on dylan-1.4.1 and today I upgraded to poky/dylan HEAD to =
take in the openssl security patches.  Things are rebuilding, but I noticed=
 that the built package version is openssl-1.0.1e-r15.0, which is the same =
version currently installed on my system.  Shouldn't the PR line change to:

PR =3D "${INC_PR+1}.0"

For the packaging systems to take in the update?

Thanks,
Bryan




