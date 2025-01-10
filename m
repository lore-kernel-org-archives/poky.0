Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89D91E7719A
	for <webhook@archiver.kernel.org>; Fri, 10 Jan 2025 01:49:26 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.9692.1736473758715840850
 for <poky@lists.yoctoproject.org>;
 Thu, 09 Jan 2025 17:49:18 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3105ef4445=kexin.hao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50A011vI010945;
	Thu, 9 Jan 2025 17:49:17 -0800
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 441fphtgtj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jan 2025 17:49:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bi6E1LP0Qb3q4rY+cWvTv3mdlkP1eT6YLW6PUgQNUm4wBUYpHTiXbQ3s4JvdbsSJyW5/HHg5VL8XgrOlswbsiP4IAWSabYZAji8XiKTPTzbo3CNmwvpGwuvM1K4s4Qfifak7N3Qs47KjsUsR5G9vKuV6QZjTxcmhNI0pCWPBfzDEC7I5l2o2qy7QPp/xc9Jxzc+2j2KL44JY2KbHLYOxKEirypQgWxD5pj44Piw51tgFcvgBQBwTURJpjB/7RJrlxUgPK40oeWsyO9MMap18GpO+Uk8cXfCIF7tVKrEqzrYIDDFkU35k7M7Dp/KSDhv44vDhXQVN3Ie1hqnMgy9++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/pKiWTRgkLK+D+RJ3MMsFfZl0I8NaLqdyo9chPExTaE=;
 b=Xl493jhSmV5QdTKfYMSwPqMYauzVtexAGNDfFYSOClRoQVVZiKWvivBloadFrOkKyeqZf/z30NRrKlyXC9gehfiA6yTw/l6/TlEBJRWdGYqQ9o27aaKqSNnjlnwEc8MkCdoCdHJUA6QFfW8CwxuJ0lYysWPp4B43lBW4ZcDWrNWQ0CAyzSzosM8N9BDL5Aon/mx42LDE9Yh5fQpGidySXBaqXUlNstaHh1LFppg/Zk+ODapEQxajPpd/BesRlM2YRdHptLr7Ku5hmhZmwR19ylsyMvYnoDIBMInGYwleX6RNWGiqzV6VSDofioB1PZfaaQSi6CZcPNvgcWazxKRKLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from MN2PR11MB4646.namprd11.prod.outlook.com (2603:10b6:208:264::8)
 by DS7PR11MB6173.namprd11.prod.outlook.com (2603:10b6:8:9b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Fri, 10 Jan
 2025 01:49:14 +0000
Received: from MN2PR11MB4646.namprd11.prod.outlook.com
 ([fe80::5a5d:3c61:7600:4a56]) by MN2PR11MB4646.namprd11.prod.outlook.com
 ([fe80::5a5d:3c61:7600:4a56%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 01:49:14 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: <poky@lists.yoctoproject.org>
Subject: [PATCH] yocto-bsp: Pull in the kernel fix for the graphics issue on beaglebone
Date: Fri, 10 Jan 2025 09:48:57 +0800
Message-ID: <20250110014858.4057401-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP286CA0001.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:26c::7) To MN2PR11MB4646.namprd11.prod.outlook.com
 (2603:10b6:208:264::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4646:EE_|DS7PR11MB6173:EE_
X-MS-Office365-Filtering-Correlation-Id: 74527d50-089e-4d43-140f-08dd3118fbbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?hmOc5hi5P9XRS/B4y5sSxDmHMCZkwxZNZp1pl3uqqjgAhl6acTf9ujpx5HLn?=
 =?us-ascii?Q?Mol5u+94B6uqnYtDv4020mF0ObJ3Xxapcft0fzFmbAoZtvxILe+V4xwJEzPJ?=
 =?us-ascii?Q?j4joKosrEtRB/yPWrRGMVbIMLkRnWF988fpxGeppAIaQdduB4ZgYbM17ucMH?=
 =?us-ascii?Q?MN98Ohw/j2X4eS60aFML523QJrtbO+tc+k4Ydz1KriTZdqJXTIGPX64UzipG?=
 =?us-ascii?Q?QuzfE4lBQz0ucIBr5d17ksV3+GUMLoC8o/dJz1pFCKZvFSKuQ7+1ybJlbSx7?=
 =?us-ascii?Q?M1fPsR2KlmqD5tX/PdeJMvgakmRGzMHKJE1545Vx1FRWI6UzKz1mC8dj6ey6?=
 =?us-ascii?Q?30WTrz6nU2zuBbqE9k0BdV8uoEEFnLEsoraARx6EpPypLeiHIlj/OubPO1wv?=
 =?us-ascii?Q?KET49A3d3vPFb+CH6OnOQorGrYiemKvE/w+3la1UERA2/CB38NChR5xzNaWX?=
 =?us-ascii?Q?cw3jA8OX9sOpB/4GW6G3WUyqjGlPwGYSd0D7pEckpVLzs5vIOTmCNXpDjMVd?=
 =?us-ascii?Q?HzOiYmI0+PT1ymmlmVfTNeNVUtq1rcFFl9R/acubu08kMHDpmybzC2L5qgxz?=
 =?us-ascii?Q?12Mfoe/BviRvhDXPXEvLwZEfTAcfo1h4U75PVMGc3LQYcSZYQ3gmfo18GJlW?=
 =?us-ascii?Q?Lny6pSQJuGhVcDInUaLQ5wxYFSWUiYRrc+MMs15fLn/7RB0iGC9fbCC2+cil?=
 =?us-ascii?Q?8kQsrJ0aSKXgfnk1oTSGLNbynnwyeq0nKtAob5zODPKvTPVt7d11m9x3oYdT?=
 =?us-ascii?Q?92yQRkGa2eFG0HyvC8IZmmecRoAEY9Lum4OJ9WiiEMorH0wZJFza0Nvpsom1?=
 =?us-ascii?Q?jj4N/xPaOh9+r9e0C3EcUgkjOoFhDW3uKTl7dD81Ngpo9XpfRG66mlMNTA5K?=
 =?us-ascii?Q?iRlmJUmw7CKNQ+H/Okkq4RHzMP9Z3q2BvBaLZ8D5tcgkTKHRFr4JJwktO8xR?=
 =?us-ascii?Q?lN6FfXl0Og1W5as+BVXhVu5v+3bfFKNTc/9sUBor/f8JKI+lVkbr0Q/S8I8V?=
 =?us-ascii?Q?2qLRo2vP7v13mjjWhK3uMSCR6h8/tuS1B4+RSq5/uvO9Ed+O1PTEV5EvF7lb?=
 =?us-ascii?Q?Vs0YaeJ5qgEzAS9mu8LcKEzkosq3d9dwH+ntsDRwfOBOEQxZnpeKr61mkfF2?=
 =?us-ascii?Q?X/wo4xX/MgIMjiV/bRxQrommHZyxSK1hshXW8wzWfKTZBnmZyMAztNMmF9ZS?=
 =?us-ascii?Q?1PcUX6CN+cCNJpbBdZK4ObSbHXbgmojJCFC2ubD1RPEQRNzQs07zjeSDGtFG?=
 =?us-ascii?Q?Tlduqm8HXL3NUiRyz/5par3YXO0QD/KRN2JN7caBJb4z5k3UAIR9J1MJx84g?=
 =?us-ascii?Q?+SfBQZIIloCSMgPTvkDsetjWXO1oEzi+DBQ6SjmCSDN37JGPZlq9JdZnzBWq?=
 =?us-ascii?Q?v7pQ0RmpfvRh6xHd5zWMANK/5660ey3onzfeokPF4/Sy40f8kfPqsYIdtq0a?=
 =?us-ascii?Q?X88BkhWv4kGLWhvdSXXNq9sL1O9MRy4R?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB4646.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?uG5vIqBiLl1aKgqOFhL7SSAStU+tarH3ghSwy6rDbg6xS6crwVFQiPFsHUPS?=
 =?us-ascii?Q?PS5sH5yQmAC9gMbgsn2fJLb1mX1ZEXSNIb2nm5UE8kRZTQAx9K7zbIBg2pHP?=
 =?us-ascii?Q?OLgwa5FDbfqgwsotUX9IeYC+WhsekM5IxHAAwWsCZuBWpYeCAGkIFCwXVc2z?=
 =?us-ascii?Q?HfI7XCqPaSBm4WQcaGoHSvCIVTSyr+c5Bm9U5itlzvGsP1n7oS7vrGTB0eQr?=
 =?us-ascii?Q?PQ+YhtX/K+ZXxX68NPwKaWTT2ZGA9da1HUl/acSHD6X0rLMQRgUOn0nm/OW/?=
 =?us-ascii?Q?r/8cE/4nDJxXQdV/KvBNfDaDlf9JXr85znWcWoOD+CbAcylDa59GgARwDICJ?=
 =?us-ascii?Q?qEfoLkEuZES2y4LEsyyNI71sr41Z4bJ/38nC0IKzHYxjrvn/7/fmoMpnO8jx?=
 =?us-ascii?Q?84pS23mEXV6XmDzkye8Pwb4Bq25P2CxMjDNZEB6DlSohvJZQz7nKmgo/ZYgW?=
 =?us-ascii?Q?QBU3rCyvKPYsHgmIJn69vM6NyrXyyq8HHYMOcStfRfwo4/9Ge/4c1mPvgVfK?=
 =?us-ascii?Q?HQPKdONrp+KMCQMbEySGvm6TpQco+28rz2+VsuTQfuJgeT4BL5VFR6c4FX+G?=
 =?us-ascii?Q?Rl3ycpdJmVPtrBNg45hNTPU4dsVAZuzpHLwD9EU4J8Qh5Sph76dss8NqdpB8?=
 =?us-ascii?Q?e0vqJDaYKyWYkCROJtPL3spW0/JVVc94Cknu/ixPf8atcmpmFiPM7d9bZH37?=
 =?us-ascii?Q?JA8KunJFci+ieBSfeNLfSvZeSlhaUc0wSIujO3zNUTJSLD+pGS0Kc+GT/YKT?=
 =?us-ascii?Q?p30cTg+N5a3wyByZQFSASKzV2xIOpy6NCCOfVFzbliimty1OUKOXE081QYl2?=
 =?us-ascii?Q?KExs84PBuuueliZfUnKRDzvDR+UTf177K7OvksI6ficO5d3Cch5yfIsjUSJy?=
 =?us-ascii?Q?lB1QvCpd6omnQx6cRMO2LNcdxKod/gy39ZBRgx/dZAwQId8qXqFjoOfO/uFg?=
 =?us-ascii?Q?kE94iqcNnqbz6iPx6sXnFkd6X/i3VHc/pdCXlYR9pwfBLUgMIVAJ2e7HYRwM?=
 =?us-ascii?Q?HbMucajPEhOhRxIe2py+watS06RXeCoXWcn3EPMmXLj1V8Zhpbd3bE+jhaMx?=
 =?us-ascii?Q?pm0y2kTlQzjIjsyQBW1ONzfsjaQVSFCzmhwxtvhxaSZM6fJWB7TLI2kRakUx?=
 =?us-ascii?Q?iICZNqPTMsC+t+hqW/Uv9zKTtnKkP/SOOtyi/mX8cDkJRf7xuGzaN3E2PbGW?=
 =?us-ascii?Q?HC/odhBEu/Ua8zCotKMQI2pJEppApsfATjzhG1Xa5Ya6+Kz0lJh6E8Cywcuk?=
 =?us-ascii?Q?Zd+9NP7nA8+l+lYvMwQZ6HmeQKaQAoiQFfQ9oYpymHbPzafAz+CgP3dze3cg?=
 =?us-ascii?Q?8h9Tcfc8hnnTo89yv9czpBMcQLFHrVAn+bwPIYV0wpfzIKFBIIoOXtCbP5kr?=
 =?us-ascii?Q?ARAFb/DjnAqL6NCW973tECKvAgvJFKISOsKn4c0aqhO9kzSfTStf+yc7tigy?=
 =?us-ascii?Q?1pMrHBd3s6EojtiKR/8ErPd+CUXV7GayefR4nr93h78s4K1ZoLOZptjDt4zw?=
 =?us-ascii?Q?YqffKtz0iqtDzSBNykE8yG/dzmk1wa7O/x1oKSnQbX7dWrPnID0I9QwtOneD?=
 =?us-ascii?Q?ytfaIs4rlFkjcsLRxXX+3xk1kljMOMX5gVYe1uJE?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74527d50-089e-4d43-140f-08dd3118fbbe
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4646.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 01:49:13.2438
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mjslNM6nrBfkHJiSddmIANKgrUEbRSp4dg0mDwq2P4N89Vr0vuaqJgfU1eHDk4svH9grtghqNkDXj2W0tjwSQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6173
X-Proofpoint-ORIG-GUID: AF271Ip2-7IphxkZ1Si2BM4hVk-qJ9_W
X-Authority-Analysis: v=2.4 cv=Oa1iDgTY c=1 sm=1 tr=0 ts=67807c9d cx=c_pps a=LxkDbUgDkQmSfly3BTNqMw==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=XTRf-Xdux66O7l9p:21 a=xqWC_Br6kY4A:10 a=VdSt8ZQiCzkA:10 a=bRTqI5nwn0kA:10
 a=t7CeM3EgAAAA:8 a=YlyycQ56dI6P7-qq5ZUA:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: AF271Ip2-7IphxkZ1Si2BM4hVk-qJ9_W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_11,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015
 mlxlogscore=916 suspectscore=0 classifier=spam authscore=0 adjust=0
 reason=mlx scancount=1 engine=8.21.0-2411120000
 definitions=main-2501100012
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Jan 2025 01:49:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13501

Fixes [YOCTO #15703]

The kernel fix for the graphics issue on beaglebone has already been
merged into linux-yocto. However, it is not yet included in the
SRCREV_machine in the oe-core recipe. Therefore, set a machine specific
SRCREV_machine to include this fix for beaglebone.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
index b47b3aa5a9ed..a5f73c56545b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
@@ -9,3 +9,5 @@ KMACHINE:genericx86-64 ?= "common-pc-64"
 
 # Incorporate fixes post 6.12.3
 SRCREV_meta:genericarm64 = "9ee4baec963b10d213c060622fce6d2b34166f40"
+
+SRCREV_machine:beaglebone-yocto = "e97df805b938f68c4087906c2a3ad1fa4916694c"
-- 
2.47.1


