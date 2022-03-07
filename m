Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.102])
 by mx.groups.io with SMTP id smtpd.web10.25003.1646650984489211847
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 03:03:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=Vpj86OZD;
 spf=pass (domain: arri.de, ip: 40.107.8.102, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGwOf0Sl3FthQ+FuiPMapGkyl0OWd55rXlp9aRgy5B+GKy1WSIG/7t5ZPUDi/XE0/m3U4SJ24GsTBcD3/RIRSiXfepJEi4vgGU4UPMlTePfpOCPyQiCJjkmqQelIVYFI/X6WhapZTYqMIQVZvrgJ3odOvnDy/2yvjH/k/jd137SpvQhya67jNUNAfzFmEGFljFUqJ4mW50C6J8UH/f+3tlYpBmLItf1gQLblFmxb/bCcLbjFjexAcDJ9ot5AAHsgWyE3SlI0Ig1qYHicpSedW0zy1eUIoW0Rs/QAz48GBnBQPVrYxtjsgnvcd+zXVWFL1qZK908k7mQfXyYYY8SxcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SIv1wbLQm+iBHvN3MEslzzHVRz2ldDfN4JeSNj4eg30=;
 b=fvRS0v4WIBiAqLa3kf/OU/xifM43yLQvJfAjkl/xyO2aegRFQ3QdN4RjXWokfYBeZnD/Eu3Bxvp+2pWL78hQXJvQ7NCi7TCp+UDOdtUb/RYH/+218p4R75tUvcac7y6Eq2GVE881K/8VMZM16jmZJ2uacRoa/OTl0QAPJB57v1YgPCV48STlaeJ98mzdPXDbo1Iq63wSID4fXYxDrI2VTglu7/b68YIyxaD9gjZvMxxNkVT/cOeC99j6BhwBkMxrq7135J7LOo4LLux5jOlkFEEBubZUeFfHe/gwyJ7JCWvPyMTNO5Z6YWkKbieL867jqBP+bB1QjRdHyQfV0C3BUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SIv1wbLQm+iBHvN3MEslzzHVRz2ldDfN4JeSNj4eg30=;
 b=Vpj86OZDHgGUGjPkeGsyBRzQKgYb7ECyLBgT/sP0WDyqTKs0CJFjHz0uF9gdGEQ9gYCpaG3W+WHmOckHbJPSIpsxsGd/6fu+nWVnEvTiiyOkyBkwOsJtz/zx3dhoPtrXnTZYoYDMIJ2VvVzKWKcbJn279YQPyThooWPoQliB8qo=
Received: from SV0P279CA0047.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:13::16)
 by PR3PR07MB6492.eurprd07.prod.outlook.com (2603:10a6:102:6c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.8; Mon, 7 Mar
 2022 11:03:00 +0000
Received: from HE1EUR02FT038.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:f10:13:cafe::56) by SV0P279CA0047.outlook.office365.com
 (2603:10a6:f10:13::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14 via Frontend
 Transport; Mon, 7 Mar 2022 11:03:00 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT038.mail.protection.outlook.com (10.152.11.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5038.14 via Frontend Transport; Mon, 7 Mar 2022 11:02:59 +0000
Received: from localhost.de (192.168.201.134) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 7 Mar 2022
 12:02:59 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: <poky@lists.yoctoproject.org>
CC: Lee Chee Yang <chee.yang.lee@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [meta-yocto][dunfell][PATCH] poky.conf: update tested distro
Date: Mon, 7 Mar 2022 12:02:50 +0100
Message-ID: <20220307110250.22718-1-ceggers@arri.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.201.134]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d24b865e-cb80-41dc-2842-08da002a0af8
X-MS-TrafficTypeDiagnostic: PR3PR07MB6492:EE_
X-Microsoft-Antispam-PRVS: 
	<PR3PR07MB64923AD600B8BEA74A440EF2BF089@PR3PR07MB6492.eurprd07.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	N8J9g33P8MamyebGysm5DsnQleELNlV4yA9HMLo5yIwe6BY30Kpkhmv5Rn87dHuHaN9RRAeBN/j/NP4NN3Vv93MwdAgE6jQw1s8xYS7geeZ+nyfy5pg8noOOZW5/jECM1dvh4YyckVNXaaAFwJOs1Ch/tUeIDFGwWe06/rupnrzHVP9yrfqwynlq0oqsN4/kLmDgzl4tKveA5TP3NXxDlSRHX2n0xGKDLc4zVc6cBG3fmC3NSwal6QjAzgV1o2vVN7r++DXcNuS1/K9rIxAScV2YQqsuNkmm4Zje5sg94bShZ1v5rWFqCm7CZgWx1VGXmoF4npFGmlk2hht5ttwleYdB/5bmoXZdXAt9fphz6j3+7jKY5oUCCk0Fqp+91VLRLXTtSTvk3wVdj2jNlJLeHCI5dREaz97wl1dZH+vvftGoPLtV6btSu3lqDKOjX1ngN5X98dotA+BJZ++g8rioxjsnTDQ4pNd5a6f4cvZiGLCn6OrkyJQ8XJIbNh2HjEYIc9sX9+dOyAq8+63j4ULVvo0Jo0YxceNmbHKK3a1NSw9NHgTwnsQyuGvjHIHoSaySfLA8Etkw3JJeq3DxJ4AJExIAAak9o/zJZj/pmJPQp3n+59vTrJI7inH33OpurCHk1AqHjzXwbqqqZQ05RmaAsTfgUDrq0F3+nS8H22me8vHUtnoiHKtNP0ULtpfxdm09K5JvwdlH3clAqlhDkbQ3z2SAaHUFVK9vjXBZiR8ItH4=
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(46966006)(36840700001)(36860700001)(54906003)(82310400004)(316002)(6666004)(6916009)(8936002)(508600001)(86362001)(83380400001)(81166007)(1076003)(186003)(16526019)(2616005)(356005)(426003)(336012)(26005)(5660300002)(4326008)(8676002)(2906002)(70206006)(70586007)(47076005)(36756003)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 11:02:59.8289
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d24b865e-cb80-41dc-2842-08da002a0af8
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT038.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR07MB6492
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

From: Lee Chee Yang <chee.yang.lee@intel.com>

drop opensuseleap-15.2 and fedora-33

add fedora-35, opensuseleap-15.3 and almalinux-8.5

Signed-off-by: Lee Chee Yang <chee.yang.lee@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf
index 7274657037f8..70c086593ca1 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -57,19 +57,17 @@ SANITY_TESTED_DISTROS ?=3D " \
             ubuntu-18.04 \n \
             ubuntu-19.04 \n \
             ubuntu-20.04 \n \
-            fedora-30 \n \
-            fedora-31 \n \
-            fedora-32 \n \
-            fedora-33 \n \
+            ubuntu-21.10 \n \
             fedora-34 \n \
+            fedora-35 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
             debian-9 \n \
             debian-10 \n \
             debian-11 \n \
-            opensuseleap-15.1 \n \
-            opensuseleap-15.2 \n \
+            opensuseleap-15.3 \n \
+            almalinux-8.5 \n \
             "
 # add poky sanity bbclass
 INHERIT +=3D "poky-sanity"
--=20
2.34.1

