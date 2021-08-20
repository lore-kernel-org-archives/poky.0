Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.77726.1629421426980737230
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 18:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=pifwFhbQ;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3866a3c413=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17K0ltJx028027;
	Fri, 20 Aug 2021 01:03:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=LSFYj5HdzpPPKthjozw3VP89YZZVRfB2ndkiETbtRHM=;
 b=pifwFhbQ7+qyAArO4ANF+SY6DBXrHK5/3tkf1tgA4m8ox4OwD4lzNlT8p3m1z2dMC9zW
 /mxQjHgdDa/vZm2cRN7PNoemZ7oTJR7D5juKmXNB1zh4hVrO1IfheoPEMVdTfK+SNNs8
 qfD1F3VGqaJVYvqLnF6WAYwXlYTjnFiZj4/WPZK+Oz0Elo9B9RpnkXT6O1dUVYpqgMHh
 Tuct4F08q8GQKxHUtS/BSSy8c1WL+dOr0Ukaq25LOe8fxV6Jml+d32ZF+WcPcigS15Br
 b0TLordWVC2fCSCmzkyjpMLBE6ilHjymcgl4BzTCqafqbdYiUFwcarSMwQGyzbVk+o1S oA== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahakcrws1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Aug 2021 01:03:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3cmcjPKwIpr9Gtqz2bYzVib59cx+DgXc1HOhcgkVaZTzDmQWKbbHuAye0wf11PDHfNWNR9e0g7h1hqFtUqcraWxo9XNAPJsKx8DExccChvY0QlJW9t2KLSOCfG3ts8ki9bwfLOHc/NH7JditqxYVSVog0aHeJJP7rR3/ZT49L9Bv/mUt+2jFu2/8xFZ8wvRgG2txlUFmbKN7iAeAl5S5yTspN+p/61ZGUBiH9ra27Nuy3Ha6HtiaUeV/AnQBbM20QTlXu7XlbnMeU10KUp1ly/hOnWF+7EKhCHlyPKfskzc+zUlchQYYq1JCoxDwaUtSOWwv7IL7yGsak/GYMp1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LSFYj5HdzpPPKthjozw3VP89YZZVRfB2ndkiETbtRHM=;
 b=CpvX801WZukxJpjU/FoLFd/S10/1GwLAwMgDHwliNNhRxwjdrdadxRonM4gA5JpePOOhXEb7BeHvI5fgoPkxJ8sIminbR746sQ4DKBCMiUYTrlb/W3HnBc4lKQAyRML58e9LWfjg4K9hB7JJ8O1Vhea6lt4EmgEV910P2Av7QpOfhraV00Ef0IbZi/s18t2iTqDOKqos7DnzbUYAFUvGti8N0Y340tIs/Esp3NuezyShpP3jEBAzpyCEXgTSdggP0QoReX4Vs8ILl2NNaVzw0u0xVENMhqEjBTvUmmWVupJuY1tWwVOI/d0PlUPLgW8dNAkt/8EBQu4d9nDrMp9JsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (2603:10b6:5:c3::15) by
 DM6PR11MB3836.namprd11.prod.outlook.com (2603:10b6:5:13a::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19; Fri, 20 Aug 2021 01:03:42 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed%4]) with mapi id 15.20.4415.024; Fri, 20 Aug 2021
 01:03:41 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH 1/2] meta-yocto-bsp: Set the default kernel to v5.13
Date: Fri, 20 Aug 2021 08:58:32 +0800
Message-Id: <20210820005833.7552-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: HK2P15301CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::11) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK2P15301CA0001.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.1 via Frontend Transport; Fri, 20 Aug 2021 01:03:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f9ca551-1ca4-4ee3-fe7b-08d9637659a5
X-MS-TrafficTypeDiagnostic: DM6PR11MB3836:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB38367375A10885002C2BD593E2C19@DM6PR11MB3836.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FMoVIY1TK5LTBqieAcx+C+t7FSaJ8GUB1Q3qxBYkn26KnYngqhRd7igyaVk8ldnC3IW30rKI+yFz6HevgRA0fz1ce4BveX4xVG7HXNfd3bnKbGZzs9kyIjolAuTRcOOguPFzvrt4xVHHV7p7ElJjWNRpCDiQQBf0mCSUEC4Ehe/TUEv876Cjy3286GVrJAGL2IVnQYW9TtCxOuR49R28q0EVGguTNCMJM/b7pTA9GrrAW2uSeeMWMXm7YVuTwfVyfsBcvTyxnLaTWi79euSPGApt2ik7wv44CvE7zxWbnmd3OI/l4kE+EgiB8MYNHmrXb+rINv7x6Bxf57P4RX31QUwuz34QbVFRCfLIvxvdiMHkfsJQHxDeS5ZJ9vrmzPd+VvDob/BpuHVOMHuW7SvwVlFvA4RxAmr3Xbbr+R+2UtQgLGlH1p6i3Lm0vhTRYuFMzVr9xTvftoelQ6PmIMBt6sqVN8UgOZ05leAU82gq+C6FVvuYXhm7xJ0K6xt6+Prim+Veyme0r1bZWxzY5PtuX6rfy7BfT9Pc7amSgWJEkyjhFktlLzNLPYu34Au1UWUDaByHELEJuBPUyLL5ie6Si4XWr1aqsg41PgSqc82l6Du1xNMZ4aGomG88HZWnM50bqfrBVXK7t9OS2caZmKhl4qFycnRxqJFO904e/AZ0p+PiJ3ndAEV10TEr6aiAikZgrl++uX4+UcCdF5a1hodWRw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(346002)(136003)(366004)(376002)(8936002)(316002)(6506007)(26005)(6486002)(52116002)(5660300002)(6916009)(6512007)(956004)(66556008)(4326008)(1076003)(8676002)(478600001)(66476007)(38100700002)(38350700002)(2616005)(66946007)(83380400001)(2906002)(6666004)(36756003)(186003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?QeXQMTsJfLXOba6tnQJ6DRxTbRcg4ZNIX6IvuuYgxTCCR/PNVc+rmhcVb25m?=
 =?us-ascii?Q?qYvL9p9mPcZVqa/UVnYTfuy5NzJ+0Ebpkf0VT/gQQVsOPS6FDl4IgHA6T9ED?=
 =?us-ascii?Q?XU37OKo8oQx/MW0x82wyoAwqVbvLdHR+fxH2ZCs26DDsrOGx1CgY3wUGVAJV?=
 =?us-ascii?Q?XHZdp0BxbRllqDnn7d5Yge8xs6aSRXMO8gZfwhp1cGI/acGTpNLRmWIYDB4J?=
 =?us-ascii?Q?qPtP9p30+X/r0u+8phDO4fUEFveqLJD6ILVNhdhdbZb7CQDNBcJIzqESEtEw?=
 =?us-ascii?Q?crkDWI5L/G3+ECDjuvLXirl9p3cnxj6NmjfSSXuTXu9eLqxNGQ+3cihqi0uY?=
 =?us-ascii?Q?fSzLudVD473Ow7CyNpD/KsPeieqal1UMFuV2ryL8k8Vnyu1DNfhMMFINhTDs?=
 =?us-ascii?Q?CKq6n9tYueNmL/L3jwiGhUXnOLQM9PzzxJVBU5VwlCL8jXsiHc8iyeZ64SwD?=
 =?us-ascii?Q?ZiPA3KbJBrz7QQuBH1UguKsJvoK4U8UUwcOxIhG2zEhCReoDAmAmsZt5I4Vk?=
 =?us-ascii?Q?1Q/o9wt2oYlHFz0rZNmvOd+ewyT2Cnb4tWUAas0iW5D7hqz9hDIUGKu9SQI+?=
 =?us-ascii?Q?DIznIqeM2mya/3cODLYp1RfXgKUz7Ubg1664e8KJuNBLwUch6KK8ao+yc38B?=
 =?us-ascii?Q?40pe6wpv/OJ8QCiXmTLFFklikog/BMb+BiMSP/06+zbuajgC4vqfY4beS0My?=
 =?us-ascii?Q?5mZ+UICHg8TdjiGVNv755uj4BObg2irXGo6wn75mYfm7U5C7WKJynYEzOPpw?=
 =?us-ascii?Q?m2xJNrOp5o48ri1O4GoRx6iQ35kcbxRT4HHsdrTQx16HLjXN6tdvs++RiEfX?=
 =?us-ascii?Q?qCNsQfmfp+yS+7hgiUAPNlmXA6qxAVGH2DQ7SgFgojEENLqkIJ3U/Zb8twsU?=
 =?us-ascii?Q?TFXN4VqN/gKFId0+iB5M6ifgKWiqqjOMXe9JkzqwgOiLehVSUeekgzt4zRQv?=
 =?us-ascii?Q?Z7XPNJj69mlI+9EbWZX6/bfZUz/XbWIHBc4bsAZBqnvJZ02jhf1M06V+FD1C?=
 =?us-ascii?Q?ePzU4lMigpaKYNX1cxvMWcUvHzkEGIux8qknTLuS1DFOJUMGWWicilHRWr+2?=
 =?us-ascii?Q?vMwYyLPZq9sqX9PMhcvK+UPclWh0/MWMTKI56wZMkeB3/Qrl2BN/oACjruNL?=
 =?us-ascii?Q?iS2SXfMHeyRBOd+JpnQkULRvpimvvlFbEydnFtuo7SOL6Np7bvQjyvpV16kY?=
 =?us-ascii?Q?/sY9SvJi/51Sg5/RUs3zaJh1eHIFfOf9b9ykrB2TTog3qk2R+l+I+SJYJhKw?=
 =?us-ascii?Q?1sBBaFF8XBWjJtpOsLTPp899zuUEM3KvI8eF18X+X0hk7A+hJJVWNdUZTSyW?=
 =?us-ascii?Q?vPkaPZkSy5niEgDxON/nbciP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f9ca551-1ca4-4ee3-fe7b-08d9637659a5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2021 01:03:41.3196
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XdyXUCHkrltlRRMbQcwRxJpuPyktaclFWGSXn7z84iTCGXDTZG3D2S/OzMR8BDIDWhi7AFrtEIy0JU+0IC7M2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3836
X-Proofpoint-GUID: 3RXdZeeKw9wgk53-Ef8DNL5cEBkUl2Nw
X-Proofpoint-ORIG-GUID: 3RXdZeeKw9wgk53-Ef8DNL5cEBkUl2Nw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_11,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=802 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108200004
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Build and boot test for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf         | 2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf               | 2 +-
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index fa7275fe2d26..618af40306cb 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.10%"
+PREFERRED_VERSION_linux-yocto ?= "5.13%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 447862f550bc..9c95f4632fbb 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.10%"
+PREFERRED_VERSION_linux-yocto ?= "5.13%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 253a855dc344..adc8ca879aab 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "5.10%"
+PREFERRED_VERSION_linux-yocto ?= "5.13%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
-- 
2.31.1

