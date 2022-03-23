Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.85])
 by mx.groups.io with SMTP id smtpd.web10.9578.1648044062975177983
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 07:01:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foresysinc.onmicrosoft.com header.s=selector2-foresysinc-onmicrosoft-com header.b=OHeXy6Er;
 spf=pass (domain: foresys.com, ip: 40.107.94.85, mailfrom: john.lemonovich@foresys.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5gj22l2dD0xRDKhYO/ndGOmMlsGkeiomXyhzzVNmXci6DVtEsw5PWXOSyGw/GtW1zTwp84uEF1+TGXLlnAcJh5/gpD3qZNutMWXKC0Uee7MPeReX5wj/zH8e21Djvr/16WQpWB3kI7aqoAi9MXCV8VgS2oOPBumqICFaRaEIJL71JsOA/idTchZdM3687Wbq8qF9EIfTJ1lbNodRpIzPrFnLyomWenpPlLowasKm6hrNjcZ4swHJb34jBpN+oEjjyCgJB2dd84fZ50Qd9U6MN3Y9lyi40SUFHkr8ypEqNlUVent81L27myopGCy/srNAsx/2Ehc6m88rm93A67xFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Ic95JR5gsWBVuBKSHRUSfK8eqhrSG8/3vhgZnG1Lrs=;
 b=ak2WyVL28OF0k+7qRBH02PKWwSfsnxB6WV/mF2e3IAV65QAO+h3tmDiGfXIfFFcMrIB7H4Jk/VWsv4Kv00mJDGjFO6DjJ6D7JzuI0Nsyr3Xd9nLDV9Cha4Qe2dS6ua+eh5jQ/OvP46if0cz8brdw6io8qkKdakNB2Q5wyXetGMdhpIZBJhjd/XZ1z1mYUe6uxlLBW+bOsplqhXAB08xBYeG05Mi4pEGA+QZNmzOFN55AqmDUlEnRbAcCqzrYhtx08Cb8TOSUuCK1lGFt1ZaxE5msDnkvSpQD2W9oT1QW5oPqvJRWp4ZOIqpL7Ddp4c6Nbvu4T+Au7pkg2oRH8R+Awg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=foresys.com; dmarc=pass action=none header.from=foresys.com;
 dkim=pass header.d=foresys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Foresysinc.onmicrosoft.com; s=selector2-Foresysinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Ic95JR5gsWBVuBKSHRUSfK8eqhrSG8/3vhgZnG1Lrs=;
 b=OHeXy6EriGacC3hk1Ut9ku9NzIdzL02joElwqEBfLUQJvsQYSHsjsstajdDav+jpBtoWqbXckwNIcO3WOHykrgkBihcEnnVO6637oOOduu/DbMYQw5fT5Hk4bGvbYumIRzBQ3ZNyw+Oyo1kZvJiJJkcU9xOmmpaX79Xtd3sU+lc=
Received: from MN2PR11MB3887.namprd11.prod.outlook.com (2603:10b6:208:156::14)
 by DM6PR11MB4689.namprd11.prod.outlook.com (2603:10b6:5:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Wed, 23 Mar
 2022 14:01:00 +0000
Received: from MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30]) by MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30%4]) with mapi id 15.20.5081.023; Wed, 23 Mar 2022
 14:01:00 +0000
From: "John Lemonovich" <john.lemonovich@foresys.com>
To: John Lemonovich <john.lemonovich@foresys.com>, Peter Kjellerstedt
	<peter.kjellerstedt@axis.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Topic: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
 invoke dnf
Thread-Index: Adg+BWxnSx0rHyT7Q0WLXKcK19eJQwADCyeAAAFe63AAIinxgAAGn/SAAACxFqA=
Date: Wed, 23 Mar 2022 14:01:00 +0000
Message-ID: 
 <MN2PR11MB3887199D7EB82A8E32438CAAE1189@MN2PR11MB3887.namprd11.prod.outlook.com>
References: 
 <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <YjoGJ/R4BV0gTa9N@piout.net>
 <MN2PR11MB3887035BDA3DE294BDEEB125E1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <35f50637a06a4488a8872bc8ead24821@axis.com>
 <16DF06ACABF4E6A1.29582@lists.yoctoproject.org>
In-Reply-To: <16DF06ACABF4E6A1.29582@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=foresys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11ea050e-137e-4832-3aee-08da0cd58fd9
x-ms-traffictypediagnostic: DM6PR11MB4689:EE_
x-microsoft-antispam-prvs: 
 <DM6PR11MB46894D371839A82EAE90A2D0E1189@DM6PR11MB4689.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SAaO16VKKmCFgsszKQwTuho8hA0z9pwM9GV2ztGShL9IOPqIgFdqMP3XvW6+nnEnMbMtbdtAIW1HHAlAn1Y9/rtOh2Z7gtvzsGKaqlEEZFI880VGQyCSGDhoppWa4abXpOrRQPdACUhM8rAkqPKXrWXb0BhrJt6TIOPJttIrKSCQ81cXt3a4Iirpo324Tp+3dLPA5O06TessZfOh7fal1RQXdsUuoGmo2yGrPsJBRFxIfAn6xFMalr77u6JcSUcrRLUzj+8TSxmslqWcsCrYHP5EFyJW9UEI+zayfNOFynMQAxswJIy784wI04zQitiy3EE+yavrjDujj6qsoqDiJF//goSvW6nLAjLZgJhll8iWDZP7iF9+q2FEEsj/Q3lQEyIpkU5L2br0ED+2P/IVfSAMJxD2HmwDOP9nsfOZEpot7A7KG9LFF2nfIHHfjACMdJwtQ0M+FbkuM+7d4W/gPkbsOimadU0EMJjtl6n9AWKVNKcle+ZZdS9cMs/Vlq0F5IyluCXtj60m/UnVv8Ng+/QEQzJGnia1ENV4+FHJX5lI26mD2RVi/kFdeNs0dlkPLqtg+U1hLg/PWR6IoXWAcKk7JVHqeGM9zr+4cCdPrKhi/Yehm5yV/1qbaKGUE8YecPf/TmnBgSTFmxJHimn+60AIHAA+6Uf0M+UVSZh7biedzyPJ7lvgm3ifFDWLFq5cKUkjTBM7FYZ0qcwoMRDrqA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3887.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(83380400001)(26005)(55016003)(186003)(122000001)(33656002)(2906002)(44832011)(6506007)(110136005)(508600001)(52536014)(5660300002)(9686003)(8936002)(8676002)(66476007)(71200400001)(66946007)(64756008)(66446008)(66556008)(76116006)(4326008)(316002)(7696005)(38070700005)(38100700002)(53546011)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lAOTYpVJz53zEyqjTkfWnJ8FJ6A6IG0hzWfQSDwj0G8sAyunwnT/1IItLE1x?=
 =?us-ascii?Q?Y97h9eK6MhfbuhOjqaHJXdXgXw49xUTQgdKqU+ZvZfDiqD36oiysJgOj76kN?=
 =?us-ascii?Q?nWR9QCWCqefhPc6Z0RVvcAn7Rc/F4bdGSjSNTnslS1Rx6qN0NzRFkJTWKvS8?=
 =?us-ascii?Q?0NGTaQN/+vbFuk6nlO69Jv02CIB2P9g/kgDQp5mvG3IP7dkWOeGG3RQ72uZz?=
 =?us-ascii?Q?+bTKkkrDQbrupEp9rwhZEIFmhTTlsfCuL0mVXpFjLD3oQRiEOKZwrH0ZeyhF?=
 =?us-ascii?Q?Ezagg0b+CZjX6+johwHsexSPHzeq1h8VRDFIBJFEO650XFeJDbXwVy/mQiz4?=
 =?us-ascii?Q?J3vLGQmsqHKSQjTACpdgIoQ2V5Bh84Ras/mOR4uogP0V5O1rTpVle/TnsZWp?=
 =?us-ascii?Q?dtldvfs/2Yw7PItykrWmgGvLyH7sda98+fA+D301yu2pWdumbkO3D/Iugqe3?=
 =?us-ascii?Q?GSv9y9SfzbDbmvDXhFHFayfoLC5NMZQdjfj3qpJBOoPD1+OOEP5hEwWAjBll?=
 =?us-ascii?Q?VATg+QTjSV53jb8/79p9nR6OXGpj4VJ4sDcu8xIU/0YMGVfMjdbTaT6rZaM+?=
 =?us-ascii?Q?7XqDRQKDYAp9/gN2si9ib/WXqCZ3zQ7Wxo2QWuwvxofWAJXQ5BANe3rpXh9p?=
 =?us-ascii?Q?+k2oPTV7U2tt4hsoY1FOQyTCkrLWDI7sqFp6iVCHOyCS6G9ELqY21tmrNTCY?=
 =?us-ascii?Q?urH2R6GCPw4YfjQ8eVl0AIoOYI4ZWnYoqoN1AUmsrtyOSz4QFHkZ/Pgk4MUx?=
 =?us-ascii?Q?CrzZoZgwW8C7Iws+yf2iPrhgx/cy/2Q2KiQ9yHnCECUZj+A55AHcVUSvHfMn?=
 =?us-ascii?Q?HkesGnnbVHzpY9VXvQI+kqOREo4TLQ8RiHIYZnhPu9VNbLkJOnvf8GOiZtCo?=
 =?us-ascii?Q?ImT4wxIhl2zH5L9LjfyJnMrCp/nSeeIwbtHOUTzeDdBk+1ZAhh42ymXvbyWb?=
 =?us-ascii?Q?Sd2GWwbv811SKY+ysLJo+lTLSs35n0gZWUfR7mkmjWH1Bk/I80qxGpEbv8z8?=
 =?us-ascii?Q?lhsxycTiegG1O0SysYc8o9XOxhWfe6fLhuAVT+NC+Zdy411SqeFYiTTW1vKD?=
 =?us-ascii?Q?WWbtl69a5oHM5Hzioir6A9FLBQepIq7ZE6ubFqqm+rNCzslPGkqriuPitS5T?=
 =?us-ascii?Q?GfGXkyo/I8w3E5mKjgr05dC85j9eq5M+oGyAAVb+M55ZgsbyMm36N1u4ujR4?=
 =?us-ascii?Q?ZHc7QRt5eIOg95zTvo6cxnBb6MRWQt1e0OhPLU7X5YShAI8DPQ/CGZjzZC7y?=
 =?us-ascii?Q?3DW5hKCcRJBjubCGeN+w8a3+Ipy+lBgu+GQ3NleiPQjw97d5VmFoIoA+BzuZ?=
 =?us-ascii?Q?cE0B99wm0uilDz0moMTLyjm8rhnSHPhKsmi+nmXw+6gw0yhRU/7GVstvY9+e?=
 =?us-ascii?Q?gogv2X5iceRjFsD4jyeHc9UPBuEboYO9WyjTMhV3Ao193mRCnZklizi3/A22?=
 =?us-ascii?Q?/JEPxfPeab/aztjxQVg/rUsLabPZkbwOu00Rj7yiC5mYs+CuFipmMw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: foresys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3887.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ea050e-137e-4832-3aee-08da0cd58fd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 14:01:00.6354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1490b116-3c42-45c3-abd4-2137a151eb3e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Whg9wz35MHFCCyYgdxaXmcIUakDKtjO1DVO35Bh7dCkPDQ5Z924yK6hJIMbkYpQaQ24Cl2PppAr/TUrOBZixJSLA6bT+nSIi/dDYUJaCDMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4689
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Or... is it the different permissions on the /var/lib directory itself ? =20


-----Original Message-----
From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf O=
f John Lemonovich via lists.yoctoproject.org
Sent: Wednesday, March 23, 2022 9:49 AM
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>; Alexandre Belloni <al=
exandre.belloni@bootlin.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not i=
nvoke dnf

Hi Peter,

Thanks for the reply.  I looked at it and here is the difference.  Is it a =
problem that each one needs a different subdirectory within /var/lib/ ?

From  tmp/deploy/rpm/cortexa9t2hf_neon/initscripts-1.0-r155.cortexa9t2hf_ne=
on.rpm :=20
drwxr-x---    2 root    root                        0 Apr  5  2011 /var/lib
drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/lib=
/urandom

From  tmp/deploy/rpm/arria10/base-files-3.0.14-r89.arria10.rpm:
drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/lib
drwxr-xr-x    2 root    root                        0 Apr  5  2011 /var/lib=
/misc


I'm not sure what's causing the problem with the configuration - the steps =
to create the rootfs are given from Intel/Rocketboards and I would presume =
worked at some point.  However, I will say that it's more common than not f=
or a given set of build commands/steps  to NOT work by default without prob=
lems...=20

Thanks,
John


-----Original Message-----
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Sent: Wednesday, March 23, 2022 6:21 AM
To: John Lemonovich <john.lemonovich@foresys.com>; Alexandre Belloni <alexa=
ndre.belloni@bootlin.com>
Cc: poky@lists.yoctoproject.org
Subject: RE: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not i=
nvoke dnf

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On=20
> Behalf Of John Lemonovich
> Sent: den 22 mars 2022 19:04
> To: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: poky@lists.yoctoproject.org
> Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could=20
> not invoke dnf
>=20
> Thank you for the reply.  My apologies, here is the rest:

[cut]

> Transaction Summary
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Install  25 Packages
>=20
> Total size: 2.0 M
> Installed size: 3.8 M
> Downloading Packages:
> Running transaction check
> Transaction check succeeded.
> Running transaction test
> Error: Transaction test error:
>   file /var/lib conflicts between attempted installs of=20
> initscripts-1.0-r155.cortexa9t2hf_neon and
> base-files-3.0.14-r89.arria10

This means that the two packages are trying to create /var/lib differently.=
=20
If you run `rpm -qilvp <path to respective rpm file>`, you should be able t=
o tell what the difference is. The rpm files can be found in "tmp/deploy/rp=
m/".

Then you will have to determine what causes this difference in your configu=
ration, because they do not differ in a standard poky build.=20

//Peter

