Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.62])
 by mx.groups.io with SMTP id smtpd.web10.30295.1629752255237918653
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 13:57:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=sMpDSzes;
 spf=pass (domain: outlook.com, ip: 40.92.91.62, mailfrom: asfakr@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VyuNIhJSzMTuOeCTjtw1vt3x/0mtE+54JnzHw34nyxVjc4Ty36VbjV5iYG0LFyvKy7jsQYFDuisE0kE6d9ZIm1Lrf40NSxPEECgsJj6tqw34tx2mdYOxkd2WEqqXGW+GLlrIMO7zPgtV5mm3r+uLrKAiiNWcuNFelPrG/jaRwMuabG/V2CQJbT4Q60Ce1ftAayQP/BzqDVtxVk9xKIR14YrMDYsXyLPrDMyYdHt7Do/g+npKEkM4nIKyl5mUS5nO+kIHD9NCu3ro3ld3nSTwXRcFAMkqw/OR/cMDNPSjPCZ9lvZJ68PEgBv4xhE/SPETEnv4j7RhByS33V+mJvxzFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9Wr9xTo8lwJzDnkNftRJiDPu8PFlDJQCcbzzjB7um4=;
 b=K+vFmuPmz+QZmet6a0CNc9oElVYx30J19/bxyL6YSkY7rItlM/emBwLEPV0+uQrRELpwGUsbWIMXNpb5ReyFt2FJk4LUhPSb0GcL69DaKAOuJ3n36Uizl4QDx7JcXtYTm4A7MpykCeB64Ndtds5J0WcQMeB1lk36VPzCr6o1vSls1sIEMYgzMk21uS5mRylM4NPuBg9wmyxP93vPAg0koGOsNC02100cPm5aeCKZbCzom2ttMRenGNVTfmCFr+uqGBDXLGQexRnXzV7PzI/novdH15HcxeSo7q07acc/7ybX3Tbr5v9eMr8Uj5ZzfsZI3dD+pJAT0EYkFq5AxiqQVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E9Wr9xTo8lwJzDnkNftRJiDPu8PFlDJQCcbzzjB7um4=;
 b=sMpDSzes1quJNEZdWv1QJIvwbDsMeVd2+Xp6Fg1LpTLcv73YG2EShuRXExiFXr6jEIKqw971A5aALe0sQ8aq1wrJhAw2PCHX6XO10zUmi7YvCs3k41MBN6ODG9G6Vm+DT0cFCXF04fnQNKxBUu0ZxsfOm/lvdv58iJTEV7hN264Dpt421lwtC0UZjK997fumGnN41ZMpMXX7SoMPGDyVq3ggex50a1rJ1cRQUhvsSV78h+j6SWTi4S3o+OdtUEjmUz9QfeJ8l9Yrc1GxMfJdv0t42yIDK7o826+SUH3aEPIYE5NKo8gYLsXullq8ZLqauQ/jH6xSEd7Xu32tjKbmoQ==
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com (2603:10a6:10:40::14)
 by DBBPR08MB4252.eurprd08.prod.outlook.com (2603:10a6:10:c2::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Mon, 23 Aug
 2021 20:57:32 +0000
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::6cc2:10c3:3d56:74ec]) by DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::6cc2:10c3:3d56:74ec%5]) with mapi id 15.20.4436.022; Mon, 23 Aug 2021
 20:57:32 +0000
From: "Asfak Rahman" <asfakr@outlook.com>
To: poky@lists.yoctoproject.org
Cc: Asfak Rahman <asfakr@outlook.com>
Subject: [PATCH] initscripts: optimize read-only-hook.sh for performance
Date: Mon, 23 Aug 2021 23:57:22 +0300
Message-ID: 
 <DB7PR08MB35959836F4FC5178A8713A4AD0C49@DB7PR08MB3595.eurprd08.prod.outlook.com>
X-Mailer: git-send-email 2.17.1
X-TMN: [jD4qHO6tMCwXX0r7NFqB2ZKG6gxzF0AQ]
X-ClientProxiedBy: HE1PR0902CA0034.eurprd09.prod.outlook.com
 (2603:10a6:7:15::23) To DB7PR08MB3595.eurprd08.prod.outlook.com
 (2603:10a6:10:40::14)
Return-Path: asfakr@outlook.com
X-Microsoft-Original-Message-ID: <20210823205722.31732-1-asfakr@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (62.65.224.99) by HE1PR0902CA0034.eurprd09.prod.outlook.com (2603:10a6:7:15::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Mon, 23 Aug 2021 20:57:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 71a5dcfa-ef5a-4d44-e343-08d96678a06f
X-MS-Exchange-SLBlob-MailProps: 
	7MJMDUNTCtzUOxdhUfxycneIoa0pN+tIv7f+/4m2C5QXFsoXIRjr1hFNYxDkStV83XUmSX+dePVl9Q+6YN7CxZlFN4ZZ7kbphufyqIsipCma0m6Zh68QkmV7LSo29LB5eLPqTDsGKfZi3KOYLB/J6SBqmfTc8+Y/WFQWoip1rsWKN1VHGlIvVnflTtEaDGn7AQZThXRV3k2ZYmGZK4xX49EBdkOztR/XwXvxCEUxOy5eCQzc5JRcvHkXmfOT1PG0k3cAZyH5EencKZtx4aYoVm8tZTrudsDjeMQLWCs0KV8kiCukthmls7n8e3sKQkByPqEet8+JkjsICeVXEZMIXwt30YmuOW4tD/InB4KzoIOd3W8G9pke38ANxFM4662iP0ld9LzdkQv8XKsgoQRFc/7Ai2hbrRypevYva16mpUBUSoRff6YuG8wl5AQu0e9o4n2vNAQEBqaT/ihzTQgwxhpZz0+SPbBiKWFe+WjQJf7i0YbqP6Yy6T+Rak8jq9jY8ZYzI3iczSETOCg+YFHzDzTkYt8CYmgxUFjS0oLN2YwtLMcg7FJz+JbeO9RQQSJb3Zrep05HNvOrVnA/YPtvhECgnQz3Cp+yY4nUTVWhf8xLfxGeqrHEYUA0ek1GqMPrUaRMFMXKU4brYSPdlFbSxmJmu/c2wX9Z21FrEmRAspOg34aI/TxhmE7imUrbrYyvZqmic8jvtxrWUzhfHveHVfNw/UdxuUoICICJ8jvByDQzcKXqUTsYOg==
X-MS-TrafficTypeDiagnostic: DBBPR08MB4252:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/1KKztKquFX7faGeI4lULjuXzxXjBoCELwGAECiXOkHFFGfYhnHsJ3CcFV8o/TRIxT9Ajm/huS7A+4MEStvHRhYikVKkReoUKhhWNDLYur/dhfLR5yxZJs6F6Spro9TLtshuAxSspreYOOSE9Xj8w0DB9xslF1fSQvzGzk5cmLr5NpFO6zeOMg4fc2JW0+14fM9JjOClpyyDc9KzqVoTDJIJyAiIVtSTh6KPr+LDuJ5WFCgs0ZcWXhuI8Tevj9SERY7ScFjSLpvpc1BdpShEr07oiVjWbR1G+IxrPsSkBInvW7CJ7qPnXzizPFCW/ZpwmNSDgstIjVhgy3rV/pZ/OwMivMvcBqtOUdtmdoWqnNAigUPWkynI9dBAB4OKzea6ozRXtDwcnenvh99kjktYn88TJobH0QJJtsYq32o6GdiNl+kZ7toMkbOU+hpx3VgZ
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	ESdhTgQxJ7hrMkJgTZEGOTeXuETI54dozYj16bX6RBomeyD4hBEZ7GZAFjBSA4vIut9i8flhOYAq65R/o8GcY92f+ouziQk8c6q1k3TO7tnyqOrsjtaUzI2jYQMQ22+fY7qRMFrin16kGxjPxqWyzw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71a5dcfa-ef5a-4d44-e343-08d96678a06f
X-MS-Exchange-CrossTenant-AuthSource: DB7PR08MB3595.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 20:57:32.7479
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4252
Content-Type: text/plain

The current script runs multiple iterations to determine
if /var/lib is mounted on a writable partition. Optimize
the script for faster bootup time.

Signed-off-by: Asfak Rahman <asfakr@outlook.com>
---
 .../initscripts-1.0/read-only-rootfs-hook.sh  | 27 ++-----------------
 1 file changed, 2 insertions(+), 25 deletions(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh
index bd445ddb07..8c0cf32d0b 100644
--- a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh
+++ b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.sh
@@ -4,31 +4,9 @@
 
 [ "$ROOTFS_READ_ONLY" = "no" ] && exit 0
 
-is_on_read_only_partition () {
-	DIRECTORY=$1
-	dir=`readlink -f $DIRECTORY`
-	while true; do
-		if [ ! -d "$dir" ]; then
-			echo "ERROR: $dir is not a directory"
-			exit 1
-		else
-			for flag in `awk -v dir=$dir '{ if ($2 == dir) { print "FOUND"; split($4,FLAGS,",") } }; \
-				END { for (f in FLAGS) print FLAGS[f] }' < /proc/mounts`; do
-				[ "$flag" = "FOUND" ] && partition="read-write"
-				[ "$flag" = "ro" ] && { partition="read-only"; break; }
-			done
-			if [ "$dir" = "/" -o -n "$partition" ]; then
-				break
-			else
-				dir=`dirname $dir`
-			fi
-		fi
-	done
-	[ "$partition" = "read-only" ] && echo "yes" || echo "no"
-}
-
 if [ "$1" = "start" ] ; then
-	if [ `is_on_read_only_partition /var/lib` = "yes" ]; then
+	# check that /var/lib is not mounted on a writable partition
+	if [ -z "`sed -n '/\/var\/lib .* rw/p' /proc/mounts`" ]; then
 		grep -q "tmpfs /var/volatile" /proc/mounts || mount /var/volatile
 		mkdir -p /var/volatile/lib
 		mkdir -p /var/volatile/.lib-work
@@ -40,4 +18,3 @@ if [ "$1" = "start" ] ; then
 		fi
 	fi
 fi
-
-- 
2.17.1

