Return-Path: <B.Hahn@phytec.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 163DCCA0EEB
	for <webhook@archiver.kernel.org>; Fri, 22 Aug 2025 10:14:43 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.131])
 by mx.groups.io with SMTP id smtpd.web11.6483.1755857681415190400
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Aug 2025 03:14:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@phytec.de header.s=selector2 header.b=JO37PEYa;
 spf=pass (domain: phytec.de, ip: 40.107.22.131, mailfrom: b.hahn@phytec.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ry/jpe2+iYkm2adgd3Yj/ol4mfW77wUNToa6so4LQk2KT+x95G8UsoKJxh44rBi/EK+mKcc3Mu80Mu6xoSIffu12IawqohSP90tNbkemNqRGiiaCsRlklIkmUQD/wVnut1sv1wZvXGKwnJ4dpGGsUzeKLBY1ZEw0jhK1T/KyydgpomXDvo9P6R11jPjUfKfnJDD+Ven+0Hvf40/1JlAQnGZ+UxFTJ99eR84zApGGyaIjjjmbLA13ReTHbRR9clENX6PD6KUVP6eENtyMFBRYZIjfJkU9SqJfWM6yffWhZvAqNG9hBs1tfPiXpGpxtJHQ8Nr47r15XJ/7QOP5hLOdLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x2XEIEPEm5rnR9FgiEallzxhzkklruHEY3FB8Ltgid0=;
 b=omWG/EYldQXUTNxgDlMmkpY3QszsHHwFD1nDTKhQv1pPNrvvp0KSMCm053bi5OhwTEX6huDXDB+xDAH7vuaZXvhwondceBNrTbZchh5dFY5tp9Db/rKuwSK9Ml9l8RAsZ+tnzbpx3r9yBWTVLjUY0dMccLHiQQYjQLAHRjJlgJ1IjYV9/EPha8SKYzK918/AdXWzRch4QFneDd/TwZDSW3SkGwLKgwKy2IE4BNqueEhxBFDqzC3EE8qlbAxB9EXmzupAGmDstTgb2n4Fx3HYgXFg8B7lVaNXdl0lVNYAClYETmb/xrQmcR5S/WZ8RZ1gQvgtRX7LVveyRPTncL5YLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=phytec.de; dmarc=fail (p=quarantine sp=quarantine pct=100)
 action=quarantine header.from=phytec.de; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x2XEIEPEm5rnR9FgiEallzxhzkklruHEY3FB8Ltgid0=;
 b=JO37PEYaKpo7gN2QQvaLkd3Ol2JQAPujG2Xnnvc/BgJcKJTHMSLt8Jw6keSJDJJQovwZf2l81HTWwrPdhuVH2p8YHKPPmozL1v+VdmlVN022F7GADAasAn9fXXNDmT4U4dnS4EEH4GDti65hezSGXV/hdpcDcW/QhFo8ufH+i2sUloW0J6CBW5DwdZLLgw0LoOp+Vm0lu1dOhX5q/PcjMF/jnI4r/B3aOSsdkRc+kuckziNKa6ENUZqVUosJL5eN/Stmprkl7i2FIGaZKnHBD9cYsx+n9m0WsM+n/1IX3yoVGQ0WrC5wiIwa9hqvPpG4VGdV02yuGrY95979f53NZw==
Received: from AM4PR07CA0011.eurprd07.prod.outlook.com (2603:10a6:205:1::24)
 by GV1P195MB2659.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:1f0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.18; Fri, 22 Aug
 2025 10:14:36 +0000
Received: from AM2PEPF0001C709.eurprd05.prod.outlook.com
 (2603:10a6:205:1:cafe::16) by AM4PR07CA0011.outlook.office365.com
 (2603:10a6:205:1::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9073.6 via Frontend Transport; Fri,
 22 Aug 2025 10:14:36 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 AM2PEPF0001C709.mail.protection.outlook.com (10.167.16.197) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.9052.8 via Frontend Transport; Fri, 22 Aug 2025 10:14:35 +0000
Received: from Florix.phytec.de (172.25.0.13) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.58; Fri, 22 Aug
 2025 12:14:35 +0200
Received: from augenblix2.phytec.de (172.25.0.51) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.58; Fri, 22 Aug
 2025 12:14:35 +0200
From: Benjamin Hahn <B.Hahn@phytec.de>
To: <poky@lists.yoctoproject.org>, <upstream@lists.phytec.de>
CC: <B.Hahn@phytec.de>
Subject: [BACKPORT scarthgap] icu: Backport patch to fix build issues with long paths (>512 chars)
Date: Fri, 22 Aug 2025 12:14:24 +0200
Message-ID: <20250822101424.4165953-1-B.Hahn@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [172.25.0.51]
X-ClientProxiedBy: Diagnostix.phytec.de (172.25.0.14) To Florix.phytec.de
 (172.25.0.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM2PEPF0001C709:EE_|GV1P195MB2659:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e20d933-e89d-4deb-b256-08dde164b245
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|376014|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?AYsGtJ9GmSWogHJ3IkPNBAJZlesCeS2PJSv8IjPFNxvVJYtgKn18POF0Wz1X?=
 =?us-ascii?Q?Fy6EhYvlKNL2IVv1QrvgnL1OX00B0tLAsy9a4K+UHb8O4J0E3Gr+CqYxCfRI?=
 =?us-ascii?Q?SC9AoEb8xvNANeH5rZva/LdaaNVy13CU9T0e1YqVWdiV2o3hQSX3zPNSUf/b?=
 =?us-ascii?Q?3dU+xAfMfnzT0O2AbU2JkrcROF34k6TTioGmNPGD3+24PEGivolkvwW0BAoN?=
 =?us-ascii?Q?UOmPk9hX+KO+7VV9mi5w9YJvOz9QI50itJvlRUSavXWzy6tkfrqcCmYDIt94?=
 =?us-ascii?Q?pfHcO/UVGwD1x9DqXYLkHj5aSsdnGGMONi3mVMogFdBMxr2mfX/Gz9aOuFbp?=
 =?us-ascii?Q?DuF/ErLSoHsBIeEIS1JcNPp51g+KuAE4JuUW0YP2Qa4WmLPVoMxg4pp/Khf6?=
 =?us-ascii?Q?AqsOuYOC7AeY5TebKk6gizfIdRcj5CqGfvv1VcUVyybA6mGU7gwoYeW3AbwN?=
 =?us-ascii?Q?pJ5za+/rYO3GdZ7nNMQitdnyXK6e+NAGRo8Z327i6cQ9+ApX5uaRq7iLr16a?=
 =?us-ascii?Q?N2VJ5kLFa7zlwKd2QhZHqaUjZoiGtDR8qlex3G/5gr3QHP0auPD9AUIFtKdK?=
 =?us-ascii?Q?KDEXHQ6M3Q1M1KpRZ0eSvx5dZBj1criBL1ztcwXFltnFuex5bsjMo0qeGCSM?=
 =?us-ascii?Q?GVaC1hoCwpkmEJXGh9P7ahPQOZDXC3G4F1RP5aA2AFwWbaOYE6KmIMcGA7oM?=
 =?us-ascii?Q?Eze3k2AunT7UIWiZUIUAj7QtLXTjzSg5TebLNnXLCrvG//eCHWqZqrZzDmnG?=
 =?us-ascii?Q?5PH5Yq0yc8pM9AmmiiTOcM2NqfuwFIolVZ1kUoL7EkMloblxWTOy6TjTzW0T?=
 =?us-ascii?Q?QXYosp0OBJEi5GOz24CdRGhyxq4Pqb7MfeTKK/yDSkLgnMUmW+2aS1zauhBV?=
 =?us-ascii?Q?16g3IFO12laLTWm5n33fWOtBp5BqjZ9zA8oOOfxGa0r/seTkG4Y4Zb78mtvL?=
 =?us-ascii?Q?qeqLmF+7gfo6d5XX7cp1eZU1qNtm+KGg+JhjFQZNdDv0F1fN/XtiAi3AHdl5?=
 =?us-ascii?Q?2Oik2SrEb+gDuJN2BaWwKiwa4x+CqhRZpDZAVelmFDcBSbL2we0CglYz1h7+?=
 =?us-ascii?Q?2fJ+cKdOGE9uE8H2Yd94AUOF7yw5CyzfU8WJOHq/Qp2XNvqQuAFY6Ah2XUoE?=
 =?us-ascii?Q?bo3HnNUX1WwgMoRBxjyD01SLvdSgTvmK6D5SyBobDZ3IWSIR5a0xv7jBo50V?=
 =?us-ascii?Q?ksP/glX/6FzbNcleQzJW+8ho5Wl12WppL6IykXV/KcHkuo9xKfLEkWex5QoO?=
 =?us-ascii?Q?YOUB9dja8MnvpoLoqIT9dFD5R9HXJnPzQDTZhL/k8tT7xMFkN6doA4CMzNbc?=
 =?us-ascii?Q?kUuEDCPThjbwQZnWrIe7FyH5qk8t06rdhS6HVEd3xEOT31Imz0twQ7wLp8lm?=
 =?us-ascii?Q?RReTaxgWeLgSKekIt+Fo8kXnyBm6Q+Qr9BIQbKnoH23L2oQARbotV7uuyMZ5?=
 =?us-ascii?Q?JyiXPFxCqZGomzcQovNFcBXiDnaUsZ+p8b1uJJImh7zlqqnkYMpK3w7u6xZB?=
 =?us-ascii?Q?yIcrdVIhQlt9790=3D?=
X-Forefront-Antispam-Report: 
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014)(13003099007);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2025 10:14:35.9910
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e20d933-e89d-4deb-b256-08dde164b245
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C709.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P195MB2659
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Aug 2025 10:14:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13727

From: Carlos Alberto Lopez Perez <clopez@igalia.com>

There is a bug libicu that causes libicu to be installed incorrectly when
the build system uses long paths (more than 512 chars).

This condition is not very difficult to trigger on a OE build system
due to the long paths an the deep of the directories that are usually
generated by default.
Also the bug is very subtle and won't be detected by the QA post-install
processes because what this bug causes is that a different version of
libicudata.so.X.Y (one without data) is installed instead of the one
containing the data, but there won't be any file missed on the installation
(just that it installed the wrong one).

See: https://unicode-org.atlassian.net/browse/ICU-22813

This patch backports the fix from upstream/main

(From OE-Core rev: 67d1352873957decacde30ff208fb7bb635b0c5d)

Signed-off-by: Carlos Alberto Lopez Perez <clopez@igalia.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Benjamin Hahn <B.Hahn@phytec.de>
---
 ...813_rise_buffer_sizes_pkgdata_PR3058.patch | 72 +++++++++++++++++++
 meta/recipes-support/icu/icu_74-2.bb          |  1 +
 2 files changed, 73 insertions(+)
 create mode 100644 meta/recipes-support/icu/icu/ICU-22813_rise_buffer_size=
s_pkgdata_PR3058.patch

diff --git a/meta/recipes-support/icu/icu/ICU-22813_rise_buffer_sizes_pkgda=
ta_PR3058.patch b/meta/recipes-support/icu/icu/ICU-22813_rise_buffer_sizes_=
pkgdata_PR3058.patch
new file mode 100644
index 0000000000..5b97350e6f
--- /dev/null
+++ b/meta/recipes-support/icu/icu/ICU-22813_rise_buffer_sizes_pkgdata_PR30=
58.patch
@@ -0,0 +1,72 @@
+From db70adaddcfa8050db6a69cdfef080a7f1423ad7 Mon Sep 17 00:00:00 2001
+From: Carlos Alberto Lopez Perez <clopez@igalia.com>
+Date: Mon, 1 Jul 2024 22:15:18 +0100
+Subject: [PATCH] ICU-22813 Rise the size of the buffers used for the comma=
nd
+ strings at pkgdata
+
+The tool pkgdata uses snprintf() to build the strings of the commands that
+will execute later during the install process. But the maximum size of thi=
s
+buffers is not enough when there is a long path.
+
+This has caused issues on some CI systems that use very long paths, causin=
g
+the install process to produce a wrong result.
+
+The maximum path on Linux is 4096 (defined as PATH_MAX at <linux/limits.h>=
)
+So the size of SMALL_BUFFER_MAX_SIZE should be 4096 to avoid errors relate=
d
+to truncated paths.
+
+Upstream-Status: Backport [https://github.com/unicode-org/icu/pull/3058]
+
+Signed-off-by: Carlos Alberto Lopez Perez <clopez@igalia.com>
+---
+ tools/pkgdata/pkgdata.cpp | 6 +++---
+ tools/toolutil/pkg_genc.h | 5 ++---
+ 2 files changed, 5 insertions(+), 6 deletions(-)
+
+diff --git a/tools/pkgdata/pkgdata.cpp b/tools/pkgdata/pkgdata.cpp
+index c2ac112..8d08c85 100644
+--- a/tools/pkgdata/pkgdata.cpp
++++ b/tools/pkgdata/pkgdata.cpp
+@@ -1134,7 +1134,7 @@ static int32_t pkg_createSymLinks(const char *target=
Dir, UBool specialHandling)
+=20
+ static int32_t pkg_installLibrary(const char *installDir, const char *tar=
getDir, UBool noVersion) {
+     int32_t result =3D 0;
+-    char cmd[SMALL_BUFFER_MAX_SIZE];
++    char cmd[LARGE_BUFFER_MAX_SIZE];
+=20
+     auto ret =3D snprintf(cmd,
+             sizeof(cmd),
+@@ -1205,7 +1205,7 @@ static int32_t pkg_installLibrary(const char *instal=
lDir, const char *targetDir,
+=20
+ static int32_t pkg_installCommonMode(const char *installDir, const char *=
fileName) {
+     int32_t result =3D 0;
+-    char cmd[SMALL_BUFFER_MAX_SIZE] =3D "";
++    char cmd[LARGE_BUFFER_MAX_SIZE] =3D "";
+=20
+     if (!T_FileStream_file_exists(installDir)) {
+         UErrorCode status =3D U_ZERO_ERROR;
+@@ -1237,7 +1237,7 @@ static int32_t pkg_installCommonMode(const char *ins=
tallDir, const char *fileNam
+ #endif
+ static int32_t pkg_installFileMode(const char *installDir, const char *sr=
cDir, const char *fileListName) {
+     int32_t result =3D 0;
+-    char cmd[SMALL_BUFFER_MAX_SIZE] =3D "";
++    char cmd[LARGE_BUFFER_MAX_SIZE] =3D "";
+=20
+     if (!T_FileStream_file_exists(installDir)) {
+         UErrorCode status =3D U_ZERO_ERROR;
+diff --git a/tools/toolutil/pkg_genc.h b/tools/toolutil/pkg_genc.h
+index 2dd1b45..f811fe5 100644
+--- a/tools/toolutil/pkg_genc.h
++++ b/tools/toolutil/pkg_genc.h
+@@ -59,9 +59,8 @@
+ #define PKGDATA_FILE_SEP_STRING U_FILE_SEP_STRING
+ #endif
+=20
+-#define LARGE_BUFFER_MAX_SIZE 2048
+-#define SMALL_BUFFER_MAX_SIZE 512
+-#define SMALL_BUFFER_FLAG_NAMES 32
++#define LARGE_BUFFER_MAX_SIZE 16384
++#define SMALL_BUFFER_MAX_SIZE 4096
+ #define BUFFER_PADDING_SIZE 20
+=20
+ /** End platform defines **/
diff --git a/meta/recipes-support/icu/icu_74-2.bb b/meta/recipes-support/ic=
u/icu_74-2.bb
index 83753a18e5..104acd37c2 100644
--- a/meta/recipes-support/icu/icu_74-2.bb
+++ b/meta/recipes-support/icu/icu_74-2.bb
@@ -122,6 +122,7 @@ SRC_URI =3D "${BASE_SRC_URI};name=3Dcode \
            file://fix-install-manx.patch \
            file://0001-icu-Added-armeb-support.patch \
            file://CVE-2025-5222.patch \
+           file://ICU-22813_rise_buffer_sizes_pkgdata_PR3058.patch \
            "
=20
 SRC_URI:append:class-target =3D "\
--=20
2.25.1


