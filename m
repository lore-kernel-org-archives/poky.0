Return-Path: <m.otto@phytec.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDBD65C58
	for <webhook@archiver.kernel.org>; Thu, 14 Nov 2024 07:37:57 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.94])
 by mx.groups.io with SMTP id smtpd.web10.32690.1731569871746244062
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Nov 2024 23:37:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@phytecmesstechnikgmbh.onmicrosoft.com header.s=selector1-phytecmesstechnikgmbh-onmicrosoft-com header.b=hmvUdLLN;
 spf=pass (domain: phytec.de, ip: 40.107.249.94, mailfrom: m.otto@phytec.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OR5BhgsIFN9Z9TqraAjtVf6R37XZvCEU/QYopmG7JcqPZptHzU1tG4vsoKmDZ5AeqQG/iiVzMxItjoaCpPqUG0mRYZnmHBpsgBDH4RHNf0TEJVd3UikRnNyl5tPZL8rD8X7GllhdXA82twrFKrD4TJBit8kM9njUR1AJda+2mggWN32txKuYNifawN/HUCtuUEQ/t19juRMeBfU6eGZmL2D1fDfAdAkRFS30Gnuqc0sDMxSr3XmW93JZuuaTqz+fzUeMLCfc0RQv3gIHV4m89uMqmHyjxq44xnZ4k3JxfN27WN7AZbOb+zcN9YuYdPEcO6iYrfFLnxRKmjPleRdJOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3YviCTBWFqBt2tqoIJ5PruVh9K330ocoYJ5AMQlUMNA=;
 b=BB/yjLNdGVux86jDToleiGh7idTvSHKbA0Abel8xYcxJ+c6ipGMtJHOH3gFd+G54NWGYzwEakiE3Fp3kpWO/LdtPH6O0E0WkC/VwureS6NdfsTaQbFOw1Q7Cf6i9FEQUZNY3H5TN8db5KhdSbb9M5XrGUGPmcJbut+eZ/T5wwNj6g40ShWrtFpgVZhMj0qh/ZIbInO2gsU9IbGbr6bKjgXNfIomE2iZ1eVW7L83+EdRwdlTJ4vrZ4vCc8xZAOP2ZRtjq7+2Yoou7nzbjadxQW/k6EUZPTP2k1W7Zz/oy22sPb2W0B+qzh36sYoYsQn5lg8M7mX0BZ1ZRvIQhE5ZNsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=phytec.de; dmarc=none action=none header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=phytecmesstechnikgmbh.onmicrosoft.com;
 s=selector1-phytecmesstechnikgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3YviCTBWFqBt2tqoIJ5PruVh9K330ocoYJ5AMQlUMNA=;
 b=hmvUdLLNen+Z2qst5jEOdxQ7ypwyJg58uTkvfJFkNGHr7TeRKuK9zG5noMNiLvKUubdyvXrNZsNC7N/crru7WIilqVN5cOk9qORT4zOoXBdS3iLNSU51kmrMqAWu45XV9n2kF5ad7dIziojHqlG2E193R/qm3mWHHXOvfjDguhc=
Received: from DU7P250CA0022.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:54f::6) by
 GVXP195MB1639.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:6e::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.17; Thu, 14 Nov 2024 07:37:45 +0000
Received: from DB3PEPF0000885A.eurprd02.prod.outlook.com
 (2603:10a6:10:54f:cafe::7d) by DU7P250CA0022.outlook.office365.com
 (2603:10a6:10:54f::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17 via Frontend
 Transport; Thu, 14 Nov 2024 07:37:45 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 DB3PEPF0000885A.mail.protection.outlook.com (10.167.242.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8158.14 via Frontend Transport; Thu, 14 Nov 2024 07:37:45 +0000
Received: from Berlix.phytec.de (172.25.0.12) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Thu, 14 Nov
 2024 08:37:44 +0100
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Thu, 14 Nov
 2024 08:37:44 +0100
From: Maik Otto <m.otto@phytec.de>
To: <poky@lists.yoctoproject.org>, <upstream@lists.phytec.de>
Subject: [PATCH] u-boot: Set CVE_PRODUCT
Date: Thu, 14 Nov 2024 08:37:23 +0100
Message-ID: <20241114073723.1786833-1-m.otto@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [172.25.0.11]
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB3PEPF0000885A:EE_|GVXP195MB1639:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b671fb1-4bd7-4dac-cb3c-08dd047f3af4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|1800799024|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?I3HPg5p6qNk/UB1ajvza+XYMA9kcT0PQR7Q65ScePfeQTPgC9a6gvgUi7kkJ?=
 =?us-ascii?Q?K4PjK2KfiOH+S5B97oOYNglsZz1JtTkME+vtPTxv946Fst5Su0Hc3NsJTWVm?=
 =?us-ascii?Q?GTYR5OOT/d6bKeq6MVbRQnkH7unzAhGhbpFGwoWy6y1DPLRrtAW6pQcysTXN?=
 =?us-ascii?Q?JTiKy50n4QRMXsMWESxRebUiXmfN0IXvtjspy1shu2E44sUJvfFksfZGbk7j?=
 =?us-ascii?Q?DfK1QEhB1dUUQvqFvmoMO+TJdh4wC3gSNcWjxf6KDvj86/qYYXUjhfZOqxbA?=
 =?us-ascii?Q?s5qm7wDIzl+sH/q+BEg8cUvE92dh9QDDWE0tqUNyVry6ozft/7CIt0FwHOoy?=
 =?us-ascii?Q?hQTv/GsbVwdFuT3q/7/v8feUd+WpcKcYvX6iyyqoGdrxTXnnfjIe+3A7kW3u?=
 =?us-ascii?Q?hEAdy1j2kR/8sNSqVc6cuF5J1NyijYiqLjdA0SXGixB4bgNhgCBfRoO0YU1d?=
 =?us-ascii?Q?0u2jhrN+REhEVHtfGZ0tZIKOa4ffstqCqv0ENVMQW+RzmUj+0k21xBNoFv3e?=
 =?us-ascii?Q?O+NOgjdU1MihWShMLnre92NWC1SUx1UZrZxr0Mz3hvfG6R+Rc5xML4f7UjaV?=
 =?us-ascii?Q?QGuYu0GErr40vhqm0W8EAQvLtt6Y2osa329ACJZ4q+h/JkYN3s4O1x9i/nNH?=
 =?us-ascii?Q?pgfWXTCI8cEv2Mz0IOyiG+w2CeqUtzywqALyPOfrzt/Q3wu69+917+bfMplC?=
 =?us-ascii?Q?XpOLVJ2CPbH1qIYLUQZN5Sb321vtbEao5kSpCKF5RVFQgCcpS+H//ZT7SRFT?=
 =?us-ascii?Q?wilWVsJffE5KwMJX+UTjUk3Ut6q+a2FnOIphpD5GI2unhYe0RiiGh9iTe1rU?=
 =?us-ascii?Q?LGDLkN9pNCxaMzR2SHYkmCCzp1mivb4oJ2OeXz/WCXxQXwEO8qHJfdADl8uL?=
 =?us-ascii?Q?Jz73T4UGUO4dFRN5J762nMCJ6JrK1IjN0zxmw3e7rR0Ix7l1r/302QVRydHU?=
 =?us-ascii?Q?fT+wAYHXotC/W1lcAKU7GHOd6TPiRer/9E2h5rNpIylrmRP41mTjMB0usuBF?=
 =?us-ascii?Q?urZuW7VzLrbUNHpkW2MJ/XZEU3Cedlpy7HZB76hMwLaMqtrSVoCIc4IuheNo?=
 =?us-ascii?Q?+sk2yhS3zpQ3nmblsc+0IvCQCim2GBkb9E7mqJiJWykT0LNSgXyVjakb2HyO?=
 =?us-ascii?Q?fIyXR7IPMfa+b/oNSagqZWqORUm5PYU+08u2SI7KhklksW85Q7x1nK6HUbUR?=
 =?us-ascii?Q?tTbrRQJEIlkBJzLdRNuI1/rWRGH+pHiGP5tCYOf9Ya57vF7dQ915Uc8aWLxl?=
 =?us-ascii?Q?+E0alS9EKuvoHJycuBqzbmotvu2TEnCWKLzBJ4etEFT5DUlk5536DX7uENmW?=
 =?us-ascii?Q?MLpTQXJTJ5z0gsZv4MUefWnQCy28SYScycu7KpdKOUlu6q2lYAlX1RKx/az9?=
 =?us-ascii?Q?E2ARxpz6jii3R74HhPQ6932awJ70SIxZrlJcnACLeL2eX5HpDg=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(376014)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 07:37:45.2176
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b671fb1-4bd7-4dac-cb3c-08dd047f3af4
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB3PEPF0000885A.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP195MB1639
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 14 Nov 2024 07:37:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13489

The CPE vendor is "denx" and the CPE product is "u-boot".
Set CVE_PRODUCT for properly matching in the NVD database.

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
 meta/recipes-bsp/u-boot/u-boot.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/recipes-bsp/u-boot/u-boot.inc b/meta/recipes-bsp/u-boot/u=
-boot.inc
index 9100964c73..3270c22e8d 100644
--- a/meta/recipes-bsp/u-boot/u-boot.inc
+++ b/meta/recipes-bsp/u-boot/u-boot.inc
@@ -20,6 +20,8 @@ PACKAGECONFIG ??=3D "openssl"
 # a host build dependency.
 PACKAGECONFIG[openssl] =3D ",,openssl-native"
=20
+CVE_PRODUCT =3D "denx:u-boot"
+
 # Allow setting an additional version string that will be picked up by the
 # u-boot build system and appended to the u-boot version.  If the .scmvers=
ion
 # file already exists it will not be overwritten.
--=20
2.25.1


