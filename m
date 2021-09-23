Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.2785.1632393573842587128
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 03:39:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=VEgh1vn9;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4900d279dd=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18NAdVwF009248;
	Thu, 23 Sep 2021 10:39:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=1R/3ECHPbz03VWXMg/jBdoTrjAaR5i4aSd3egpDDveg=;
 b=VEgh1vn9JMTh5DDgNEkFEeslwrue5BwcRWTrq4uTxdnCtArkifB20Xdp6nfwR6S/xeei
 11yOEad/sOT9fy88m6OGVFI6DQTyedqw96fPsvvRXI1SvJE5nuSPVQxqxJ8ZhkxHVkNu
 3eSp8CcMdm94eJmxz89L658ucvsnIYqaviuuP9t/nejdIJouga+QCOzXIAEYZu8F8ZO6
 mbYfzMpE8x8bbI7qpU9Byo7NOYYTy8L6FHmwHhdSRfzmYKzqQP7W9LgvDFxOE3i8m4GU
 /aPJ3TxzfjAdTD9pYB6+v+SJs89MxRfVKAco+8sOkTUBHwdMVQmqi72bk0bZXo7b/+Au lQ== 
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1anam02lp2049.outbound.protection.outlook.com [104.47.57.49])
	by mx0a-0064b401.pphosted.com with ESMTP id 3b8gcf88v6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Sep 2021 10:39:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MvWedNPrztltFHGZABmipIowOh5QOTh0ebpunS2nGnGBCl4WCcRDE+LBEIrTJ1CAEwIYH/S7tFqEtIn/b6ND+vaUafu7Yz7CE+pnuLGuAqr2p5qfjXREsvyU7Ur6gmfCx/W5XELelX7vFt0um86GUDNwdiuQbbkKPzsdKQd+pdsFllRazqiib4TGrxv/S32lZoNlo+zdrXffWFJpkcI278SLdgzBL0cGhWFm0v8m7v2hWnoS0MxDTDgZnLNSIg16UGEfbxcBlCH3KJDGaMEE1SQxFiSRoJd7uvaUVOSXQQEdK8npjCyrewKbL6Xn3a1zDAjYwSRvlXZDtTp19Z8Wrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=1R/3ECHPbz03VWXMg/jBdoTrjAaR5i4aSd3egpDDveg=;
 b=keCS+vo/ZjR9OUEgeOhrLl1ZwKLgThSYm3mft7one4S+U9yTz5z8Zm+TiYwcKcNA3glnTkHEiOCja3vdxQlq8hpCAnkEr4VbRs3o8M+aKq7WRGW1sFzOhBy3qBYaBZhMMg3H9Zr3qaYmB49Vh/E7qlE4KYYjN1e2fci6rAwiyz16hd90U8hutjtSCLDyFzCW/ecVa6ou47crUCb/HjhO9k3z9T1jLCuPu/CzlYGA/2+APYXeGMbKr1KSLHXSeecNBBxh08SsUuEdJoTXj13TnwWcO9qACltJKcnH7seKtjA1WZNLAr+UVk04HtT4NcClXqsMLySRt2OO76OeOMWkCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (2603:10b6:5:c3::15) by
 DM6PR11MB4658.namprd11.prod.outlook.com (2603:10b6:5:28f::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.15; Thu, 23 Sep 2021 10:39:28 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::924:8e1e:d06f:c8e8]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::924:8e1e:d06f:c8e8%5]) with mapi id 15.20.4523.018; Thu, 23 Sep 2021
 10:39:28 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, <poky@lists.yoctoproject.org>
Subject: [PATCH] meta-yocto-bsp: Update the default kernel to v5.14
Date: Thu, 23 Sep 2021 18:32:29 +0800
Message-Id: <20210923103229.12325-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: HK2PR02CA0166.apcprd02.prod.outlook.com
 (2603:1096:201:1f::26) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
MIME-Version: 1.0
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK2PR02CA0166.apcprd02.prod.outlook.com (2603:1096:201:1f::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend Transport; Thu, 23 Sep 2021 10:39:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c68e644-1972-434f-2a04-08d97e7e6b9e
X-MS-TrafficTypeDiagnostic: DM6PR11MB4658:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB46589012A4E0364D84F77BDBE2A39@DM6PR11MB4658.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	D6H30FMU2BMyhZ7ija4YsyHXbFk38HRpR+SV7t3z48plh9VDRuKgZMguJ1F8V60EITMBfoZKJVmkG+v9XwUzb4ymJOBPSQMv0FWhoLEjezCze5HikgTZVz4Yu0CicN1wa4UA6fPQ80QINlXa/LgFOxZ/x87OCss26UfX2lnx0/XPIhxJ3K21bZ1sEHTPKjnU+WZe74uxjT2sLYCmuaZUVDW6rr5fJgpgR80OQ++wEmfPVhCnVU/ENo4zQddgb7wczGem7hMFYRwcvscKZMhWbikLYGa/hICdinR08pdepx1xRyUCEL+2A+4Nwjv3957SlgVzkHs52DnXffi3F93tnS3kjvg7o+8ljLA/bOEDRR8HW9ef6VAuQ8MclDB1WlerYt1Q3YNkfztsPZVhmU+P6klJ9WvgQc1T3CiM73d35wz47LV7uwcaPTQ9BdayKDZtJcZklwbYUI+2KUccQ1uGGBMydpKOhNyFv4OzVkDacK7XJHTBxCSAcW6vvNtApXALnqK0ujiau49tIBsFvBLq8sAZsX9HWv5N5G2cGMSv6VE4oDI/dG+3w/dQ0EdMXJ4erMPDcYR992aD7Q2j6AlKClmtrA/CDwYrLgFCKKQXoRrr8E2A52P6uKtl5bHfuoGkF+BayMwHkKidLjRxqthBhU25XyOzM8Mq9oeD/giyXJAA9gHfTnoyaROzQFVAikxTF2tctgiYgWd3PGlPpWLejQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(54906003)(2906002)(8936002)(83380400001)(4326008)(66476007)(66946007)(38100700002)(38350700002)(5660300002)(6486002)(66556008)(316002)(6512007)(8676002)(508600001)(6916009)(36756003)(1076003)(26005)(186003)(6506007)(86362001)(956004)(2616005)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?aPm45Xlg/X9q13mi05wZYvZ6IE+oCCKQH+8M/deh2USXoOXTi0p5Gbx/gasq?=
 =?us-ascii?Q?NLP6Oo5kMjifo/W3Xvx2lDOXM8DgmeVYOjUuV3qpikbaz458gAUwqkmi6Jzc?=
 =?us-ascii?Q?acuyR4yg0vLUr6KU+77LEuLBAQ9qzdShKeowiG2xg85DEsT1IU2KDM2Od8zF?=
 =?us-ascii?Q?V7U+58jJJ3yVcwRlzgaltM+6ImKonpvGnEupZAV9lRvd1CN5RfX8ZSOc9qS6?=
 =?us-ascii?Q?xoo4dgOXnA6eoJwF3vIE7LgjH28bmpUqcdL9JYmf+eIf9FQDBVVTTVoNuuwc?=
 =?us-ascii?Q?leDCxhu0KIrs/GZU3GZJYt+nRmDlYDOa7gS6R4+SNDZyCj0DHje8CQEkyvGv?=
 =?us-ascii?Q?wMxbqoFczDDAvPn+ZLjZ/9kyz3QFndqDIWsL/9eXwGokUkN197DQLbiwZ+Ja?=
 =?us-ascii?Q?UviVZKgbXfB8D3RXXK4B9wgx9EM66U0VEImYi8e8mfkuxau7w8aguEgUOmn0?=
 =?us-ascii?Q?aQXGWhwAbyN7tOOY/R+kCH3lDr0y8/POpH5bisx4o2fWNFUvEtASJPBvjPj2?=
 =?us-ascii?Q?UtGnSUpXkSuiVZUYS0NSIl5B01L/TgB9xH+fh1VXzIgET+9i779CEIKMA/sv?=
 =?us-ascii?Q?oBCuEPThIYvB4vaWBZkJ6xWRME1fehNpbhlWwRYiaratyng4+7R6F4oHPqih?=
 =?us-ascii?Q?yKW0cggdJWLC/eF8cK4dfdlWTVPqIXUYn6hOnCyBz0dfIRnTbF4QedKMbOYq?=
 =?us-ascii?Q?RlF+MPgDw3gfG+sXDx7q6EUP91IkNYvDaOZ5bPeFpRaV55OvrZyemhzmnb0Z?=
 =?us-ascii?Q?aWp0jQjiUzQSAOIs/KE/vrRQhH349Hz8lcWPAF9rDj5WfG7TW274NbI6iTA4?=
 =?us-ascii?Q?bfWnEkWn/ICOE+zbIGj9zmzMnBnNZ55DzPi0shcapMx/YLAz2WiDzAHnmih1?=
 =?us-ascii?Q?WAGzVbumNNcetoZJmGT/w1jqANWefHisnfWynN+y+YPNftTsZgiLf862Wkjs?=
 =?us-ascii?Q?4qicTJ1+44wFpdHjvVy4M+sUnYi5AQiRrGb6UXIw+1PHRSp3kiTDbW4VgIbj?=
 =?us-ascii?Q?0EoR+HQeRHIJLxrSRQRL+jCbfdTBPzsijTCVcILsBc3WN5b3S86LVA8EtFZC?=
 =?us-ascii?Q?8BMOBMyA0+CX0B1g4k2G10z76TJ3aTwa2pJtZLDYMZDVoIwyFoRmLcTuxci8?=
 =?us-ascii?Q?/GJkFigNiC5IdNAQQNwntpvF9q69fu7/Gv4OJkkzqQDyRZwI6/DKEmQZIakH?=
 =?us-ascii?Q?U3kROG4PQvk2VnP9ng6oPI+BzD9cNzq58J2HFfl1D1fzq0HHGcUKkG/OrPn2?=
 =?us-ascii?Q?NinkArIw2HBk2bmnzqQMlm4bbPj8bFMgA7tr/RT9efYLHtoM0KscRZf+a6jG?=
 =?us-ascii?Q?n355+SGrKpU1Jt4nXeyBRNXc?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c68e644-1972-434f-2a04-08d97e7e6b9e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2021 10:39:28.7441
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NG0eVg867dXOctaQBkG+dMJxPkHK7hIY3AvNVBYSxX79nl8pA1nZ1cr8YBExlt0DHZ0s/TOCEJDNaNl0p5B9KA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4658
X-Proofpoint-ORIG-GUID: XKVEI6ck7rzpqKYIOWaaa5CaNHMaNPG8
X-Proofpoint-GUID: XKVEI6ck7rzpqKYIOWaaa5CaNHMaNPG8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-23_03,2021-09-23_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 phishscore=0 mlxlogscore=769 impostorscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109200000 definitions=main-2109230065
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Introduce the bbappend for v5.14 and also set the default kernel to
v5.14 for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---

This is based on the Bruce's v5.14 patches in master-next.

 .../conf/machine/beaglebone-yocto.conf        |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
 .../machine/include/genericx86-common.inc     |  2 +-
 .../linux/linux-yocto_5.14.bbappend           | 23 +++++++++++++++++++
 4 files changed, 26 insertions(+), 3 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 618af40306cb..b3d960a8cd80 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.13%"
+PREFERRED_VERSION_linux-yocto ?= "5.14%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 9c95f4632fbb..32be4b9c3960 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.13%"
+PREFERRED_VERSION_linux-yocto ?= "5.14%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index adc8ca879aab..4651b37e5d68 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "5.13%"
+PREFERRED_VERSION_linux-yocto ?= "5.14%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
new file mode 100644
index 000000000000..52371ff66afa
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.14.bbappend
@@ -0,0 +1,23 @@
+KBRANCH:genericx86  = "v5.14/standard/base"
+KBRANCH:genericx86-64  = "v5.14/standard/base"
+KBRANCH:edgerouter = "v5.14/standard/edgerouter"
+KBRANCH:beaglebone-yocto = "v5.14/standard/beaglebone"
+
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
+KMACHINE:beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine:genericx86 ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
+SRCREV_machine:genericx86-64 ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
+SRCREV_machine:edgerouter ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
+SRCREV_machine:beaglebone-yocto ?= "7ae156be3bdbf033839f7f3ec2e9a0ffffb18818"
+
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE:edgerouter = "edgerouter"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+
+LINUX_VERSION:genericx86 = "5.14.6"
+LINUX_VERSION:genericx86-64 = "5.14.6"
+LINUX_VERSION:edgerouter = "5.14.6"
+LINUX_VERSION:beaglebone-yocto = "5.14.6"
-- 
2.31.1

