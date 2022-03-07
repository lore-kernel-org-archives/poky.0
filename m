Received: from EUR03-VE1-obe.outbound.protection.outlook.com (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.127])
 by mx.groups.io with SMTP id smtpd.web10.24987.1646650857925288572
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 03:00:59 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=I/EtTB0B;
 spf=pass (domain: arri.de, ip: 40.107.5.127, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNuNkjSRiudz6U36DUnEsAU3OeFl4LIPYKqBkEwpIucBt6VamwwuUoj6IIHnv1tBsqfoDjq1eZ3EmZX82jrLpcbyLmOoJLv7lOddgI7UNOOTXvq+rNBS38G5rl+qK502PbT7JO68kidKmPIJJebV9TCtviiIZdIjrM2CRnmOijXFwHNoVL+qAC1Ql2KmEAOST7RMg+3K8JBy4ufgeDmM2efLS3PuRRBtWRCA5GfB03RuBZttBlQ36gyQ58eO9AdxmimKj1OG8WbIKUtrhIHGX8/CfFWbZBWzlRuP2d2YYNu4M+zkAZiJZfzBgWGlPp0RGzTsqn7/M7teQTCg6lgRLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejDsYfq5WF0PlQRbN32hn1iIqb8OPBgS3NyjTrBUgfA=;
 b=CToMbzg6himkmGO2vdaaDsplVjFJAlWdl6KVVuuIZJ2+ZZ5yhdCVFIuHrmiZ1oJbZKtjY147oCH5PLgHDqj1cEY08NfWzZqstPNpSvpLxXzqYcr1mCw1YWtsjgDkEwma2GsRaivReblOA4a2cHY0F8La/AmQdie2EsADbGvs1Fn1ImrgYCZt4xzl1azWhaaJOG7oYBgl8dbIOX3WLTmdPo5b/S+h+SFjmOj84RFo22YNFvkTxelBYoS8RGanXWpY3KiL/BZFlEnKWJDqBqqzK/Mus+ZQPo1v5IbEIXeX4MKbkDn7JSpPab7SBjXHbV42uIDu89TPI+a8ro7UzEr5IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ejDsYfq5WF0PlQRbN32hn1iIqb8OPBgS3NyjTrBUgfA=;
 b=I/EtTB0BEvkJ/DM7X96+Y0kd00k2pDzLpjjLVDJGzEOX2+0Q0GsVlE2VeYwFhlVnfUhUBT4K61MUsZI+a2Vt7vw5NYztOESEsWaBnlVZUCTIj+ib3L/3qNh7EaJnbbfNs5GP8XapNZy3+F4voBxk0YQkqsN2bapuS5EJa7ccMp0=
Received: from SV0P279CA0055.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:14::6) by
 AM7PR07MB6294.eurprd07.prod.outlook.com (2603:10a6:20b:13c::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.6; Mon, 7 Mar 2022 11:00:54 +0000
Received: from HE1EUR02FT040.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:f10:14:cafe::75) by SV0P279CA0055.outlook.office365.com
 (2603:10a6:f10:14::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14 via Frontend
 Transport; Mon, 7 Mar 2022 11:00:54 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT040.mail.protection.outlook.com (10.152.11.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5038.14 via Frontend Transport; Mon, 7 Mar 2022 11:00:53 +0000
Received: from localhost.de (192.168.201.134) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 7 Mar 2022
 12:00:53 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: <poky@lists.yoctoproject.org>
CC: Lee Chee Yang <chee.yang.lee@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [meta-yocto][hardknott][PATCH] poky.conf: update tested distro
Date: Mon, 7 Mar 2022 12:00:37 +0100
Message-ID: <20220307110037.22604-1-ceggers@arri.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.201.134]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 12fa5816-ab5a-4c80-3244-08da0029bfe9
X-MS-TrafficTypeDiagnostic: AM7PR07MB6294:EE_
X-Microsoft-Antispam-PRVS: 
	<AM7PR07MB629459A3EC5808CC08C2019FBF089@AM7PR07MB6294.eurprd07.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	98HpiKgV4s4kXwPc9IPPNewWkQFIrMrTvWQcH5yIohKqe9OeshIeIsptB3Uxb0st7KeJhnTKr4kwVFq+9IpAcydALrQp/fKUkh8x8oTQckmVz6JTI+7cAjTbvZHaAVEL3XJAcP8OfPng/0EaAwFde28YL7RaYvbAepAwDpflTqOk0CKN0rHBVLkddMQKHNnVsaOc9AQX+P23hXVIeV7fhUhTpGcgTNeF68WXevPeH8PpjN2M37Ssu6ZkLHabsCc4qurdh1VyrDUZuPMBjQnb1JaQmgBVcba6O9gnFsj20YKqGD6CBUHTC9OKncI1eDnvYz14RxoN5l6cWBazBYhiPm1Yc8crau34xJpyL06INqqcjJKlBQ2aY9xbW1Bx3I/7Tm9NGj9RKQ/qFde9VQ1zNW0gNiVN0kHFXhN4RxLi+pflFhZxfYYcG3dESE21VGX/zW15Js2/c3mIXdJUjsHWJQCLpuy4OAoIzztoaHcrPT84Zy4fw7bNrsL1k1EmlQAu2pPEh5PRFlWMtrgnymspg++vvqhLKofuVHYFS9oJo2DuTEkPv/iR5kDM7YUYZrS96HZA/IJPWT50Tom3OKTKqg5T0B7zYyIeI0ftiIhaDdgVjrMwKzgeJD5SvgH7hknGeNQoT+UQrKrd8XK+8c8SRiCOG4h1guXo74MjS9gYnwB0UsAxJ3Tu80Q7uYW9/Cyd
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(46966006)(36840700001)(6666004)(70586007)(2616005)(8936002)(36756003)(8676002)(4326008)(5660300002)(508600001)(70206006)(83380400001)(1076003)(86362001)(26005)(316002)(186003)(4744005)(36860700001)(6916009)(54906003)(16526019)(81166007)(47076005)(336012)(426003)(356005)(82310400004)(2906002)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 11:00:53.8955
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 12fa5816-ab5a-4c80-3244-08da0029bfe9
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT040.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR07MB6294
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

From: Lee Chee Yang <chee.yang.lee@intel.com>

drop opensuseleap-15.2 and fedora-33

add fedora-35, opensuseleap-15.3 and almalinux-8.5

Signed-off-by: Lee Chee Yang <chee.yang.lee@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf
index 773e80cb8f8f..85f3d9c662c4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -46,18 +46,17 @@ SANITY_TESTED_DISTROS ?=3D " \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
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

