Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.52558.1673523385804943716
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Jan 2023 03:36:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=YNE0mGq5;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0376994830=kexin.hao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30CBBquY030856;
	Thu, 12 Jan 2023 03:36:23 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=LDl9qOs5gtpi3WgJpFA0vwa0WgrVL0eNr6je8BOLmCc=;
 b=YNE0mGq5/FjghYnmpoQpyaX7mpuqoFNumeGew32k2o3qHFZ0G/0tL2KPi9gIeAWuNSyz
 +LzprnFWWdrJYMkGfAXQ6grQkcAdXqg26KlgObTwa9srJmXADGL3gf8DzeCZZjINaeOd
 BlA1d2AJgaYavYWo8ZJ/Cikw+FevvGi1Ud+NOsmiT9/hNsDjwFYXewQHCdFD/rdzP5QF
 B3HuHH0IEKBM10hyYW7s4k8mIDuj9yepz2oexFkF12xIfOX3PxJ622bkQ251jTd/8DL9
 1jeKp6smK2qVey+LlOfIwJYMZ0Nq9tt3oCtchWNhDFB9HqKrTDEKa33Q5RxUJ8DDNReo zA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3n1k5s1a4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 12 Jan 2023 03:36:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RRW3sfUMmmCLZx7aXTBqwCSD1bpoe4vi/zw4pINeTB1k6T0p7q1N6o8WGsf5jtvuRYpMAXGSNd98Ci2ybsVTViXIoF8smW13W7vrJUTaI6UnpnyER2yN+RPgUstNgVH68VrBW9XM98SY9hQcSns7/BZShOVw6/7JIfdVEFG160ZIy70WawDjQVPM9uSgb5wTy1otLj7St8hv3fEIiGxSyN30E7/H6a9UU6QQCsYOP/ySiCqt6OIaJz3UWNjuogl7GV+dinXaGc2tgY5AeWvmaqbRtFCQ3IT6FRujJxjTFMYyFx0RH1svVCEHHf966vkUNM+roHuoCaPIns4RuGp8yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDl9qOs5gtpi3WgJpFA0vwa0WgrVL0eNr6je8BOLmCc=;
 b=T9pZL+1/7RNNhBIRRw2DoGvxM3eNJ2mbEhiZyCZAYQTe68xxvf50K3fADOgWNs2dmwB/LSjxrGh2RMXI+q2NYzyLRY3c1eCt4KXPg9bkMrStshShLAb8AZLFR9yCAZxiHALZfDXRtlOp1Ixwiccve6Xs28ULOAClciHNNBKX14M+hqjsJj80pUjeGqW0BbPj6yTFy3lF9aCild9Or6G0ttEXVNBvZIV2X1Y8w49GEqx9qhYEpBD5RQp2jqYPgaFmeLOKpqrcaXnxHE4uHiXJOEPs7uMGzdL46yivsx5lf4pwyrMJ00Z7bd0NbY/UjsNHuXWqVCn5E2NASJ3Z93ru0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by CY8PR11MB7845.namprd11.prod.outlook.com (2603:10b6:930:72::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 11:36:20 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::6d0f:5f38:58c7:297a]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::6d0f:5f38:58c7:297a%5]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 11:36:20 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH] meta-yocto-bsp: Update the default kernel to 6.1
Date: Thu, 12 Jan 2023 19:31:53 +0800
Message-Id: <20230112113153.2639207-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.38.1
X-ClientProxiedBy: SG2PR01CA0128.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::32) To SA1PR11MB5899.namprd11.prod.outlook.com
 (2603:10b6:806:22a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5899:EE_|CY8PR11MB7845:EE_
X-MS-Office365-Filtering-Correlation-Id: ec54245a-e6c9-4b9e-bdf5-08daf49139db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iybQn1BAfFbHC1njfk/NwYyvkdhvQfq/whirn/6pvPE5oIeGohtsovOgz+dEsxMQTy/8NmJ9S4aCBlZGjZJYauDcM4tktRksZtuzfp0ZdJ+AjaMHpCrIOXP3R+9zQHb4JiLQgd9sfQcV/wgyjl3yjCt10Y3/EvQIQwI5kXClybZmPfWgeZx38hzdarToYLHRT4GijkiFdLqz6kqJVZEb1J7DtahD4mPwfoSi+MeXUed1g+UlpI3mm3/OnDuhnb9cBZI0aNCsjWyWfQ8YBbq1x2ljzjZXR/Xtlh5WYLIzKDrchwq6vmhDCgXEAmB9MIpoDI7Egb2iiH6M3ji52EsXVBHguDsUFpLCWLaiCyiy2xfr5he3+49OtUuh2QkMsUZEHsQnxMHp4aUO+NmhfrcnOaNTlAzqUICfyD2cl5rnopia2kB4CaaeDD9V5R8WezmPMakdFDCpAjbeSZ8nJWo+TQfFw2Uw4ihnq9kJeTAGjcbwYq8hCvvjJtsD3FN9ItQsM7eKCp9wGYMArQcATh+Rr9WMJJL2fbKWyFz34Nj1Px3ZDlyKey7InIZVW6jy53GlVdPaiIpYu/G3HpwoQArk1kKLVRWJheDU9iFAVF55oSv694sUfZ5z7S42CkV6rDapQUvwrdwu/6hsCg3z30ZUVDFh/uK1P/S1bLB6/r+auZzvD1fZ1rECiuL0e1SaiCLiJgN/Yu5gVi3Y93E+rrbNPQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(396003)(39850400004)(366004)(376002)(451199015)(6506007)(6666004)(2906002)(36756003)(4326008)(5660300002)(15650500001)(8936002)(83380400001)(8676002)(6916009)(38350700002)(38100700002)(6512007)(478600001)(41300700001)(6486002)(66556008)(26005)(66946007)(66476007)(52116002)(186003)(86362001)(1076003)(2616005)(316002)(54906003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0xx+RWyprrQYt64xE5dp+sUeu+b2hVf3GKNY6FZHsC/2ljB0ZVv8tLooiLt4?=
 =?us-ascii?Q?TwRalB6wofOteWzveBVPywagBsjhPKhzaHqO6HyizLNSEoMvt2abHV+ZCqew?=
 =?us-ascii?Q?0S5exzYuNLeLDuhxAjPha8fdZwKv6LHH6yO6EdJjauuKszMiFg5VikL0/QYO?=
 =?us-ascii?Q?CJ1rep5a96pyXQMDTnOl2HTDyyOd8OJpAiWH4y271vtgyWm98Ga0KXvrWnXm?=
 =?us-ascii?Q?U2zMmaGgGbhGjyKnAOwPsbmNuVgEpS8IA7KHaNQxOHbnBbyQvuYK2W1wszEr?=
 =?us-ascii?Q?xKxc/AdhccPjLnjFEAw5GCuB6t5ew9+hauyA2/aCITMPTuZqehlsq674n9El?=
 =?us-ascii?Q?irOh3VpJBtx5pUL1QIVqJUbW7QRUZ87hU1tSOoAzeieUt0y/YVOdoGubK/2I?=
 =?us-ascii?Q?Mk2AVp4IxDG0FuDtbe77Z9KGQHLi/+Ipq9TctQSXs1C5YwZ3BjqcuRPr//lc?=
 =?us-ascii?Q?q7vgTMw99rY0EWEK+u43d2psRtS2lEDOFqzwXQg3iqMBNFJDJ0tTDHgQ1HEp?=
 =?us-ascii?Q?bBZlW4PSAzEHEb8QGsWOnmgLNaAl+bAbRlnYynS5pWGkLWTx7uSlhUPI25c8?=
 =?us-ascii?Q?amoxa6Ku1NoG0UH2HOnCkumUNoYcbSbG+tufZ+4Jd2FBZyyxXgPfUt6g9ykl?=
 =?us-ascii?Q?V5zxh0o6+R7FAPJQ7h0hxCe6i18t3IEK+vuavYFuKO1EWxrVIalYTz6m6azU?=
 =?us-ascii?Q?hcpJMij4TzRsjQvyiFetKptAHDuJ06PYrd/38wnNNOAOuDp7wiC5RQBxcU7G?=
 =?us-ascii?Q?yI63EW5l7YZprwl14XIytMx1nKOKFOD7rnVqE4Zgh06C2xYarnDMihnmxrAe?=
 =?us-ascii?Q?uG1ctTpe+pYFmsx3heTgXvOh4y4F8Y29G7S0rkvG80fna0AyaUVF1+4Lzklk?=
 =?us-ascii?Q?w8A6FvSbNV3jvMiVyy5DI4uzTUwXhOnfWmriJJ4/44BuM0jcIVKGdX588DmX?=
 =?us-ascii?Q?90LFKOQ7sxRcj3A0RtCHEMGBteLxv/c9rf2UIxxegTHSVgEPng9lzMu3JUlA?=
 =?us-ascii?Q?BSQ40cBjWG6FKdwAPAXqVqijhsS7iVmLRhosAiJgvQ4nNrTupwu36y/5ZJoj?=
 =?us-ascii?Q?fnx1D29ezN4nrlI+xRo2zZZl4mgnbhMoRDjy68qvtc9Z4n0qIq19vbjLaGGs?=
 =?us-ascii?Q?MwQPLyktPXIu9bT2iWYT9AyprmfwiFjqrP+Hs2yX0tU9msUYeJdkdNKZ80db?=
 =?us-ascii?Q?cYwKm6MjyIMXPVESp82sXBfatpJtY9gYu4mTe8hriqXlUFTmNoXT4qO6Dlm1?=
 =?us-ascii?Q?bTNi7BN2X9bOLcIj+GA8XK7zNv+LFPW6kJeK+v09DBbfpajuQwNxchU+GAWU?=
 =?us-ascii?Q?O1Gnp/6yf/dGHCr049V8AJbo6+kbIMorPwOr97rBMxmTUEVteYkdUXqlmMXF?=
 =?us-ascii?Q?xn2/8+EXhg7P6UJN48USNUlut46Zu/fbAYAS+R20qJx2p7duV+cN2pP+JmhW?=
 =?us-ascii?Q?4D5LnxZaqHqlornjBOsu7ayiLOzarrplNNkxGtiefx2ALztzm6ck+l1KEdei?=
 =?us-ascii?Q?tY9KOmprcfZrNI/JaDU5mXlCbQAQtm0agRDxF/Kdvyq0oUZ6AePcZQN4PHkZ?=
 =?us-ascii?Q?84mnZYMceB1fRVVPhBknb0aDluNAt6HkeomJtdO4rzP6wFdp3KMYfQz20uEr?=
 =?us-ascii?Q?ww=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec54245a-e6c9-4b9e-bdf5-08daf49139db
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 11:36:20.6370
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oLjWEVV5h3SsoPWUesoy4JFvWousq75T2tIc0EWWD+kMpQCJMhx73OVc9ZUJ4oyxsjth/gH2eYtKJfs4xF3MQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7845
X-Proofpoint-ORIG-GUID: cf2ysiQTO7vA0ckUF7-ZMkYsUKnCMkka
X-Proofpoint-GUID: cf2ysiQTO7vA0ckUF7-ZMkYsUKnCMkka
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-12_07,2023-01-12_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0
 phishscore=0 mlxlogscore=737 clxscore=1011 spamscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301120081
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Create the corresponding 6.1 bbappend and also update the default
kernel to 6.1 for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../conf/machine/beaglebone-yocto.conf        |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
 .../machine/include/genericx86-common.inc     |  2 +-
 .../linux/linux-yocto_6.1.bbappend            | 23 +++++++++++++++++++
 4 files changed, 26 insertions(+), 3 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 284559c50c9c..362f6e040e77 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.15%"
+PREFERRED_VERSION_linux-yocto ?= "6.1%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 249864e9cebc..ffdcf55f02b1 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.15%"
+PREFERRED_VERSION_linux-yocto ?= "6.1%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 8c5e5522bcf2..e3badebf86d8 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "5.15%"
+PREFERRED_VERSION_linux-yocto ?= "6.1%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
new file mode 100644
index 000000000000..e693cb32e489
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
@@ -0,0 +1,23 @@
+KBRANCH:genericx86  = "v6.1/standard/base"
+KBRANCH:genericx86-64  = "v6.1/standard/base"
+KBRANCH:edgerouter = "v6.1/standard/edgerouter"
+KBRANCH:beaglebone-yocto = "v6.1/standard/beaglebone"
+
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
+KMACHINE:beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine:genericx86 ?= "872afe79c5e568acf5f971952e78caada8424df7"
+SRCREV_machine:genericx86-64 ?= "872afe79c5e568acf5f971952e78caada8424df7"
+SRCREV_machine:edgerouter ?= "872afe79c5e568acf5f971952e78caada8424df7"
+SRCREV_machine:beaglebone-yocto ?= "872afe79c5e568acf5f971952e78caada8424df7"
+
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE:edgerouter = "edgerouter"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+
+LINUX_VERSION:genericx86 = "6.1.3"
+LINUX_VERSION:genericx86-64 = "6.1.3"
+LINUX_VERSION:edgerouter = "6.1.3"
+LINUX_VERSION:beaglebone-yocto = "6.1.3"
-- 
2.38.1

