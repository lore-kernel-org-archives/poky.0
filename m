Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCA0C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 20:59:00 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.74])
 by mx.groups.io with SMTP id smtpd.web10.558.1709067535743088639
 for <poky@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 12:58:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@axis.com header.s=selector1 header.b=heY9cA5t;
 spf=pass (domain: axis.com, ip: 40.107.20.74, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9y8apq2SKYYQ+cQYfljHoC07CppJmI6JHIUBPBu+ON6WZAQLjdNNGsi4/9rmP6RUjXsPRClpQ1EEj4CVg+TvhA2EVJ2tjACYR2W/j4fdBcJh1ziuPlVQdzmZ865vNH3Y19wPzvcrXTFtTqGvawYIzBiDu29z7FUEoKFWVa8hSClAbTL66iwWYcXOytSjAbIykUqJji1VSNWY+sYrWtT0Y/TYkSGighaPs7tDmTvqI1d75r7Qg7HEUe+Z/ndavgfiu3OjaWlERisQlQGKc4vhvsVaGc9FWT282hydAuSv5wqkCwbZuXcoEHRvR5MIyQygT5Vjt5pdyd0nH71Gjvatw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uAX0Hq0f3RG15Qc40TGpcYf6lEbruAQMDmaV7sMjFlA=;
 b=B3Q0gitKKYXBDr5T6nLvK2xhjrtf+V8erz07BrgmZttsQ+rPv8vTe023zkHuNXmRhaTQnUzZFZUq/ardOze9yO8m/QgQNrlyGpq13ihZlBJSHOpSc01qO16p5B4d+KG4VtvNafXx2UCsOsDt3YFdGGk19fIjomEr7SJIe33hja5MfsiTe6ls/W/Ghfxt96oheTAKw7M1G9p1TBz6AGbEHtl/e0zKs/q7R3QQAY6oGGvprbC6kEqfJo2EzArk2xFMw+GODaTV73Y77DI2zTUV2q9VcLho1FDz4q9BFcc5wWm+Mpf8qhKTiGkWM/ZKy5uPjMc108akKTMfDwVPnMVUgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 195.60.68.100) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=axis.com; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=axis.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uAX0Hq0f3RG15Qc40TGpcYf6lEbruAQMDmaV7sMjFlA=;
 b=heY9cA5tmToPL5QBRHmjM2ZxXEWpjAUpB0QawkM/QjY+eOAnfcnUjFGfBh7B7gooNBQujzQf0d2cUFGXU56x6R+g+L0FbE8wMLsmy6mGzpwbVU0XuICK5dj68WZwDSJ5P5GFXHWlEraPNIVXZVZVB96ryEJgPE4zitp08oz205k=
Received: from DUZPR01CA0234.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::25) by AS2PR02MB10375.eurprd02.prod.outlook.com
 (2603:10a6:20b:546::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.36; Tue, 27 Feb
 2024 20:58:52 +0000
Received: from DB1PEPF00050A01.eurprd03.prod.outlook.com
 (2603:10a6:10:4b4:cafe::d5) by DUZPR01CA0234.outlook.office365.com
 (2603:10a6:10:4b4::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.27 via Frontend
 Transport; Tue, 27 Feb 2024 20:58:52 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=axis.com;
Received-SPF: Fail (protection.outlook.com: domain of axis.com does not
 designate 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com;
Received: from mail.axis.com (195.60.68.100) by
 DB1PEPF00050A01.mail.protection.outlook.com (10.167.242.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7292.25 via Frontend Transport; Tue, 27 Feb 2024 20:58:51 +0000
Received: from SE-MAILARCH01W.axis.com (10.20.40.15) by se-mail02w.axis.com
 (10.20.40.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 27 Feb
 2024 21:58:51 +0100
Received: from se-mail02w.axis.com (10.20.40.8) by SE-MAILARCH01W.axis.com
 (10.20.40.15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Tue, 27 Feb
 2024 21:58:51 +0100
Received: from se-intmail01x.se.axis.com (10.0.5.60) by se-mail02w.axis.com
 (10.20.40.8) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Tue, 27 Feb 2024 21:58:51 +0100
Received: from saur.se.axis.com (saur.se.axis.com [10.92.3.10])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id 37268152FC
	for <poky@lists.yoctoproject.org>; Tue, 27 Feb 2024 21:58:51 +0100 (CET)
Received: from saur.se.axis.com (localhost [127.0.0.1])
	by saur.se.axis.com (8.17.1/8.15.2) with ESMTPS id 41RKwpkp1291034
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Tue, 27 Feb 2024 21:58:51 +0100
Received: (from pkj@localhost)
	by saur.se.axis.com (8.17.1/8.17.1/Submit) id 41RKjGaZ1290093
	for poky@lists.yoctoproject.org; Tue, 27 Feb 2024 21:45:16 +0100
From: Peter Kjellerstedt <pkj@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH] poky.conf: Set the distro name to "scarthgap"
Date: Tue, 27 Feb 2024 21:45:12 +0100
Message-ID: <20240227204512.1290078-1-pkj@axis.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF00050A01:EE_|AS2PR02MB10375:EE_
X-MS-Office365-Filtering-Correlation-Id: 1811388c-8e66-4275-06a9-08dc37d6e71d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DVyeu1f/sKzjxmARLGMt3SAhv3ZXP/u19N58VPWaRZNcN3jOY7KGKlMG1wIQpVvkwkdx5Qhck3hfLqXspUhlgElKn3b7UJHS2MdO22Nvz+V9xFoN/vErGx2i4OtF44jlewIq4CJMGchPRnxeDDMlNnW+Rwuqxnic2U2Upp/0o0qjtjNEgfqc3R1waWyAgUgOxqlW+52yB06Pi7+0EpzXNIHeLPfHZYccc6zxXrNNKoSsm+Gna2vGikYFlDi6dxbDMMolptPkuiEOw2SywzCXWQWjuEcCg27G6+MqWyiJ/Uxv3NujEk8N0lfTOwa28WBBL9h2jgRhbTr7pFjXO6Q1Ng/bswxJVDXuh7pMbtcLzKQsFOut0Gp6aiYkL+/Zt5YM1VdxPi3c9pd0OFTmTRDKt0jtsRGKCKvZaEZGZHNqnPA+umKnOxfXpizJmK2v6HN713efCW/UlPhQOb/hm4xKsi44b5jaNkg9qpOgu+J+ktDIClTsFKZZWaDrUpjbUeO0q7ztQucO5Xz/54CekeQuYuA2cE8gODG9P/kg6Ij1BeCx0dSrGXwzS8awAsaQMW2eNp3UsPINMx5Gy7YxC4kF0VJ7NBZDf/eYv8a6YeqYuzzZtRQ5lO9Y/hkQUIeGR2Tlun9oqGgKhBYoOyoahZy0XIXihfw+PcsL+Dd7PW2BHILF2pP3LIg9lECjnLzouJZjRzwHyjlwhzony3PLiDeLmV5MDOhfCRRgH3XZhlPvYF6x0Ia9D8YNEnAq1CA5BRYN
X-Forefront-Antispam-Report: 
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(82310400014)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 20:58:51.8954
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1811388c-8e66-4275-06a9-08dc37d6e71d
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF00050A01.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR02MB10375
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 27 Feb 2024 20:59:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13281

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---

It's been a long time since this diverged from Nanbield.

 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf
index 3b7bc66780..e59ad974d0 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO =3D "poky"
 DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
 DISTRO_VERSION =3D "4.3+snapshot-${METADATA_REVISION}"
-DISTRO_CODENAME =3D "nanbield"
+DISTRO_CODENAME =3D "scarthgap"
 SDK_VENDOR =3D "-pokysdk"
 SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADAT=
A_REVISION}', 'snapshot')}"
 SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"

