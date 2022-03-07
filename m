Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.132])
 by mx.groups.io with SMTP id smtpd.web10.24960.1646650632439269388
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 02:57:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=HDygnqWv;
 spf=pass (domain: arri.de, ip: 40.107.7.132, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MlI+2PZSurwvbr9HVxBlkMA+lgZ1M66JuE+y3piRI1dxQdLxmjVpz5ye3M4Wa4p3n4sJSlgNheVTCdtr/nnkiOqAPw6ISj9R91r85gYyjvaWyb7cmqMLo5oeJJB/j99KPWMpNYh6ce6NPvWTm5uWv2sKpAzPwS9PTTByA/f2iK7+T0LIm+PcuVBga4EMVGq4VtdAsx8iWDZLvXknluoWBH2GsLRXoQrQEBFTObfpHRQx/EjZ4HR4AMLNk8wyxZlJseVtllQecQUW4b8FVVIznxIFpsCXaY53/Et50QyAe0B8jg/vVwkaD4VotE+ck/RAJ8vJtz6rgIx6Q9ZvLxP9Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IIc7+9mDtPOxPVZNEpQkliToERbYaVmytMIAZ78hEYQ=;
 b=M3kDoFE84REefFVD/Pn6y1Rvmoj0b9ytlK+6X98Kv0vKVSgji4iJteLwYBN/XrhptKSDftX5NWw1xhYQ0pnG2UcPzvqYZShpTU47d3MotxKv5lA/Un5NPf+ZVPDxiWE7dZt+6dYebu/SHKGqr7piKkLlF7ys4HkmjcRUxXFgUH3Q5sxS3tyXFVw+91RL0+j7XuBFI43hLbiFHmTsnYZPTYfFIGzldnK1rHx2GNtnCfWM/wqcQthDkUDejuYIlyH7frAkturPLgtYkywboatznEJzGH307j+dGKEADxHVx5LGbTlc415pq7bS5HWVTEnCTmHJq0RuCQRV5l9WyW2Wgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IIc7+9mDtPOxPVZNEpQkliToERbYaVmytMIAZ78hEYQ=;
 b=HDygnqWvnocrf6/6h0R02f3hMq9gjsgHYIUXq6cFUJHmCkvTtN7Fa4sswvzbF2MEO4Dhp82LopSy1JdIpb9r9gGad0sU56+07WU6uWBHNA7oRAg0Gp0QwYXplOXfaFPS6RDhpgM7ySP5pc5qdqLS7sCehyrjnFET6eMjQ6hVLDs=
Received: from SV0P279CA0041.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:13::10)
 by VI1PR0701MB2349.eurprd07.prod.outlook.com (2603:10a6:800:6a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.8; Mon, 7 Mar
 2022 10:57:08 +0000
Received: from HE1EUR02FT014.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:f10:13:cafe::57) by SV0P279CA0041.outlook.office365.com
 (2603:10a6:f10:13::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.15 via Frontend
 Transport; Mon, 7 Mar 2022 10:57:07 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT014.mail.protection.outlook.com (10.152.10.118) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5038.14 via Frontend Transport; Mon, 7 Mar 2022 10:57:07 +0000
Received: from localhost.de (192.168.201.134) by mta.arri.de (10.10.18.5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 7 Mar 2022
 11:57:07 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: <poky@lists.yoctoproject.org>
CC: Lee Chee Yang <chee.yang.lee@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Subject: [meta-yocto][honister][PATCH] poky.conf: update tested distro
Date: Mon, 7 Mar 2022 11:56:57 +0100
Message-ID: <20220307105657.22387-1-ceggers@arri.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.201.134]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be0153a3-9525-4ba2-f856-08da002938f9
X-MS-TrafficTypeDiagnostic: VI1PR0701MB2349:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR0701MB23498C93FADB7227630F22B7BF089@VI1PR0701MB2349.eurprd07.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eAMp0DReTXBrvPjZzNwm+uTRIsThVaaJkwslbgSSjlV60GDnGOKTDdG9sTlOrmvEb3zroGd+9PjlymyBunlEidE/vIzZXphuOMsbLNHZCqefKOW0XUX5MHFEoIkn0Jhv0QAuiu2jaeVTdcPJrw9fuykCApZRjva0Qj4W+HHizW83I8Yu99y4FH/qsHrzktF2e2Sc5JtbXzWFQSF7fQFPKGp0nmpFDk06JxSUZy+5pbIYALPKy1HbKp1T70C0AQacAB02R31d4iJQPBlZkJxCyTsP3VMYlSoFARSmma+6Kpsicvy5NrHiAGVsFBfl/cDya9pDr4aTkyiWYQCYsLa8Y5lwiFgzaVBjh7QyGhvPhqP1ZaqbHhJs3jtdl1g4eY9bDs9mDROOoCSgQCP1eKsEWBMQGmtnj5tbJIMq8htM/5F/khKS+b5C5vQ2hrn7GjePxDhfRMZL3YQ0zGoghTPbQIU/yIo3wyfNpEM0VAf2/ABwx3+f4jCUgr5DQVqIM1veBTheqQ18bx724zBQPVaZoJTlFNCnlpfZR4yuRNLsPAY3cWoMo2haAi4boIqCS10XgRtok6AN3e+JNApbxfx8guZG7Nwe1VANeqHB+/hrl1G7gpQVkNipe/fjuq80Rd5e0ALnOxx/KFjx7oshIM4EyikddFgubDjXIUNfIlHPJnr0cZqMrrfRiLasDIsXhePP
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(46966006)(4744005)(2616005)(2906002)(82310400004)(6666004)(8936002)(5660300002)(83380400001)(47076005)(36860700001)(86362001)(426003)(26005)(1076003)(186003)(336012)(16526019)(4326008)(70206006)(54906003)(356005)(81166007)(6916009)(8676002)(316002)(508600001)(70586007)(36756003)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 10:57:07.5208
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be0153a3-9525-4ba2-f856-08da002938f9
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT014.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB2349
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

From: Lee Chee Yang <chee.yang.lee@intel.com>

drop opensuseleap-15.2 and fedora-33

add fedora-35, opensuseleap-15.3 and almalinux-8.5

Signed-off-by: Lee Chee Yang <chee.yang.lee@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf
index 51df0b6da6c9..6aedd8e83be2 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -46,14 +46,16 @@ SANITY_TESTED_DISTROS ?=3D " \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
-            fedora-33 \n \
+            ubuntu-21.10 \n \
             fedora-34 \n \
+            fedora-35 \n \
             centos-7 \n \
             centos-8 \n \
             debian-9 \n \
             debian-10 \n \
             debian-11 \n \
-            opensuseleap-15.2 \n \
+            opensuseleap-15.3 \n \
+            almalinux-8.5 \n \
             "
 # add poky sanity bbclass
 INHERIT +=3D "poky-sanity"
--=20
2.34.1

