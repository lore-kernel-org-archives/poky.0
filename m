Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.53])
 by mx.groups.io with SMTP id smtpd.web10.9427.1648043326666354059
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 06:48:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foresysinc.onmicrosoft.com header.s=selector2-foresysinc-onmicrosoft-com header.b=Is9pu0e5;
 spf=pass (domain: foresys.com, ip: 40.107.94.53, mailfrom: john.lemonovich@foresys.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAegmzoZ2FD/GQq5DQ1wo92ppLActs1KThgBWIoQYcN0dWKhivcZ3GJTfXpPOQZX4YWhlEFKAGczqqGRctmdiBcAjZVRuRudZZYNYfupNIlpbDrG+nJhqdvXIK9tXfN3PCUZvdLt0S+bwOI+pplIv1o5lmNqVfTDD1ui3Ac8SMiBYx8c1/lRL+hJ7jxGa/+yEVZxZpI7mXNbjPAcSCxTsjNPBzlmmh89R9hCQ7WgmzGNe4JMjvx3RVKLkxtgsry/S+LGoK7xYpvCKd/4MqieHeb/ugrMisA5G8Ka+qgO2yIvSpNfqDLQy2aLT/ok9Fb1bmnBwRKMLnhI09e4ucOFUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CPSOoLT/ufoAaBLeFTsUxnfJLtRUvdby5uvDW2YMEI=;
 b=DS1uD/1yTkxV9jeCpsl5gfAHBdJ/Cfx9+123TqN3PBEUwRfj3ZFV/77XMooR1iTFJ+oxhGpMwhGoVxQvu8ujbC8DKiHTBZTzKGuhTA6Z/M+lzgYO5M4Nc7KXH9Wf2WShdpcDSBfqbwK0BqZsVyAEH3BT54LFTxrcqIWtWh3TRrjtY97liU0yEbHNsyU0lTa2C2IAVJRMgbleB7ytdZ4++i4s56A0njhxEreu0RPkwk1tbD/653GxfXBGEGmPVAgkj4n4wgUHMCqq+ktgEMVQvsSr9+7nZ4lerNGnZlz8APHbkbq3AT9uAGxyaOHEKT2n5TdZ7I79EzkDkCxWtoAmxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=foresys.com; dmarc=pass action=none header.from=foresys.com;
 dkim=pass header.d=foresys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Foresysinc.onmicrosoft.com; s=selector2-Foresysinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+CPSOoLT/ufoAaBLeFTsUxnfJLtRUvdby5uvDW2YMEI=;
 b=Is9pu0e5CzTv05taNvJYTDSWXzGH8hDwikzbx5deuMmeYebHCT94CACsBg4z6Gr9C1PTgBdA9PhjtaPTsA6B4BnvK1sdt6Vx4DSPr9CKql0OhT5+Ihv8ht9zpArFXtmGOeQhAL5b8eIcGx+3qWWAzqEhYJ9LKpUxH/vdeEeGUWw=
Received: from MN2PR11MB3887.namprd11.prod.outlook.com (2603:10b6:208:156::14)
 by DM6PR11MB4091.namprd11.prod.outlook.com (2603:10b6:5:197::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.21; Wed, 23 Mar
 2022 13:48:43 +0000
Received: from MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30]) by MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30%4]) with mapi id 15.20.5081.023; Wed, 23 Mar 2022
 13:48:43 +0000
From: "John Lemonovich" <john.lemonovich@foresys.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, Alexandre Belloni
	<alexandre.belloni@bootlin.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Topic: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
 invoke dnf
Thread-Index: Adg+BWxnSx0rHyT7Q0WLXKcK19eJQwADCyeAAAFe63AAIinxgAAGn/SA
Date: Wed, 23 Mar 2022 13:48:43 +0000
Message-ID: 
 <MN2PR11MB38875A380747F4B810F125EFE1189@MN2PR11MB3887.namprd11.prod.outlook.com>
References: 
 <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <YjoGJ/R4BV0gTa9N@piout.net>
 <MN2PR11MB3887035BDA3DE294BDEEB125E1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <35f50637a06a4488a8872bc8ead24821@axis.com>
In-Reply-To: <35f50637a06a4488a8872bc8ead24821@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=foresys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02f12838-b0f1-4ab7-02e6-08da0cd3d848
x-ms-traffictypediagnostic: DM6PR11MB4091:EE_
x-microsoft-antispam-prvs: 
 <DM6PR11MB4091A5347362118FDC703D26E1189@DM6PR11MB4091.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8achLQQzRjBTvmeE6LC049ykh3cLQ+IWZIn3O/1kntQVK2EPgCSgf/OVPI8JBxpnhwEVJ4WdlAjTnOS2JpmbK83M1nRcMuEgZVXjFqdOwlTEba95gcQx04VAifI2JJ+j5s+srxDD1wMiSS6EPpVPp75VGbhzEeEQPKHl4klJLOrHHH/5jTuRtTJChGWA0yUut9HdnogfrK7O4VTSF1zjGDRvjnszeN0XNdGFd7Cyd2FwCw6bv+e0Z3dJ+WvijgsFNH9PhL+tCkQic66W1Ggt/0GNrqK2ws4bAsdX4I5yQb5XRVH6xXV1ztuzD6zKovQpnxszmYv3Cu4fAyojo7chAokr5IHFyOSYrmXZtX+qi7NstSsXahleHk3XHO+j4bMjZMTnMw87KVhORTLORXaQfGKfSqigiHoSlS/0yhduNjahUKIIr4zSkH4c5CUOTx/0LKvC546ZFVJzW1zRHZ01QOrm8LUX1awGS2GUcN0V2uX0IhcMcGEYa2e1yBrQYV1pyY00giF0TnfXLMKLVJaj2IPS+3wDyj/8XOJfYT1KOKdW4+ypVCQ+mzSnjVvH4KSuHB+amgSUT64kPUWUqTHVoXz3xnjeTY9XlKapEbl+DM9lR+YISFOjc998EImdzjpk4gE4KYXa+HHaqqM6Envc29eNXGaKFiI+lDsikilcKo3chyvjRYIeIy9DG1F53y2rzTFwXhBYok+7n/1Jhc3MlQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3887.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(39830400003)(366004)(136003)(346002)(396003)(2906002)(44832011)(38070700005)(55016003)(316002)(86362001)(33656002)(38100700002)(71200400001)(122000001)(508600001)(26005)(186003)(9686003)(7696005)(83380400001)(53546011)(6506007)(8676002)(66556008)(66476007)(76116006)(64756008)(66946007)(66446008)(4326008)(8936002)(52536014)(5660300002)(110136005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?qB1iJ644anCaABT8L3b38f1CakJTpzw4TnieA9NjyBG6CwCiIDRNPq4kKROR?=
 =?us-ascii?Q?GOqhMM3I5/G8y9Dum8nMxq0GsuauxVYaerT0CGe3s9L4s6PMemKQS7w1uHON?=
 =?us-ascii?Q?glA1iEhthBdkEPPVOI7T7DwTGkXdg1NSaAU+K/BtCjAOGuPf9EdunUptC4+j?=
 =?us-ascii?Q?wHhE2PkVVavAA2iG260xGB2rf6JB0ixbyJR0tlBmDN7zwyXgSINw54lHH86+?=
 =?us-ascii?Q?cVpg0jFxxgXSmE2ekZ2OXUylhxQNdx3vd95Mf9EW5fNcpOGPc/ZjllgnxnAL?=
 =?us-ascii?Q?RymDmcqlbEeXOaY+3MlnvBxpehTJPFSzcCk0MJ4FhZt9+oGz3fhtF3Jb/w4p?=
 =?us-ascii?Q?R6/8tpP7J92k/asa7gv4yaX7mm4coP5bbq6vU/hohwOhMvvHiI0y9dnfZ3Mx?=
 =?us-ascii?Q?LWXRwvS95+Fs37eYG4oQOH1CG6Wfs1G4pNSrPXYEkcssss873CdHLJ/mQ/ke?=
 =?us-ascii?Q?R/3ZNd5MfaTwrtEq2OK0aespjQ+f/Rr0eniTl+BcJpkkj3mo9XFzCOjK3rKS?=
 =?us-ascii?Q?i6KG91X7AXTdFcxLirlRVvADMmFFVvuPxg3A6tqm9Ga0dSZy0wlIpQ+Q2RUU?=
 =?us-ascii?Q?r7RD8ZS0g7MWRtQYGqDRSh/B4KmHeN34rc+akF/SL1yBTWvgs/Yc70bzn6kb?=
 =?us-ascii?Q?k6ez76CGbyk+MH2fvsDg22XhgnjrpxdZZ7E/8UHDEhqEhLoyV8aQJ5Gw57iq?=
 =?us-ascii?Q?KJatAk9Mz7H0c0d+efXfy6FpdNdoURjpKAogOxEl1XzXzImIqtNyCyLea2Yw?=
 =?us-ascii?Q?N05f5R5HTueyUZz09miJx8DhzTQtC2/yuhOWbLutKRIZ0fYvSb3VMpHMozzt?=
 =?us-ascii?Q?Rp7OZToPn1axiHAvplPhcOfvlBCG+gvgpv3bsWKUb4v0zx1cGKaBB6V1q3zZ?=
 =?us-ascii?Q?wfjLtYjOOAhl9VQIg4lfXJPdU/UGrgDLRwgcKAv03ALGB6GddNeXHPEuZQb2?=
 =?us-ascii?Q?rwLyeddcC+eFC/8UYpOZFybzFC/HtKxhSAerydDfzM9qnaOZ4iTfngtjweZd?=
 =?us-ascii?Q?mJskmp7wji+0Vdorwq/v8YzmNTzAO/x5VB06cjfxBvx9eK9/CoLShlHChxY9?=
 =?us-ascii?Q?roddqwIE0V72tDQx8ToxCdWjOjFi+48gWYPDutwIC5qH93SFF/dSHxh2xvWC?=
 =?us-ascii?Q?tavB+VyyjH/X+HBKmtMQWL9/PLvQbHFq9dkRJ6HhsTPeLI0i4mmGaKUOPfES?=
 =?us-ascii?Q?8PL0yBIkeYkv+IgLubGb7eqaG8V8sSHhGYvIkhUZSxPw/2Zp7ggI5N8x84QB?=
 =?us-ascii?Q?+zBGLiANFz4DwIj29fqJGZnEX/mzwyhDgVXdrcQutYppch+MxJP2cjBH07hz?=
 =?us-ascii?Q?5bN2Yg6VMF9RSZ5p6HhRg7O0U/i9oHQNZptgSq8FgVVGuUZBKE2m01eX3dMA?=
 =?us-ascii?Q?VmvakmOcAogqxLFO4Eoj1kStnXl5pUPZSlAZMLpo6+3siiXIJ0j5nMbiusEK?=
 =?us-ascii?Q?qd9eZWpXoKXYtcBqbJpUAnyTPYZrtEO4mbOXsn1mGElHTkcj3XPZlg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: foresys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3887.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02f12838-b0f1-4ab7-02e6-08da0cd3d848
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 13:48:43.1952
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1490b116-3c42-45c3-abd4-2137a151eb3e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6DIaboEw5FLZ9EbdCo4dCTy8PcoWo9KYWUnEQjTaZ35XtmbCdFoMkX1zuKvkrTlyeOv8yloVNQTb+oOIeMaqajDTZi1hASFrYD9iKFrDxeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4091
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>=20
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
> initscripts-1.0-r155.cortexa9t2hf_neon and=20
> base-files-3.0.14-r89.arria10

This means that the two packages are trying to create /var/lib differently.=
=20
If you run `rpm -qilvp <path to respective rpm file>`, you should be able t=
o tell what the difference is. The rpm files can be found in "tmp/deploy/rp=
m/".

Then you will have to determine what causes this difference in your configu=
ration, because they do not differ in a standard poky build.=20

//Peter

