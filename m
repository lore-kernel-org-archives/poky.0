Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.126])
 by mx.groups.io with SMTP id smtpd.web10.31381.1644825881298737832
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 00:04:45 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=V00Y+Ddg;
 spf=pass (domain: arri.de, ip: 40.107.21.126, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dv4xE8LOkPNWgqfAgH4cGHgynGQrwE0xJ3lHW0Gl7Xow/Z5u6mjikzJ8ENFXPzDTebq9/tdhQpyHZ4FyMYyvQGLzbETVbqnpbhxPA6dvEtp534vnMosOu85RzBrj5VBAfPwPjjzAEKebGPwQoXOn+FgtInvAWYWlWpZ6Dx1yPjyXUQgtQKdJjOhq/LjU2vhOLl+yNFGUuzU5DObmdVYq/rHX49vk150TQrvl7gsDjtK8INntGMfqZEV2Sp6YWIejMilRQxy/UoPQfioILitZQMgwKnMMjQ9K9TMci2VrShwYEWSN9MYUAoNzdE+GDWjM9VgT+Jj+OggZjVLX8OCvbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eDru0rWG4m8JgAksfMJ65IZLWpd/7Z19ZYL9AOI84ZE=;
 b=kKLzoAoN6hxIWjVdaPzTQhjeSpA1CwLq/muezWjOP6ylk3LZXx9u56oyDtmoUoZZgA6ARAv+lPkafn5qVJbQb/JHnGf0wBU37iHguxenrBylVIswhQ2HF5ADJsq2SaBauDKHqBcyRYLQdwrcU/rqotwnnYhG9UZ9tWYdtkce3JYwCLeLgLn1BB0T8tqwShIq+17Z6OxEmDCZR7flGsXMwkvmDaHI+nrr0r1EFSor0j6hNNT6uoL4zvKacSX/aw14U1wkHJfwWNkICkqWYsqoFKhnirbgqZmDyxI8d7Uvms8qeObyjIHHevTO5NTjRH/9yWgPUNwcFGtlmS4FyTBhJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eDru0rWG4m8JgAksfMJ65IZLWpd/7Z19ZYL9AOI84ZE=;
 b=V00Y+Ddg5St1BJr7rUVrxCJYJxIzRIAvZ3gkiHF047emRf4q04CPATeKrxWy4ZBBlyJV2uJOFDRng1Dnw2j6f2/LfZENEa45qdDzt0p/8DSvOM0QSViKnT6wLXE9BHwXmDMVXprHabGe4o+b7GkUTG9zPEqYswsUOnQvDbdwTrQ=
Received: from OL1P279CA0015.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:12::20)
 by DBAPR07MB6744.eurprd07.prod.outlook.com (2603:10a6:10:193::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.8; Mon, 14 Feb
 2022 08:04:38 +0000
Received: from HE1EUR02FT004.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:e10:12:cafe::b1) by OL1P279CA0015.outlook.office365.com
 (2603:10a6:e10:12::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11 via Frontend
 Transport; Mon, 14 Feb 2022 08:04:37 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT004.mail.protection.outlook.com (10.152.10.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4975.11 via Frontend Transport; Mon, 14 Feb 2022 08:04:37 +0000
Received: from MucEx01.arri.de (10.10.18.25) by MucEx01.arri.de (10.10.18.25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 14 Feb
 2022 08:59:17 +0100
Received: from CASHUB3.arri.de (192.168.100.104) by MucEx01.arri.de
 (10.10.18.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7 via Frontend
 Transport; Mon, 14 Feb 2022 08:59:17 +0100
Received: from dhcp-192-168-0-28.wgnetz.xx.de (192.168.54.144) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Mon, 14 Feb
 2022 08:59:17 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: <poky@lists.yoctoproject.org>
CC: Christian Eggers <ceggers@arri.de>
Subject: [PATCH] gcsections: add nativesdk-cairo to exclude list
Date: Mon, 14 Feb 2022 08:58:59 +0100
Message-ID: <20220214075859.8593-1-ceggers@arri.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.54.144]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1641cffe-7e8f-4b76-4fe6-08d9ef90a504
X-MS-TrafficTypeDiagnostic: DBAPR07MB6744:EE_
X-Microsoft-Antispam-PRVS: 
	<DBAPR07MB67449DA24E6AA98B1807044FBF339@DBAPR07MB6744.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1013;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	me98SKLM01AoGnoTLjPmdRqzRyhFHzHnP+Egvzf8hSs9awaqGZGnP2X5V14hLk6xzEVDxcYxzOx7fDygMjttVzkR5bvGDG0ZkAZcYa76uhfSNy4J5SnMx0E5Wkvh3g9woHnZ4bfDSz62qElQTZY/45hcRhJRY5uY2lHvh0u8y74fcgyuGvLVL91RiRyxOVujOA/kKAIl9ED4KweKFx9lFmN0vDQGedLmnSVRWffDYu0GVPssNHXLd13Q79JeyEFCcFjzW1+Bp4j28H86bSSgf70opT08ogjGMFEztR6iOlPrlhW9/lqX1Gvh6uc9VIb9l4OglHUquNMR86HnF5q/GDRwdBxmzIMUAUkFkJWzIWfFGeBvwkrzjl5he3+xSfeEJHEuK4zfv7Wcib4pYWB+4fo9WPpCwq+nKojfWfunrE+rGNKZ9K4EUy8ZmWQi/1v2H8FRVzDn2CWRuBdxvwHXoG7ueDY3VmRXFvGbUssyJepMIPMsRRTns5oKqLpcC3RlG6HdIj3H/anLeok9ZtGbr4nTmQ7XwihsfV1g9gMORBF2GiBn3BRcQa0f7+odJYrazm2SoLp8y75FHEv3js7+X67OKY1csfcqRWNFc214VktEtEENDDeHw4T+DkvArWd/2cTcUbJ09GvuTOJ2zg6f1eXMgmwLI4KMODQK82WaSaIcLW1majOZY0zFoj0RR92Ng5iUlGf18PaekO/DMvovbw==
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(46966006)(40470700004)(36840700001)(6666004)(2906002)(86362001)(83380400001)(82310400004)(5660300002)(8936002)(8676002)(47076005)(40460700003)(508600001)(36860700001)(36756003)(356005)(6916009)(81166007)(4326008)(316002)(70586007)(70206006)(186003)(1076003)(16526019)(26005)(426003)(336012)(107886003)(2616005)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2022 08:04:37.1724
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1641cffe-7e8f-4b76-4fe6-08d9ef90a504
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT004.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR07MB6744
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

configure fails with the following error if gcsections is active during
build of nativesdk-cairo:

| checking whether float word ordering is bigendian... unknown
| configure: error:
|
| Unknown float word ordering. You need to manually preset
| ax_cv_c_float_words_bigendian=3Dno (or yes) according to your system.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 meta-poky/conf/distro/include/gcsections.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/=
distro/include/gcsections.inc
index 886a005b341d..a1f8651ae9c3 100644
--- a/meta-poky/conf/distro/include/gcsections.inc
+++ b/meta-poky/conf/distro/include/gcsections.inc
@@ -16,6 +16,8 @@ LDFLAGS_SECTION_REMOVAL:pn-grub =3D ""
 # SDK packages with build problems using sections
 CFLAGS_SECTION_REMOVAL:pn-nativesdk-glibc =3D ""
 LDFLAGS_SECTION_REMOVAL:pn-nativesdk-glibc =3D ""
+CFLAGS_SECTION_REMOVAL:pn-nativesdk-cairo =3D ""
+LDFLAGS_SECTION_REMOVAL:pn-nativesdk-cairo =3D ""
 CFLAGS_SECTION_REMOVAL:pn-nativesdk-mingw-w64-runtime =3D ""
 LDFLAGS_SECTION_REMOVAL:pn-nativesdk-mingw-w64-runtime =3D ""
 CFLAGS_SECTION_REMOVAL:pn-nativesdk-perl =3D ""
--=20
2.34.1

