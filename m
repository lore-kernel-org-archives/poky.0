Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.5759.1628060771754003065
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Aug 2021 00:06:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=V6EgMBAm;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3850d1faa7=kexin.hao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1746VgtL029576;
	Wed, 4 Aug 2021 00:06:09 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=gmFozm5U+8V5PTCS4PwAgoofN8rasnQeuYtGCogTyYk=;
 b=V6EgMBAmODOnRIZbywUUaQ4yJ1YG5CWP4VeZQ/3EM8z8lEzsoUQObMaQ1zmmcqRs4Qpv
 fg/l9un9k/FZupmyuN2hsRjdPd9yHit+4xTLmEGJX2qWmKrsQsoZTd+tbvp1UgfLnAoV
 4o4hZvR5ndmwwPfQJd2UJTcOS5Z3sPb0vwZoUyuMH7yuwmEsPhYt1UvFaIMeddbQahym
 4Fe1xOMJT5twzPJLu9FhzuWbePzX1t4sX1wshpKP5ss143nqrE28AqKXV+/GxxHwVpL5
 Hs+JNEMBbHQd9AmegV1yVIRwTvcivNOyA/D5wi0jeKJOA5xz+SXJtYNJKIm7iHta7z+J 2A== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a753s0n9f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Aug 2021 00:06:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YAlJAPL3Apk8Cl+IohnsSZAROwNkBCEOPISp9CMVftCPUORc1A+wD+nBSwD7Inz8q6GyhWYtLuSmbXrKxuE+cYBwujN/qhxElPi7U1gKUoH8nb1L8buY4W+kBY9i/pIaQoJ2W4JU5zxWrUw68SuRGRpZZW+o06Xfh4kDX4ifdwhVwftWeN9uJG7XzXFUfmPlH3/AsSD1VeVTqVHtlHqylZYstTzjCpynXgO0tTecBg4lxSL5qEdizfFDDtriyUGa93Ni1JI3MA/B8IygKNtgcAe0wtJr+CnHavKUnIwlEPE4s6eWmT2GPGNtA0gDB1pKc6cPA2tKbj9E+CwQJQoRFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gmFozm5U+8V5PTCS4PwAgoofN8rasnQeuYtGCogTyYk=;
 b=Tu290oDIj02Qvh/u2HW30w6WOC0W7LYkYIrdIHgewTIhszHNxpkLcSzdeIc3t0gfKaFuYSmyUaVbbzQU3EJY62SDgWeIdoBtQpzaUAJmLMAwegP9YpQk5rmz6XaWbm1COsSjbqEhJsrQI8rfGLEK300p9wFo1b6zYt0BwHlcfbD8pgW5ymyu2KocHZDUtcj9Ro4KiEqIfIBfp6kA2iZNRJx2At5cESDS9xs7F7qX1ApQ8eW9WA1xnfqUaE/am9XQBly/v8KA9HCpDQv6dq/5mGSoPyoyll8Z4UWrh0TPc3CXeeRdtb2qP8aX1BAFarfwAP8QbRhoMno5AfQspBetzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (2603:10b6:5:c3::15) by
 DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.18; Wed, 4 Aug 2021 07:06:07 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed%4]) with mapi id 15.20.4373.026; Wed, 4 Aug 2021
 07:06:06 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 1/2] meta-yocto-bsp: Introduce the v5.13 bbappend
Date: Wed,  4 Aug 2021 15:02:12 +0800
Message-Id: <20210804070213.27880-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: HK0PR03CA0107.apcprd03.prod.outlook.com
 (2603:1096:203:b0::23) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Wed, 4 Aug 2021 07:06:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d1288b21-dfda-4376-eed8-08d957165479
X-MS-TrafficTypeDiagnostic: DM6PR11MB4753:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4753F5396156112AF891FC75E2F19@DM6PR11MB4753.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yoMznDvJdI4oitSrhr+T3aycOidgncUu1wlIZCUujaAXOxuq1peyGrFDZ40RnPOR+0QRzsshCAo3fGUlejG90HYULxHDaw+kTl56zapw8VZez3wXIibD1OuTXX2XMxRJTWzGaS/mM3PhGZjvLfb3ogP0JB2+nnv3WTksQZ848uzxfdL/cpWSGdaiE8/uGxvZMXfvXI0vBLBy6kk/+UyD0aZVZDYBJk3omL2H3Z1vjQ5uAM6w7MXZAeCKSfCI2FmRk8/ChN4d47tZJQyuHkh+EK64jBcOpAVFEpU90A08PG2nN/8Fc/4o5NU/XQXQZS6FDfZuy2vqSwQa47xPI0ZbQz7yDsH9k3qwmkJJRM7K1+LwwxozKx6zcI7iywBs68nHcdgWkcZFYqndOudB+BSZ35ZrNla4g6eD/2dFFhCA0WVI8dBGIpXz7Nkk95nS41OUeLKdwRdRiVfniKGauWoZuB/fRBGsPONtVN0vArPGlWH/pYUvixAGpdoCti9tSbxkHLXUiPMxJp3wklpeLSSK8IyOIUSZal1kXpUSxYl42SvSY0Bw0rhwpAl4NZJ6B3gFnsyX1xJONzOtph2W1yMcG46AE0h8viQrhUOF5QKF7ELll0V/7Eu1cstUyjpANf0mxMpC8m5Y8VgoCcyeOXEXIueV2tZQyN1mvSbK36buPnUdWcg12xBEObASrMyP0StfXJjsQxf6Lx7uynkBxgNfgg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(346002)(366004)(376002)(39850400004)(36756003)(6506007)(2616005)(186003)(26005)(956004)(316002)(6512007)(38100700002)(38350700002)(86362001)(6666004)(8936002)(1076003)(52116002)(6486002)(478600001)(2906002)(66946007)(66556008)(4326008)(5660300002)(66476007)(8676002)(6916009)(54906003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?891hx2kHbwcTRk/uBdJCZd2yxrFBBG8NjPexLjbqwXLaqIcKNyhixhC57hb3?=
 =?us-ascii?Q?fMu8XXz6xCjqZiK7lRabrGpxEwvXQYmsq5j0ERMpnFAc1sfbgHi//70ZH9D7?=
 =?us-ascii?Q?L2R2yViiFAYNwMWxu2AgoiIe5VtsokO993xb6R6A1twuacdMXomOd9K28TaX?=
 =?us-ascii?Q?fFp0WpprizauIVi6U71ISj77+b0Kd2BwGEtGYanBqTUp+1GLbSigxZL2cl3x?=
 =?us-ascii?Q?JE/NrrTJLYc7Qm2BXDRORh4AqCTtqgSOL/0Up2k77ug34Pa8lV4Xaur7ggAA?=
 =?us-ascii?Q?CKiDzd9bmDGIoxesJFTy9xkFzt5Hy0jtjnhDXTBQCZzHsLXVR8f6L54lUusD?=
 =?us-ascii?Q?o7OHRCJY+X6aI6SnYzAyAN+JzBJ1o5UXPD9zsMTJGvUnyofpo1McUE2+z0RI?=
 =?us-ascii?Q?jbyVc5HGEaLZZhvQIJeLJp7GQnxG5lWWheQutjVWFCWzxe9p3TbVc2Hu2I9w?=
 =?us-ascii?Q?f74iSns/zYha2Q0bFJmI7ADxYgagqGMLCtn69wgnlTgUsxsOWW6qZTekipYi?=
 =?us-ascii?Q?qpMDjBSK7XtZnNpvzfjVKwukJ8Q3MJ5uBNu+88H80sZDXfolo2Xi6ZnMH6zC?=
 =?us-ascii?Q?sTA7g7C2mzHP5PuJCpfPRJEIWiSDWaubblZ8R0U9ATZX5Vdb/ZYeIDNFXd/h?=
 =?us-ascii?Q?ebCdw6whkSgo2R0We/N6B4yFAcA+/kHsSoMxmxeQVjuGHy+aGS4sKa5S7J5Z?=
 =?us-ascii?Q?Dtyu0R20fGo3um5i9AmvJkRPbC5uLSexLSx/JQ5Ih8W6fTXm9kNNC95JLoFd?=
 =?us-ascii?Q?COW+MlvAPKitpU27dwJCRPGgtllY8lnbHN4TYIpnowkkskTTetu86HBBPlAC?=
 =?us-ascii?Q?fNuwuAZu83kWUP6r0s4m1rzxrJzp8qNVDrxPi/uCXYqreH7C58wA9ywnmFWH?=
 =?us-ascii?Q?i2HSVSmxxmfiI01kc8uA2dD7jhaFBMlVRdX8pctiHVaYGtflAPxyylNtM3+C?=
 =?us-ascii?Q?OSrAylrQbETuJakMqVaU1HUs3mgFyu4yOOh5TjukCMyKDMVD8//av1aT3Cbi?=
 =?us-ascii?Q?bsfqsBOGKWT8Jv4AwTT0MWCj5ggwbkMtYS07VcEuSXgbgFDrR29yxrsxf9wy?=
 =?us-ascii?Q?bEN2g2Hhk0FKjr6GWAmKOCC8bjzSLanMUfD/AuEqcryhTJFqTgliz19Uc0/c?=
 =?us-ascii?Q?zp/3RHk3wAKbWvwS9U+S6ygI72GW047gyktaJL4JmQDKa/npvVjpjATOlFtx?=
 =?us-ascii?Q?4jPLCWhtAOkA+O/qLmsSwTVewIXus9NpWWudsQlkUc1NRBRXs9yzvVtqPIZk?=
 =?us-ascii?Q?2JsZnOsR460pj6cS90121z/pDUEyN/EL9Hwd5+8ObTYhTP792h9d+w0fK10H?=
 =?us-ascii?Q?b0H5sej4JEt2X3kBw0vlfzP4?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1288b21-dfda-4376-eed8-08d957165479
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2021 07:06:06.9029
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NQiy3bSlJqneipnYWk5aTbHl3zTXI+axp2WJeJAtCPy0qY6/71Nn/z5gwfSK+iO2hiNiWdbJW0NlUKV0Cp/RBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
X-Proofpoint-ORIG-GUID: 1r_zMr6bBO9Uw_ryoZbgkScrlU0jNaom
X-Proofpoint-GUID: 1r_zMr6bBO9Uw_ryoZbgkScrlU0jNaom
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-04_02,2021-08-03_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 spamscore=0 clxscore=1011 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 impostorscore=0 mlxlogscore=689
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108040036
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Build and boot test for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../linux/linux-yocto_5.13.bbappend           | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
new file mode 100644
index 000000000000..302d5ca8b558
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
@@ -0,0 +1,23 @@
+KBRANCH:genericx86  = "v5.13/standard/base"
+KBRANCH:genericx86-64  = "v5.13/standard/base"
+KBRANCH:edgerouter = "v5.13/standard/edgerouter"
+KBRANCH:beaglebone-yocto = "v5.13/standard/beaglebone"
+
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
+KMACHINE:beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine:genericx86 ?= "c1eb1eaf6fd3f1302b89194f629eafb9368a326a"
+SRCREV_machine:genericx86-64 ?= "c1eb1eaf6fd3f1302b89194f629eafb9368a326a"
+SRCREV_machine:edgerouter ?= "2d40c76f86e94252bbfbff4294b43b33de780cd5"
+SRCREV_machine:beaglebone-yocto ?= "18666b33d7ceaf095da5d58fecd6fcb070932434"
+
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE:edgerouter = "edgerouter"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+
+LINUX_VERSION:genericx86 = "5.13.7"
+LINUX_VERSION:genericx86-64 = "5.13.7"
+LINUX_VERSION:edgerouter = "5.13.7"
+LINUX_VERSION:beaglebone-yocto = "5.13.7"
-- 
2.31.1

