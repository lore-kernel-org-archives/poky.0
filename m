Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17348E7716A
	for <webhook@archiver.kernel.org>; Sat, 14 Dec 2024 12:04:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.16303.1734177852404927284
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Dec 2024 04:04:12 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2078c6ec63=kexin.hao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BEBt2hd019512;
	Sat, 14 Dec 2024 04:04:11 -0800
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 43h66803w0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 14 Dec 2024 04:04:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UhsnvoLV9/7/m2x/cFZHZw1qjcWaD7OmIV5FECUuBbSl9ponc6icLONeU0iCgqqpLgB/zyCdnj5V+UidWMPLQr8lHDk+iHO4sFEV8yHY8C5Xi6sxUvv/7QBI11WeJv3dlMBRFcNUZJqeHbwjjKb6DrFCDTvMxmBAYMOC9ud3ozz1C0vfBbwCNPgXuTdWGAuI4y5SIhUfmVw0qwZZdjV8JL3h+jT7SbCIK9qM/4dPOVCPFVon2vEaxgzIwX/o0RaNmvIycLtjKF0h67zeN25WAoe/APWjar2t6EZsYtQwkjDLwSk0cML4DxPMqnUBsNlcUXMjEEKX6S5FWsykliGXiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hcg2GMQ8t3cJL4oE8xCqpgn86US3soeQJyg8slxp5xk=;
 b=HB329W8aKEunyadIvfRvqOdcIuWDEkRkXW0Rst5irlkQhtEx1vIo7qEjivggIkfdmtdyDg5mMmXXs175ARc3/YjgAAsgbb9z+R5MVquwgUHrxI69v3xpmPKxawVzJlyQTuw4JQGKCwpIBwlzXQp9SrqgiIrGFWHUE8e+Yjp2k42cgm8zqkSkDRI7VfehyfwszQi21SM2AHbklUWRlougru+//mcD1A1rJeBe1jpF9nA0+fKw2bNPpwKj3xw6YmZZpehO3+f7zr58mlD+hCHabZYThmcZ6s7Vedgs5uO+WjaS8USwRWIiVsS8X4kpHemIXrUgQBS7MPCpF86J4+cnsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from MN2PR11MB4646.namprd11.prod.outlook.com (2603:10b6:208:264::8)
 by PH0PR11MB4789.namprd11.prod.outlook.com (2603:10b6:510:38::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.18; Sat, 14 Dec
 2024 12:04:06 +0000
Received: from MN2PR11MB4646.namprd11.prod.outlook.com
 ([fe80::5a5d:3c61:7600:4a56]) by MN2PR11MB4646.namprd11.prod.outlook.com
 ([fe80::5a5d:3c61:7600:4a56%6]) with mapi id 15.20.8251.015; Sat, 14 Dec 2024
 12:04:06 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: [PATCH 1/2] yocto-bsp: Bump the default kernel to v6.12 for beaglebone
Date: Sat, 14 Dec 2024 20:03:17 +0800
Message-ID: <20241214120318.2317932-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0109.apcprd02.prod.outlook.com
 (2603:1096:4:92::25) To MN2PR11MB4646.namprd11.prod.outlook.com
 (2603:10b6:208:264::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4646:EE_|PH0PR11MB4789:EE_
X-MS-Office365-Filtering-Correlation-Id: 10ba98aa-ada1-487e-32c3-08dd1c37688a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|52116014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?n5m4t1WlPIt4TDnPG8vTIDFmMOk8UgJoIKwadGKc0nv56PGFu9czWjl7z8ga?=
 =?us-ascii?Q?uXlDSHFZUdo4x2DSTpjW+akJ+1OeNZvSLjXVj2Zeji0xe7ayIuA03n3mqcUn?=
 =?us-ascii?Q?Xj1b5NTGJdZ+8zg0JlLJnHeESN+e49kAG1qMEu08ci0lcu19c5tKvkCmWljh?=
 =?us-ascii?Q?1Xb+xKDNL39kcyxv785vO9KTEaauFffWQy0QctrkSjatGS2j9mp/bWhEnelQ?=
 =?us-ascii?Q?ux258PTsBEkSLZHtRKL7VVov+bO7n5Fm8GrkVs+FUQUFiDU2NeI8dFEcYW1s?=
 =?us-ascii?Q?ImOAgsyF4F2W8ScihTvg8FQ4CHqjJArsyw+xkcLZnwz2iZ/lMCBNx2hLlGcg?=
 =?us-ascii?Q?zN+Gs3kjQVssGKoCxyqbmSYxpOx2Ccs9wrIFzoF4TWkx1fpJcKOhlqoH+jwV?=
 =?us-ascii?Q?YPpEEQcn9zxqc49fXU1HDgnw88BIvbIuOaDG18yoWRAGh2Lj5RJ1Zk3Avy+B?=
 =?us-ascii?Q?RWc4UbTWA0+xlWnyuyA/R+JuwFW0wbHuIednnFOQQfrCvCL+X1Ff2R8xB00v?=
 =?us-ascii?Q?Wul8tNqkcXEwlzD28yKO9yoHEjSc0J/FMQ8DnT1zZG5aSMydvmuOsTPG24TI?=
 =?us-ascii?Q?xYKusNLc93BRXThVUqReakiz5KlwMyFglrxF1o+csJmbKDOYdjHeA7WCjnxQ?=
 =?us-ascii?Q?soDTSTTODJUj7+Em4m71AzmmNQXApSmveplN/ofcWuLk13ykdjZ80c2mbiya?=
 =?us-ascii?Q?S2G7qHk9F+h1mj5tmMmiZ7Wj6C65J3JICRF8TqUqGrrptUYm8Pp7uJDbrbTj?=
 =?us-ascii?Q?VQdXtHdUUJ4LebtKytroDbHcklqMZf7wD38o2qUY15YHE8OEOqWPABXipyop?=
 =?us-ascii?Q?EXyT+qads9daQwjv5GAKRa+Tm7iGJMmbTHLkaKpfp8wvXDTpvsWyAv5HzkyK?=
 =?us-ascii?Q?CZrVCdpfzS8+kysMESewUe6/6yzoMg+AAhHA5ifNI0QVvZW9wg9O9PVRsx4M?=
 =?us-ascii?Q?5d2HhNUNJGwGFhYNWIIuE/Z0x4fOsRhFczZwVLIvBG0rVNWCHAmChDx6/WmU?=
 =?us-ascii?Q?QT4WhcMBeLf5jM2Avos6cXoMMly+PMKczRNhQYSfe/oWfDCB1AVtUXKw+oWp?=
 =?us-ascii?Q?/REYlew8RLTD4FhvtvshgIUGX4pQeR7UkWWH97F4z4GRDLKZzz+FDMw+ERan?=
 =?us-ascii?Q?fqbOiwsKj2D4EIkffh/o7RPbx3aXnRBRtvAnCWKkdjxhoDkNFNuFh2k7tklL?=
 =?us-ascii?Q?K9wWRk63aTSnbtwjbRqeA2KjB+Pk8Qoe3/FR6/18CfOif/PJ8ua0i1D6F1Am?=
 =?us-ascii?Q?SV7vSrOdzsgWc/7aDATuk6scFtfBJxXLNGsX5a+oipe8RBIxpdEXxDsgyL20?=
 =?us-ascii?Q?YPwJpzKitDwMhNmDW4KnTbt43iiSHcf+dBxpAoWPy7i7K/MMnvGMwCQlZ831?=
 =?us-ascii?Q?btcE2xHZm3wJh85kbym5uHRLnEcKWeOgfAio2mV28zmeaZBQIUhJuPk0zSaF?=
 =?us-ascii?Q?73fXQlXEVPvyCO+O/imXZDSuI8C6Qk/l?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB4646.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(52116014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?BOjVepC8ukoaEvHGCJhIDWsJPPNYgqW0Ppz8bvQRa8dejtXgrR0udSdK3+kU?=
 =?us-ascii?Q?VsinenAoZKBxRucs7BEWV6L54r7bPzixOjWjcip5ka7t1jw50XeqTk11txee?=
 =?us-ascii?Q?bMtGPKItogwW0KIHdx6s8axvZ2HbzhWTmRoFFsY+TB/FTAeDjRhXSTQgeHE5?=
 =?us-ascii?Q?GSMY0wzNIzWouifB9A4ygytB/oETH0eCe0MLZKnQbJYAe68fbvBjsfANSXyu?=
 =?us-ascii?Q?EaXKPzL1UknZUaJQpBGh+F7ODvKIyXJv8fV+9oi5Jb9Jesk4QyD2XGPoHipB?=
 =?us-ascii?Q?ePNB38L6AwlFZwyuz2dDQe/6zMMqyzwstmLvAsOTSz3p8FlvYsrAM3jLB0hW?=
 =?us-ascii?Q?LOVESz9REnJxi0I6UkoqaPA/86WQbGnyAJMsgzPnMixyM+Zz+LkBRXNz91mH?=
 =?us-ascii?Q?NrlM0EsrmM4pCuWM1yn2zVsQgDMt/efgCexuPtTdd0+EzKOtyUuv9RndrA9u?=
 =?us-ascii?Q?qlZmpSzDQBdiCM/AtkD8XY1KdokhA9rDPLcvbQv1jJOlAVHLLglifTdDc6Xy?=
 =?us-ascii?Q?iHxbake80tRd4Ikga8rW1vrTWW60B+qR8jXOlhnlF+uGX/MTYBJnhIXUkke2?=
 =?us-ascii?Q?m//wCWY8aPUqbhAwBHBOEPo/1b/nNJyrD/0f1Uiy9RgpXzE9vbXjdjjie/LM?=
 =?us-ascii?Q?QtM+mZbC13wlxs3FMfMwxHqSrhaHVvE2yEt0jKNZW031Alk/aglVReI2Fgig?=
 =?us-ascii?Q?Avcg05lUWjteO1QVFjTKfUYECwm8i4XeSzmq+VxXaOdqR0DRjRg3aCLCYJ9f?=
 =?us-ascii?Q?cL6pMNRSGROL1L18fPno7ph4tNkRXvnhD0qBNH75ibjKK7rRsd83rFBXX26t?=
 =?us-ascii?Q?P28mtXKKm9T+hVFfVDQbeRNY69bt1K4ts/YXT19wWRjqXaOF+CsVeEAR3d/T?=
 =?us-ascii?Q?p3pU2aAhgqVkB04YdpsunIWSmq92RaKynvFPpD0Ume3Y12fRw7Xvf9t5dc2G?=
 =?us-ascii?Q?nLULdMO29Ok51b0ebQ6J2d3h3dIU+pYRsk8R0bVC/t2EdJUudzZd9McoVTQ+?=
 =?us-ascii?Q?71+tykLcaf8PNu3CKa8L+1SEsLQZ3nHvRNGSn7TwZhhPT6FVv4/enO2ysaw5?=
 =?us-ascii?Q?l4gGdvboz4lKsGtkPhD8kI0spps4ULHO759hCsTYMPA4vUFozoxCHryVUCEa?=
 =?us-ascii?Q?FU7JuYJcOaEUH4pYmqIxza1DSxqwR+jHeV1yG+oG4ayqPnM0aEZFHIvTWfqL?=
 =?us-ascii?Q?9GsQp4XuOQnvdVOoCSmgUGPkL/cKbIBOPa+/DExbSq8oTWrEJ5gZr2fNO7fa?=
 =?us-ascii?Q?LEYNNWLpH/agCbCeeFgiIQ6hIIRIId6O82wWK3WD5HN+gTdmAz37A9w9Shes?=
 =?us-ascii?Q?LuQ1FJuhz+fQ1qU83zWFqMZnldE8NBXKk8DWoifG/gd4o8rQJE+Z9r/IiI7o?=
 =?us-ascii?Q?+GMcui/5/3UN4lZpf/6+/+YdS2wttQ2e9HOnhJBRBxwfDhTBniCjg5w1s3Xx?=
 =?us-ascii?Q?BJW9Fa8JvRhWLVJQl2bwbfzGxapFdhAJeUJCqRcUTk3QzZaGbEGuXWaPwDWI?=
 =?us-ascii?Q?qoK/trB++T2T4yWfMDsgUa4rar1laTvAUR1Xl0jWF5bFaPrhaRN4fTvnHXpR?=
 =?us-ascii?Q?Gnrifw53BojZmMADQFA3K3K8gNCaPvnGdhvXQSqe?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10ba98aa-ada1-487e-32c3-08dd1c37688a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4646.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2024 12:04:06.1208
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sc/BDqtkOEnOeuhTw4LqNtpzPRblL+zljUnJQcJ7ddHsWx+IbVOiXVRx/C/U5UpqMAQgojx2LDqkzlTTjGv24Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
X-Proofpoint-ORIG-GUID: 42SJ3AhpVSFJzQ6sefDVuGxq2leGVIYM
X-Authority-Analysis: v=2.4 cv=K5XYHzWI c=1 sm=1 tr=0 ts=675d743a cx=c_pps a=19NZlzvm9lyiwlsJLkNFGw==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=RZcAm9yDv7YA:10 a=bRTqI5nwn0kA:10 a=t7CeM3EgAAAA:8
 a=m3e6ysAvyIMBO4Qk8fgA:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: 42SJ3AhpVSFJzQ6sefDVuGxq2leGVIYM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-14_05,2024-12-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1011 malwarescore=0
 spamscore=0 mlxscore=0 mlxlogscore=841 impostorscore=0 bulkscore=0
 suspectscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2411120000 definitions=main-2412140099
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 14 Dec 2024 12:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13495

There have been no specific patches on beaglebone branche for many years,
so I have decided to switch to using the base branch for this machine.
This approach eliminates the need to adjust the corresponding
SRCREV_machine and LINUX_VERSION with each stable kernel version bump.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf             | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 459c83f5c28c..db9cfec497ac 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -20,7 +20,7 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
 SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "6.6%"
+PREFERRED_VERSION_linux-yocto ?= "6.12%"
 
 KERNEL_IMAGETYPE = "zImage"
 DTB_FILES = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
index 97e512fbc5f7..768f100067dd 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
@@ -1,4 +1,7 @@
 COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+
+KMACHINE:beaglebone-yocto ?= "beaglebone"
 
 # Incorporate fixes post 6.12.3
 SRCREV_meta:genericarm64 = "9ee4baec963b10d213c060622fce6d2b34166f40"
-- 
2.47.1


