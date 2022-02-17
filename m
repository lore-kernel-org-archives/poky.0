Received: from EUR02-VE1-obe.outbound.protection.outlook.com (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.129])
 by mx.groups.io with SMTP id smtpd.web08.4913.1645083683757505484
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 23:41:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=sxyR1Wps;
 spf=pass (domain: arri.de, ip: 40.107.2.129, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M4SdhVz+GVTxI6jvUnHkbz2u9HtgA1QqHOY1u0ocbuP5bOnGjr+8R8dBKqWLgNjc3w3CiPRzYBg9160OdGaBCfwzn9yzxXN+MzUn3tTNvdn1k70br1uxriTtBVQL1DQH3QyTqfpdYi2HsC1g/3nDJJqirZJpGfLl1hI4jAz2HojDNHmJn/PbO0lzRl1ldIqpn1beLoBJHxDSoYM87ZABPBBkxGb6cUqALivWwP5fLXGZC9BD55xOWdRb+WSwgDtb5rLSpK5bXpgEVJRuk7jMv2Ccr3HgQTMcgXL6KzgqyHeikIjnH7zsGiK9Bi/gEvuilDqq72QFr+NCC6vVBGW5Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mv2OhjdlfRQ8l1lIvYrtafxfddrDdEqXHt4imF4ODrs=;
 b=KTu5F0/uxwu3PmbKHoYsOWQG/mInchiPKHFOoro7RYBUT10c8eGqYbgYQ54Z1xP3pB+CYwHYQU2/nYd2X9ULYURBP0w43N93vBlkAXGWZixubBg8LxjCcm6/ANxBsQaWSVGcpTHY2JePtGioOH/A5NfLRGPXGDs80SWM5GcvI46IA/8bLjYOFILXsYODgQU0U23jk+SegDyvc5G8Z4F/Gg2LqslIhQ0yMlgCoGgftw2mZsMXFBWSA0xFnpZ+WtIy6Z+cHXo49mxOX7Z7UcCaMH5WEAB0XyDc+rn8+sSd0I89p1kkJnmhHIfhDi0wqJ5RRPvHFPd4ik7aDwKL2Jwfjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=linuxfoundation.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mv2OhjdlfRQ8l1lIvYrtafxfddrDdEqXHt4imF4ODrs=;
 b=sxyR1WpsqkMjRO/9LuDWW+zZGuTdUsPfcqIZ31bsGWSfvnBXAf37HkdGCR9kzUcpHgkLKkwck15DxWtOo+zgfvQMUuIQiclPPYLuzpicnv+4m80TtDFPr+izSZp2n9xjcxzFDIzcvpdWFpwWsudpLSSGq/hOCdlr+l01s+YPtBE=
Received: from OL1P279CA0033.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:13::20)
 by AS8PR07MB8008.eurprd07.prod.outlook.com (2603:10a6:20b:392::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.13; Thu, 17 Feb
 2022 07:41:19 +0000
Received: from HE1EUR02FT021.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:e10:13:cafe::9e) by OL1P279CA0033.outlook.office365.com
 (2603:10a6:e10:13::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14 via Frontend
 Transport; Thu, 17 Feb 2022 07:41:19 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT021.mail.protection.outlook.com (10.152.10.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4975.11 via Frontend Transport; Thu, 17 Feb 2022 07:41:19 +0000
Received: from MucEx01.arri.de (10.10.18.25) by MucEx01.arri.de (10.10.18.25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Thu, 17 Feb
 2022 08:41:18 +0100
Received: from CASHUB3.arri.de (192.168.100.104) by MucEx01.arri.de
 (10.10.18.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7 via Frontend
 Transport; Thu, 17 Feb 2022 08:41:18 +0100
Received: from dhcp-192-168-0-28.wgnetz.xx.de (192.168.55.37) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Thu, 17 Feb
 2022 08:41:18 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: <poky@lists.yoctoproject.org>
CC: Christian Eggers <ceggers@arri.de>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [hardknott][PATCH] gcsections: add nativesdk-cairo to exclude list
Date: Thu, 17 Feb 2022 08:41:05 +0100
Message-ID: <20220217074105.29521-1-ceggers@arri.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.55.37]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e608fa79-996a-4547-b59f-08d9f1e8e2e6
X-MS-TrafficTypeDiagnostic: AS8PR07MB8008:EE_
X-Microsoft-Antispam-PRVS: 
	<AS8PR07MB8008979AC2EEBA5AB66C1B94BF369@AS8PR07MB8008.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1013;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1ObCGtlDbDVmzRaE92qNWGMlIbaoyUFRufXmkAsgiEPDwvdKZFMIqO7+5Xr/6I7xBkjVqxXO7g768jOyWocISi8esQX1qQDACsl24+Ba9Op7/cDV9PEhfSYQXsprOY3boY1P3GVXRj2vKnbU5jjMW3/pzLEe2jonewJhGM5ciJfDvrRA+E/6r1l9EcHdb+P4wNsokklZjtmFSr6n39WdTWyxsQZWPSjGgZ4W68ZDu9gsc7d2AxCU7359klMpNNY/3Ew+D0CzAxNd2bBCmn/nkmSJz52ZNPZB/RsIjzNCjaF8j0gfcazbcH49/NbVA7Bjlpwb80UvcQG83rOwRaVDUhuA+wedF9hqd2UUuWqt0mixxtDAsz7UYy3EE8FSCnI7tXfvF4XT3wz7pWQImB/ZUC7RPJJpwaTuzZZXeIpmWC6sZy8gUlSGFovyu65cOv+ygZkeLurfm4HctNoKVyLxZkpYHPmLnQ8TvUXO6fXKb8WXG1xYFr2OIDSRYPdxpMOd95zME1044bDxt7f8f1rRGdlo+m+Urcso4M5LPJLq6CXSvLT9ZtH/ISnfF6sSe+QLetkLckhF6zeaEenwfW0z8dHZX2jMrEwP5JxW0A7JfwEMH1LEFoR8DOh0hUxB5zP/oV5RGpJfbyUY1d2xZrVQqxzH29zMBEmk3lemCpitxXAyBkvYrScDhCLlchPGpooEd8OBFJH3MFUSGX5TvZBoOR1e4nwbfDUsFYpo2Ld8mOyO1SyivlCDqCAbWQ5C2t9eeWBm4SXGfMSsffDsd6ZWzQ==
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(46966006)(40470700004)(47076005)(426003)(508600001)(81166007)(82310400004)(1076003)(356005)(16526019)(186003)(26005)(83380400001)(40460700003)(6666004)(2616005)(36860700001)(86362001)(336012)(36756003)(316002)(70206006)(6916009)(8936002)(2906002)(5660300002)(4326008)(8676002)(70586007)(54906003)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 07:41:19.0354
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e608fa79-996a-4547-b59f-08d9f1e8e2e6
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT021.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR07MB8008
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
index 7157373aa80a..75d861379444 100644
--- a/meta-poky/conf/distro/include/gcsections.inc
+++ b/meta-poky/conf/distro/include/gcsections.inc
@@ -16,6 +16,8 @@ LDFLAGS_SECTION_REMOVAL_pn-grub =3D ""
 # SDK packages with build problems using sections
 CFLAGS_SECTION_REMOVAL_pn-nativesdk-glibc =3D ""
 LDFLAGS_SECTION_REMOVAL_pn-nativesdk-glibc =3D ""
+CFLAGS_SECTION_REMOVAL_pn-nativesdk-cairo =3D ""
+LDFLAGS_SECTION_REMOVAL_pn-nativesdk-cairo =3D ""
 CFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-runtime =3D ""
 LDFLAGS_SECTION_REMOVAL_pn-nativesdk-mingw-w64-runtime =3D ""
 CFLAGS_SECTION_REMOVAL_pn-nativesdk-perl =3D ""
--=20
2.34.1

