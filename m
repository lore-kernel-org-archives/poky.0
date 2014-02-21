Return-Path: <bevenson@melinkcorp.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0150.outbound.protection.outlook.com [207.46.163.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1232E00853
	for <poky@yoctoproject.org>; Fri, 21 Feb 2014 11:14:55 -0800 (PST)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.0.878.16; Fri, 21 Feb 2014 19:14:48 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.14]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.63]) with mapi id
	15.00.0878.008; Fri, 21 Feb 2014 19:14:48 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Setup for hot plugging Ethernet
Thread-Index: Ac8vORk8KK7YruPHTpW/QlQUMhOYyA==
Date: Fri, 21 Feb 2014 19:14:47 +0000
Message-ID: <54eef9b1596a474c8b0817db566f492d@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 01FFE7C900684C01FFE916
x-originating-ip: [98.100.91.242]
x-forefront-prvs: 01294F875B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(6009001)(199002)(189002)(164054003)(54316002)(74662001)(74502001)(47736001)(50986001)(47976001)(95416001)(46102001)(74316001)(49866001)(87266001)(76786001)(76796001)(74706001)(85306002)(31966008)(69226001)(76176001)(47446002)(53806001)(59766001)(86362001)(76482001)(94316002)(87936001)(56776001)(54356001)(81542001)(77982001)(95666003)(74366001)(51856001)(4396001)(74876001)(33646001)(94946001)(76576001)(92566001)(81342001)(56816005)(81686001)(2656002)(83072002)(77096001)(66066001)(83322001)(81816001)(80976001)(90146001)(79102001)(80022001)(65816001)(85852003)(93136001)(63696002)(93516002)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR05MB038;
	H:BLUPR05MB037.namprd05.prod.outlook.com; CLIP:98.100.91.242;
	FPR:BC22EAB5.9C028452.49E0934C.C4BC7270.20152; PTR:InfoNoRecords;
	A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Setup for hot plugging Ethernet
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
X-List-Received-Date: Fri, 21 Feb 2014 19:14:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I am on poky dylan-9.0.1 and I am using a custom image based upon core-imag=
e-minimal (core-image-minimal with a few added packages).  I'm using sysvin=
it and init-ifupdown for network intialization.  With this setup, networkin=
g works just fine as long as the wired Ethernet is plugged in when my syste=
m boots up.  However, hotplugging the Ethernet cable doesn't work; if the c=
able wasn't plugged in on bootup, I need to reboot to get  a network connec=
tion.  I'm looking for a simple way to fix that.

What packages are people using for hotplug support?  And are there some sim=
ple examples for how to get them operational?

Thanks,
Bryan




