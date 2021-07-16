Received: from EUR02-AM5-obe.outbound.protection.outlook.com (EUR02-AM5-obe.outbound.protection.outlook.com [40.92.67.61])
 by mx.groups.io with SMTP id smtpd.web12.2914.1626417186709124816
 for <poky@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 23:33:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=guPmfzUZ;
 spf=pass (domain: outlook.com, ip: 40.92.67.61, mailfrom: asfakr@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hBpnD151a4wBX02ak8Z5gUhGVAEHgvlJ4lP9dphY3yQphy8QWDGg5H9B5j/2tHY4THm9Z9obkkAm16eqJEasM3eWk0+RoQbxGctkxb/X6vjxFbfqT/Crmtg/EHyJ6R32KXvJXOAXquJMj4xdpurz/WJGiB39y4a1AUmvqSxsQP9ZAIZMk9Jmxp3cEE9lzyUUWVPMcCvQ6n8dkSKhJjqEkkMvYSW1Y5Wq7mZGyms3TAwuCeQGRBU+KAzKvPNg4UKhFvnjx2+VZqZbVgAgyH8YH0TYOwm+BurxQtu8RLrM7hAfjFUUhV2QK3OwHFlNU9M4vgUV9A9pOgS0Afb5baeWmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Th9coQl0aqVqcgI57oqws0hsIUIGaVQkPRMC+oBJ19Y=;
 b=B7RfoNahZffBjwIqVEvvef/IP7D4JjsYoTI/PDmTItkPqO6PgWQzftUJLwSr5v9zrqArPKO4/wjCtZeUi2Smc9V0+oYTfxfNjG9QrZ6pZTWibvjlHUrOYOJAmgKAa8epAK38dUsIbW3Ue/5/GGTp/1fmrm+fPw75xfX1bkpM8OwQo8coeQ6P3jToblgGV/FnuHZqFTn6Bsi1rl5a9TiRipJqfZlxL8pTnAIxYwFQLj/S8HpifU3xqQwfHcjTzHDGaVvJ1akHt6OssOkHPfgokMqKYwr4uY4yxRadHypRIkY0iMl2T25XHjggpEK82F9a/0dBW1zRv+C0QwW4AsOSuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Th9coQl0aqVqcgI57oqws0hsIUIGaVQkPRMC+oBJ19Y=;
 b=guPmfzUZHl506H+WVrEi9bFZezH5lle5rVVLb5ykhr9s08JAH/8dIfavnCYm4DcsNGs0p1UExawsGSvMmAQhTBGEvnytyJUUFJeUA6Rv5MTQ+7rwcHyppFogPK6e/5LDbZOQCVB5h7+e4xIbZFloiTMQxSjMz9mpQwb9I4T0or/fiqihdN9Dn+NxCYlwQzg6/ffEV1LMLTrv8kDfnmDSlFA1eyTCmLZ8+Ro8lf2kFqv014xKPYgCj73isZkAxHA4lub/3T8F5SugHpykF6jGDfNVo2vit1fCeLvlTAcZrCZyid8e4Ms1TqhuLRXua1lyacNjjX5XoaEXVbsSRfNMQA==
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com (2603:10a6:10:40::14)
 by DB9PR08MB7021.eurprd08.prod.outlook.com (2603:10a6:10:2c8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.22; Fri, 16 Jul
 2021 06:33:04 +0000
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::6cc2:10c3:3d56:74ec]) by DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::6cc2:10c3:3d56:74ec%5]) with mapi id 15.20.4331.021; Fri, 16 Jul 2021
 06:33:03 +0000
From: "Asfak Rahman" <asfakr@outlook.com>
To: poky@lists.yoctoproject.org
Cc: armccurdy@gmail.com,
	richard.purdie@linuxfoundation.org,
	Asfak Rahman <asfakr@outlook.com>
Subject: [PATCH] openssh: Remove temporary keys before generating new ones
Date: Fri, 16 Jul 2021 09:32:00 +0300
Message-ID: 
 <DB7PR08MB3595D4D1FFE46A51D63D9151D0119@DB7PR08MB3595.eurprd08.prod.outlook.com>
X-Mailer: git-send-email 2.17.1
X-TMN: [tshPUU+LajRDkmHjBUe2G9dheLLDjmgm]
X-ClientProxiedBy: HE1PR09CA0074.eurprd09.prod.outlook.com
 (2603:10a6:7:3d::18) To DB7PR08MB3595.eurprd08.prod.outlook.com
 (2603:10a6:10:40::14)
Return-Path: asfakr@outlook.com
X-Microsoft-Original-Message-ID: <20210716063200.2071-1-asfakr@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (62.65.224.99) by HE1PR09CA0074.eurprd09.prod.outlook.com (2603:10a6:7:3d::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend Transport; Fri, 16 Jul 2021 06:33:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 46be4856-1a49-467d-3e25-08d948239046
X-MS-Exchange-SLBlob-MailProps: 
	mBRmoEB1kyLPQjbYO5OF1Ohw9yHDRRn7aTxPrTqcaqh/RSrLvRxDXIxlU4e6QCsMhhpsBUo5F1qZu8N7AKkQab4kv7HsTDHtgsofv5R4VWn3nYmPRkrR6toOeu3zLTd9IjHJsFp0KfR/38Lk0vXObwj06L3pyhQPyDyjpLpYHRib9mB6FOjHcmObmxSK8XaFjTaW+6iTKBMYpp73JHMManqWzJrFBN98GpPDDcjNLFbNP/1wqFcgq9A4eYl9hYNSElLeapko3xaTUka3XRGE1a20mgrVGQjWX+/miO4Au7HYCW2ULdZimYKqVT/1eZwG8icpKNiQfzBaSml8BUAie7HeG46vOxwAUN0HG3WfZGy1hBEsLybQtg/zq65+CB4n6wDbJxSG2JdIQiHjZ7Xuej8u8BoqZ29OfoYSjyJWns1u4SlzkEeULM6/bFGrnobAC3pMkBr/KledBrPnoZ+J+DIraFPutGU9MdphpeSmgswJKDVuULQvQ8ndpzup/tfp7wQqXp7Z+T0febmjToh7XYMdmlh8VRvr/B60QGLEK6R7V36PHQ24e8vI+GWNR1JjeDU99kfHw83lxJOGFJQ4v7aTnJAsRuq5PuB5hI9sWVjMtLuQTVspc/3rqSlSMAtspyjTZTBDHiYA1zcAY++98pSbUvzwNzI/Df5LWH8C408kmJ0RHtpEY7z/cO5vTKzjd53oiBslOBKl0M8Y1500I7kjIRjPPBVgcMfA6NCddTcjZFQgqSReGPW5y94rrmCMXB/DoMs7uzM=
X-MS-TrafficTypeDiagnostic: DB9PR08MB7021:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fdqtWUZPSP0Jlv14HE5dB9twiZIqTA911aRpkUxIs+nNWTRZMyTPvFfMW7tU+PmOSdrRWPOX+CEG8srgYvdc2DGNS5m1PicJHcXsJXpzmARg6is07b5PI0jMwjA6DJ5ZbSHB8owkfOHANVXHsUrwoLMOfVlrdVAstKD0xB9ZH4TH28gFuSYTPE/3jXHzda3CV+7Nuy3/FsTo/NHKHX36B072MJiqOf57IomHxUfBf9mMJHnlUTH5bIS06O7Tk3NiAPCYYYNyN3AhNflZNOh8ohgZ9qp4KoSDQPQQADFMCgqPQCh8f2sCuPv+2ZKavpl/fzMs7ezi8SZaOqlr3rYOV+AUpk0FuucezAXbdRSj55//wXKhnZYfw1wdfSE4js+iUrfxakYknTPXdHATydVy5gF1Dog/ZnGErauYkwtfltV4QYBKTR3QScWBWB+9/De9
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	Ka3aGgYhZsusSr/OOBY9N2U0qP6MvODJISK4jbNDidklgyKkt8eqvbrPgUVf2Tu9bynEYnFRnPjowCXUAuNPNtwDnvHBgdgSsqDlgGmMqJ5eYUPp04ZzrX0uU01oPq/cBBNHmNRIZhftEkHkl6xTXw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46be4856-1a49-467d-3e25-08d948239046
X-MS-Exchange-CrossTenant-AuthSource: DB7PR08MB3595.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2021 06:33:03.5930
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7021
Content-Type: text/plain

Key generation may wait for user input, due to the existence of
temporary keys resulting from power interruption in the first boot.
This prevents users from login via ssh.

Signed-off-by: Asfak Rahman <asfakr@outlook.com>
---
PING: could someone look into this patch please

 meta/recipes-connectivity/openssh/openssh/sshd_check_keys | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
index 1931dc7153..ef117de897 100644
--- a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
+++ b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
@@ -6,6 +6,7 @@ generate_key() {
     local DIR="$(dirname "$FILE")"
 
     mkdir -p "$DIR"
+    rm -f ${FILE}.tmp
     ssh-keygen -q -f "${FILE}.tmp" -N '' -t $TYPE
 
     # Atomically rename file public key
-- 
2.17.1

