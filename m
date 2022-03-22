Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.80])
 by mx.groups.io with SMTP id smtpd.web12.13468.1647972221500006111
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 11:03:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foresysinc.onmicrosoft.com header.s=selector2-foresysinc-onmicrosoft-com header.b=Paf07r8q;
 spf=pass (domain: foresys.com, ip: 40.107.223.80, mailfrom: john.lemonovich@foresys.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htJlGndiCUVSUmx5Motf6YpOlxBXMQDrdOrd8PJFIfJj4gbpuchfsZlXGlto4CM6uLnpbW+opQk4bLm6nmm9cdsYOdEIOiyIKvr/WSTlMAEe43jaAFqcQELbPyTA81I1HAMDrtxW2w6DGOKyYQwCPgWAwCZ+heNvzFlnpgyhjcJSeh+Vw1Qpf9+Ba6QxCo03/BztLdxOR2SxB6teoK9HRe0dPpgvwQRCkvFGc8qJXki+24uFjrq1+pfpQVzAms+21M2LJWWwJfG21irWVwDnLnw1Go0dildxCFa2/LpAyYYJDuXVbrTEuX/dvJkDE/YPnormb6KeZheBYq6P92WweQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pQkocj637+LSa/dCrYEFVeatlzrToYgeNqFByDkD3ME=;
 b=FkK1N9/9lPQ4Ckxfz7DoT2sGhs05HZodbYPAOvHFVRxhVnnJnizyS9gQYE8CocTHUw4wiVjwx2gCk1reGciXvFD47yb7g8IPknL8Ww/cuIhDib47oRsDZzTBOY09DT0/uuc4ZVzsmPXQ4bg9OVZZFnwStOi6kZZ8lYD4sW3bBSw4bbc6eFUXJqd+HXrHpKqH2b+cFxZcLTdX5YrPUPETG2oUgLVdkS85j0h+Zvd3TsVfMGn+sFbzSpPe4rmx0eVUKVXSsLqw/qYFZrbksG1my/QujVnEOwLeb1tgw+YFvrUYBE5VbBlobSl+OPl5ceMbog5Os9b9yudeu4Z0JlUCFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=foresys.com; dmarc=pass action=none header.from=foresys.com;
 dkim=pass header.d=foresys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Foresysinc.onmicrosoft.com; s=selector2-Foresysinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pQkocj637+LSa/dCrYEFVeatlzrToYgeNqFByDkD3ME=;
 b=Paf07r8qnRQuFKQgwiATCJsYu+ZEnj8i5Rf+UFlZuyyW47QaXLbKNQ73MwjY8yo64W2Q1uU9W3ZBfvnW75+uXhBtXebAuT1cSYmvNNyEosYH4lMAAXAwabxOXg3P7qI7wXR30Awsufp3DU2IQOO1TOeyjjn9Fb9SqtqH4XMBsvY=
Received: from MN2PR11MB3887.namprd11.prod.outlook.com (2603:10b6:208:156::14)
 by DS7PR11MB5989.namprd11.prod.outlook.com (2603:10b6:8:70::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.18; Tue, 22 Mar
 2022 18:03:38 +0000
Received: from MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30]) by MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30%4]) with mapi id 15.20.5081.023; Tue, 22 Mar 2022
 18:03:38 +0000
From: "John Lemonovich" <john.lemonovich@foresys.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Topic: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not
 invoke dnf
Thread-Index: Adg+BWxnSx0rHyT7Q0WLXKcK19eJQwADCyeAAAFe63A=
Date: Tue, 22 Mar 2022 18:03:38 +0000
Message-ID: 
 <MN2PR11MB3887035BDA3DE294BDEEB125E1179@MN2PR11MB3887.namprd11.prod.outlook.com>
References: 
 <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
 <YjoGJ/R4BV0gTa9N@piout.net>
In-Reply-To: <YjoGJ/R4BV0gTa9N@piout.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=foresys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ee24561-e04d-4e26-c2b3-08da0c2e4a76
x-ms-traffictypediagnostic: DS7PR11MB5989:EE_
x-microsoft-antispam-prvs: 
 <DS7PR11MB5989FC774D5DE8D071F10425E1179@DS7PR11MB5989.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DL+nUTcmygTahadX4P1uqUppSSNOCd7Rm442W1+gSYXOBX4LwJ9M7jem1uj/eW65WkKr5P55sAGBcjQpdBYi1ksddzLK7h5Xoz/oeG6DpO0/yguC3MgFy6MGlP0lXQd/H/EJ/lUCfKnplAKjcZLz8ozOc2xZI6xJUSgrjUhupOdHnSV4TijOlrFouwRlxiq7YkII4xUumQMHjgVTI6lw0SpW4bba/TkQzmkdrlnVQoaW5qJ4sp970ebLXI35A9BY8OyV9kqqLUYDXr6AQa0XPNzjsbwrALlE1N7ZqSIAVrtqfW0nkfnE4AUnYIXhDGVaAiVER2YNwMXrpZkvi3AkGlweHw0PcxMmY18wa/3H0w6RzvuxYZ/oW5xxpuhAp5ygtIRCgGOn4EoemD5tEleibvyyL1JRhR2RgxjOqj1bJiOFFCajS47DeZfwv0xLbJN3BjBtoDoYAJ1Zo1XlqTNp/YWYQGffYQDsYYKUHgyqrR+SCEj/Y6tWZ9hIkWZefu86ez4CtlMSPipwML4pqsv7GSeRaowFS+/tv38OT2snuQn0QiU8USaLjc+xVONZok73RzwmtgEdAADE95Q1ielmq/loiRGdrQDIcBllAxEVvlQZRbVgs6PeNUfLmu6MraUN9aC9qaaXKHfQ5VpwzSatF+lBaFkkntKcssQuDt6hjJtNNG9A/6iIwqlLedY80lN9jzwJ0Xd3KE0B6GdeEeUN40hunNcc9i+sjF+gaVstNSiNyqqLShDo6UankT99OMIZ0SU0ICG3tWV4dBT2UguvT7WmM6tGozdcq3ZfblAxklM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3887.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(136003)(346002)(396003)(376002)(39830400003)(366004)(55016003)(508600001)(8676002)(316002)(52536014)(33656002)(5660300002)(9686003)(38070700005)(966005)(66446008)(8936002)(186003)(64756008)(66946007)(26005)(71200400001)(4326008)(66476007)(66556008)(86362001)(7696005)(83380400001)(38100700002)(6916009)(76116006)(6506007)(53546011)(122000001)(44832011)(2906002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?QeLXvBJM802SCYz+l/ZQ5yDHWsFg7ayhj1gICnlOBRmelPfSQEQNkNOufKd/?=
 =?us-ascii?Q?q7CUljYwgD3t9p9RUERzfVFV/lVwrumIwEgZcwVwONcgFJWX7Q5Oh2PBxF2Q?=
 =?us-ascii?Q?3LuPfMoZWOm/On358Mwi2oYY70NozUBoXWByJXcrm0dCb+vaB35wbFVMs2Nx?=
 =?us-ascii?Q?Oh3XBdyFZxfR1JAr/baJT8ctV17WYTGqK4YyMuW8KrDXBpAzA2hcfVu0OqT1?=
 =?us-ascii?Q?+ZPBhOtRh/XDMvdFBgME9yivMM6mFhNPeixhYEWhBeSbUsnhuo2vMKOSFHGn?=
 =?us-ascii?Q?xpakWRNOP3YI5JiIDyZnIOVSXfnUWxNfiQ5jfDZofVA8yr17dMiWje2yEUn/?=
 =?us-ascii?Q?tswLUpbW352vnuX2eaca/1/090zRTOo5hDpWsW2vTYgN6f0KR3g9gWXl/vff?=
 =?us-ascii?Q?YaqVzPhb5Nz6E2AuL27sVYd/FQTZwOgxr3sR/l5kt/HhYl7H+sph5h8nhpzu?=
 =?us-ascii?Q?el4/p6hxUGFNl2jdeD0AQH0IXYV3cxKwXZG1GGhLJG07rBPee5gIaJeXro3v?=
 =?us-ascii?Q?9vtsd74787uPl1LGECNbEK0b7Eu7Ne9Ps68CTsE47cSHXchj10iA+OJGsgax?=
 =?us-ascii?Q?/zkMIrS8KqTir53U7xMYhYbizqWbt6W/p3MKPZwT/0wHhvc+/OBq2WVQCGS8?=
 =?us-ascii?Q?7QJtojskwJxr/+QZS8z+qN02SEltXdxBkfgnkYNS2uK1vDlW/EUc8x7seUhO?=
 =?us-ascii?Q?+Y3ezE+g6Epi4/GIzAun4gOjgoIQS5jRZVYyQwANQumKFTq9gbcnfcCfZlCE?=
 =?us-ascii?Q?8RX5Ws8XPlUczjEdFob445xlJOuZp+5ebH00pK9v9ygWY++iplCoHiOZbanl?=
 =?us-ascii?Q?5NraJp7gWTz10ptE6dg4+pZvzFco0A+2kKp2nQ0PfQ19xzmEAeGC8FPdsuJI?=
 =?us-ascii?Q?JN0Zcz6KuNUWa6/DbKXGY6Sz3SfXwCkzb5+8lujgQ61cyynhCOK/tfea36v1?=
 =?us-ascii?Q?waBzGr/hd8hRcmsqqOzrbUYj4y4AwTd2mZcPwLCvq1p5aNDCrShTELnlDABG?=
 =?us-ascii?Q?gD4H+8MNsWaMlw646RBAGYhip3cTkDkv5c36HFhgyWIwNiQMLG4IpVXqu5O7?=
 =?us-ascii?Q?D075jXPjQayXN+Ptp1n/B8Hbdlgb/H8SPYOAjVxWlwH1dnnqra3cbDkLY6Mn?=
 =?us-ascii?Q?8jCeL9x+dxqbWds6TxgAI11edvnOSCOzxOIdGZUW1H7nP/EkLp8HI5JPLpNl?=
 =?us-ascii?Q?8MKw+MvpdIN1aFmDszza2TLeL5L/Gs8uYvzu2lRlADN21ZPr8npTstHyBsWG?=
 =?us-ascii?Q?3P4eG/bBMG+ViBQTTnDPSYGOl4S8mafyiIBmH/nQmsTA5FzSFIL9oIsKz8Lm?=
 =?us-ascii?Q?5v6wQ5lfdjHSeZTU/sFS80MU5PGRqF7pODXrEeoPw8wK5HrDQ7Xnr97bYlf7?=
 =?us-ascii?Q?R/SdDPW/Q8HgPIc+vNEL94bbeB0LK5WP2qYJOgRRAGBJhyNkL4vsPgHC1M4S?=
 =?us-ascii?Q?jN6K/FUS/gTkI31JnqwaJlQx5yILAIfqYsDhHfw/SBy8tTYSrtJ1Ag=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: foresys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3887.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee24561-e04d-4e26-c2b3-08da0c2e4a76
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 18:03:38.3203
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1490b116-3c42-45c3-abd4-2137a151eb3e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9vuiDiAjJn2wOpHnmnUWXn9JmiE6Zq5GM5qZf86IYatnlZiO0Axbh/SDnbVjSh77HUEkVqX/oAnvvlBasyQ3O/+2UK+sGZ9HrK5QbPMLs4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5989
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you for the reply.  My apologies, here is the rest:


cachedir: /us/jlemonovich/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-g=
nueabi/core-image-minimal/1.0-r0/rootfs/var/cache/dnf
Added oe-repo repo from /us/jlemonovich/L3_rootfs/a10/build/tmp/work/arria1=
0-poky-linux-gnueabi/core-image-minimal/1.0-r0/oe-rootfs-repo
User-Agent: falling back to 'libdnf': could not detect OS or basearch
repo: using cache for: oe-repo
oe-repo: using metadata from Tue 22 Mar 2022 06:01:43 PM UTC.
Last metadata expiration check: 0:00:01 ago on Tue 22 Mar 2022 06:01:44 PM =
UTC.
--> Starting dependency resolution
---> Package base-files.arria10 3.0.14-r89 will be installed
---> Package base-passwd.cortexa9t2hf_neon 3.5.29-r0 will be installed
---> Package busybox.cortexa9t2hf_neon 1.34.1-r0 will be installed
---> Package busybox-hwclock.cortexa9t2hf_neon 1.34.1-r0 will be installed
---> Package busybox-syslog.cortexa9t2hf_neon 1.34.1-r0 will be installed
---> Package busybox-udhcpc.cortexa9t2hf_neon 1.34.1-r0 will be installed
---> Package eudev.cortexa9t2hf_neon 3.2.10-r0 will be installed
---> Package init-ifupdown.arria10 1.0-r7 will be installed
---> Package init-system-helpers-service.cortexa9t2hf_neon 1.60-r0 will be =
installed
---> Package initscripts.cortexa9t2hf_neon 1.0-r155 will be installed
---> Package initscripts-functions.cortexa9t2hf_neon 1.0-r155 will be insta=
lled
---> Package ldconfig.cortexa9t2hf_neon 2.34-r0 will be installed
---> Package libblkid1.cortexa9t2hf_neon 2.37.4-r0 will be installed
---> Package libc6.cortexa9t2hf_neon 2.34-r0 will be installed
---> Package libkmod2.cortexa9t2hf_neon 29-r0 will be installed
---> Package libz1.cortexa9t2hf_neon 1.2.11-r0 will be installed
---> Package modutils-initscripts.cortexa9t2hf_neon 1.0-r7 will be installe=
d
---> Package netbase.noarch 1:6.3-r0 will be installed
---> Package packagegroup-core-boot.arria10 1.0-r17 will be installed
---> Package run-postinsts.noarch 1.0-r10 will be installed
---> Package sysvinit.cortexa9t2hf_neon 2.99-r0 will be installed
---> Package sysvinit-inittab.arria10 2.88dsf-r10 will be installed
---> Package sysvinit-pidof.cortexa9t2hf_neon 2.99-r0 will be installed
---> Package update-alternatives-opkg.cortexa9t2hf_neon 0.4.5-r0 will be in=
stalled
---> Package update-rc.d.noarch 0.8-r0 will be installed
--> Finished dependency resolution
Dependencies resolved.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
 Package                      Architecture       Version         Repo      =
Size
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Installing:
 packagegroup-core-boot       arria10            1.0-r17         oe-repo  5=
.9 k
 run-postinsts                noarch             1.0-r10         oe-repo  8=
.4 k
Installing dependencies:
 base-files                   arria10            3.0.14-r89      oe-repo   =
13 k
 base-passwd                  cortexa9t2hf_neon  3.5.29-r0       oe-repo  7=
.2 k
 busybox                      cortexa9t2hf_neon  1.34.1-r0       oe-repo  3=
47 k
 busybox-hwclock              cortexa9t2hf_neon  1.34.1-r0       oe-repo  8=
.7 k
 eudev                        cortexa9t2hf_neon  3.2.10-r0       oe-repo  2=
01 k
 init-ifupdown                arria10            1.0-r7          oe-repo  9=
.5 k
 init-system-helpers-service  cortexa9t2hf_neon  1.60-r0         oe-repo  9=
.7 k
 initscripts                  cortexa9t2hf_neon  1.0-r155        oe-repo   =
23 k
 initscripts-functions        cortexa9t2hf_neon  1.0-r155        oe-repo  7=
.7 k
 libblkid1                    cortexa9t2hf_neon  2.37.4-r0       oe-repo  1=
17 k
 libc6                        cortexa9t2hf_neon  2.34-r0         oe-repo  7=
64 k
 libkmod2                     cortexa9t2hf_neon  29-r0           oe-repo   =
34 k
 libz1                        cortexa9t2hf_neon  1.2.11-r0       oe-repo   =
44 k
 modutils-initscripts         cortexa9t2hf_neon  1.0-r7          oe-repo  8=
.0 k
 netbase                      noarch             1:6.3-r0        oe-repo   =
14 k
 sysvinit                     cortexa9t2hf_neon  2.99-r0         oe-repo   =
62 k
 sysvinit-inittab             arria10            2.88dsf-r10     oe-repo  8=
.1 k
 sysvinit-pidof               cortexa9t2hf_neon  2.99-r0         oe-repo   =
15 k
 update-alternatives-opkg     cortexa9t2hf_neon  0.4.5-r0        oe-repo  8=
.6 k
Installing weak dependencies:
 busybox-syslog               cortexa9t2hf_neon  1.34.1-r0       oe-repo  9=
.9 k
 busybox-udhcpc               cortexa9t2hf_neon  1.34.1-r0       oe-repo  8=
.1 k
 ldconfig                     cortexa9t2hf_neon  2.34-r0         oe-repo  2=
56 k
 update-rc.d                  noarch             0.8-r0          oe-repo  8=
.7 k

Transaction Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
Install  25 Packages

Total size: 2.0 M
Installed size: 3.8 M
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Error: Transaction test error:
  file /var/lib conflicts between attempted installs of initscripts-1.0-r15=
5.cortexa9t2hf_neon and base-files-3.0.14-r89.arria10


ERROR: Logfile of failure stored in: /us/jlemonovich/L3_rootfs/a10/build/tm=
p/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_roo=
tfs.5                  48
ERROR: Task (/us/jlemonovich/L3_rootfs/a10/poky/meta/recipes-core/images/co=
re-image-minimal.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2978 tasks of which 2977 didn't need to be r=
erun and 1 failed.



-----Original Message-----
From: Alexandre Belloni <alexandre.belloni@bootlin.com>=20
Sent: Tuesday, March 22, 2022 1:24 PM
To: John Lemonovich <john.lemonovich@foresys.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not i=
nvoke dnf

Hello,

On 22/03/2022 15:56:47+0000, John Lemonovich wrote:
>=20
> Hello,
>=20
> I'm relatively new to working with Yocto / Poky and I'm trying to build a=
 rootfs for an Arria10 Intel FPGA, according to the exact steps from Intel.=
  My host machine is Ubuntu 18.04, and I am running into an error and was w=
ondering how/where to start with debugging this?  I read another post on he=
re where this error was resolved in that case with adding  ALLOW_EMPTY_${PN=
} =3D "1"
>=20
> Is this the proper thing to do in this case, and if so, where do I add th=
is?
>=20
> Here is the command and the error message:
>=20
> bitbake core-image-minimal
>=20
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command=
 '/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-ima=
ge-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverbosity=3Dinf=
o -y -c /us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/co=
re-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/us/j=
lem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-mini=
mal/1.0-r0/rootfs/etc/yum.repos.d --installroot=3D/us/jlem/L3_rootfs/a10/bu=
ild/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs --=
setopt=3Dlogdir=3D/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-=
gnueabi/core-image-minimal/1.0-r0/temp --repofrompath=3Doe-repo,/us/jlem/L3=
_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.=
0-r0/oe-rootfs-repo --nogpgcheck install packagegroup-core-boot run-postins=
ts' returned 1:
> DNF version: 4.8.0
>=20

The actual error from dnf is a bit later on in the log, can you share it?



--
Alexandre Belloni, co-owner and COO, Bootlin Embedded Linux and Kernel engi=
neering https://bootlin.com
