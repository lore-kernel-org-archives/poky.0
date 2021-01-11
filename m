Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.53])
 by mx.groups.io with SMTP id smtpd.web08.29505.1610340640167328857
 for <poky@lists.yoctoproject.org>;
 Sun, 10 Jan 2021 20:50:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=j2NK/u20;
 spf=pass (domain: windriver.com, ip: 40.107.237.53, mailfrom: kexin.hao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Px9+zvY7r6qvBhDy0x0ZYnYJ/wJ8EHOUl5ReciSIWxEjBtQUeqBdhtIHXuX8idktMXJ0SDSZhQGPF7+N0X8y5ohVTu5cmDX3HOTv0TKn38cB0aZPtJODkuwGuXc/NUXuo4VhBHJGZ8KGQSgQyQpjGg/J6/9eXIXUp20rcYQkOShYrDiGZayQl+T5KCgNBEPTAj7rGFXEvZmelUkYk/TAvtYgrppqs0k3c9RqxeUbL/hCW+Ti6GJ87stZIZGjCWQ8pZxOLgRRYyZzCYw/lgyL1kxcLxsg5ytqvEbLTl+HIVTcQbDMB6fSV0XhAr9tfk4X3g2YHEjUyh8V+IaaouDwEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=isTRH1bW5zTzp1NzBSx7wlKVggVoNfgNsR4uTGB5UVQ=;
 b=jxIuLQYbjddvi0zO7UU6QVcStjNX4pdFiLCpgz1qKSSt8CR/88nzgPhf7q4xLlI0VaSCy1JKH/E+fIjGytJLRX0ycSCf7STKZ+mN0WvGB/CMinbdxmFvre4lW/QGTFeWmF8YAoEotAn2kRqPQRs3OsxqoH71qOK1f6EHuyZ9TQeUGNq6iGQ8FH1QozekQOC4Dnjn90Rm8Xzj8u/v1PBQd/CdoETaOAVAzNcYLSYx17NYKT3xGvJx+N+qT6J2F5LKGti3MIh4YL9vyrvmTrQyAWfstEkDw7kuZ7cS577qPykJv/uJWVwhAd/h/8Fe/+dDgYO01TnGQ/ZfLuurrXdybg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=isTRH1bW5zTzp1NzBSx7wlKVggVoNfgNsR4uTGB5UVQ=;
 b=j2NK/u20cWaflSQznNTX2M4cWf2kqeIs/aDIywsKWDWkOY2b450CXpVCSjZFYj5fNT66CCgvgvtP4SSoGfFzEt++Z0SShM+i0TwE1MWjEOWG3qs+koMVndJ/taXWFBCxmej05IhZoMPHAaNF1x8KfQfvRja3HI9pwwWTIvBhlJs=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (2603:10b6:5:c3::15) by
 DM5PR11MB1355.namprd11.prod.outlook.com (2603:10b6:3:b::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6; Mon, 11 Jan 2021 04:50:38 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::647c:e8ad:f826:a202]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::647c:e8ad:f826:a202%7]) with mapi id 15.20.3742.009; Mon, 11 Jan 2021
 04:50:38 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 2/2] meta-yocto-bsp: Bump the kernel to v5.10
Date: Mon, 11 Jan 2021 12:42:55 +0800
Message-ID: <20210111044255.40615-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111044255.40615-1-kexin.hao@windriver.com>
References: <20210111044255.40615-1-kexin.hao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR03CA0117.apcprd03.prod.outlook.com
 (2603:1096:203:b0::33) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
Return-Path: kexin.hao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK0PR03CA0117.apcprd03.prod.outlook.com (2603:1096:203:b0::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Mon, 11 Jan 2021 04:50:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35438e8f-11a3-4f7a-4a28-08d8b5ec7135
X-MS-TrafficTypeDiagnostic: DM5PR11MB1355:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1355BE832717A5FC421E3872E2AB0@DM5PR11MB1355.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	azYOG3GkI1HoNyOVpBl5U/N9esRS6w3BsWaRVCxrKXK+s98kO0M3XX75QQTmLWqcNcVvO/77F+BW0tcAhZC8BhJVFfybirKGRvYcb52vWc/xLhlIZguaaSNk6QIKe2alSbVfaXX0xrRZ0zP4kb5wG64Y9CVEQmr2QuvmJxDwDpoL00FmfFAy0JS+Z3GoWcvRpWeBljO3QaWVqWLd1IvsNJD22kWmH2bKWZjEd2pwMRfvkwM3Lccd/52EEShstShkikrbRVwGuabAmNoA/vHMEoaA7SGZ7kde40rCeP8SNkxlg0ODZPy786nR1Hn6taQ5yzVT2R/fEFeMgmYqB0R5uQeMwWOeLJcDWBKSwylzYxy0vi6U57Wpny1PQFbAweB52MX8uRhVAT2STY9m4aTR6w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39840400004)(396003)(366004)(346002)(376002)(2616005)(1076003)(52116002)(956004)(54906003)(478600001)(186003)(316002)(4326008)(16526019)(26005)(66556008)(6666004)(6486002)(6506007)(83380400001)(8936002)(5660300002)(66476007)(8676002)(36756003)(2906002)(6512007)(6916009)(66946007)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?WSpWkQl9beTGtIW3c77XwqBT+9Pdp56njBAAZhydaRGxTE/FiRMmL1gAx00z?=
 =?us-ascii?Q?z/jNKUGedTSnFoAnLF821RhVAf0dRi4iGUvRa49dfKk+lTGtWWguE/bWf/zi?=
 =?us-ascii?Q?MEw8JHOFkcZdS340MUfuhu0I7CT0qGXfIp3ZsZO2oSoVHLQkOTFxOcKZ7534?=
 =?us-ascii?Q?I4BdS18U3Niw+1mwdgKoZIi0+1AHHQqN7UeZY2F+qHsRyj8VEviFM4bnxISA?=
 =?us-ascii?Q?KA1PJotsqPWGoKmVOax5pEjjFZWTFJ61MRH3d9NTixN9OfFwnYrL0GOet8Lv?=
 =?us-ascii?Q?9pXRi73CB/jSJN27pt/ixkVlK7dgEKmk/9IDW4b1kg6eBC2gvGMMJftaGM8U?=
 =?us-ascii?Q?iy03SUtu1efydNev+N7BLV9k1nd0GpAAV+zDRyR8JuTgBJZbvR6P2JXy6Jjd?=
 =?us-ascii?Q?4it0jhZkwHdUeGQCRjJY+ZXqO95YE5MLNWBeKPN1TuMC1/ekutbCw3SBcK/y?=
 =?us-ascii?Q?iY/ggolIy/Q9NJrVHgjTxApt3bSLWp48dPtE/DdzL42Gm+1O0xwyJCA8j3OV?=
 =?us-ascii?Q?5xzuDwLJ6CetfIJP7RaLNGuaVdYL4DPsPne/1Ci+AylrD3XdcqqYV2DkvyWs?=
 =?us-ascii?Q?gxCdbbMAy5O6qeOsaG8+0G673sIYkl31oZ7m46hpNON27+OJNS+yVCzo8nDR?=
 =?us-ascii?Q?qQMnGW1+vrhehshfvJjlmw+FICE8XbW5lM5UaYdFxgtId9KuKsQfZmVl+IQP?=
 =?us-ascii?Q?MyQLzABMbAedo52UqbGnsEU7p3KSvMmWVgY5jTgolGW2mxGzwVRDuALZe05O?=
 =?us-ascii?Q?GCkQ4dsO+a2QJpmgilGGdsDGwI3p6UWT6GBTdBMkQuL+BUbJnrDXADWEQv1B?=
 =?us-ascii?Q?9YQPFbz0v5yrwjfpar/fOp1KjDnXExzSVhrGPiBEfANuQEG0nVv6AmglIi3H?=
 =?us-ascii?Q?ddkVHCTkAbmImQw1/RXLAtzKm0d2X9Q9MSuXRVRFkQm/7YVKMSJ/ZS5S85SS?=
 =?us-ascii?Q?pTGxoJO7+xbdm4/MdiETo0+XVqpZOU/CedcUXYdnsRs73b6w5Nplo3tkUrFl?=
 =?us-ascii?Q?ya5q?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2021 04:50:38.8522
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 35438e8f-11a3-4f7a-4a28-08d8b5ec7135
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U39wicrs0LS5Pmk/yaqGXf7PAIcllI9Hd5TIhZA5bj7gYwUXxK30+XwrvCDhSJDsg40TQ8uvF6eJKyvxJBAHkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1355
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Build and boot for all these machines and also explicitly set the
preferred kernel version for the x86 machines so that we can override
the default setting in oe-core.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../conf/machine/beaglebone-yocto.conf        |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
 .../machine/include/genericx86-common.inc     |  1 +
 .../linux/linux-yocto_5.10.bbappend           | 23 +++++++++++++++++++
 4 files changed, 26 insertions(+), 2 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bb=
append

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto=
-bsp/conf/machine/beaglebone-yocto.conf
index 523472ab1287..f8368ebd0eef 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?=3D "115200;ttyS0 115200;ttyO0 115200;tt=
yAMA0"
 SERIAL_CONSOLES_CHECK =3D "${SERIAL_CONSOLES}"
=20
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?=3D "5.8%"
+PREFERRED_VERSION_linux-yocto ?=3D "5.10%"
=20
 KERNEL_IMAGETYPE =3D "zImage"
 KERNEL_DEVICETREE =3D "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegre=
en.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/c=
onf/machine/edgerouter.conf
index 75bc5e5f28e7..fbe33be9d157 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE =3D "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  =3D ".comment"
=20
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?=3D "5.8%"
+PREFERRED_VERSION_linux-yocto ?=3D "5.10%"
=20
 SERIAL_CONSOLES =3D "115200;ttyS0"
 USE_VT ?=3D "0"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/me=
ta-yocto-bsp/conf/machine/include/genericx86-common.inc
index a6c396c79e53..1de069011dc2 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,6 +2,7 @@ include conf/machine/include/x86-base.inc
 require conf/machine/include/qemuboot-x86.inc
 MACHINE_FEATURES +=3D "wifi efi pcbios"
=20
+PREFERRED_VERSION_linux-yocto ?=3D "5.10%"
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
 XSERVER ?=3D "${XSERVER_X86_BASE} \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend =
b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
new file mode 100644
index 000000000000..d6c5424fc7db
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -0,0 +1,23 @@
+KBRANCH_genericx86  =3D "v5.10/standard/base"
+KBRANCH_genericx86-64  =3D "v5.10/standard/base"
+KBRANCH_edgerouter =3D "v5.10/standard/edgerouter"
+KBRANCH_beaglebone-yocto =3D "v5.10/standard/beaglebone"
+
+KMACHINE_genericx86 ?=3D "common-pc"
+KMACHINE_genericx86-64 ?=3D "common-pc-64"
+KMACHINE_beaglebone-yocto ?=3D "beaglebone"
+
+SRCREV_machine_genericx86 ?=3D "f08df324ccdbc73b9f0c2de2826a2843bcdf651b"
+SRCREV_machine_genericx86-64 ?=3D "f08df324ccdbc73b9f0c2de2826a2843bcdf651=
b"
+SRCREV_machine_edgerouter ?=3D "1f3d7b6a85e98317771367e70824f7803ff9ca30"
+SRCREV_machine_beaglebone-yocto ?=3D "f08df324ccdbc73b9f0c2de2826a2843bcdf=
651b"
+
+COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
+
+LINUX_VERSION_genericx86 =3D "5.10.5"
+LINUX_VERSION_genericx86-64 =3D "5.10.5"
+LINUX_VERSION_edgerouter =3D "5.10.5"
+LINUX_VERSION_beaglebone-yocto =3D "5.10.5"
--=20
2.29.2

