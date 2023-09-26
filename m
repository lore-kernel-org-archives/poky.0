Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31B25E7E636
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 13:16:33 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.49])
 by mx.groups.io with SMTP id smtpd.web10.18792.1695734182905254614
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 06:16:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=0xwAF58d;
 spf=pass (domain: navimatix.de, ip: 40.107.6.49, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PmkzwxDzoHD6HXUYnpn/LA2m16FFOkkV8kBu/csPpKSD8d07EZXP3vAhYB8HNdzIXmyWgn5zGgtZuw9fpZXgcXVuEe1uX4oTj9yifGpC5ph1hMbNzDYeHwLANl1VvkJIMsTWnijHUvhyMXl9L+DXL/3E3cPTEwylbTR7Wfu1KWAjkcN7UaldRxm3ygD6FQl9Z7B/U49r3eMr/YqtzMuKmyKXkQNIjwTD8aucxzwjtVxUQ5+VCVz/EmdAj37kf/07hpsvi41OXAyOBxojITdwFiwc4zKUyqdJec/KWLKc/KjNT7KyxUN5ZmPc9wtboqe8zeBagY6/uNKL+0B6Yz9vIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pFhs3ESViWwk+RYI6dxmyCIBXsq2oKUppNOGNr0N17M=;
 b=ZxQnDBbKsKdq+n5Yhpboy8sBCfXZr7Xpq5aQVT/B24Pr3r04+HOWjr+wYhtcMi7dNIBfe/vpmYxNBcVrB50EP5t6OUVzM80ZJ+yDcyhDWzDPFbMjOFU+BTT8E4+w54BVOOIxUJMt9dyj0dkCOHroctB05tL9d/DLlmotf2yMwXTl3Cc9M3bVjn1j1adOkFYgPNvuhUfG4R+zZ+89iA1IPyUkArs7j20u7GTO4Ry8+gAfZTjk5IJ96re6atM0U9fYo+xnfbPvuLxxU3UYzpWnEOfoVURaxdrLrZjXv9DbsmNRK97WABCh732l3OdO7GhcHcPMALgk7cRTVH/Ezyi1mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pFhs3ESViWwk+RYI6dxmyCIBXsq2oKUppNOGNr0N17M=;
 b=0xwAF58dVzoPPK/o4mkyF6O/36zGbc8CEVAKxLnxlMkCjeIAbVHWby5pSbwCIpGAvpJO7HQHTholps4u5Tu1ZpkHxI8NIkQdDkrADV4Fft7oFNrfpvNOqfx4JzJRcdvGIL5cskNx7NNpX2+YqmdBLIwsBhY7MHlHl3MMwpNa660=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26) by VI1PR01MB6797.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:189::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.18; Tue, 26 Sep
 2023 13:16:18 +0000
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::fedc:a1fb:55e9:fb31]) by
 VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::fedc:a1fb:55e9:fb31%3]) with mapi id 15.20.6838.016; Tue, 26 Sep 2023
 13:16:18 +0000
From: =?UTF-8?q?J=C3=B6rg=20Sommer?= <joerg.sommer@navimatix.de>
To: poky@lists.yoctoproject.org
CC: =?UTF-8?q?J=C3=B6rg=20Sommer?= <joerg.sommer@navimatix.de>
Subject: [PATCH] documentation: Add UBOOT_BINARY, extend UBOOT_CONFIG
Date: Tue, 26 Sep 2023 15:15:56 +0200
Message-ID: <b4980a63050b1b806f9d3126b74540cb2e595b63.1695734156.git.joerg.sommer@navimatix.de>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0197.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:89::10) To VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR0102MB3136:EE_|VI1PR01MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: f9e2d807-4801-43e0-7ac6-08dbbe92c519
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NWfQ93cFtGUufMbOx0LcIc3q2Xx7rWBj6Glb9uAZruEkTAKfpyO2cY5Jyw4Cklef8dmgXyjx7fjhSv9IVdJd57mFMEjxcCias/nqjw8YYEdid0YRQ941vE0SYKT3zCZ/UQs1TqA/H6Zadd3oPYU1JGV+Tci2rAvgMIW9Hcf49/49galGFhoRn9rHXOnlwJnzqLEiqdvJDqOuOUc7GSOdx1RxNu+LhGXHQLAMFaJDgK5n7JyQXKCah2tlLkIo2K6mZMAodpzitbEcrT1B48zLUU8fB6wrAkzuc6We0FU8amWTZ8P9/H6pogbFvsm6WxnmykDeSTKqfxGzpFvOQklaBhrHUxNiEjGj079WV0+/H0Q2sFkbAWUV2ZdlNIptW8hH87h449ddA6jNiMypGvf573dlNNPPXrve/10NuJ+E4o53DSMIFPaiWkKDrPwuAzFxdR6hvnoeEoeFl91gTGFPYPQxlz1+/6+JLm/5WrAqJGd1a3h903UuiDHoTBvNjRB+x5Iyrhcuf8rfazwbTXm7GsB668RgSgUExWvki539zggxLjdJ8ERdbXIbn10S7At0hUc/c6Q3fUWGLCYxENibLd8jIWZt7RP9YArof1z/MsiMVBKRhzH9GVo7DTWrh+a+
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0102MB3136.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(346002)(39830400003)(376002)(230922051799003)(451199024)(186009)(1800799009)(6512007)(52116002)(2616005)(6506007)(6486002)(107886003)(478600001)(8936002)(83380400001)(26005)(6666004)(8676002)(2906002)(66556008)(66476007)(66946007)(316002)(6916009)(4326008)(5660300002)(41300700001)(38100700002)(38350700002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?74hMZiZDqoWc7xD01mFlrYTTdQ8K+ylgdbwR7BYRl8oxx8T8DD9As/Le4LGW?=
 =?us-ascii?Q?Yb5KXf9BBEqVFD/OOenC+46AeNfgqlXyfmudkADI3naQDC64+NcnbL125/P/?=
 =?us-ascii?Q?zeEKzwDp4eBiaaRQOIczwiXTxd6PD78POSmbfBzI3R4OJwJJGLUehHt50o9V?=
 =?us-ascii?Q?/+t5ltYLwII7d5enKmtm7w9E0imos05liaQCv570jYBKNDMippWVud8iofcH?=
 =?us-ascii?Q?jWT8AuTRuDlObpk3Ob1iyOgD1cZ8sNKAE6v+YPgy97lcwM2330MEK1vfZyFs?=
 =?us-ascii?Q?3O7MBd+JIyfmSn4bqfUlzIcfmvXQem73HvbZ6vfVkXenWyy+21b4dL0Z9x6w?=
 =?us-ascii?Q?uMrZKW2lGMaC0LayTvJzbUmpXHziCjHjYxoxsf0CSRQGZ0B4tqvipygLe7TC?=
 =?us-ascii?Q?rwJ3OEiX+C+dCNlGvixC0FIdcnCRk8kZl93ugghSp3G/Go/9lE76asuz4sYS?=
 =?us-ascii?Q?qlSX0f6OnR7gBcZ6C79odCL+OTKHTg1J5tLDq2KAnCL0FLwCLc9AN+sOfEGv?=
 =?us-ascii?Q?pAFIGqzuZtjCTZMn2eoP2R0IsZFgld0jFdXKh4gz3ftwjA+kop70WW/FP0oR?=
 =?us-ascii?Q?Ag3+bZb5EsY1hFg8774BKkn5wI38Gbw5PR9v6Mr05cWHgar9jcvn8pUFVJJk?=
 =?us-ascii?Q?yuJ/BacuTs1WWG/mYGkz9AiMyzBbv3qMc7OT+w3gcNSMCgPP9vIOqijHlB4D?=
 =?us-ascii?Q?CtpfViZEClO4MiwcS17UAksiGgGcuM7lYb/tpf9B7aEZxsQqYv2uASwEcjX+?=
 =?us-ascii?Q?g4/XpIUEEyzb3/IW+qiw49oWfgIpVkQYmMaeOuW/7cW4H0WHV2tIc3/0ebKy?=
 =?us-ascii?Q?a0UzGzxFn83eeR/yXTiDm+058XIBwmygnak28aZ626Wp4a4xIp8lDtkTRqfb?=
 =?us-ascii?Q?FtxRABGdBvd5iQIdcKIISfQBi/AgR28dTUWXccaNAk/MwMq+UPunKLZKdAOC?=
 =?us-ascii?Q?HECfsd1NIJS4MJtKGSbZJIKMl4sv2e/50sygPnKMUsyYXsxfwYxFbxnLI08C?=
 =?us-ascii?Q?w0cXkyx2lA4eK+w35QZGGXxIjTGV28/zNM5l2cBkyvzK7SiZ0bnjff6Etpf/?=
 =?us-ascii?Q?5GY4egKs/+wN5uJbOLCMJdykCxTKhAU0m8YqVlNDg7iv3OqA4zSPAmgIBXeZ?=
 =?us-ascii?Q?Kv6nAuzlL/V5clhMZ1W7qTsVtYyeFNv1Xpl9GH+CxzV6DfCytBxVZlB4uSYQ?=
 =?us-ascii?Q?AZexQhqGh6/CAsCGKNeeeK3MC6Ha05TkibCMR0EDkr17jBIOCFRrGLEQ3OPQ?=
 =?us-ascii?Q?6DoroKjDr9LF+fIX2zsAxD9nxQnHiEMjVme1CmEIVAP8vOuwnXEKsO7LAGwN?=
 =?us-ascii?Q?qpDLAN6EoaQGl0bTOAJFarFl03JMG38mqn8zQMQ9dKPRNplOWQodpCpsy4wd?=
 =?us-ascii?Q?Xyg2oGc8d/og/L3o1egkez95wchwLoPGScgUB2umPTil9wKSCszxDGxOB7xf?=
 =?us-ascii?Q?IkobbgkkAHOa2LjWRyZI3kyBhQkV1rCM8RRXSvpwkSDmt7C9qePOG8TX8b16?=
 =?us-ascii?Q?sA8W3yrOANhyiB5Nqi1FrLMfH+AXKWwz24x0TSf1gAhTSaini2IYnjMrWZge?=
 =?us-ascii?Q?aapGFi2awTi+CxJyUdWCCSCB0fMcpoPLwAtuog5qb2vjDBKQxGgmuOUi0mAX?=
 =?us-ascii?Q?UA=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f9e2d807-4801-43e0-7ac6-08dbbe92c519
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 13:16:18.5682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xlmxHTKmupownUR+d23T2qyipf7s6XRnFD3kvj2ox6/eBjG6a03XGj5sOcX9E8Ya5zLY63dSyeZPE+8Ss45n+M553CwaSHNXJtPPRt0kX2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB6797
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 26 Sep 2023 13:16:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13167

UBOOT_CONFIG accepts a third parameter for the UBOOT_BINARY that isn't
documented. To show its usage another example from the meta-freescale layer
was picked.

Signed-off-by: J=C3=B6rg Sommer <joerg.sommer@navimatix.de>
---
 documentation/ref-manual/classes.rst   |  2 +-
 documentation/ref-manual/variables.rst | 33 ++++++++++++++++----------
 2 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/documentation/ref-manual/classes.rst b/documentation/ref-manua=
l/classes.rst
index 139f854172..52b35162c3 100644
--- a/documentation/ref-manual/classes.rst
+++ b/documentation/ref-manual/classes.rst
@@ -2951,7 +2951,7 @@ The ``uboot-config`` class provides support for U-Boo=
t configuration for
 a machine. Specify the machine in your recipe as follows::
=20
    UBOOT_CONFIG ??=3D <default>
-   UBOOT_CONFIG[foo] =3D "config,images"
+   UBOOT_CONFIG[foo] =3D "config,images,binary"
=20
 You can also specify the machine using this method::
=20
diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-man=
ual/variables.rst
index 6fa400a574..89c94657c6 100644
--- a/documentation/ref-manual/variables.rst
+++ b/documentation/ref-manual/variables.rst
@@ -8568,23 +8568,30 @@ system and gives an overview of their function and =
contents.
       See the machine include files in the :term:`Source Directory`
       for these features.
=20
+   :term:`UBOOT_BINARY`
+      Specifies the name of the binary build by U-Boot.
+
    :term:`UBOOT_CONFIG`
-      Configures the :term:`UBOOT_MACHINE` and can
-      also define :term:`IMAGE_FSTYPES` for individual
-      cases.
+      Configures one or more U-Boot configurations to build. Each
+      configuration can define the :term:`UBOOT_MACHINE` and optionally th=
e
+      :term:`IMAGE_FSTYPES` and the :term:`UBOOT_BINARY`.
=20
-      Following is an example from the ``meta-fsl-arm`` layer. ::
+      Following is an example from the ``meta-freescale`` layer. ::
=20
-         UBOOT_CONFIG ??=3D "sd"
-         UBOOT_CONFIG[sd] =3D "mx6qsabreauto_config,sdcard"
-         UBOOT_CONFIG[eimnor] =3D "mx6qsabreauto_eimnor_config"
-         UBOOT_CONFIG[nand] =3D "mx6qsabreauto_nand_config,ubifs"
-         UBOOT_CONFIG[spinor] =3D "mx6qsabreauto_spinor_config"
+         UBOOT_CONFIG ??=3D "sdcard-ifc-secure-boot sdcard-ifc sdcard-qspi=
 lpuart qspi secure-boot nor"
+         UBOOT_CONFIG[nor] =3D "ls1021atwr_nor_defconfig"
+         UBOOT_CONFIG[sdcard-ifc] =3D "ls1021atwr_sdcard_ifc_defconfig,,u-=
boot-with-spl-pbl.bin"
+         UBOOT_CONFIG[sdcard-qspi] =3D "ls1021atwr_sdcard_qspi_defconfig,,=
u-boot-with-spl-pbl.bin"
+         UBOOT_CONFIG[lpuart] =3D "ls1021atwr_nor_lpuart_defconfig"
+         UBOOT_CONFIG[qspi] =3D "ls1021atwr_qspi_defconfig"
+         UBOOT_CONFIG[secure-boot] =3D "ls1021atwr_nor_SECURE_BOOT_defconf=
ig"
+         UBOOT_CONFIG[sdcard-ifc-secure-boot] =3D "ls1021atwr_sdcard_ifc_S=
ECURE_BOOT_defconfig,,u-boot-with-spl-pbl.bin"
=20
-      In this example, "sd" is selected as the configuration of the possib=
le four for the
-      :term:`UBOOT_MACHINE`. The "sd" configuration defines
-      "mx6qsabreauto_config" as the value for :term:`UBOOT_MACHINE`, while=
 the
-      "sdcard" specifies the :term:`IMAGE_FSTYPES` to use for the U-Boot i=
mage.
+      In this example, all possible seven configurations are selected. Eac=
h
+      configuration specifies "..._defconfig" as :term:`UBOOT_MACHINE`, an=
d
+      the "sd..." configurations define an individual name for
+      :term:`UBOOT_BINARY`. No configuration defines a second parameter fo=
r
+      :term:`IMAGE_FSTYPES` to use for the U-Boot image.
=20
       For more information on how the :term:`UBOOT_CONFIG` is handled, see=
 the
       :ref:`uboot-config <ref-classes-uboot-config>`
--=20
2.34.1


