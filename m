Return-Path: <Kris.Gavvala@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83FAEC44501
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 23:34:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2463.1783726491837482830
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 16:34:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=cOk5ni6h;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=165148ea16=kris.gavvala@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66ANGA941774973
	for <poky@lists.yoctoproject.org>; Fri, 10 Jul 2026 23:34:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=PPS06212021; bh=XnYLaZD/C
	fvgHDO8ePTlQ+z1e0apflsUZyNKLqqfKd0=; b=cOk5ni6hxnuDaUaudY+YUZv5v
	cBpI+Kdi+wHcj0pSJCL9xCOsz/e11tG+eMqzfvswN+P/RzX6cSaonVKTRhP2YLsm
	0/f2QXJAAD2ICavtWaqtosB/Sy0LNMy3Qw1CnFeZNd43rOsQdk/DpDVMS5FR4Cgo
	RIJ202d7M7PopK9PLm9gXh8Lqsb3P1tH586BN1KyMVQm4/dgAZiLBuZxR4/LrpOm
	rQE1Yt4X66M4pvzTXIQYz5E6wnlv5XV28ZIUFmxvj6V1KJ4Cjk67eZc7Oy9UwrnO
	rwzbCRagDCKjkVn+W40TnQq3XJvPuAgujgmODBSevi61sCsLYoU3W/bnS0CAQ==
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazon11011056.outbound.protection.outlook.com [52.101.52.56])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4fa1aqbhvq-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Fri, 10 Jul 2026 23:34:50 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sqGpd1nkoKiGGv7lp1GM+MreQWsq6m6rt4COl0nZNCpeMW2BD4DVM/csEZIbXJqXOb/DH7qNKYaDFMpq9+f+Tmq13KBSv4NzqC0kmFOVDITYHy7hzrjPz3Uc1Ho9DimeAgrREFXP7pF08mscUZJvFhAEQe67r/mXiAlij0imiUJVcC6kumMsLLmWzSqDnC3X2UW9kJrh3V59FbYurIt1UPsmKTWB7iUKy6Vi0qTdAj7ePrhOcEisiT5letNbgi0dV/dmHpGyoeOxq5r+wysfbbxH260Yavy54DiLeJdYkZlGXPcbDDHRz02cbubln9g0ymZgJapXH1jgYMcpp//FBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XnYLaZD/CfvgHDO8ePTlQ+z1e0apflsUZyNKLqqfKd0=;
 b=VdW+ipB4YIFUeuY5YPFcJWnBWD3jDlVNRzFPEQK0NhJ7ii6AKtLaG8bnd6TgV6Tc5AYM2ghIRRVWqdMRzLqcVxk7zhLYZg60faKkRGTcXHjkfIoUCE1njmwuCT5mylQqewyOyqwfeB/kS1sskI7c6Yr9+ODBRhY1g+mS17r3UNZ+7Tof5JjAjXD468l1btV8+JszW4wvZzqsagh0Cs6M+oyUD7SM3vlFXQqFASOJYThY2lfYXnqEKh5Ckw8z3eMrVp/IvQD+hxLJHBUyD4QnAcgXsmthRbVxF0GUdM4Nt61lyq9x8VGVCtOQUqjdES25+jiYZ3TooKbh/AebB5X/HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS7PR11MB7783.namprd11.prod.outlook.com (2603:10b6:8:e1::17) by
 DM3PPFC3F0DB79B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f4a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.18; Fri, 10 Jul
 2026 23:34:48 +0000
Received: from DS7PR11MB7783.namprd11.prod.outlook.com
 ([fe80::aa04:56da:f40e:96a1]) by DS7PR11MB7783.namprd11.prod.outlook.com
 ([fe80::aa04:56da:f40e:96a1%5]) with mapi id 15.21.0181.016; Fri, 10 Jul 2026
 23:34:48 +0000
From: Kris Gavvala <kris.gavvala@windriver.com>
To: poky@lists.yoctoproject.org
Cc: kris.gavvala@windriver.com
Subject: [PATCH]] poky-tiny: remove eglibc/uclibc references
Date: Fri, 10 Jul 2026 16:34:16 -0700
Message-ID: <20260710233416.1616097-1-kris.gavvala@windriver.com>
X-Mailer: git-send-email 2.49.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY1P220CA0012.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::8) To DS7PR11MB7783.namprd11.prod.outlook.com
 (2603:10b6:8:e1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7783:EE_|DM3PPFC3F0DB79B:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a65b25f-0432-4363-4b34-08dededbd4a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|52116014|376014|23010399003|366016|1800799024|38350700014|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 
	uxXggu5ZFz16z4R8uD3LAMDIxKz2Lewi37jIcn05LKMdczauZesqk1Oo9X3LkGFSLPOavBxj3fLW/WnMvQ9Hd9yD0S6a0tMYN2nA08X7Mqe+4evqbN2qxd8e6rcca572/lgGbZLJFgfXU+IUNgUhtZ5XQ4CT3dyXphgohx2g/9LWILJgxavfxonZvjd47bS1V/uOywAijjiwvQ1p82yYhT1ZqlWPTaPgcz37FYAA4Ym15mj34waHO4o349XysIbS1+r4w51I/+ucaYoMGnlas/gAVwW81XjSU2bUYOmZJ53ArVpmf68lA7/68e1JtMZYCiBwb01kDuWP58kr0y4xagyU0ANCq/QooZqlGVNX6lHupA/5ceex40nlJ9B9vAlPhdIMBkFgrhkOQhbjGiSBEEywhBLB+xuwoYRNCYo3I+cnENBjIMs/hToY0A3GydHrqU2cXSKeRjfr7CjI09Q6SmWy3A3Q9hgLQECJs2zR/fS8hbP8bZCusgz5jNovBFg5dYCNHdrMr66AG/NCs3p2tj1RNdQG2SsMjUpFhLDFXc19gmaFfNFm2NV/Bf47PV5LBQ80APqeNoABMLGI18CFehlR3fCzwQ0DwapPj0KLuEFCkVX1uOua+sH5rX+XUpMpa+Az/VBo9VpaB3LxBFeE47Pi4LRbVyNcLfbtJ+Eb1YwnA882HmjD1Mlx3u7pbDhoOC5AYDuDh0tKd8ZrAOWJidIWLfyanJIs7fNjEwATDmE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR11MB7783.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(23010399003)(366016)(1800799024)(38350700014)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Otx6zgxMpVV3P/w3QsJ9yQYSpoi+rPPa2UOpiCAa0GuJrPnnOfvUI/ZmD3XS?=
 =?us-ascii?Q?ZFOnlPonAKRiDLLGV3fglnizDD/4kBRpB7gojZsMxsfbuOlqhZqtk89W4PSs?=
 =?us-ascii?Q?CtBR3rfVC30nUcv9KfvzyiAQkpSsBzovsrf18DLkEIDhYdEUO4OU7gZFAC2+?=
 =?us-ascii?Q?y3U/85OZE9q3qXrt4wPTlRPEeLCbMUbYjOMsJoth8dXVUB+BiYNa2Vu66sFk?=
 =?us-ascii?Q?n1STRw1Ns4JupMURUzFYv4Tgm7xgxzf2CTwZDtd2+eH90oHQ2JjcblX2alYt?=
 =?us-ascii?Q?8jME+Uo4uDv7gEx2qAVcdASuPKPj9GnJmAdMr7mkwVQ5O9X7Ys/iAVc1Hnnh?=
 =?us-ascii?Q?yqlhy2Bqned0AhfW1zqidTWK4tPvzRqyi5GTzPm2LS4i3j1QwV4jNrIHe/Vj?=
 =?us-ascii?Q?MZET5wpADiqedoG76BUAEUZ0Sh0VX1RL8ztmnhbYBDso6aQFKo0E7drZxvtR?=
 =?us-ascii?Q?DVoOXcEVayFQvRfVmdahRqoTGaXwsLtYNwWzICe1YILiPUFkRD1rJtYUcA80?=
 =?us-ascii?Q?r9lI8LWoHsblnPYxnpgpGhg9E84GKUYHTtfTLxB6iBkwlEIDPUMxWgn5TPYU?=
 =?us-ascii?Q?txhTIVc70FtpMmo73xmOrhUANKoT0lMXMyZ+fSTauGz3k7nLFU9NfU84qy3p?=
 =?us-ascii?Q?TKkjCi8TbEppwME4gXXfz9UZXq2X9euEn5IxbFNWnZq9DzBstoVUO0DSQRUE?=
 =?us-ascii?Q?bbr3yKzlLoSn4UKUYcN93iZkdVS4zSJ5z1JRsAmkuvxE+tBQKbAWAfZpC2Rq?=
 =?us-ascii?Q?fq0XKlB+s4GSygPLN064+iyTDHmGSI7wL/R911wTd40AWUPkRgdMNQkK7J5K?=
 =?us-ascii?Q?KXTQfPOyerRHsfVioV4h+qUBSqsfJKOb3xZvCp7oFkyxkl3+8pEQNS6Ks+N3?=
 =?us-ascii?Q?eaXVSn5f1XB4i3QKp8AJwNrDcu6neOyc4UbMvLLhyk0d3KuLfvZLahVaGL+m?=
 =?us-ascii?Q?4SQz0QIyuSDvPZ2giip2RVLk/5pZSC8mVvujHxWu+sdNP92qzvOqa6S/C9vi?=
 =?us-ascii?Q?eGEAA7h2JUMI5Fy4l7Hiik4PF0Rm2ryHoBXVMvu1JfoCJSEsZFU937pT9ROr?=
 =?us-ascii?Q?saUqsHixw8P1KUgBCmFMOT8gJ0k4iuejVY8OTBkySw5UjkQra8LdxeiDj921?=
 =?us-ascii?Q?ivRREo69hf4YIKIo1ipI+lt0uZ6i6ms/5WpSGrO4m2e4iQBBFhrwqWfyxrMl?=
 =?us-ascii?Q?Iqq3gqZ3K+an0MIR9h/PitnnqIvZwylKcgrLzHSAbYDFLKYfRalkukqsXtQ2?=
 =?us-ascii?Q?/deTIzSpbcK3PuKeOQc6GjTI87/Ko1LKO4w84JWYl1jnocbtIMHakmHNJKNU?=
 =?us-ascii?Q?gI4HD5QKLHmo0WRfdXcgRDOuYZJsAiwOHxH8E217AoqFsNK8zrTWRdZFnPxL?=
 =?us-ascii?Q?qVOXkU8dtGJZL6BuaJD7n/F98RSM7So7hCLp5zKSl/P/qN+Tfo7PvbjIg8FX?=
 =?us-ascii?Q?GF68Tl7DhvpQNfJkTiF9pay25vWQi5oUgxWyaWEz4TIFQTBxY5ZvRQY6edkQ?=
 =?us-ascii?Q?hg3uhpH4iy6v1kQq+knPcM+3epiLOOij+6p2QOJfsJ/4hR19KoHB3dgkvhfr?=
 =?us-ascii?Q?TprzLnRK3AqodlwXemlhzyRCIXMDfHHrfl/YEDLAiFdPOqk0yj3hxUi7PQOJ?=
 =?us-ascii?Q?0V1UWcMU7UOv6hX5D/5TzgdUbRcgopQeqqaWFZq5L7qKNwqBqyg9uRp+kUAp?=
 =?us-ascii?Q?dLiAXYpp5oTr9aN5W8NjzhgTWjqGg1ekSA50A51paOBM2sM/cgPaAQAmNHR5?=
 =?us-ascii?Q?phEBxK5tUMewenhkVIJl7+IW59EvMxQ=3D?=
X-Exchange-RoutingPolicyChecked: 
	fZhsOpwdt6DUptYhhMUsBzISvyiYBwfIYfWi87h6+1eWAh204Uq5he2KLLkahGyr9D/xIlInsubd/stmx2iSpFb0wIMBWx9Da4K0eCPoMBEuefGaqr5bJrXzs5lB5B/yoExhwmpHCsSTNB8YxEDQUi/3ItYdy3I9Jf1ZAWaD4c+TCjyyEw7MGCVYnFxJL6WDW59u9yNrs1zN/rEDWZt3B/yTU1m4T3vsCxQlnFk5Vht+0jfLEo/j0q80aqzokxOz0jernMeOC6SLcLWir5oheK25vONFgouhjqNCRiaO3Ie2NHU2/FAF2O57nk+/w75pVAF9o6wEjSdx90cUnCmnsQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a65b25f-0432-4363-4b34-08dededbd4a4
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7783.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2026 23:34:48.1499
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AVrwAuoO+YvUJH/dIhHqaU/gY8VONNn7u3jUZdBSWvt6XUh1fqwpQvxrdBSlBvnf2+G27kVZAZs9VzVw6fttqutUgQz3xR29yUnHqmgBeII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFC3F0DB79B
X-Proofpoint-ORIG-GUID: Xkq9LHyHxIy496AkKbXbjdIAzgDAyx6i
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDIzNiBTYWx0ZWRfX5XQw1qG9WKk+
 D8Eiz3bGFc/1EhBbWz7Y010lrY6xsyXHUYJfIY+SQkLUDX/rg4WmnHWjA5b7iCxmMa2o0Nccg54
 OYVl2hBi4rfZm9zIimaJzko/F4JagZM0DwKeBQrg8gy6FlG55Kt8
X-Authority-Analysis: v=2.4 cv=XIkAjwhE c=1 sm=1 tr=0 ts=6a51819a cx=c_pps
 a=oQiTq6cBShE1BE+bdGc2Dw==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=klDOsUkWDRETUCZYPvoE:22 a=t7CeM3EgAAAA:8
 a=sAHYvhl7vSkFV1b-DgYA:9 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: Xkq9LHyHxIy496AkKbXbjdIAzgDAyx6i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDIzNiBTYWx0ZWRfX2qdTjpRg6uPu
 Uf5ojpJh+dstOlNUhyD3YQupe91qr7Sap6sxnXliQhZiGWVAzarFzouMHiwQj7aQ/L+5JMwJCIe
 eBkXi4P56EPivke190FtuJh+7lXLDaDQZreUJO3QiEblLHJCZ5zJ9dZSiBEDwjrZ2kJUiRCYNw3
 XrMX3znuPdzkxZtkGpQ/YL03QDAsLBC149JhPqCauAhnkV7mxbSNH8uxZUN28A2OkzOlPgG+Y63
 46NCyC38BtRDkBYZSX9s+ueJvd1UC/nERSQYdBLlrTiobvr9KQS7vOllXmBxyCzNTQ9z9w7r6pN
 zWx3ndugjA05PD3z2qfh5vnBqZT7ssuDlljcunvRp67XkPXIKpIFWl17R39tQ8whnI+rdKC3Mqf
 FzLuc0CIKYkO/JISCApcOmmVsa9rl1Z2999Fg5wvntmGPuI99sZgNHwPYk6axqecAs8gZCIQ6Uw
 ZN4ehdO68afy1++NAcw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_07,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607100236
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Jul 2026 23:34:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13939

  Removed leftovers from the eglibc to glibc and uclibc to musl
  migrations in poky-tiny.conf

  - Updated TCLIBC comment to reference glibc/musl instead of
    eglibc/uclibc.
  - Updated dependency chain comment to reference glibc instead of eglibc.
  - Removed the mtrace RDEPENDS for eglibc since the package no longer
    exists.

Signed-off-by: Kris Gavvala <kris.gavvala@windriver.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c0c5fe71..1e32dd38 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -18,7 +18,7 @@
 # o Static images (no support for adding packages or libraries later)
 # o Read-only or RAMFS root filesystem
 # o Combined Linux kernel + rootfs in under 4MB
-# o Allow the user to select between eglibc or uclibc with the TCLIBC variable
+# o Allow the user to select between glibc or musl with the TCLIBC variable
 #
 # This is currently a partial definition, the following tasks remain:
 # [ ] Integrate linux-yocto-tiny ktype into linux-yocto
@@ -55,7 +55,7 @@ ENABLE_WIDEC = "false"
 ENABLE_WIDEC:class-native = "true"
 
 # Drop native language support. This removes the
-# eglibc->bash->gettext->libc-posix-clang-wchar dependency.
+# glibc->bash->gettext->libc-posix-clang-wchar dependency.
 USE_NLS = "no"
 # As we don't have native language support, don't install locales into images
 IMAGE_LINGUAS = ""
@@ -89,10 +89,6 @@ QB_DEFAULT_FSTYPE = "cpio.gz"
 #        more machine configs to maintain long term.
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
 
-# The mtrace script included by eglibc is a perl script. This means the system
-# will build perl in case this package is installed. Since we don't care about
-# this script for the purposes of tiny, remove the dependency from here.
-RDEPENDS:${PN}-mtrace:pn-eglibc = ""
 
 SKIP_RECIPE[build-appliance-image] = "not buildable with poky-tiny"
 SKIP_RECIPE[core-image-rt] = "not buildable with poky-tiny"
-- 
2.49.0


