Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.56])
 by mx.groups.io with SMTP id smtpd.web11.14955.1648147224301961151
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 11:40:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foresysinc.onmicrosoft.com header.s=selector2-foresysinc-onmicrosoft-com header.b=ASQitj2i;
 spf=pass (domain: foresys.com, ip: 40.107.243.56, mailfrom: john.lemonovich@foresys.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Um/ahJM9bRAMrkqyIr5hUN6ICWLiAkqMUxqPjY96rFriTzeYcLor3RUEjz/n+M6j/Kcz+4yK5XiilIqiI17B0ZkL3pQn9elDuKJACFj4lZx619IueUQoNuZCpqwGJOF1esWwncVxIwSwXRgBegFIIjZ1VDR3/oL0kBjdxe4T6VmkQbE3GFM2tpRpKDJcpD5XzECyDnK6YccEipBKEEjP7SXUl7kLSbN6EZDrKLjwPpl7GYFrFTZJh4fsOz3H6m9aTVeQWtO/gRsCaW0+Z/CPsom/GE4DUW3SVzI7dOL+B/5qnOPP3hbe/OcIeb3SQwXj3SWe56PvVG/WIzcTCuyHmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YFuvSkjywvQzH7/qP1bbWxzrVVQJFOxqK45cD7efcCY=;
 b=Bo59u4yZWv1PtyQ75tB9yl6iZ0w53d2BNVG4I3/mlW82+o3IjFF/o949vtw9cDHsKzHdX4dVbpDTvsLTD+f/LOeCvpdRJh2fuAO4W7st4VApaCZIoBo0Zo3g6iEJVOVtDtIc9kaezz7v4FA9UpGQNvhwwvYg4Ik+llcOC7rUDmt/mUXTYAXJxWa5zPshDcF328c/CnfzX//m0p+/lXD43g0Rjzy7iIio6D2B3/Cef9yaYnQfQ7z5LS7HE/xYu2sV0n3qVgorH9tQSaNUqGbgz0nkmfXw3bAusEB3SN1IfJzTaLss4QumvbjX0mX3j0jadxx5uVWSHhD4XsY8Q2a0yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=foresys.com; dmarc=pass action=none header.from=foresys.com;
 dkim=pass header.d=foresys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Foresysinc.onmicrosoft.com; s=selector2-Foresysinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YFuvSkjywvQzH7/qP1bbWxzrVVQJFOxqK45cD7efcCY=;
 b=ASQitj2iyPaC8Up0sfP65MMGyajOvGok0gvB7PR29ce7MU04BFabYBKY5YUKR+2tWrlHUFczRIjasOg67xRuoG2+THyhPsyi5HKLgv4bpVq/FOpj4HpRW+z9R/jFFqRYUnpAMeEQDr4otsfV/3lvU/syZuQA7GckGtY6iqnF9nY=
Received: from MN2PR11MB3887.namprd11.prod.outlook.com (2603:10b6:208:156::14)
 by BY5PR11MB4387.namprd11.prod.outlook.com (2603:10b6:a03:1cb::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Thu, 24 Mar
 2022 18:40:22 +0000
Received: from MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30]) by MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30%4]) with mapi id 15.20.5081.024; Thu, 24 Mar 2022
 18:40:22 +0000
From: "John Lemonovich" <john.lemonovich@foresys.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Topic: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
 invoke dnf
Thread-Index: 
 Adg+BWxnSx0rHyT7Q0WLXKcK19eJQwADCyeAAAFe63AAIinxgAAGn/SAAACxFqAAAXP+MAAxcbTQ
Date: Thu, 24 Mar 2022 18:40:21 +0000
Message-ID: 
 <MN2PR11MB388716DE82EF1BC65037DFD5E1199@MN2PR11MB3887.namprd11.prod.outlook.com>
References: 
 <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <YjoGJ/R4BV0gTa9N@piout.net>
 <MN2PR11MB3887035BDA3DE294BDEEB125E1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <35f50637a06a4488a8872bc8ead24821@axis.com>
 <16DF06ACABF4E6A1.29582@lists.yoctoproject.org>
 <MN2PR11MB3887199D7EB82A8E32438CAAE1189@MN2PR11MB3887.namprd11.prod.outlook.com>
 <10ee9efc9517420ea1107e175506dde9@axis.com>
In-Reply-To: <10ee9efc9517420ea1107e175506dde9@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=foresys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 707ce92a-03f1-44f5-6027-08da0dc5c0cc
x-ms-traffictypediagnostic: BY5PR11MB4387:EE_
x-microsoft-antispam-prvs: 
 <BY5PR11MB4387F396CE4236F1386E7788E1199@BY5PR11MB4387.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MBR9FqsEoMfsHsk6rGnUo/aHkj2dVNrmAjXHcDAGHqgJdtTYJQ0OKZEFyCWw1O2+dlmyk5tWju/gK+u4GEw9J3OUytEyMMH09DjYTgEunhqOZq5cMxkOdDoRoadIgswbvyacJkTgn1GaCOvMM9S2kJK93IJF0BBSA+IkUAomQCW1mvemo7iKWtpl2NzGy2QMoci2D25f5MA1H0bO1XFiGXnEV5bDZke+jGs5H7QeHqyIyrcdGDyjL93moRFwKIfNb3Nt4HLpjburtrzbVnQy2wNtK8A+jBf8vr/wspxvCwVn0wBJyap4U3suEe5T4YxsAMHty+ZrWUjDjoKL9ji4kw1pVRIN9zMmEIrZ+DL3RR079NMkjdJsJXnrmB8fJFICf2azxSX9plYaQ6ywkm/jRIxS9DrSnmAmdTLDStGRTK8mcJCbg9C8SDCM4QAF4a4cNu3DfCnWI+cGbg4ucTHehX+QOuVe91+pDLfoS9EuQq3fv+HkhcmBOa7rdrpUrY5f+DBqK6ahyi58lAswhVix3R749sQqsgZ/Qntk3ceWWwAS85TYRjnZooMHiwerV74cqf7A5a4n88ERDR2111jZ2NGD6PqQE3vTBCWkrgq4+/puE5SsNTz9NpXyxnX0Nbj0ZBbHivfK3GTRMiL2XTynHusULJ1IMLm0QWlmcXt206E4Lwh4YfT3o8K6Pd+c/pfxW6quszPK9SVUKNbszXLNfw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3887.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(39830400003)(376002)(346002)(136003)(366004)(396003)(83380400001)(5660300002)(2906002)(186003)(44832011)(33656002)(9686003)(52536014)(53546011)(7696005)(6506007)(38100700002)(26005)(4326008)(8936002)(38070700005)(64756008)(66446008)(66476007)(66556008)(508600001)(76116006)(8676002)(66946007)(316002)(86362001)(71200400001)(110136005)(55016003)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ubLZ90m+rMDUc5Lv1BR8hQhD7d3VKH+S0JCV+ev3SzM3ueo8+yaQbjlEyJ2H?=
 =?us-ascii?Q?+5avgJGu/aW1zDKGQtcMaBS86ZS7DWXhahoXHqUEBCDcX72C8e4gbSubDfIj?=
 =?us-ascii?Q?xTwLsCIfi0UuraTauuPdtcIOpmzTb0/6EOdcHrZx1yDS0UA1omcfgxSOtCLC?=
 =?us-ascii?Q?sny09cPsuKjGi3hEq0U/DI9GuWw9yNC7sHRJTOheM2dfvHIRbSCzFucY+rkw?=
 =?us-ascii?Q?F3PbvNwv5cQ0MGx1EohhSKXz8YFTJzdWvTHl3wVpgDbWGZIjq9RFdhtZlUQo?=
 =?us-ascii?Q?96zzAx5lCB3Qk6ADJqteoRpgVcAbuP24O2hh71F8ERNy6YL/f8KrkY00cCvB?=
 =?us-ascii?Q?Huw4KJ6AqGVV0+DbrGvcD5yQaOoq+kDT9Z796xths8pSCcR7xTAn1jlUkX5e?=
 =?us-ascii?Q?F/0FUwzMB9q/3plVX+bGMMUJSw5ToElkIRQbsf9elpzTELKOvjY3Q8HwkTQa?=
 =?us-ascii?Q?C2jDQc7bYioDKrPZtN0dTM5/cDyQ/yhDeCVP68ggphWHVgF+EY4mTmVYWxkk?=
 =?us-ascii?Q?Uxm1LByr/gFoNNnFomh3sPg5e61C0PDepZwTXwZMPc2h1M23Nk1sco95b3OS?=
 =?us-ascii?Q?ACGUFp99LPQZJKyDFfe3JfIJeE8UcWWEzWGjHb82skNL663ahU9Uljt6rAl2?=
 =?us-ascii?Q?qni56Va19z4hJWySomHD8ap1U5rAUiHbB2r4Kwu3151DVhGlCwQ4JpyaQCwu?=
 =?us-ascii?Q?UcMJ2jT/ZtPxLpIrw1x/j18Pp3K+JepORI3c6gnbrnK2Iv1f2trfJ1f8zqUh?=
 =?us-ascii?Q?Q2o7IzTerMrwqBD2edRN881vF1WrXfySAdJVaypa5nkrOqyt5OAIURf8yE+W?=
 =?us-ascii?Q?tPkDNoa2ANmFuxb3NgTMG2HnvsbIwV1Zyvq14QVyfGGbHeJkFlWudT9aXVtC?=
 =?us-ascii?Q?MUOtl+dvsDSZj5dj8w9wbu+POVG38e0Rs0+3bvFpe4BcgeCfZtEqo+FNce7e?=
 =?us-ascii?Q?JOfkzv/MODDceEoeXqBvbj6giSmoC2nSiJESfzs3zmpeM10RBtJJ55yVvBgU?=
 =?us-ascii?Q?723w27YSEDqFJymMV13E7YVhbScdnKVf6HO3P639vS0ktLq/SqcEEwxV6U9y?=
 =?us-ascii?Q?wg3jPIb76RYG31B2RqddeWhDMHEkpr5p8dNU0GFhEIF1kzLU8x4kzK9+UlHz?=
 =?us-ascii?Q?+TKujeHTYHlk1tyw3aVT4KOM/+c1aWWOQ/R0KJDZRQjhMOJfyYas35tvMRSZ?=
 =?us-ascii?Q?V0CVJ/KXEZ9NwHBHMWvv1oFh5LQooAhFAczYZJzpgjej8inriPSaNWf60sdv?=
 =?us-ascii?Q?9vjS2GE9OcZhSf6nSLSnIgjcLu77Li6wDGsTxuegrYCqnRzlbZDtuAXJTXG8?=
 =?us-ascii?Q?c8RgXy8T9JB0Ag426Z4oefiFFkXdfHxpIdn9IukJgyI/ZyVwlVkkzDHKPq1R?=
 =?us-ascii?Q?ZAsAHXXDSZ+Fp+F3FP5wDLOQQqlBEQAlikQAtfQTY5enCdioMLgd5zt/KwsA?=
 =?us-ascii?Q?QxfIQOfFujcFrwU20VYa/WhZ4vp3NwL+hcxop4sAfCeusihRSzdduQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: foresys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3887.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 707ce92a-03f1-44f5-6027-08da0dc5c0cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2022 18:40:22.0059
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1490b116-3c42-45c3-abd4-2137a151eb3e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIeh8ntpr2MlL1HHrmk5L07pge4INIYjIsGf5cOAbGZHn4Kjk9qWk9GZmSAPSM0m8XV9nLuRdkteelAAM1lDxlPVCAmvw1IQdzTFe1Tw+LI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4387
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was getting an error message saying:  =20
ERROR:  OE-core's config sanity checker detected a potential misconfigurati=
on.
    Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Your Python 3 is not a full install. Please install the module distutil=
s.sysconfig (see the Getting Started guide for further information).
The TMPDIR: /us/jlem/xyz_rootfs/a10/build/tmp can't be located on nfs.


So, I installed Python3 and tried again with a fresh checkout on a local di=
rectory for my VM, and it appears that is working!


-----Original Message-----
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>=20
Sent: Wednesday, March 23, 2022 10:41 AM
To: John Lemonovich <john.lemonovich@foresys.com>; Alexandre Belloni <alexa=
ndre.belloni@bootlin.com>
Cc: poky@lists.yoctoproject.org
Subject: RE: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not i=
nvoke dnf

> -----Original Message-----
> From: John Lemonovich <john.lemonovich@foresys.com>
> Sent: den 23 mars 2022 15:01
> To: John Lemonovich <john.lemonovich@foresys.com>; Peter Kjellerstedt=20
> <peter.kjellerstedt@axis.com>; Alexandre Belloni=20
> <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: RE: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could=20
> not invoke dnf
>=20
> Or... is it the different permissions on the /var/lib directory itself ?

Yes, it is. Everything about a directory must match for dnf/rpm to allow it=
 to be created by multiple packages.

In this case it seems the initscripts package you use has the wrong permiss=
ions for /var/lib as it shall be 0755, not 0750. AFAICT, the recipe in meta=
 has created /var/lib with mode 0755 since the creation of /var/lib/urandom=
 was introduced in 2012 so it must be something in one of your layers that =
change the behavior of the initscripts package.

//Peter

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On=20
> Behalf Of John Lemonovich via lists.yoctoproject.org
> Sent: Wednesday, March 23, 2022 9:49 AM
> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>; Alexandre=20
> Belloni <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could=20
> not invoke dnf
>=20
> Hi Peter,
>=20
> Thanks for the reply.  I looked at it and here is the difference.  Is=20
> it a problem that each one needs a different subdirectory within /var/lib=
/ ?
>=20
> From  tmp/deploy/rpm/cortexa9t2hf_neon/initscripts-1.0-r155.cortexa9t2hf_=
neon.rpm :
> drwxr-x---    2 root    root                        0 Apr  5  2011 /var/l=
ib
> drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/l=
ib/urandom
>=20
> From  tmp/deploy/rpm/arria10/base-files-3.0.14-r89.arria10.rpm:
> drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/l=
ib
> drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/l=
ib/misc
>=20
>=20
> I'm not sure what's causing the problem with the configuration - the=20
> steps to create the rootfs are given from Intel/Rocketboards and I=20
> would presume worked at some point.  However, I will say that it's=20
> more common than not for a given set of build commands/steps  to NOT=20
> work by default without problems...
>=20
> Thanks,
> John
>=20
>=20
> -----Original Message-----
> From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> Sent: Wednesday, March 23, 2022 6:21 AM
> To: John Lemonovich <john.lemonovich@foresys.com>; Alexandre Belloni=20
> <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: RE: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could=20
> not invoke dnf
>=20
> > -----Original Message-----
> > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On=20
> > Behalf Of John Lemonovich
> > Sent: den 22 mars 2022 19:04
> > To: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: poky@lists.yoctoproject.org
> > Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs:=20
> > Could not invoke dnf
> >
> > Thank you for the reply.  My apologies, here is the rest:
>=20
> [cut]
>=20
> > Transaction Summary
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =3D=3D
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > Install  25 Packages
> >
> > Total size: 2.0 M
> > Installed size: 3.8 M
> > Downloading Packages:
> > Running transaction check
> > Transaction check succeeded.
> > Running transaction test
> > Error: Transaction test error:
> >   file /var/lib conflicts between attempted installs of=20
> > initscripts-1.0-r155.cortexa9t2hf_neon and
> > base-files-3.0.14-r89.arria10
>=20
> This means that the two packages are trying to create /var/lib=20
> differently.
> If you run `rpm -qilvp <path to respective rpm file>`, you should be=20
> able to tell what the difference is. The rpm files can be found in=20
> "tmp/deploy/rpm/".
>=20
> Then you will have to determine what causes this difference in your=20
> configuration, because they do not differ in a standard poky build.
>=20
> //Peter

