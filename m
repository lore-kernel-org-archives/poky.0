Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.102])
 by mx.groups.io with SMTP id smtpd.web11.7123.1645103422321537794
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Feb 2022 05:10:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=L2Mnu94+;
 spf=pass (domain: arri.de, ip: 40.107.13.102, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9Oy3z8qSvwSBIrsNSIyGtPkkSr0GD4wAQNOTEQYXPypWhHws0cLz++oby35TQH9Eran/zdcZAn0GrkQmPNOnmgD6Ukm0djLBjoKVNtmUb8YMyL/Hz+KdUpK1c+CJVkJ5ICL7117huvKHkN1HUL+xOgga3JdV7vrkteZgSyoWPMvFj3O940stn59l7vpSpl0UMPbIrGWqehwD5hNktmB2z0UA3Z/VVRN++21saWLIpDszmMMZlJe0t/PiqUJAsfmakJnpHiJCYfj9aRpSh1OoFdbzNIoFtYaFsPbNtIgSgfyADv4SAJRLV44sbs9KtzE+L5HoqXNntZ2d4Xzuokm8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ra6C1JMKl2AjLS9SvEJyz2FszBhEzRSYbng04K4urck=;
 b=Hxd1Va3/yHmmpYgWN/mqGN+BQNySz5CMmQ9fcBp64V8WiE1wqYEtKmzqmz6nOGTN3XceOcR4OVR6AlUKuyHxgW9WDmDdb5mcuUQRH0lty6egk3ycN2UunM/w8xTckV10qdB8WcZuwz4qga9B5E9HjT9Bzdlt65CC7yBppHDp1oSiVprwtMnaASwvgKloAJrwwmDP5wppU3pgDjbY695RW4ZkijTHPWn8FlCob+xsn7zre9m/RlrzUTbm0EMFUSp+i/K7D4VoFB/hAw85c4nJR0gUgcV9fgOVyu5J5+U+N4L1t5uMfWdaoHrRrqjB4oQfWw9vUDDU+XxIxHrfGeb7pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=konsulko.com smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ra6C1JMKl2AjLS9SvEJyz2FszBhEzRSYbng04K4urck=;
 b=L2Mnu94+g2o+iScWwmIMJAi+wEm6O0B5z9r/ibKXZEEVdHgEFNgfBf/o7w74TJLsvpwEJiaSxv0VrjLKlTUP7rWQr2Kewn64SAzXnQ8H7AP2h/7i1lGr1G9dTMsUoiWmCLIpItJWsJdoURgP80uqFu1f84L6L+Mzoo8Su0aBnFo=
Received: from AM6P195CA0055.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:87::32)
 by AM7PR07MB6309.eurprd07.prod.outlook.com (2603:10a6:20b:134::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.9; Thu, 17 Feb
 2022 13:10:18 +0000
Received: from VE1EUR02FT037.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:87:cafe::ae) by AM6P195CA0055.outlook.office365.com
 (2603:10a6:209:87::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14 via Frontend
 Transport; Thu, 17 Feb 2022 13:10:18 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 VE1EUR02FT037.mail.protection.outlook.com (10.152.12.195) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4975.11 via Frontend Transport; Thu, 17 Feb 2022 13:10:18 +0000
Received: from MucEx01.arri.de (10.10.18.25) by MucEx01.arri.de (10.10.18.25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Thu, 17 Feb
 2022 14:10:17 +0100
Received: from CASHUB3.arri.de (192.168.100.104) by MucEx01.arri.de
 (10.10.18.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7 via Frontend
 Transport; Thu, 17 Feb 2022 14:10:17 +0100
Received: from dhcp-192-168-0-28.wgnetz.xx.de (192.168.55.37) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Thu, 17 Feb
 2022 14:10:17 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: <poky@lists.yoctoproject.org>
CC: Paul Barker <pbarker@konsulko.com>, Christian Eggers <ceggers@arri.de>
Subject: [PATCH] poky.conf: tested distors: opensuseleap-15.2 --> 15.3
Date: Thu, 17 Feb 2022 14:10:07 +0100
Message-ID: <20220217131007.21843-1-ceggers@arri.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.55.37]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b050d69b-259b-40b4-5ddc-08d9f216d851
X-MS-TrafficTypeDiagnostic: AM7PR07MB6309:EE_
X-Microsoft-Antispam-PRVS: 
	<AM7PR07MB6309A9FE58F06D789765134FBF369@AM7PR07MB6309.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:538;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JcoRq91fgGW4yT8n9pv5LdyZLeP18KDUnj16CeTDdGQarjpVh1Sj+qxYM2M58frz2IFs7vAff0XTHi4UErPfMR6HGUzsV3eaLMDuLpuM3mfNF3+H/GX8dq/v2Cdtej3ZCKFJrfp4TAExz2T4SO0GP3ljAuEbLEcPVtQD6RjJxr3QK+elXSTGGiE7V1VuMRlnndeqnpSTFyzwo2ComSRBbsoSSFmSK9Yteufz4H8EheNVm7Wqm9k80qyr0W/MibavhSdQQGnvDZFociRm3yKR0SwxqgcerB0JAPSJYk/I3bUGqdUTj9DjQ/0YxAzGdvlBKNAbg2rXJy6u/6zyLDRE8J3TClB+ADt3w+AUg8Qk7/EpDquD93G9agrj8ahliR8WC+j291AFT1B9xl7tozVaFEItazlpM4Lq0rC6IT66Gan7ea+gDMJzYd5Jg7S85rcLmdFxAFJpQI4kUxnbpQY+K/aEiSW2lStDpa3ytjg4xoQqRCVj/enWJSONXBAMlACVQ/n4WynFgbWl/OLUP+AW0B+cToKY+jagra6TlBnozpWyc57rr3s293jBxQ/j+irLuDpCACRyJ1YqzinOtlMrooyzjoMFMfWRTmzQcb7DgFrhn56kp1FfsUl8d54Rwu82PHgUz/hOwYYtXcMulIEcuJCGMtRI/m7LOPmtb9EEu4gvJ8oZ1wjzwzmw8ZBxK5ja
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(46966006)(426003)(336012)(186003)(1076003)(26005)(16526019)(2616005)(107886003)(6666004)(82310400004)(5660300002)(8936002)(36756003)(70206006)(70586007)(8676002)(4326008)(4744005)(2906002)(508600001)(6916009)(86362001)(316002)(54906003)(83380400001)(36860700001)(81166007)(356005)(47076005)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 13:10:18.1424
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b050d69b-259b-40b4-5ddc-08d9f216d851
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR02FT037.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR07MB6309
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Maintenance for openSUSE Leap 15.2 terminated Jan 4th 2022.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
I am using openSUSE Leap 15.3 for a while now and encountered no difficulti=
es.

@Paul: You wrote in cee80bd:
> poky.conf: Add opensuseleap-15.2 and fedora-33 to tested distros
> The autobuilder contains workers for both of these distros.

Do you still require opensuseleap-15.2 for your autobuilder? Could you
switch to 15.3?

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf
index 47ef9fa2ee5e..a970f6ae459e 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -53,7 +53,7 @@ SANITY_TESTED_DISTROS ?=3D " \
             debian-9 \n \
             debian-10 \n \
             debian-11 \n \
-            opensuseleap-15.2 \n \
+            opensuseleap-15.3 \n \
             "
 # add poky sanity bbclass
 INHERIT +=3D "poky-sanity"
--=20
2.34.1

