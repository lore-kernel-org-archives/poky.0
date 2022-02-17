Received: from EUR02-VE1-obe.outbound.protection.outlook.com (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.116])
 by mx.groups.io with SMTP id smtpd.web10.4730.1645083530610707929
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 23:38:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=ECMX6CxQ;
 spf=pass (domain: arri.de, ip: 40.107.2.116, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l8zjNJG2XM6h8vOwBDKJsqb7HjsnzFB2pWSkyJgcBjk6k9MgZVKbtWRQy3cVPFEavtZ291H2e3DL1NScAObiGrjyJXvi32gjX9PjsXPr3xPvJuLqMDTyIwjClywWMdOrHQ6MrYnFxArRjDVpK08C5VVuNgoJOKBcpwi78UbguMZEYRHUMiAkXs44Tnct57eg81hyRUkQtInF0Q+5FM+QZk+A7vIPwOPLo2aceid6Iw9ngccR9NEsvfe3pY/AFxPxotXnk1CZwKNEBYIOSjIIKFUIrwUgu2ziFK8ZpqZDWk5wcHXlZEmL0qCbv22KI+Tr6CgUCWZWStfJUmQm8Mj7MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sw95NvMjAc8oXsAJHKyQ6XrWV4rYenkWEVtCsodeSq4=;
 b=h0L44N4PPxfB30tsnE3In+45ppWozR7TSf0C47QKyZ3aqFfmgVAKhEh4yw8bVuLNfYjhWYWppJSl8GjA4bnQDDW9OilTm+dOjEfzGEzrPp8OpXU3zreoPMBY5WXUkxTVaI6y3pWuL1uVDJnB0PoOPH7jCYQCUPkk0BZugAr1TUSfwM/sFqE0PmnXWd5/AyxpbV2Rs0ZSlmzEeL5OhON+A4K8tiabCGubkqX4qdTjbA+hMzHYU3Ct/5eLvX/5OcJdvyPalB+BQu3XV8L54388hmO2s9rgvxLVeCN4ITEJbBRqax/K+mnXuJ8AMXM+iHzxmPcIiwuQyR3IpmGkAHmyuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=linuxfoundation.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sw95NvMjAc8oXsAJHKyQ6XrWV4rYenkWEVtCsodeSq4=;
 b=ECMX6CxQ+8FQWNj5bbwu6yXu8Gtaqu242z7P36ywcT1O4s7LiqPB5ZzRwG1EqalkF5nxfH0YufjSq21A6+30bhvmAqUXnJE0agyNf7a4vUOEDFqn8OSibodw2yVcInqQavG2U3AQw42snUfJueJ7kCc/nnZyvpvXYpyehtJfh84=
Received: from OL1P279CA0028.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:13::15)
 by HE1PR0701MB2650.eurprd07.prod.outlook.com (2603:10a6:3:97::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.8; Thu, 17 Feb
 2022 07:38:45 +0000
Received: from HE1EUR02FT027.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:e10:13:cafe::b7) by OL1P279CA0028.outlook.office365.com
 (2603:10a6:e10:13::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16 via Frontend
 Transport; Thu, 17 Feb 2022 07:38:44 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT027.mail.protection.outlook.com (10.152.10.72) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4975.11 via Frontend Transport; Thu, 17 Feb 2022 07:38:44 +0000
Received: from MucEx01.arri.de (10.10.18.25) by MucEx01.arri.de (10.10.18.25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Thu, 17 Feb
 2022 08:38:43 +0100
Received: from CASHUB3.arri.de (192.168.100.104) by MucEx01.arri.de
 (10.10.18.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7 via Frontend
 Transport; Thu, 17 Feb 2022 08:38:43 +0100
Received: from dhcp-192-168-0-28.wgnetz.xx.de (192.168.55.37) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Thu, 17 Feb
 2022 08:38:43 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: <poky@lists.yoctoproject.org>
CC: Christian Eggers <ceggers@arri.de>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [honister][PATCH] gcsections: add nativesdk-cairo to exclude list
Date: Thu, 17 Feb 2022 08:38:24 +0100
Message-ID: <20220217073824.29137-1-ceggers@arri.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.55.37]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6411ca92-9499-4532-9805-08d9f1e886d5
X-MS-TrafficTypeDiagnostic: HE1PR0701MB2650:EE_
X-Microsoft-Antispam-PRVS: 
	<HE1PR0701MB26501AA55A2876FB3B98085EBF369@HE1PR0701MB2650.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1013;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Lh9uA+be/SvBnPQKoX4riJstO99IIvcpIEULzClVW3LzXB8FeKDxueq3iA9UHma1sklvG3BajZcsVRXP7M5BW1Uj+SSAyH8fVryk6KvImIo1ae6yaafMhMemeNSpjyqcQBmxzrCKI7XpKtavdD+NcJ/QyEoXslLa2YeQ8EXYqY0G7JOtbcQhmWx+7Qrr0ZLHjFtuZ8ASAuh94QnW90vyV0skvSCVXKnnX/YCtQNjIaJOG2lEN7vZ2hA0anAVLm5PuvB+zLYsuaXYe2Ng4890iXNBAPDm2GZ3nxI5+1H7GMA6QSLEZDJw3IH+tFQwXbhGPvDoKdZ5pBG7OMQRYcFRpOJSJvVrqAj344pFziYIRjT5+8m6ozPJu4t3apShIVJe1H6VvC9HYajB85RrKfooEwW2i0BtIXZ5MgoOhRQAI1MkM1PZqGwU0yX880PK3Lz0202GfnOmv46uHFKMKGCmmsV4BeH1A+bcfLHwqQwxfPfQaB4gJ/KwBvhAnZs37je0u+hQ06DjGJcGH1G4ayeE0qB3o3ovkKwt8AeKPo+P4VAi+pvnGRi89uWL6RghPchfmRM6UsPwAQ6jdwpdGcET9kfucAPZ8avFznWX9DkgBqs8tQQA2plFtmWiMQUsG4JWXLGPSmHS+OaI5nIGZ1dWBWFm8tm7tjaDhjMxfA8gHar1891TS9w1CvLaK/RBC2ShXs+54wiJDva+zaDJchvDtg==
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(46966006)(40470700004)(36840700001)(8936002)(36756003)(70586007)(6666004)(82310400004)(2616005)(70206006)(16526019)(26005)(186003)(8676002)(2906002)(4326008)(54906003)(5660300002)(426003)(316002)(1076003)(47076005)(40460700003)(356005)(336012)(508600001)(81166007)(6916009)(36860700001)(86362001)(83380400001)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 07:38:44.5705
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6411ca92-9499-4532-9805-08d9f1e886d5
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT027.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0701MB2650
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

configure fails with the following error if gcsections is active during
build of nativesdk-cairo:

| checking whether float word ordering is bigendian... unknown
| configure: error:
|
| Unknown float word ordering. You need to manually preset
| ax_cv_c_float_words_bigendian=3Dno (or yes) according to your system.

(From meta-yocto rev: 45f97f55ae181b3fe5436276b36f5ed48d7437de)

Signed-off-by: Christian Eggers <ceggers@arri.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
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

