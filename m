Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.5128.1661073547281389712
 for <poky@lists.yoctoproject.org>;
 Sun, 21 Aug 2022 02:19:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=NZvt9X+V;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=5232d22376=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27L9J4eR005572;
	Sun, 21 Aug 2022 09:19:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=5AhsJ4wA2gm2Y84c6v0bQRoaqt6Iwdh9tXdqj5p6BTs=;
 b=NZvt9X+VtDgP7Fvx2fl9nX9yTPMynx4T+hNjqyB+DhzK8/fCcxWDjS9vJvk/4O6e0SJu
 j0khxBe6cNTw0j2EYyCmkIlJ2jPnKz2HCCOB6jVSm2B729Y36RTOxfxxXl61RGBv/Gl3
 qkD299HMmzj5hAlpbjJ95qAPlPGNNuUlfr8VW5RTLZc29b4lMVR9CVY6QJJYxM3UwyWr
 criBn2iHlRTkluHG8xEAEozUxE0TTLmkIoH1Pa8jZx4gBRyR3VpaHKlkx6W9oJAEFifZ
 gQyVlE8V2KGerVDkaU7GXN1LsTAGqJe4kRZY+LjoEIOHuGOFRHgIlhb7exTZnZDDE4cJ GA== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j2w1411c0-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 21 Aug 2022 09:19:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f6XBCW2mZs8SyDLPQEmqyZKyHTI7m6SF5Rl3mdfQBTi2Cax92eCiFAWutoZDJf+YjIzAozZbeQkiUT6qqo0b2E3ci8iVvyXch5LDDHOE3vlJi7+DsHFZx/RK19epcGSy9ltsr14CROeCTcQl1zprDnptD/1vd+1aZc7PNoTXnYSgvgGEod76Vr78Sp+x0PF9rhk8D6Pp8g8MpW1j2H4fTpgEJafaEFgamVuTntjtSquwUE0/jHaV7pzk08CvZnxdwvtUNEnZaXTJaYcM9FJ5zTZnzHnQZ6/h9jZxq5IqtIrFyCw7ofPZgGkVoyr5+cI6qgrpMOv3UPTHb/ri39HRkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5AhsJ4wA2gm2Y84c6v0bQRoaqt6Iwdh9tXdqj5p6BTs=;
 b=m8s9VqFHgI80NN+0J1rb96ZrAqVCf2wYFAdTHUO/PeJiiLjb1dKDbfdhz+7dnAjznig/n+sz+6ZZ7KEPs0wUH7JAsw8wPpDpOPOm9O6G8HOHo1/S+x0i98MV/QbTwOJsFP9Eld1J1mnAiXIcZ7RmM2CV9OKfaHzIQkQ5k9bU2VGJK4qoslFrRRuKPIOstf+YM7K0OjEjhcOZepPCBM4sSZswZQdaplxQ2rAbBAKgmkVamU5FBjoA458z86RH7RE1Pg8Yu/PzS3+msPUqERD6lxk8RAKQ0YU1ecGIxy5XIxSlJkoFMbIp5BT1NLgG6sKnySAtgV6Mu6aVQ6m0dP7Ewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Sun, 21 Aug
 2022 09:19:02 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::b110:7e21:a561:e119]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::b110:7e21:a561:e119%5]) with mapi id 15.20.5546.018; Sun, 21 Aug 2022
 09:19:02 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH 2/2] meta-yocto-bsp: Bump the default kernel to v5.19
Date: Sun, 21 Aug 2022 17:14:46 +0800
Message-Id: <20220821091446.2932085-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220821091446.2932085-1-kexin.hao@windriver.com>
References: <20220821091446.2932085-1-kexin.hao@windriver.com>
X-ClientProxiedBy: SG3P274CA0011.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:be::23)
 To SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2038c684-aa79-41e7-235d-08da83562fd3
X-MS-TrafficTypeDiagnostic: MW5PR11MB5786:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dRdGV3uOfVos7ieSViA8chWhUpQjtaukaAsC2BKRYccprrNUSD6lLenE+A9ddejZabxAefxAJPehw74Lt/qa1KBBGw6ph54LxERnYP7oyeTxYJBKB0JmU9og60FDuD8YQfUBlO5lbm1BIe3mnFlFpYeKa+bIFAE3HQwFNUmJMaZAhocZvDlYUfFECOKVBCdGhD2Qgfdb121Ys5hOQ2WbNVbbx03UAj9SyG+MbJI3i1X5klCEXxBBX10vTyHMk+4rBmS8GSBT4XGPQldPWz8bSF94UlRU5n+74j09pNSbmqLkz/w4s62uOZCVju3IPMxc83+3tQSZMwbDYVVMEA3sGfDl+S1t3EB0Dxb7BlOAi76hOrN3AEm/jBZeXKEUHRxhwmfscl5ShgPqnOFsxHM1UyUgm54nnmBP3fFXxk9Pz6NqzJi2H40QQrZn+5cDl2Z6JYk75IIfywlQzZDk+l/ivoM9yDtCEWQtgrFApbw/TMfOsPKXenKtEXhkmaS70/KTjT3igBLVxE3FUnvXoU+FYmoaElbWlTxiOd9wh83XcfcCiieD1AZqtDfFQo22r4X9oa9+j6mMOIf+uPaxD4N1Wt+HIOMUsE35p2CnqnBTnjD5olHdZO0xCuGukFDENnSJLeuutQCK+opx+Ml65p6f6BBN1JFpRWk3hThRkl7m0HX118pxsTwucQvggdlPTtmbMYGLIwvZjOmRUjFyyWkoYLK5Q4fpg3DZp2GuQuH1tXsTLmQiSYj4YCfKESznhDl8GMz4NcjLdRA1EX2bE8quVQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39840400004)(396003)(376002)(136003)(346002)(366004)(83380400001)(86362001)(38100700002)(38350700002)(66476007)(4326008)(8676002)(66946007)(66556008)(478600001)(6486002)(5660300002)(316002)(6916009)(26005)(6512007)(2616005)(1076003)(186003)(6506007)(2906002)(52116002)(8936002)(6666004)(41300700001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?XiyuYQsDyz4UVG6DbBt65/sSButx+7LWElWdHVxJ3+lkJR9XMGvzFvCmkDav?=
 =?us-ascii?Q?BvOT4JY8+NBJK3DOmE9JYzQJgtdJ9CzFgW11UYMzhLLjrHM/8onCaz8nw/ZF?=
 =?us-ascii?Q?plCCuEgMWqsulN20Xg1StwwBOGkGFUfY3qDBqJRdPjLKJrCU+76yIEPMXeKQ?=
 =?us-ascii?Q?zYUqeE7pXwjYN55+srWB1xAH3SOvDLrzYqf1+NcuAT64Sz010gj4XwCRm+ys?=
 =?us-ascii?Q?+Jakpawkyx3S5vVQvXvIptTwcHZjFhEmKMHFa5K9/lchj7hGnq/fdcAbGYCC?=
 =?us-ascii?Q?titxSVoMd0DG5JiBx8hjVLkZkd4npqCs2/FtXiQp7l8rU991oZGkZDCecqUY?=
 =?us-ascii?Q?SDyCUIQWVAt1mgb1pQEgRXyieXzKqmMVdIIkxjhrzmOLfXRCzcWqJyn/Ty7Q?=
 =?us-ascii?Q?hslUw9t1HXQSTmX8sPqOnzYPGGLj7CU4+oijh3BmhqprhgXRb4MgUPy8SB/e?=
 =?us-ascii?Q?QlbeEyDdIynAKc4ikSMBoiMcf5Wgn03rAV0A6/aCmvttiPimqG3gmaOIuj3t?=
 =?us-ascii?Q?aeGd3jt90tg+O62ZStCKdWOX3T73TGtRyqyqvMP+ZRtaz1lphOu5WTgXkPUS?=
 =?us-ascii?Q?CasTDTFz5AyX6T6Cy9u911ucBLaDyh9pd5/3aVYn7TtoODs9eQlMAAXCFCyX?=
 =?us-ascii?Q?YdfGx3a08vFmktgPcqOIHVbnKqY+0fz+ylBGmg8SNkSxTdZHVPV2o+HGgcQs?=
 =?us-ascii?Q?5BC3tDgWCHbj+KZOJDaB7ORHcRST2AQBV8qHKidnb/Lr28j/wDA0LIz14E9s?=
 =?us-ascii?Q?zy6x6H9gx7LGZo9NsimOJb6Ue4nsb1SWjJTvCuhil0dMzXcZ1azX6GmMvUok?=
 =?us-ascii?Q?uM8tapsieoJe2lyFl1L8dOIcMxReGwNDbmLZuRV0wCTgYY0LG6dEA5UeRZx+?=
 =?us-ascii?Q?L/FB7rYBHBqyBuomOWyK+RwIn1Imm43HLfFVvNIwlR+5iRck3v2d6VtpxqjB?=
 =?us-ascii?Q?2eNOgClngbsNm1vkoMLovCX2WgH388j+hnb1/iO22Yhd3gMcK2dvwFgaPRPS?=
 =?us-ascii?Q?ko+i4zgBUSePZMdUtyUFKHio04b50QLljUDvPOz5s78RvjPBYQ1PzdIyWmcU?=
 =?us-ascii?Q?OCBRMny87yYquL5up2SvM5qrHoULgZhlam7suzZ3CD4+eErPRIKKWXyjzO1Q?=
 =?us-ascii?Q?kXGYlXoWl4on8j7EMOnCoRD40wTmE73v3L1+mIaTxfjRnAT4rKduSpvs6enK?=
 =?us-ascii?Q?94cEVj2/SxYtncscJ0gQPfn5jw6SuRdTfYEf3ItIAxB55CWnRfhtELzKIU0e?=
 =?us-ascii?Q?We8g/kzRthSn1S2qSkyN4HfMU+sq3ej+Uzf3tBiPlKt4U3Ekst+3NnTSlzvX?=
 =?us-ascii?Q?h4kC6CsGaMwXv2QNoPaAVIqLAoeSRqllmWzburf2x0vAXBMzhId3k9LqXqY5?=
 =?us-ascii?Q?/O4ojE2bmqGh1F2lHbXbg+4jGzhgTHJ+iYa0j4qY5E1Cz46LVL8RVATFpWNY?=
 =?us-ascii?Q?6lDMZ8aJWqOzVmOLH6Gif/SXbxjkAQlrOEUB3H3fhgPC+UaigGRV0wnfqI9H?=
 =?us-ascii?Q?zSizFa8UXtowLTEife7rg2PAdhOTE4JRVCfw7hrcTvjWQbRD2TEX2XsBUxky?=
 =?us-ascii?Q?JgyDjtCH+Wp6Ppf5Y8Bl4WeOu306hIgZ0Yzvx1/mkrCnf4PjV6ZNaNSkx+6D?=
 =?us-ascii?Q?7w=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2038c684-aa79-41e7-235d-08da83562fd3
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2022 09:19:02.0992
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k6C4y4QK4zRqK/kGQi9JLlLbog24WSfARFw+YDf3unIveNLIhxcYF5CQSRnAYw1F5/VfaopNXZ+RiI84pE1yOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
X-Proofpoint-ORIG-GUID: sEjwRQCmFB0Bvn_GPWwUxgqhOKxwuoGv
X-Proofpoint-GUID: sEjwRQCmFB0Bvn_GPWwUxgqhOKxwuoGv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-21_06,2022-08-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 mlxlogscore=905 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208210035
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Bump the default kernel to v5.19 for all the machines, and also update
the v5.19 kernel to the latest version.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../conf/machine/beaglebone-yocto.conf           |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf      |  2 +-
 .../conf/machine/include/genericx86-common.inc   |  2 +-
 .../linux/linux-yocto_5.19.bbappend              | 16 ++++++++--------
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 284559c50c9c..d066cf21a3d6 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.15%"
+PREFERRED_VERSION_linux-yocto ?= "5.19%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 249864e9cebc..5eb5681bd8d3 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.15%"
+PREFERRED_VERSION_linux-yocto ?= "5.19%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 8c5e5522bcf2..5f25d162335c 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "5.15%"
+PREFERRED_VERSION_linux-yocto ?= "5.19%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
index ff5070ba4a92..947e0c866f81 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
-SRCREV_machine:genericx86-64 ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
-SRCREV_machine:edgerouter ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
-SRCREV_machine:beaglebone-yocto ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
+SRCREV_machine:genericx86 ?= "06993dc6c98efb8187b54577f329d244823c640e"
+SRCREV_machine:genericx86-64 ?= "06993dc6c98efb8187b54577f329d244823c640e"
+SRCREV_machine:edgerouter ?= "06993dc6c98efb8187b54577f329d244823c640e"
+SRCREV_machine:beaglebone-yocto ?= "06993dc6c98efb8187b54577f329d244823c640e"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.19"
-LINUX_VERSION:genericx86-64 = "5.19"
-LINUX_VERSION:edgerouter = "5.19"
-LINUX_VERSION:beaglebone-yocto = "5.19"
+LINUX_VERSION:genericx86 = "5.19.1"
+LINUX_VERSION:genericx86-64 = "5.19.1"
+LINUX_VERSION:edgerouter = "5.19.1"
+LINUX_VERSION:beaglebone-yocto = "5.19.1"
-- 
2.34.1

