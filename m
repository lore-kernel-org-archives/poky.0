Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.3033.1637021591256391914
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 16:13:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=YYSG4dsF;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=6954a01f72=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1AFNvZGo004583;
	Tue, 16 Nov 2021 00:13:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=aYDTPxi+sAZ1WuL4tUw62MyQac35Nta/4ymWFdtetRY=;
 b=YYSG4dsF/Gv32Yi7QCZ8m+mVG5lpN7gvZCV64QqOAkb90Nw90LAaJZzgzd8U7k0yl83Y
 zw6JRygEo5lhjSCKCQCnJsCz9PqItmCPbSgZqk5pEgXxkktofLpb4nqtMSaRsKyKKAzg
 Cx75ZoSgCmTSaCoKJfgdUMHhPDloHjaYeD1HyFL0NHv3HDHG9tk82u6l/+ftHxymDTz+
 Q0fVxrhuDdNQBdHSZnneDy7P+GTuFY7ETda3Ea4VLp+y2L6F4WdSXmuvqZQ9pN89Acme
 OgsA72boyfxe71mXv1CgWIzg20evYAnv0Koe73JC1JzQrws1I8Ma8RHoQ3hzS93B1YWL jA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cbfy30un8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 16 Nov 2021 00:13:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TRJAiCW9/h1JY75GM7db7nIRoBHC2hzBNYxntTZW0E2Cry8BE5VeQfRigEi5DLo69FDdqsclmuXejXZ0fBgUudI6M/zsnApmGD6QoxJNJjKF6BwquPIJyiYK4tLvSOesjdI7AefOLDrVkSHgxFVpHIFJIOBAAsJZmtyPaNBRcv5S1YVQacBY9uN689+26y2k9Z80jTzXpPQkWsrTKKA2jppyjWj8cifUKGxc9UrBZ7FXFuGP+t74OH0lft4b/c3dmB18lKjbyTe4/c3PKqambJN1DVJuUQHKiAP5zC2gwGtTrn/R0ja9rdIo0xb7bGpXCWr21YUy06OJpjaMwwQ5Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aYDTPxi+sAZ1WuL4tUw62MyQac35Nta/4ymWFdtetRY=;
 b=ffI+wrnEE6BVNqNulNlVd0k8x1nUzVoyxZp75APyOxa+2iiPsQlCgG/HL9JWQcDsveVTAwdAvQejHV8+F0oMIV/y+l6yp8dC3Z135eTz/6h9PKdeyWzGfLzfcHcI6Ctrb57oDdoGDHKwZathLF821xBXOYaHQzhN4o3F6jb4pGCIs5zeoU0VY/QjLrE9kMGKTTbsq6mq6jFJzRY4i3Zp1k90wIRDPAno85TMzgmM4rvNGZu37Pmy24m0iYXkeUN0WWpvESmPPYtPZYox22QRojboB0XOg+iYNkNWmaVgWAch2Dd9io6mi+GvNylQywpRUwlon5rwf+gymMxZB/Shwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by SA2PR11MB4874.namprd11.prod.outlook.com (2603:10b6:806:f9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15; Tue, 16 Nov
 2021 00:13:05 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::997d:91ed:f5d3:9293]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::997d:91ed:f5d3:9293%3]) with mapi id 15.20.4649.018; Tue, 16 Nov 2021
 00:13:05 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH] meta-yocto-bsp: Introduce the v5.15 bbappend
Date: Tue, 16 Nov 2021 08:10:33 +0800
Message-Id: <20211116001033.463741-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: HK2PR04CA0075.apcprd04.prod.outlook.com
 (2603:1096:202:15::19) To SA1PR11MB5899.namprd11.prod.outlook.com
 (2603:10b6:806:22a::18)
MIME-Version: 1.0
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK2PR04CA0075.apcprd04.prod.outlook.com (2603:1096:202:15::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26 via Frontend Transport; Tue, 16 Nov 2021 00:13:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b3e01996-4337-4439-6eee-08d9a895dc40
X-MS-TrafficTypeDiagnostic: SA2PR11MB4874:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB487472F501BAB71F4AF1EF48E2999@SA2PR11MB4874.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+7gooSOsNWgKOI4FiDV+k+MJKtEfv9e1Sn+biyWtuLZPz0nxFV5K6kE8H2JLSN918PIXleD8hSvQk7tAsWOGcYZ4XXa90xbePR1qNpGGbPjpoIXS/+Ra807mWfTmTG8ZQPnjmL9mHXlEEADmmPFZpeiZejJeM9wVcr+0I1+Y/XDf7P/m17G+HkrzH1JXc+3AZ8rfyKr862vLswv3rLZs7f/XPHHq7VdE6OXTTau+CM8utYet0TuPlviAFVWdJ+F+BEwhqpWLKZTQ0DODYvRUAVfaNzqv95ncKL9w5LhTW7klMQRCzwpqYRd0GcbegT4VajFVpuQRZBT9eDniCygG7Ce4s//FVMktB6bYXFbnOhQGYW17iVq7e3YF+7ZMjVlle8by7KjWtKCCxusUFppOBSFg2fGQz4o62J5ijRTjxVyXAdO5FFOOBB944zAhHDeKKzuelJalWAuniUdHrJbCWQTh0VmRYURwh5XFPes322muextjiPtrYV90T4A2jTWQroUsmOxLFCbHd83cuKFEw9WwgyD3xm42ezH+xmYXsXgyg17agdSkvNmbgPi5trOfo4tVMJJlylNNpadqdXeJsG/PIV/3JxlJ3Cek6NboPv9ONLNhuS3Ok+geT1u4NXzzqX81dwB4NhvjC8BeHD1XwnrOpLOmDHFe7WNWI2wCec8vU7/SYAuEYV89fbAToIndrX2NWAmWpc+1bf2qyRvGpw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(86362001)(66946007)(66556008)(6666004)(26005)(6916009)(52116002)(186003)(5660300002)(38350700002)(38100700002)(956004)(8676002)(316002)(6512007)(54906003)(2616005)(36756003)(1076003)(508600001)(6486002)(2906002)(8936002)(66476007)(4326008)(6506007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?m+GA7XhMK25Netq86xOWFSCcI3JZwSFT5GZJ4u0fKRirimHR07frB+E9hkvS?=
 =?us-ascii?Q?5WXTUFlQcYIkjscCvsBnhHU8oUKnIOqAzB7xAXZ3oTiMPdQjXN0QfImleNHE?=
 =?us-ascii?Q?dMvVx99GozlRJWEUZVhaZupszD3TEiBvU0DMmi3K3Yf61yR8+O26jp+r6or5?=
 =?us-ascii?Q?zn6geRjYm3goJL/lEPWKFWqac42JmoFsNlOKRlzbNiySiCq4HsZDMrlXoVbU?=
 =?us-ascii?Q?zSoo7VsV8vo1oOfnDkcQMYJDykA9FgORYbkdfSvJLAhqNOmtIfAVada6RlVR?=
 =?us-ascii?Q?kv1R/ocfbQdLU0VYKPoFRzyy877E2zSk+dmkNhyGct8rIr7lTFMRfOwRPqbc?=
 =?us-ascii?Q?t7k7TjtpexqRpchSrdAnW3Z5Gba0VIQtU/OedA1FzmnmYT3u3yEghripiVyp?=
 =?us-ascii?Q?XhZk8RfzewXSip8UGbbENQG9pL5D7lbwhx54WSwNW7mAosyCaAGw7ZfKmaL2?=
 =?us-ascii?Q?ib0q3Dp3dsuC47JsKSBSyyY0u3RtcZ8ciHypRdNBbALnwHWun9PAH8XnRalu?=
 =?us-ascii?Q?mfYPaDdnFECmopPmlDR2/Yh/pTb/cW6F5O7WsCsYEyEWv/6++FxXA61zTevn?=
 =?us-ascii?Q?AyvNfVIEd/YmSB5d5yM5hki0jva3zs67xqrDEdqtayMGg84NUDXKUaCWkS/Z?=
 =?us-ascii?Q?EGFKbzQ41QqBUTfa41nZf6Qfxi3rg8nqcgt/F59xlyEbtvv8TQtF7vsgMVJ/?=
 =?us-ascii?Q?bMGZVJiw7iDrsboZpik+89mM8HrF4i/ep+z8wSoG5/RY7cm/kCwKX7IQom3X?=
 =?us-ascii?Q?LQfFYi/2AXsFU18V2azL1a/4OKJPeF22++EOk/7M16/a1mb02oQZHgH2wBrD?=
 =?us-ascii?Q?C6FnJzjMp3YCmONsPxbFPqi2/qcpk/Om9Xkg2DthWXafzeEPnIS5Y+C4F6P/?=
 =?us-ascii?Q?6N1881BUe0QlneweYLywgjOLuyuxtjoMoQRYaJh9Npeuyz+rtDQeeBqrvwUI?=
 =?us-ascii?Q?mK9+wle4zhUkuAl2adlx6TkMbCEYRFEeH962N/3r4HsyzDGO5G9qUSG03Hiz?=
 =?us-ascii?Q?Dg3JIQpqjWzuiboqWvF3RfMlsRER00n0Pdp2dZeeDTtvnZO350IOhHNAYtOx?=
 =?us-ascii?Q?MYZaMOf5eLcM+A5C/vJ9VRUOdR8DgbnLLt/URpaic+JfEKBUlt02NMsv6rJY?=
 =?us-ascii?Q?HVSpW5B69VHBkAoBtHj3RxtFyMmfyjMIhbkV69SBekgBcA+MCRwD/vfxoNjm?=
 =?us-ascii?Q?0PvCjQW0cBNu1cuxhM8heMrSnDTEnQ9OXKRxZQo0M1AVX+6fslV7A7fbL7jo?=
 =?us-ascii?Q?6ETG5X9htQmK7NM+6SFXd6b80rydfsHr3qYZp4HHuWg3hG9hI2QfEGndfdiV?=
 =?us-ascii?Q?4p8t3qaCXIeWimMVuwDlsAQ/rnYR5E5XIjGZdHpxBcaHw/HcZtZxkeK1D8SX?=
 =?us-ascii?Q?26ySxoMqZVyfYaG3tUYPEuLFySdQhDlTdUIozfpjQnkjaRd12EaVNAeOPlqT?=
 =?us-ascii?Q?DVG9qzt4jCm/E/eD5HxPn6Mil6CQrDCcLnvK2QtzzpM4AJM16Aoh9Dh1T2qo?=
 =?us-ascii?Q?lUnt69Fci28BTv/NoZkFVE3Cw/zA6SZbO9R6yD5Q8qBeRy0F091bYtyEXIxt?=
 =?us-ascii?Q?1v2bGR+AuXDnv21dtJzMq8rtmVkASCWFl2yGvXWwF/5l5uRR+1KtPrZxljVE?=
 =?us-ascii?Q?zlVDcNVSB5e6VBbOnIzjFxA=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3e01996-4337-4439-6eee-08d9a895dc40
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2021 00:13:05.0211
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BaZWWbBRTSQA4oUb6OCClMpH//mnc/l8R2+aGEKmIuytZPTbo+hFhh9P3a87wB5aFJJF0TfTFLlHByhwCoGyPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4874
X-Proofpoint-ORIG-GUID: Vne79fwTP3qHt1sCVYFCj-q2HofCjkGF
X-Proofpoint-GUID: Vne79fwTP3qHt1sCVYFCj-q2HofCjkGF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-15_16,2021-11-15_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=589 clxscore=1011 malwarescore=0 spamscore=0 mlxscore=0
 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2110150000 definitions=main-2111150124
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../linux/linux-yocto_5.15.bbappend           | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
new file mode 100644
index 000000000000..ea36a2b09625
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -0,0 +1,23 @@
+KBRANCH:genericx86  = "v5.15/standard/base"
+KBRANCH:genericx86-64  = "v5.15/standard/base"
+KBRANCH:edgerouter = "v5.15/standard/edgerouter"
+KBRANCH:beaglebone-yocto = "v5.15/standard/beaglebone"
+
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
+KMACHINE:beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine:genericx86 ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
+SRCREV_machine:genericx86-64 ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
+SRCREV_machine:edgerouter ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
+SRCREV_machine:beaglebone-yocto ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
+
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE:edgerouter = "edgerouter"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+
+LINUX_VERSION:genericx86 = "5.15.1"
+LINUX_VERSION:genericx86-64 = "5.15.1"
+LINUX_VERSION:edgerouter = "5.15.1"
+LINUX_VERSION:beaglebone-yocto = "5.15.1"
-- 
2.31.1

