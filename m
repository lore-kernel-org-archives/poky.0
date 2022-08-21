Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.5227.1661073547289472695
 for <poky@lists.yoctoproject.org>;
 Sun, 21 Aug 2022 02:19:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ZO7ee3Ka;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=5232d22376=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27L9J4eQ005572;
	Sun, 21 Aug 2022 09:19:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=O+9DY20czNgTNn/6iLZF/n17wAwUaFljNArpo8nMHLs=;
 b=ZO7ee3KaOVJEHcw8fHP6pSHzy9K1N6XD7JPmXicZD9aJv1szVbMIYVe4Rnd+ksie85ro
 smC++BoOMago67+lIk1qi+EREvn0F0O2KDqQTJQSddJq1epVbTSgtQYPcl4qPIoyyoWX
 mdmWiKKS3hVfxXarHasZkBwkdAwz9ovh80S0rjT+ioMbkiSWX1iMTiJdgy0QbpQA3Mud
 TRWAtt0MUCnWkxRcShYOlsduvso7lhaI76pyDC0PbSK+saR1GLuTvbhTNVHs3iC3Xbtw
 BNn9lRvjujnc95DT1F/QjPmS5sEbSGQ5M63cc/m6nEqxKgd4a03AMFLykVFD+d3MZOkj 7A== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j2w1411c0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 21 Aug 2022 09:19:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYeMOLCUI4SoG/9QAw3yCiA1kWlMkVHek/u0dIbiA83CRQg7hB0a/dyh88Y+yec0y7HQ39B9XlPDoBBvwC0mcYSH8/MlW9qDliu8Q5Q4IFoi5UB8sv1Tf/f8OauWpkLXWbq1xDZomQaP1lx586ZAN7bDQ1Y6JrmAJdU/ZbM5+d/cZcw8cQ2rK2iNXgNA1+91Y6g+0UBobP8WiezSDer8IbMkXzlzduso9d6dXaXNodtNeEFShpemQm41EHIckL5fazeYesgnsF5s4h/CAiPFYQx5+yMJRFzpiGBtyPWVS056c43fc2bWW3+2T0ipwddOlvFd0sXzWwKWtimnztt9rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O+9DY20czNgTNn/6iLZF/n17wAwUaFljNArpo8nMHLs=;
 b=Y4TmQ7BI7UKNpZvja2dfA8K3ao+G/0DejZh+bVNbkF4d/ag9mn1URvxDiLmDR1K3NW9scQbIHOnFhQ+bvz1sp1M3eCNWPbvrVZe0qsyymwvseZd7XrBctZRKMtBxghHvBBTGrFKw0UWBoqohJFtmNKETgFVH9e//2NDq4Ua11jESMibyjuikZ0i4a12OxpNyWTjDidYJC0mDZ9pwSTyiOkhsmcPRKZXfvAU5BjQnxLgwPv9zuz39pNxkuvicUN0fkwflzr6HqV9Ci97s51oLvVKiczqR8ZL0yT8f175x3uapJTLVQPjJgccf+n5g3OZeJcyAjE7AbwUXkSbNsWFUbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Sun, 21 Aug
 2022 09:19:00 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::b110:7e21:a561:e119]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::b110:7e21:a561:e119%5]) with mapi id 15.20.5546.018; Sun, 21 Aug 2022
 09:19:00 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH 1/2] meta-yocto-bsp: Bump the kernel to v5.15.60
Date: Sun, 21 Aug 2022 17:14:45 +0800
Message-Id: <20220821091446.2932085-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SG3P274CA0011.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:be::23)
 To SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 671acc18-420d-4131-e668-08da83562eb4
X-MS-TrafficTypeDiagnostic: MW5PR11MB5786:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	i1UzAPchgi7K4EMev60U5sbh08ivTr7c+7GjL1gu7cSWfaABo6ZX4UD+TwF5PZ3JIzqTqAEwYEKguzjzugeefqfKilMOc2Olub7ekUwtCxDv5QurYKvyF070TCJxQUSORxPXd25Nsd/hMe1TU5iSgEy0MRQe/x/y265/hcLBWPKdUE1PHF3PvLFi4K2UGk1GWs5wXSknZ60HvxpuSj1jDO3B441iICLd6UI8GuwJK9Zx5GPrRmmxMO9WpdXszFWagNHreu4Md59+GjghRIxEtVNbv+G8bu583MDGmwtViEZRqVeTc0UeQ+Mf8KzunoHpz26jXqxWS5uoGH+TLmkECMDiT18iFt6eeml9WkipunuFv3FSRWlSLqrt5hU96WVFp1xVkaGLEhLmn76NNI2a6pXWkUD+fb1ylLOy6oJ8NKDn7H0mJ7/mFCsvR+LU+UlW7FCH7ueyxnyEZtuS7WThe/TXmP07imX34QRZ/DvqvPqhVRYBuW0HS5jaSaP0+RSgCDq7waLhUkwD/6+ECypuCDjn2rmLfW34zUNurVQHEeg35EeQpoMdiE/PAx3D2lNEkC8vA+Fkcns7eUL9rFpFqpT1KG2SIKVK6LSETTZW+3wDyz3Vm1WYHfqrKU48/u1U25NGGWrv3kLGRGBSVpnibdfzyZJAg+D+m11Wo3JvhQLv2NbeDuM2NWeA2AfXwBmSryD6xc6Eo3Ku0Buvna8IrGih3reqPdLY25uvtvZBZpqUnMz0InR7dVsDH+qjt77BfubuVy3NKLF0r3dHdJgN9g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39840400004)(396003)(376002)(136003)(346002)(366004)(83380400001)(86362001)(38100700002)(38350700002)(66476007)(4326008)(8676002)(66946007)(66556008)(478600001)(6486002)(5660300002)(316002)(6916009)(26005)(6512007)(2616005)(1076003)(186003)(6506007)(2906002)(52116002)(8936002)(6666004)(41300700001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?pg3/JaVafinzy4fbjJi2M4D+tDzwmBIHv6+rSkW2Kue1eMy3XXDzIa8ZYlga?=
 =?us-ascii?Q?itzHSZkpCaqokL6CvlOt9MNssBXmr48nzzjFka86J/LElypVryI/6brf3TxS?=
 =?us-ascii?Q?k/ZpuwtqgooFdob5SsOxuiZmr2pKOTa7F4uOyxRyTg6V0Olp4GEXDjLDxXdF?=
 =?us-ascii?Q?WQIG49rpkbgwgk/CNcugzAl1P0jMzEUBBxTdf/5J3LjW7whSVBCax3ZwypA3?=
 =?us-ascii?Q?2h5QW4KCYb4xH7eBPKta6l3eezq6HBcTo/yXbCTEwnw70TgLO9c6uHnO13Dw?=
 =?us-ascii?Q?ojYQlRK76G/uylih378avRXpsx/Sj62tCrMxSRUv6OwH44aV0O8G6sB/Yy6g?=
 =?us-ascii?Q?4dE7UMwTg2drVwKYjLgraoMjy9owQrH2KJ1H5tEcvbcGst119GhwL51x2FjG?=
 =?us-ascii?Q?w8PTFB3zZx2vx0N+eQ68gfSHTmFENtbLhS2dMxJd3Yc1CRKCAskbaIJZq9uc?=
 =?us-ascii?Q?nfzwPJP8rg6o6kaO3vl+wv74Pw3Ct2Yp2rsXCJUZSfstZYwKfb1bc+MU+Msi?=
 =?us-ascii?Q?P5TSf38uWqkndOlPIdlGB7uXPG/Q1VlLvSZ4L6pyBj8lpVdvekpePYPdXrfF?=
 =?us-ascii?Q?+X6o0LE610h+9fDc+MKNUUed6Qh7FedzPgcjWcT6SgxteUkLnuycCUXaCgNL?=
 =?us-ascii?Q?D1QCoebszxbpVUXxZuH4GaODIuQM2aX7o+jwGl8tnWViJolPFCUc6SHVjcz8?=
 =?us-ascii?Q?jhrA+ViCIaJs+sl8foJN0P/jLzjl0s/7r0IZestV2JPT0V8J8Yr1+1zKoKOy?=
 =?us-ascii?Q?tu9Lm+Bodf5LIivfSz0fBFGl+BwZcZfUYpWvhEXkApSHFIf/RM32uaGmegJw?=
 =?us-ascii?Q?PZr6Qd5s4+StByfq+QZbwopqfo77W/Z9QSLVvUURmShTvYLQ9qEgTnAj88cF?=
 =?us-ascii?Q?LSwI3NsKEhTkkCQz2/Ah7T3xNRVeUvvVzsWSEAgcxJG2mTxfI07Uf+Shlo6B?=
 =?us-ascii?Q?U/0T8wDAbahno1MMei9xsxP3lxUgPvLjYd2EN8fjGcN+l5wopVXCqAFxEv6D?=
 =?us-ascii?Q?X4TMJvJInkn7SfmCAHSiWm6Ch6omIH88xfhgBH77JxwH1GlH3IUvuoZsS5AO?=
 =?us-ascii?Q?biy50FmKkDInx025qwxF52W9j6y+WDNnLYxLPXwpAaRQH4JbgOmHIxIEd73q?=
 =?us-ascii?Q?TLeIIj1BkClzoxnjIH3uOwTGn6h2+e+N3cW6hkqCmdjCodyLoDaxlc9lQiu3?=
 =?us-ascii?Q?HrHtevibbmJyYzzy3pwjXEup3Ol4j/w1nQpgrhy4J+tDP216cMsNFg2oES7J?=
 =?us-ascii?Q?7x1KEpOQeumJA/wel0fArozfl7/pviIkwhFm8uQvbknKhvdPwIM7gNgFnnbq?=
 =?us-ascii?Q?wk0Zc4e43ybzQTbp3A29qcR3v4cs/jZlbLacasHYRFJvUYPvt2CLQqaGvjsH?=
 =?us-ascii?Q?H81kzZzYKu4nmwupJzT39G1OZCyr3dd/Wfdt9GVQYP/NimzFC7d/Xjl5RGbg?=
 =?us-ascii?Q?M1aOclhc3r5kkceHXFL8OUG7YOSyqY1D5tVbfq+RolhZ9EBK4IE21YL3QAuz?=
 =?us-ascii?Q?7ZZ31JmKe8eBHh88T5Qd1qjdt3ibKB0XQmUxV6BdOl8tuftJvaSkRoeftATe?=
 =?us-ascii?Q?hVHx4AUK+mad79jFX4RrP9ae1YYmL75Owr9im73b?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 671acc18-420d-4131-e668-08da83562eb4
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2022 09:19:00.2566
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cs/Bo9A7zGtDyxzEOIapjGIT2N9xcgVxopLzSCcKU5nXfkEk1YvOICBmWfGhvAw7Ouv68oLnpTZrXWvMZuVgSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
X-Proofpoint-ORIG-GUID: nzwrFPADtALpbP8_-4rMV0-6IAf0G_jB
X-Proofpoint-GUID: nzwrFPADtALpbP8_-4rMV0-6IAf0G_jB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-21_06,2022-08-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 adultscore=0 clxscore=1011 lowpriorityscore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 mlxlogscore=922 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208210035
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Update the v5.15 kernel to the latest stable version for all machines.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../linux/linux-yocto_5.15.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index a5c0ecdbd98d..2896c49a6a87 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
-SRCREV_machine:genericx86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
-SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
-SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
+SRCREV_machine:genericx86 ?= "6013d1ae5feb1f05716f4d6e90dc598230fed8fe"
+SRCREV_machine:genericx86-64 ?= "6013d1ae5feb1f05716f4d6e90dc598230fed8fe"
+SRCREV_machine:edgerouter ?= "8592bf591d23fb38effd2006ddd5d8751e9d67f6"
+SRCREV_machine:beaglebone-yocto ?= "b9e60e948997e2805b5f9a922fa3d9a0accc5270"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.54"
-LINUX_VERSION:genericx86-64 = "5.15.54"
-LINUX_VERSION:edgerouter = "5.15.54"
-LINUX_VERSION:beaglebone-yocto = "5.15.54"
+LINUX_VERSION:genericx86 = "5.15.60"
+LINUX_VERSION:genericx86-64 = "5.15.60"
+LINUX_VERSION:edgerouter = "5.15.60"
+LINUX_VERSION:beaglebone-yocto = "5.15.60"
-- 
2.34.1

