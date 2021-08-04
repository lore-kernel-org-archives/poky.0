Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.5724.1628060771868001149
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 00:06:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=HwEze271;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3850d1faa7=kexin.hao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1746VgtM029576;
	Wed, 4 Aug 2021 00:06:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=nwXHVyd8Rea2Ghtlel/PvAS8zXGGo3f4Qmc7OpPuGwk=;
 b=HwEze271P1rtxZ4QtWDxg3a/np5jEaEklb5OmIcRhL/OrwiN4N6rULxfWCr4VpXAPU6b
 H5XH/DyZwAgoIg4gOTS+2mltL92/5DKl63vmFE0UVNoAJfxUmpBsJkY0lISUFFbXdj4r
 LCIKzUU+izMrdGYhTFFDYovrdgPahyS4lvQWoQFXc/GG+ZS4YNS26aujB+OQh55KQYCz
 Kn6sfqCaNwhgR4r6YR1sd+nauGQsvfH/yUVmZa1TVSfMhBZeipebU/NKYzVe8yka2JZL
 nZRuq3wKciKIfw8akeEneiwxhgV8nHrHRQ+tJy3qc3/D2qic35n/GQCJKq+FLb1JMnFL /Q== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a753s0n9f-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Aug 2021 00:06:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glXPSTYvZGJOhXJeu68eIuMgfWc4Lncp/zs1xzm5OnwwtZ96WHuYw54/Ok/5YeQeOjLe2DEOfQxidB40qWl2QJ2PaW/7NroSOyThl/sJoMDizG2rHeNdBNxqTItQdPXRHEwiHyK1GeicJxn0jSHPPQJcahPBg5zdqMF45M9XC8olU9KtwD2nE/fnK4ESiXCYkeqRn43/Ypytc0PV6WyW8cKivb2Ouqmf1bTVtTe4a9G7mi1yyZpSdPptGd16TpEEmwsb1kZ2wzjkmXj++8R0hVQyFNu/BjHWnHrutfh1UFiNET7vDEGq+dT4i+mK2uaCTNBbNtiRwAY4huwXGmV6BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nwXHVyd8Rea2Ghtlel/PvAS8zXGGo3f4Qmc7OpPuGwk=;
 b=oAt72X8pzLu8urinDZUzVLoMh7eIXQVkrgaRAUUDcakFEEONFnz26QVN8G1LtmxkORDUHn9EqAcq7BwYNQlTFAFEMWqF6miV/0n8oi+O2YCcKyV8H1UvBeivi0ksE85swGkmbuEMAnHWz17YlxyeEUnhXEqbReAIOh/CqrLbajIbYa+KqVAWgAef0/fBOGcoMxAJAjIrOIYQpPsCHGaqE7rfWUpeSpFShb7zryCvBMg8upnOjM47MnMks4x1ixzl8cy21VN/2q/bo6Jow6drffYGRErPuAPqwQm4U92v8SvE4WxBurKVPbnbMKdqY5PR926eB1V2EXUkQKKATLB4Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (2603:10b6:5:c3::15) by
 DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.18; Wed, 4 Aug 2021 07:06:09 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed%4]) with mapi id 15.20.4373.026; Wed, 4 Aug 2021
 07:06:09 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 2/2] meta-yocto-bsp: Bump to the v5.10.55
Date: Wed,  4 Aug 2021 15:02:13 +0800
Message-Id: <20210804070213.27880-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210804070213.27880-1-kexin.hao@windriver.com>
References: <20210804070213.27880-1-kexin.hao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0107.apcprd03.prod.outlook.com
 (2603:1096:203:b0::23) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Wed, 4 Aug 2021 07:06:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fbef8c2c-3e73-48a4-7211-08d95716559c
X-MS-TrafficTypeDiagnostic: DM6PR11MB4753:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB475373416699639C1FE42A1FE2F19@DM6PR11MB4753.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	r/4rz6xGwGjRbtwfA75Zz+1woEPfL2rJmRgm+R8u2d2Gay7q20MdbWVFpoJZz4xWiJQ072NZo3P64eNb0DUbkP7G48PuOO6sal9ZJtqhEKHbkANrC0h4bNCugVGrsbpVdFa0KzfkvWI+PhTYs6p4NDRI9X38V9d3ibg8yFmLxP6dwHFEKpAUDuiy7xEbhkQ/t+73l2kfrO9RvRYhlGDnqfq6OfFXXDd34SGgeD0lACTh+QAwCOQek/rm7ibBp3JWxFgYUUf3BOcZ5KF7VjRS1KHya5LObkXxDAz+PWUDrIHK7tJFWzv13EHuTgjYk5yDKDr5Wjes4c4lbM6B2sNj3KdExV7XclPAs27FhhPfGiET2JsY7narISlYBI6V0k99RkofIeD+FaXQvVQLcgySs/lHR5F8iUVcGfLBRuOvlh/3e1ZV6JLssoiaCPSvNqNXZmV5LtXn9B6kaUOoAVtXiEztCVpszgy4Fo0tD4+EubWbYIDdyIWZ0e6nIGeXQ19uQlYQPQfZaxnudvWs2hSW1Z7PrtAxPs8GYAT5GzID+FDxrDDVxRV64DdKG/h+HceYmKiguGS5iTBSqnmTONzkCzsCMqYThcTfLO9ppO1s715diV3KJgZtAfvlPkwRmSY/3v0LB06O7BNu6GUH3dQ87i34uslefUwV26AgKw5O4o17kSCvzuI25A7ITgNYSrfCMK6NmgtlVFN6/lIEouaQDQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(346002)(366004)(376002)(39850400004)(36756003)(6506007)(2616005)(186003)(26005)(956004)(316002)(6512007)(38100700002)(38350700002)(86362001)(6666004)(8936002)(1076003)(52116002)(6486002)(83380400001)(478600001)(2906002)(66946007)(66556008)(4326008)(5660300002)(66476007)(8676002)(6916009)(54906003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?K+H0YpJtcGxVBLbsuWx4Urdn4zEyTE/rV5pv3wxC0cfitB62xtpQqw9UPIX6?=
 =?us-ascii?Q?TLLLFXtdenT22J6wLiIgFR56zPg87yR5Y2p0dY1mdtANOYv/AYTlFKHuM0kN?=
 =?us-ascii?Q?Sfo2OL1simEDl9V4svHGXzKob9S3u3Fh/cS0CgVBkVCA8epbeemFOjsmqKzV?=
 =?us-ascii?Q?h39ROeyekwrLGNbGvRYLrK8TO9gyt3KDGuFoNjFNFZn1gVCj0dHkMC9vvSj1?=
 =?us-ascii?Q?yaE31/03BXVmVO6yf+3AbB5MOeIzDkgX3uLnWJ8ECPqTYms2IHJrM5e/VKuu?=
 =?us-ascii?Q?CLB7fGqK2SgiYs7Qu95n1K5T+qEQERPPEF0g0UUqKmg8AqzzheVl4XbGAe5R?=
 =?us-ascii?Q?xJpQANeWbZ4JQVU6iDWHf4hQWax1pV0/vfbJ8kOToS4RZi2AM+x71/Z55Sot?=
 =?us-ascii?Q?HLT2RyjSH2YXrR0Mu/Kk/wnUhvo9tYDOJIQdz9ykyY0/pGhkoh/tTpQObZJ+?=
 =?us-ascii?Q?/nfodjx3tyHU3V/ZXR4hguYj1KdUH7R+P7thkXhGWFvNJTAO2rY/rNY2Xmv1?=
 =?us-ascii?Q?3qRb9VLtu6AqfF5+qmv8mgxBEudzFDauDH9ny/wQgTQHeiUVm4RinoTno+Yn?=
 =?us-ascii?Q?krmUCHe2x1+BYB4HhYtECoKjB7hzwj0/1KMlhM+OvTZzBq8VgrHGoneFs6If?=
 =?us-ascii?Q?tuhv0w1AnqmAa4/QyHVaA+43OXMx4oyUx4RSWNqq4kNnPS//9V4jth98hPMj?=
 =?us-ascii?Q?hyle/UWO+HkuHvHF/xqNwyZGRfd2iYQSrODpfUaCbnZm154X+GCkoDtf3C/Z?=
 =?us-ascii?Q?vAeZn34kTjm2DVY5oCsGCpG6OMpxgz1SnyCMOL0F/BZEQiDfSPtQE7jzc7Ou?=
 =?us-ascii?Q?X9H9SzrBG3X+hKDsOIZPE9eHPWJx2Ll7qezs+Q4mR24IalZuzY8TcS2Cic/t?=
 =?us-ascii?Q?f3LezA70ilLZvAHo8ugUnZTu9NUOjxTe+eTY0sudI0LY9WAc7w7zhpwh91eT?=
 =?us-ascii?Q?khsTKx0aTPtLMOsBrDzGVfaoAeFrisz2f/G2RPhUi7iuEs8fGWc5JcbqQXVU?=
 =?us-ascii?Q?ZPTYjUAZKdQ3reV4EGUPV5wx58inHZRWn4i2mthIPGIsOlJaBzrv7K4p4QsO?=
 =?us-ascii?Q?gvxFnkmNLYmsgFBS3rxi8dcIOeYeQRSCrhsYClq2tqt9s16x0/LJi4laMYaf?=
 =?us-ascii?Q?2YnxPFWxCmcQP/hCJoOBM77d8aDBZ+9vySZyO6+9GYWa5Q4tQNtVw+p5ibmS?=
 =?us-ascii?Q?AEHY0rigEy1MdRlLMCva4QoXDfjQzYsh6dMcCJaBN84YYI5uaEC9xpPAo0ie?=
 =?us-ascii?Q?LAyPlqj/J7u6en1ffWc1gdw997OtP7bi7Yc0rrlZPU4HraCgxFkwQpfM7+mp?=
 =?us-ascii?Q?6RN68BPN42GRPib5lnxgvJmm?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbef8c2c-3e73-48a4-7211-08d95716559c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 07:06:08.9427
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fkKIGtzqSbM6mg2xpoceYUtgzk2RFmqL16IfrObGT8ugiWnp8jAOkz+HdtuArEoYS6OVEXMrsaKUf7J35/ituA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
X-Proofpoint-ORIG-GUID: e5NUOglCPtnRi4tKwFQNCm52RYQ_wFoQ
X-Proofpoint-GUID: e5NUOglCPtnRi4tKwFQNCm52RYQ_wFoQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-04_02,2021-08-03_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 impostorscore=0 mlxlogscore=834
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108040036
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Build and boot test for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 0b017fc79db4..1e14229c2342 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
-SRCREV_machine:genericx86-64 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
-SRCREV_machine:edgerouter ?= "274d63799465eebfd201b3e8251f16d29e93a978"
-SRCREV_machine:beaglebone-yocto ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
+SRCREV_machine:genericx86 ?= "c274623910704eefcc98380a17649889ac7e9408"
+SRCREV_machine:genericx86-64 ?= "c274623910704eefcc98380a17649889ac7e9408"
+SRCREV_machine:edgerouter ?= "ac089d661362ba857e235c5630242039b150ae26"
+SRCREV_machine:beaglebone-yocto ?= "a6df693a45f5787d4254e0998f52b4465b2a5efe"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.43"
-LINUX_VERSION:genericx86-64 = "5.10.43"
-LINUX_VERSION:edgerouter = "5.10.43"
-LINUX_VERSION:beaglebone-yocto = "5.10.43"
+LINUX_VERSION:genericx86 = "5.10.55"
+LINUX_VERSION:genericx86-64 = "5.10.55"
+LINUX_VERSION:edgerouter = "5.10.55"
+LINUX_VERSION:beaglebone-yocto = "5.10.55"
-- 
2.31.1

