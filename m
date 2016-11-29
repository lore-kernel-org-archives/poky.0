Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4627E004E5; Tue, 29 Nov 2016 09:59:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4620 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Nov 2016 09:59:19 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0103.outbound.protection.outlook.com [104.47.40.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 541A2E00498
	for <poky@yoctoproject.org>; Tue, 29 Nov 2016 09:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4ZB4pkCwHAp7tp7jOS6zcxM03F+EjmLeDwtB1CUKuPk=;
	b=TYbTngL3IuES9v/Vbd4rucGM4sZaouD++JakpaASLyLQMymklsCZPhB5Vk0Zrj9WOTNphAbbzhcMUt/lVBth7CW/RPZwJyEHZxvwY96ROnqpwrc2M/7fLtbzA2OTodIciFZl8xEQJG7jbPBIUgUDjsfpDB86fGab4vBeaWyWOKc=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.5; Tue, 29 Nov 2016 16:26:25 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0761.009; Tue, 29 Nov 2016 16:26:24 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: fido: problems with arm926ejs DEFAULTTUNE
Thread-Index: AdI6rzwVVwym+sSESsCW0jg0TkT8kwPCSTEw
Date: Tue, 29 Nov 2016 16:26:24 +0000
Message-ID: <DM5PR05MB2954963F27B5FA81EEED3381BB8D0@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545E65161FD6FEA0CB8C61BBB90@DM5PR05MB2954.namprd05.prod.outlook.com>
In-Reply-To: <DM5PR05MB29545E65161FD6FEA0CB8C61BBB90@DM5PR05MB2954.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2954;
	7:oqZ+eU6fwSqc5IqtvRRDHEQQ1KmRh73plm8NlhbjsISWqABvcwMgU+xcVk6PR3+7YashPTJ4vA8FN34IjKYk3LKf5/ZmjeYjPn4aJBwN09/KSmLdaIqdfvDTEBmKUKG7w7QKfW+jNsQf03S3hslylxXsUAPPCW6LWPn3qfWjTOwmsTLC2F0BrAE2b1WLKwBM2Q/z2QfROjAdkH8FpMrag1+Iqp8G9loXcYkwvqoz7q22i8IVyebQF+qv8zAm0TevZlSIbDmSzaqqAchjbZhWd8pxlhp3QKxwtzwcPfvwHIFoOWlYXtGk/j8jj8giKIUxHG1HcT2TJgQj/sSKPS74N8+QyN7FeVCyP44Qm7bKS6GO1eS8GMmt8JZeiQ455B1G2dhbJ6opcOQ2fuZXHr5zfZVW7JiT9ae+xuOaMqRMo6EmqcFO+LtU7L+318TISJAxQnSqYPliVI3LMK2Xl5Q4cA==
x-forefront-antispam-report: SFV:SKI; SCL:-1SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(13464003)(199003)(189002)(377454003)(106356001)(3660700001)(3280700002)(66066001)(33656002)(54356999)(76176999)(101416001)(50986999)(99286002)(105586002)(97736004)(6116002)(76576001)(107886002)(5001770100001)(3846002)(102836003)(122556002)(8676002)(7696004)(450100001)(5660300001)(81166006)(81156014)(8936002)(7846002)(305945005)(74316002)(2501003)(7736002)(2906002)(68736007)(189998001)(39400400001)(9686002)(2950100002)(39410400001)(39380400001)(229853002)(77096006)(39450400002)(6506003)(92566002)(86362001)(38730400001)(2900100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2954;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-correlation-id: 791bc4c3-4e2d-452c-ce90-08d418747659
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:DM5PR05MB2954;
x-microsoft-antispam-prvs: <DM5PR05MB2954702E2BE272ADD9392CD8BB8D0@DM5PR05MB2954.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6060326)(6040361)(6045199)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(6061324)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(2016111802025)(6043046);
	SRVR:DM5PR05MB2954; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2954; 
x-forefront-prvs: 01415BB535
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2016 16:26:24.4120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2954
Subject: Re: fido: problems with arm926ejs DEFAULTTUNE
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
X-List-Received-Date: Tue, 29 Nov 2016 17:59:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: Wednesday, November 09, 2016 1:29 PM
> To: poky@yoctoproject.org
> Subject: [poky] fido: problems with arm926ejs DEFAULTTUNE
>=20
> I am on poky/dizzy (version 1.7.3) and I am in the process of upgrading m=
y
> build to fido (current HEAD).  I am using the meta-atmel layer to build a=
n
> image for an AT91SAM9G25 using the at91sam9x5ek machine.  When I try to
> build my image using poky/fido, I get the following error:
>=20
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the ch=
ecker (see
> sanity.conf).
>     Following is the list of potential problems / advisories:
>=20
>     Error, the PACKAGE_ARCHS variable does not contain TUNE_PKGARCH
> (arm926ejse).
>=20
> In my distro configuration I set DEFAULTTUNE =3D "arm926ejs".  If I remov=
e this
> line, my image builds but the arch gets set as "armv5e".  The change in a=
rch
> would cause problems for firmware upgrades, as I don't think I'd be able =
to
> upgrade existing systems when the packages are built for a different arch=
.
>=20
> I also noticed that the error message states TUNE_PKGARCH is set to
> "arm926ejse".  I cannot find anywhere in any of the layers I am using whe=
re
> "arm926ejse" comes from.  I can find "arm926ejs" and "arm926ejste" but no=
t
> "arm92ejse".
>=20
> Any thoughts as to what may be going wrong with my build?

I bisected poky and I found that my problem starts after this commit: http:=
//git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dfido&id=3Dfe66853cded=
794a7585ed28c519b32930979c2bc.  This commit was actually on master prior to=
 the first fido release.  After this commit (up to current fido HEAD), when=
 I have DEFAULTTUNE =3D "arm926ejs" then TUNE_PKGARCH gets set as 'arm926ej=
se'.  Prior to that commit, TUNE_PKGARCH was being set as 'arm926ejste'.  S=
o after that commit, the build tools no longer recognize that my processor =
is an ARM Thumb processor.

Steps to reproduce:

Here is my autobuilder file for the build I've been testing:

[nightly-atmel-demo-fido]
builders: 'builder1'
repos: [{'poky':
            {'repourl':'git://git.yoctoproject.org/poky.git',
                 'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'=
},
             'branch':'fido'}},
        {'meta-atmel':
            {'repourl':'git://github.com/linux4sam/meta-atmel.git',
             'branch':'fido'}},
        {'meta-openembedded':
            {'repourl':'git://git.openembedded.org/meta-openembedded.git',
             'branch':'fido'}},
        {'meta-qt5':
            {'repourl':'git://github.com/meta-qt5/meta-qt5.git',
             'branch':'fido'}}]
steps: [{'SetDest':{}},
        {'CheckOutLayers': {}},
        {'RunPreamble': {}},
        {'GetDistroVersion' : {'distro': 'poky'}},
        {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE': 'i686'=
, 'distro': 'poky', 'buildhistory': True, 'packages': 'ipk', 'atextappend':=
 'EXTRA_IMAGE_FEATURES =3D ""\nDEFAULTTUNE =3D "arm926ejs"\n'}},
        {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
            ['meta-atmel', 'meta-qt5', 'meta-openembedded/meta-oe', 'meta-o=
penembedded/meta-networking', 'meta-openembedded/meta-python']}},
        {'BuildImages': {'images': 'atmel-demo-image'}},
        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
        {'PublishLayerTarballs':{}},
        {'PublishArtifacts': {'artifacts': ['at91sam9x5ek', 'ipk']}}]
scheduler: [{'nightly-scheduler-atmel-fido' :
                {'type':'Nightly',
                 'hour':'1',
                 'minute':'15',}}]

If I build with these settings, I'll get the error I previously mentioned. =
 If on poky I go back to commit dfa83e662511e8d9f397d458b6eae1bf323cb271, t=
hen it builds without errors and builds with ARM Thumb support.  Note that =
this commit is earlier than the one that caused the Thumb/no Thumb problem,=
 but it was in a set that was committed on that same day; I had to go to a =
commit prior to that day due to some other unrelated build errors that were=
 introduced by not pulling commits that were dependent on each other.

So is feature-arm-thumb.inc still not recognizing something if DEFAULTTUNE =
=3D arm926ejs, or was this working before when it really shouldn't have wor=
ked?  Is there something else that I should do to set the correct tune sett=
ings for my processor?

Thanks,
Bryan

>=20
> Thanks,
> Bryan
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

