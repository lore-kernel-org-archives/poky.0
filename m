Return-Path: <mns@gomspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8267FC87FCF
	for <webhook@archiver.kernel.org>; Wed, 13 Aug 2025 09:16:40 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.116])
 by mx.groups.io with SMTP id smtpd.web10.97078.1755076591696028899
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Aug 2025 02:16:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@gomspace.com header.s=selector2 header.b=Hj51Unn+;
 spf=pass (domain: gomspace.com, ip: 52.101.69.116, mailfrom: mns@gomspace.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DmYDIId5NkaHE45V00HwxkYXNmCtSajhFNoOo1tjjdZPmls1gz6cmUvAIZfnfGfc4z8ndHdWxMqsJv22w6xOvoUhOxQWt6Lvqcm1m6J6mE9wX6RxqpL+MEkO3oObLM6AWpBS7i2cU/CqBT+aVmWJeJuuVP2qZ2lueJvlhdqJBsi4GHjErisA5dOz9l56Hjl8kwyMIXbl3zr7+skiqIDrsm4kOFbjtoikfYx+Tgqph7r3iVKbdUDPm/h4Uv/GAVJ88dIk78Iq0VfqkwRz1bOHucgshVr1FYvilk4GcfetJoZMA/0kNhC2fVY723gEy0romPoTPrU0Yv8IRdqeNc48Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEGGS8fqicCKmudp5N8dRR72CDqALWQsR8Ykxd/beek=;
 b=KQJLCscyF1DUNjCBPRx/nQTlgr3rGDhfBp6aoIJWxj9SEgeq+WbiQDoB6o/6RHTLOMp+zb0bjjxqad/JcimDh57bW69CnKY0wlySGyXmf1emhg+HlQzfSyT7V7vwKuS07nzpkFvg+3mTHHuxb7Oic/qet25AU9weOv/Yn8mT7bS4zmPRW4S+ggmXZ4SOtPTgDmQ/8GxHAbSiXnvIvkR0kpZSlRLRK1PjYhBfg+yW0xNMicU4z2GQHcYtJuYCNRxtZURIZirz5oN9LmRCQUT3at0ymiuvDN8lj0XavH4BQz7VXXa12uR+3z01ABsM1qy4ONqPJk6YtTYDG8wa5NWJFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 79.171.149.170) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=gomspace.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=gomspace.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tEGGS8fqicCKmudp5N8dRR72CDqALWQsR8Ykxd/beek=;
 b=Hj51Unn+cB8ggyAIflhbPqWYOVvU0hW+LEb4/R/uX8o13whGw/n83rPVuiGPeNtib0S+X7F+BeJNsYHclLIeDy4Dy4MT/OTrPOaB/aOpw77GLoUE9YpFh3yxL7HLqLbmgqxhf5Y25bGxAcTLBi1ZJ5Ym/fNmjBMFasHgrJ3T2PY=
Received: from DB9PR01CA0021.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::26) by GVXPR08MB10430.eurprd08.prod.outlook.com
 (2603:10a6:150:14e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Wed, 13 Aug
 2025 09:16:25 +0000
Received: from DB1PEPF00039230.eurprd03.prod.outlook.com
 (2603:10a6:10:1d8:cafe::c6) by DB9PR01CA0021.outlook.office365.com
 (2603:10a6:10:1d8::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9031.15 via Frontend Transport; Wed,
 13 Aug 2025 09:16:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 79.171.149.170)
 smtp.mailfrom=gomspace.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=gomspace.com;
Received-SPF: Pass (protection.outlook.com: domain of gomspace.com designates
 79.171.149.170 as permitted sender) receiver=protection.outlook.com;
 client-ip=79.171.149.170; helo=webmail.gomspace.com; pr=C
Received: from webmail.gomspace.com (79.171.149.170) by
 DB1PEPF00039230.mail.protection.outlook.com (10.167.8.103) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.11 via Frontend Transport; Wed, 13 Aug 2025 09:16:24 +0000
Received: from DK-AAL-EX02.gomspace.lan (10.0.1.86) by
 DK-AAL-EX02.gomspace.lan (10.0.1.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.36; Wed, 13 Aug 2025 11:16:23 +0200
Received: from ThinkStation-P3.gomspace.lan (10.0.8.56) by
 DK-AAL-EX02.gomspace.lan (10.0.1.86) with Microsoft SMTP Server id
 15.2.1748.36 via Frontend Transport; Wed, 13 Aug 2025 11:16:23 +0200
From: Martin Siegumfeldt <mns@gomspace.com>
To: <poky@lists.yoctoproject.org>
CC: Martin Siegumfeldt <mns@gomspace.com>, Mathieu Dubois-Briand
	<mathieu.dubois-briand@bootlin.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [walnascar][PATCH] systemd: upgrade 257.6 -> 257.8
Date: Wed, 13 Aug 2025 11:16:01 +0200
Message-ID: <20250813091602.2863251-1-mns@gomspace.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF00039230:EE_|GVXPR08MB10430:EE_
X-MS-Office365-Filtering-Correlation-Id: 080183d0-6019-4014-b39d-08ddda4a134c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?8lKkwm2y/+9f0ffcNQQTq/J3OXlizrQfNQKAOWDhN0NKm7d7jppawzEeAzCy?=
 =?us-ascii?Q?8C9lAAj/90ju+Z4SbhGSGiSDzEfR51fnbN2jka0iZvhIcA+or3//a0CTxXMy?=
 =?us-ascii?Q?9dU90OyQrQlwib0VmtVPPcwGtZWLMH6UbLgq/rDKFwFifQaiLiouipZ+dFjO?=
 =?us-ascii?Q?h/HbWTSYPHd23dnhcZudp2A3lw8N7j0+LLExPo+MzlYG6+kYzG08QyPSmFtz?=
 =?us-ascii?Q?jgWqt9+wGzmyx35roVdF9PpKN61A0LJmO/Bm2H4QXV5lEpaei5MfrpZoY6b0?=
 =?us-ascii?Q?1PKIHpKMP2OWecb2c7Z5kfOZXMbLLqBqFsIPOy2DSEPvoHmQ37+dPMv+6JXE?=
 =?us-ascii?Q?YPw6Q9SfNvjvFJ6/cOhqYDDBbTjQ3cu6YS0+3RaRstZDI9HltFTwvm8m8MNM?=
 =?us-ascii?Q?EA0uNrxLmXdTHfhFLdhAg5DZUDWT76bZaNsRsh0Pvd4y9FNGkNWAxVs+Y4qD?=
 =?us-ascii?Q?a8Irjp848ucF1cKdSZgTcF5hkWOzz8JK6fq0KxqrKXTaqMEmI/aHX6kBs4//?=
 =?us-ascii?Q?SzW9kJ/0+rOw6GjyJfpbRgVtDmRCmVqPhJkf2e2iG6nsQuljrs0Tq5awRYoJ?=
 =?us-ascii?Q?gpdlBeykw5OMzL8w870wRAoFC3BCYk8MZ0QhQpcjfuzPqwUtsidb7DOP50d9?=
 =?us-ascii?Q?T55RjjaXVhb4EKMOtz+Uf/EiEDklSoBsjxlg9TP2nA3EKVjkRj/CVQHr51sy?=
 =?us-ascii?Q?RuPXB0YGDuHdGZwGYh1utI2BL1w9HutWcYfVn71xyJYcz2cT1437kvTV7LDw?=
 =?us-ascii?Q?UuFtzAaQDn6QIx262F7BQNS9IoNcC607ivFMBLMIadX+W5NVDyM8V2KvbLT3?=
 =?us-ascii?Q?HLgswb2j6ePM+IXh8Sk1fVdPoF2tv2biGjnh7Qkq8eBRdZ2bisbiAYlDqe65?=
 =?us-ascii?Q?Dan2SJymi9ae/YNZhBt10J631/cZWviMi67izmPuQROF/8vWSWUDSIa5KGcE?=
 =?us-ascii?Q?treUrulrmeWTHo6hJNRG/GkDZfPqk5mPKP71xCzSBSrr23kOnOr2e5tQI4na?=
 =?us-ascii?Q?kL3UiprY7BsnkZRjFtyx0mhvJfWqHIEVweh5eyYxvHa+0emNTFk8wZzu7EEv?=
 =?us-ascii?Q?CL0TV59c30ZByHpEmwbkXFh4WiKp9FrGtHaBcbgADYp4RGyXn7jXwmWeEut2?=
 =?us-ascii?Q?xo3Wd0qFohmZdNFiCeZ0VWS4HvDGhHA7W823KQwIqApxzgTHbKJeW4w1G7Ij?=
 =?us-ascii?Q?XJmhkOzTCY1NLzY5LWAVgwFVDipeUb++vB3n+fz6Hr316PngEGPp+JhsHbby?=
 =?us-ascii?Q?vpWSVSyDQyF+QblktTjCUdEUD5yu/N22wmiN3AQzKHuvne2i/pEI7Gdmzc0Z?=
 =?us-ascii?Q?ST/sEOCxVGbtjIksalwIx3gpZmh7PDntAUjb5/qHzoOluAC/VOzRpBSWdXlD?=
 =?us-ascii?Q?3o2u2wbx4AtD/HxMMDSQxZiQ14I406bumUM4COQgfU9TntRseXGyDmChVuZM?=
 =?us-ascii?Q?NSB+qKFCmjIBxF2/Z5j6u/o0JIn7XTPICDg/SGv+6cdzANuG++6964vmzOJ6?=
 =?us-ascii?Q?U5y/btLkSEAmlaOfIRCB7P9GyRd+jbWyvUc3?=
X-Forefront-Antispam-Report: 
	CIP:79.171.149.170;CTRY:DK;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:webmail.gomspace.com;PTR:webmail.gomspace.com;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 09:16:24.2087
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 080183d0-6019-4014-b39d-08ddda4a134c
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=91ed1e54-6d8b-4599-84d8-65fe75fda3d1;Ip=[79.171.149.170];Helo=[webmail.gomspace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF00039230.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB10430
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 13 Aug 2025 09:16:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13722

(From OE-Core rev: aade7be9a260d2c68e10fc9390b8e72943536ba6)

Signed-off-by: Martin Siegumfeldt <mns@gomspace.com>
Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 ...ystemd-boot-native_257.6.bb =3D> systemd-boot-native_257.8.bb} | 0
 .../systemd/{systemd-boot_257.6.bb =3D> systemd-boot_257.8.bb}    | 0
 ...temctl-native_257.6.bb =3D> systemd-systemctl-native_257.8.bb} | 0
 meta/recipes-core/systemd/systemd.inc                           | 2 +-
 .../recipes-core/systemd/{systemd_257.6.bb =3D> systemd_257.8.bb} | 0
 5 files changed, 1 insertion(+), 1 deletion(-)
 rename meta/recipes-core/systemd/{systemd-boot-native_257.6.bb =3D> system=
d-boot-native_257.8.bb} (100%)
 rename meta/recipes-core/systemd/{systemd-boot_257.6.bb =3D> systemd-boot_=
257.8.bb} (100%)
 rename meta/recipes-core/systemd/{systemd-systemctl-native_257.6.bb =3D> s=
ystemd-systemctl-native_257.8.bb} (100%)
 rename meta/recipes-core/systemd/{systemd_257.6.bb =3D> systemd_257.8.bb} =
(100%)

diff --git a/meta/recipes-core/systemd/systemd-boot-native_257.6.bb b/meta/=
recipes-core/systemd/systemd-boot-native_257.8.bb
similarity index 100%
rename from meta/recipes-core/systemd/systemd-boot-native_257.6.bb
rename to meta/recipes-core/systemd/systemd-boot-native_257.8.bb
diff --git a/meta/recipes-core/systemd/systemd-boot_257.6.bb b/meta/recipes=
-core/systemd/systemd-boot_257.8.bb
similarity index 100%
rename from meta/recipes-core/systemd/systemd-boot_257.6.bb
rename to meta/recipes-core/systemd/systemd-boot_257.8.bb
diff --git a/meta/recipes-core/systemd/systemd-systemctl-native_257.6.bb b/=
meta/recipes-core/systemd/systemd-systemctl-native_257.8.bb
similarity index 100%
rename from meta/recipes-core/systemd/systemd-systemctl-native_257.6.bb
rename to meta/recipes-core/systemd/systemd-systemctl-native_257.8.bb
diff --git a/meta/recipes-core/systemd/systemd.inc b/meta/recipes-core/syst=
emd/systemd.inc
index 5ed84757f3..6f635f6cb0 100644
--- a/meta/recipes-core/systemd/systemd.inc
+++ b/meta/recipes-core/systemd/systemd.inc
@@ -15,7 +15,7 @@ LICENSE:libsystemd =3D "LGPL-2.1-or-later"
 LIC_FILES_CHKSUM =3D "file://LICENSE.GPL2;md5=3D751419260aa954499f7abaabaa=
882bbe \
                     file://LICENSE.LGPL2.1;md5=3D4fbd65380cdd255951079008b=
364516c"
=20
-SRCREV =3D "00a12c234e2506f5cab683460199575f13c454db"
+SRCREV =3D "5e38d199a623563698ab4a69acbbe3afa9135198"
 SRCBRANCH =3D "v257-stable"
 SRC_URI =3D "git://github.com/systemd/systemd.git;protocol=3Dhttps;branch=
=3D${SRCBRANCH};tag=3Dv${PV}"
=20
diff --git a/meta/recipes-core/systemd/systemd_257.6.bb b/meta/recipes-core=
/systemd/systemd_257.8.bb
similarity index 100%
rename from meta/recipes-core/systemd/systemd_257.6.bb
rename to meta/recipes-core/systemd/systemd_257.8.bb
--=20
2.50.1


