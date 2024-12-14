Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12FC0E77180
	for <webhook@archiver.kernel.org>; Sat, 14 Dec 2024 12:04:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.16304.1734177853492084582
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Dec 2024 04:04:13 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2078c6ec63=kexin.hao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BEBt2he019512;
	Sat, 14 Dec 2024 04:04:12 -0800
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 43h66803w0-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 14 Dec 2024 04:04:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QaCE6poWjnu39qfBloeFdEQVNkIX/ZNZEU2wyst2MDk4M3udcRFd8iTB4qmFpJV+bmtUwoOaUFUUmiT05Nd+pQZkrPXvqJPeigSe30+xavoV6dzUvzX5cDywsayTEY3xeCqK8yU1stNO53BxVDpauAeRJKSYoZShhEqKTHVFD/Ja4/SmH2Ad9DnRGzuE/Cfw5Nz3wFwQSGEgEVoZl8UAJuk0wCe6KzemElkpVF02m/wMagvtpZSkk6gXN8REn+wPu+RBnemBHpy4T2NOcyaEikftN820QHflbuy8XiwxxWycNNA+OJ1aaWu/qVC8Ml9F+x5Q/7V4b7ngr/cR/lyMiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gSvl6dl4qg5NotNN2zrrdJKw8xqgAyO1rTCQBP/Ot0c=;
 b=NhBENeSbwjwFvoM7bnvFZJ8h5zvZvfEyfxzhi4fcPOB63xG8+F+u5FAOgkdO+vbWIXfSo8XmfW9ehVCGp7Gm7w9u1EDTFOFgwrkVswqHsvjxgP5F6u0CQOa8QCtItc4r2CYVHcQIqpmrN1NHbDsm+T7BjJSA1Jku/rQnO5FEwJbZUBvlJ4ykRM0BAi6WB9SciJV+7ohjFp6ghqvEXxpAjdlzXH6CKFGuCeDwGxGDQGwWLFDUVQESfgLlpVLwHvKAP/CwtWncPpAP1j4/hV9lkLT27mmSoIrTZS5hNWnkSOcEsdKGg5DXPfchzkaEyRlDP/7NHd7Cq9fjHn4bb21RsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from MN2PR11MB4646.namprd11.prod.outlook.com (2603:10b6:208:264::8)
 by PH0PR11MB4789.namprd11.prod.outlook.com (2603:10b6:510:38::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.18; Sat, 14 Dec
 2024 12:04:08 +0000
Received: from MN2PR11MB4646.namprd11.prod.outlook.com
 ([fe80::5a5d:3c61:7600:4a56]) by MN2PR11MB4646.namprd11.prod.outlook.com
 ([fe80::5a5d:3c61:7600:4a56%6]) with mapi id 15.20.8251.015; Sat, 14 Dec 2024
 12:04:08 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: [PATCH 2/2] yocto-bsp: Bump the default kernel to v6.12 for x86 machines
Date: Sat, 14 Dec 2024 20:03:18 +0800
Message-ID: <20241214120318.2317932-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241214120318.2317932-1-kexin.hao@windriver.com>
References: <20241214120318.2317932-1-kexin.hao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0109.apcprd02.prod.outlook.com
 (2603:1096:4:92::25) To MN2PR11MB4646.namprd11.prod.outlook.com
 (2603:10b6:208:264::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4646:EE_|PH0PR11MB4789:EE_
X-MS-Office365-Filtering-Correlation-Id: d3643499-8992-4234-e2ea-08dd1c3769cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|52116014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?zbzJ02tIADtKNsuEEpRg7PcFqJyDyx2BtrO2jSXgNLrK+J2a18Aqef9WarQe?=
 =?us-ascii?Q?f5mzwk2smOg+0woPwKa2hBFhjurKecsurjKtQEatVqJJ2IO4xg4b8Fy4OKEj?=
 =?us-ascii?Q?tUqUKOUb6jgN5zICbhMXwrqDWBWbXCiWAGeL1zCx6SF6XgxqPOD71mcrkCbU?=
 =?us-ascii?Q?zJ/agnT6IDfyvyupmPCcskbI4AfXwRYe3CW8ZALJD3ALVKw9uE1W9GbCtr83?=
 =?us-ascii?Q?DdIxaoA+/2x0R1b2fltw0gwQn2cOdv9jeN/RbcR80zSB1UtIGeNoO+nCChyt?=
 =?us-ascii?Q?icI5f4mUoWxFI2XC05YHvmXUT5OvepCIadrRVgRKi6ADjRc7K00S7SIzlSuY?=
 =?us-ascii?Q?BhDPthmYvKRy/5t8y0YrT1XZ6anqNtZX5u6i+cHaTcliXW53tr9+pBKe7OlW?=
 =?us-ascii?Q?MU+oIWDD+LaHh+nlywWs0LoU4G6E3JAIi9pr7Ak093HOd0Gvj7eA1oAvLj1b?=
 =?us-ascii?Q?fAGXogvQengjB4b+32L1e1je/jamQB1Dt2MDPTFZmr7BnoQ2fS8MlxM5mo+b?=
 =?us-ascii?Q?9vHxZ8OM+UyFM28hEsgfTGNwVQq4LOfuCw7rHbdSgThROdnvwWcy7B7kEg4N?=
 =?us-ascii?Q?NMHRC+uEY230V6pgw6MmTpZrr+B7CWvRAQ9gCAUttNiugaW3Jug9U1OdUxBQ?=
 =?us-ascii?Q?a5jb/T38WkFsz1Q8zc78gQLV6HmP1lh3UScp+DNNqUCHbD4erLkVs38cxyTJ?=
 =?us-ascii?Q?cUPvlyLn45235AtsDenadCk6EendAl2hgZVO3vg9slgc8rzN5VaO51FBmKnf?=
 =?us-ascii?Q?eNDJCziaPZ9tj7vQSXmtdTmXKcZq+77Og70RWhb3qQr2RSo9/f1DDuFGDDR3?=
 =?us-ascii?Q?HHkEfGGJyieVm5+/KFPcx/SIpHt/BPI2ILHDeUichfjdFWwoGsHdAjcR2la+?=
 =?us-ascii?Q?unXmNX5tUquMejAjnG45+GHYkgeDjm5/LUP0SMJowfbqIydjCFjOBNig4S0J?=
 =?us-ascii?Q?FK3Y/fs0YaFx2lRI89msCD/GXepWljTZ7GB5X7S4aI6VwTuZLBTM5i3Sx8/B?=
 =?us-ascii?Q?ykXGdd3UkLh5rXFUX/CCZF5JYrdWEAOukLJU69dNlPth290k24BvIVhQkqC/?=
 =?us-ascii?Q?ZEc1hwdI6LTN5o30zD5Ro0pAopvcLIx5qzfKHIkefNpUEGDdzxUAW3k28ueB?=
 =?us-ascii?Q?9KNgZFyEkqcDgmtAx1L4VZsisTeVtsIMibRpROUsBjqCmVTirlPSHJohSrPt?=
 =?us-ascii?Q?x3LBKohqmZPfX/UDm6FKjzjIGggYBoOXxJb2oQnqYUCG55kN6KR3xzVZQ9tV?=
 =?us-ascii?Q?EY+m76uzv23zQq30/kILdrbaszxC5bVkDfou0GdjAKLNW/4NK5y91aQnbV1G?=
 =?us-ascii?Q?DuEBp1yqv1dkDPyG62ecFxa5AwHOxDFWwWBFVpoiovkScgthk7H7U66qcZl4?=
 =?us-ascii?Q?tktByYHMcPVJI3EUfK4ZhWrR8umSmNVN+Nn3nmFNhyBi8jYQAUxQSqYp6L36?=
 =?us-ascii?Q?48wunvuPS6UqRODJ2oRQBr3e6wih40wC?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB4646.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(52116014)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Sesh3763QlerZ2KLMUMdrxi4RFQF+H/abCOjsOKblIltkHHqCH/LLlNxoBV7?=
 =?us-ascii?Q?O7WHMQfbWiNDTd/BABgByUKQdqDICSJrfeO4okm9McDQwP0IuTfD9YVKV2yB?=
 =?us-ascii?Q?7JP9c22lNe/4zul+dPnXjl1EBl8yvQxGCb3ouTAAkUC4XaTUpbETBzrsNszl?=
 =?us-ascii?Q?pV2d7W5YHhfEN8RiGftV571WYNSdN2tTliGVUatfrpcsbOtynGPpL3MOwj6e?=
 =?us-ascii?Q?olkzZHQghhosavPQdG4W02GM0Id94bYmJAG6di4xpAmrp5fb/XQleKHdr2Yw?=
 =?us-ascii?Q?jDQ/4D1WowwF5hJqH7SYd6eKxTvUrqo79vabvzwfd8bz2f3tACE7o+ayICTW?=
 =?us-ascii?Q?H/YOc5rJByg1L4OoTnRs9/DtFNbO8RlZner/XGwSVcICHMPqCQEBZvbOJlZj?=
 =?us-ascii?Q?ce3P4due7EQbl7RYXlOACqSjIw7RyfIK1qEyLLM3Jt8E8tB7U5/jmtLEqNA+?=
 =?us-ascii?Q?3GluLFg2IXEkKB3nu83iUHcqGlWNslRyYJzTHksukOec3KFq5PzpkJtQ2H2B?=
 =?us-ascii?Q?L7QC6ybt5/t0YHcH7Xq5pLwCo7t9xmUdk4THzp9j8+v8/5WqHSXoTd7s8/e0?=
 =?us-ascii?Q?0Zy4OLDnQFn35pIDlrdjbdRyUrJwbUE5SqbXBEogTMyoi2/z+Ecqv/QHSswG?=
 =?us-ascii?Q?lp6UkFVzcBqtiSgv7ZrxJhH0tkal6R4eRQA61beCVAAYZ0PQDll7Ie4MiKmY?=
 =?us-ascii?Q?4PSd9qQnDcUuXMIbNVM2+AAbubQJkZ/+t05FkZLzrKeVb13RJeY79Atjqszf?=
 =?us-ascii?Q?BW0Z6XrOuP7mQT6a7BfIZ4mxVZylj9UAsrZ78ZXipyyeiIwu0hxXsMYzaT/1?=
 =?us-ascii?Q?7xhh5eOcV70l/X5BSDtztENpx0agCzNvIWm3lukK3rp1B40/Xp37hUcRWHZZ?=
 =?us-ascii?Q?dfVJxFJGeyccHm/Ieyy3mpq91KvHlBkaqAX18Prgwo11pgtbxigVwBB+2Y9q?=
 =?us-ascii?Q?/LNITHpbT6bOsjyHaHqQUIK6NS7g3mgs9geTTlgI3VTm17paWz/OYoSgJsi4?=
 =?us-ascii?Q?Cb26L43T7qzvVgKJUGlvX7MVUV16xugRwvnVc3UaL7oSPgrhX3bf/gMRem8P?=
 =?us-ascii?Q?rvpcTMIoFB+Hawd09zV+b5tX1OgKqV9ko3iQZ+0iDNK2FGNcJl7YuLOjzliq?=
 =?us-ascii?Q?FdnKcgnMen1VqD/+KGmU3FwPOYr/OUYEC/1888RDGJPlRWw1gZ0lPb+6UO4t?=
 =?us-ascii?Q?lQurX1vHUYr+rnyOBRyvSI0DTxba+1sr/VNwduQ6pwmbydfE1kSJ9U087Pbc?=
 =?us-ascii?Q?OVp9U4RaITuUqolG0M90gfh1ABzlw0Vk7wOjHAmkU5FvW7vvsa381vAIzpHt?=
 =?us-ascii?Q?WB5lrVz7LKzlvlTx4iKCHj55Iepkeew5OenAtKu3RanvvG5X9XRRTVLT+jUr?=
 =?us-ascii?Q?FnMb4Tt/UjjETe2MsePgOq3zVW5abxiNbVsGUHExsXAKXKUPcijGUPg1cNfL?=
 =?us-ascii?Q?6extA2fFcTYrRD3WUmGrIq7fA1v+fUPxmDGTibBZYStkGNif4AbqGiDMhSoz?=
 =?us-ascii?Q?Yva3CZlaDMW2HKXWDFgur++DKgUDAOa75cldU9jG0GoB0KQKmL+bgtliTtHq?=
 =?us-ascii?Q?/s6dR+/KshurBhMJyqUWK+iSflq8H0bSmHiCHVBOKNfCg6FM3V+yvQFG9iOB?=
 =?us-ascii?Q?Tg=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3643499-8992-4234-e2ea-08dd1c3769cb
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4646.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2024 12:04:08.6876
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NCns7vJ2Cba47fUnTi0j1IJVB6XK9zmI5cwn4wmRAFCL/kNswDreRBv2CX6OtiEVDSPkE7eIeWpc+ChxQcX09Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
X-Proofpoint-ORIG-GUID: V6iDtLAOcdW1YqIKhSfBhj6Jihz1haKY
X-Authority-Analysis: v=2.4 cv=K5XYHzWI c=1 sm=1 tr=0 ts=675d743c cx=c_pps a=19NZlzvm9lyiwlsJLkNFGw==:117 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=jvpprgTGakaQ0Z_2:21 a=xqWC_Br6kY4A:10 a=RZcAm9yDv7YA:10 a=bRTqI5nwn0kA:10
 a=t7CeM3EgAAAA:8 a=QDAtSQiT6iQIUCDVerEA:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: V6iDtLAOcdW1YqIKhSfBhj6Jihz1haKY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-14_05,2024-12-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1011 malwarescore=0
 spamscore=0 mlxscore=0 mlxlogscore=966 impostorscore=0 bulkscore=0
 suspectscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2411120000 definitions=main-2412140099
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 14 Dec 2024 12:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13496

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc     | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 50a233dd8f2c..943604c01cc1 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "6.6%"
+PREFERRED_VERSION_linux-yocto ?= "6.12%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
index 768f100067dd..b47b3aa5a9ed 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
@@ -1,7 +1,11 @@
 COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 
 KMACHINE:beaglebone-yocto ?= "beaglebone"
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
 
 # Incorporate fixes post 6.12.3
 SRCREV_meta:genericarm64 = "9ee4baec963b10d213c060622fce6d2b34166f40"
-- 
2.47.1


