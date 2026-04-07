Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78468FEEF2D
	for <webhook@archiver.kernel.org>; Tue,  7 Apr 2026 21:03:36 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.92022.1775595814218209626
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Apr 2026 14:03:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@axis.com header.s=selector1 header.b=NT0ygBUN;
 spf=pass (domain: axis.com, ip: 52.101.70.42, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CKcYQttrhUlDXO4WomyZ9AlT1Ts692HDPaa3ISflpsgpfjZqA56w1UB6fUIv5w5M/adzmvPmL6iHGkfSD5Fm2TKd0EcNwSePGmQwAC95ghwDM6OpLSP6InIW50e/2HTTePiJnLcaMLAx+gYWRl8pkotzalf2u2kYNCHm/dpmfwUg2GWlsIkn3FocpUVzcA1GbcGoePvD4gIrE/3lhhGQDIyIuJ57fcMBmYGnx7xbJIL5Jw6NG3l3ZmblVmVG+vTt22pIE1C4ycLcpQEDcDlIphr0xqNCahHkSRy0+Br23fEm1uCPtPoSWyg6NaCSCYm18uiPDc5Ic9x9G0eM0Q6lug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FCamzHtGGpOUEjRyDO/Cm52UCTuVu7WS1IhNfZdiuiU=;
 b=gO28zehVsvlkzi3unXrbhcPzeimJXV1kXhNS5fN+Gq68nMZHuqY3uxmG6K/1OT6XPQo8LhkOyBUy7B3OTjytoO+ePVZaFvosdUyla/j5ZIia1zVLVZ4WU49dNNPjYF8xEtl1Umu9nW50aIcYlVih2ScND+iXLHBMuTRPHu/iMpJGVGyPlHydXwDzJ60MZ01sdv/C/1JSTFFkhGhA8l+KHHpySuxi2KuzdMSXLrp1KX/7AKqYYdW7VW2ZXGqLXRC4+kMVOS0R1rp3O2U9KzNqsEQ9voNZHUW9h8rakq0IL9bQJswd9LXjwd9gCKXIG0hwSQUiFAj5nvneWsG8b6j/zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=axis.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=axis.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FCamzHtGGpOUEjRyDO/Cm52UCTuVu7WS1IhNfZdiuiU=;
 b=NT0ygBUNcUtR10TUFFlgedWv0HuyC0GjvMbHTEEOTHM4i+Ou6jJpxCcfJx0K7re4LUHi8lUXgzZZk6FqxaTztZGYOoJao0xkBvdOmCO+P0paCvbb/+0MrbNqjOwDrrLzIOdCYQc2iiW88Stu2A6dc3Y28oj/Jm45Nvye2skYktE=
Received: from AS9PR06CA0002.eurprd06.prod.outlook.com (2603:10a6:20b:462::7)
 by VI1PR02MB5758.eurprd02.prod.outlook.com (2603:10a6:803:130::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Tue, 7 Apr
 2026 21:03:26 +0000
Received: from AM4PEPF00027A69.eurprd04.prod.outlook.com
 (2603:10a6:20b:462:cafe::e) by AS9PR06CA0002.outlook.office365.com
 (2603:10a6:20b:462::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9769.35 via Frontend Transport; Tue,
 7 Apr 2026 21:03:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 AM4PEPF00027A69.mail.protection.outlook.com (10.167.16.87) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17 via Frontend Transport; Tue, 7 Apr 2026 21:03:25 +0000
Received: from se-mail11w.axis.com (10.20.40.11) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.39; Tue, 7 Apr
 2026 23:03:25 +0200
Received: from se-intmail01x.se.axis.com (10.4.0.28) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server id 15.2.1748.39 via Frontend
 Transport; Tue, 7 Apr 2026 23:03:25 +0200
Received: from pc56063-2339.se.axis.com (pc56063-2339.se.axis.com [10.92.3.2])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id 6805F1656
	for <poky@lists.yoctoproject.org>; Tue,  7 Apr 2026 23:03:25 +0200 (CEST)
Received: by pc56063-2339.se.axis.com (Postfix, from userid 14323)
	id 6285D12063F; Tue,  7 Apr 2026 23:03:25 +0200 (CEST)
From: Peter Kjellerstedt <pkj@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] poky-tiny.conf: Remove the usbhost distro feature
Date: Tue, 7 Apr 2026 23:03:20 +0200
Message-ID: <20260407210320.697546-1-pkj@axis.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM4PEPF00027A69:EE_|VI1PR02MB5758:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c9fb053-1e68-4910-7791-08de94e91c63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700016|82310400026|1800799024|376014|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	GV9h1ovJrx8L23QW4aEVL4a2+HIcaqfFOExBg8QBht+Fg+1wKuBlVcAlR8pPwGSxC56thG9Mn4QAqtQPheoGns4G6ukxN+lgjXkdCi4vmtT5u5nIu5HYAjjzvkiAkh7n2HllgmrPSkDSTTbS2w8+P0T717uujItK3xazP7yzthEFoFiu482dGxstWKCOo/56QKevcu0xDQojaTRb6o9nDM3Zci5qbcQVlbNKijxTjVCQoxPdRg6Gi9QpQ6B21JlTEbpUHejj/3XG1XObFAc8lRmjxgOCJUhq04L5fbUUGOqGiNNNULLR04PEqcoa70Pj49b3oSIUExoGnrmxbZy8QbAv+QiHsGV6v/6JaCN/IufgLjb3VkkaPxbaUYuOANVNmVPdKl4y8ZCKpmzuC/isAvXCB5KuWtEypzc0QtO7epJpTYeGkN+nVyDf+uzY31tv93mXWD7vtZHJieeQBg6aMtRBJaqmldAdUH6D8UDwcFndVLBZTa+a24CLm5UO4Iq8wxmlufI+VfOc/mzB48QrM3Jtoky9x1FQeqDYkF+M4DfUw62abhKNZBl6NZ3qyJ3tCPmJCjBZA43a6WJRcCQGuTr9wHzIxd6s1VPM0UhG2NR92ZQekg4rP5e+HnYwH/eMFB7vmTS/eu2LVIvw4PYwdUOl+TqnG5uZ5+l7yJOrkJ32S7vCtRpcyGp1OoqQxLZ9wMaX2fPDP+384zc3wdKTEr0TV94sxL/TRF9AzNFNC9EpWOzE0wCHSe9u2jweTwmCTEhu8fYiDSk39hTht0XyIw==
X-Forefront-Antispam-Report: 
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(1800799024)(376014)(56012099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	hn9KW7XYneQISfXXfsciYY2DTd92rqJ9j9cu3JShhdMQr9rpBEYZcgcz2r+8U4izKfGs2qVPDCqeBAG/lYxwv/346B1pkcD1aLjRkemK3gUc+td8Kg53C9GrqmhyfOjoknsFdDtiXs9ypKvHGnp6rD1fbpKv37JGgd5Nozs7YO3oMz8PgTLM6yI8/Jy56tV+zXGjJsz4TDsONAp3BLAPegbZ82WG3X/t42Vz5BG4U8U8tphBfD//y2kKLiLNQN9VQB+gM7U1WMyBcmIIMn/TIY16GJa31x1rEhRJAmdL6a9pndBRAaTAFpiFnGMQKRhOk5N2QpYALyywCnGeMqDpetYnOb/nvhPZknnW8pRFcU6UARvr16nH4vzEyrVAm9CeVIiB5yd+FOYIr6VBz1x9ZaaQoduG/rgVaxe8rZOuURZ79MiB1A5+BVn/QS6VyO8d
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 21:03:25.7383
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c9fb053-1e68-4910-7791-08de94e91c63
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A69.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR02MB5758
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 07 Apr 2026 21:03:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13883

It has been removed from OE-Core (see commit
a791ca692d08eae1953b6e699562fb0c9e27df7a in openembedded-core).

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/p=
oky-tiny.conf
index 0d8b570..c0c5fe7 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -63,7 +63,6 @@ IMAGE_LINGUAS =3D ""
 DISTRO_FEATURES_OPTED_OUT =3D "*"
 DISTRO_FEATURES =3D "pci ldconfig ptest multiarch \
                    ipv4 ipv6 \
-                   usbhost \
                   "
=20
 DISTRO_FEATURES:class-native =3D "${POKY_DEFAULT_DISTRO_FEATURES}"

