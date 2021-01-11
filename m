Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.57])
 by mx.groups.io with SMTP id smtpd.web09.29766.1610340638225837069
 for <poky@lists.yoctoproject.org>;
 Sun, 10 Jan 2021 20:50:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=XJqEAz2R;
 spf=pass (domain: windriver.com, ip: 40.107.220.57, mailfrom: kexin.hao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eRLipF/wjJLQls+E4o4C1kxR0atSxBoNKkj3JnY8X4c+y2I2agbtMxiSalIjfPTHajkB6FZj1TOs+JV15b60BUSQ9dPHSx68kAg0dLbj77vlWVtQxEUimVjbBTT5bMNBAJiGsro/p8G38zlVTJ5fiBjQ5636tj4Gw5y9CQDr42an9KvV6PwFM8sxb/nz8T1PkuuUbKAWUdxXo7/teGRkxoBotW7n+W/qd9bCblI14hS5ZooW6sSBcSh5nGMHw5tvAu/C3bKgDtE+7pXHZ98qO/q298HyiB1tvTnDdExhIFjS1Lvn8TVxp4F4VAhlEGVLj2uOjvVQBOTfxSIK24zbGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VOi9/FmrspjuWb4cWvNQv7eli026xW7yCkdYW/IQPgE=;
 b=VErdRWKWxJnqcGB9ddBaEdF0mXhPsv8m7QSTW7hXeEMDzjEGBXk+bNKON9NU4SkCAQxMm12d4BMYf/7OQQeDedzZm70OJWs4+jESepnvMRKR5+oWxrPYXwrlccXYq6LrF0kLTOOzwryPtEo3rgGyL4i2QSi0Ux/ty2suZqgDkblj8gNOwNBHaLlBLcAnAo2rOSnM2nllvDHZ2U64En0NoR8OWknWgAlZQ76mPuDw7Nvj0YY244cxZd51/IliKGnQ4RS3B34uZvyh/Jvp5dYcM2uZfb4CV9B1ID42+QDuHykIuTDPKZYtn7/kyeCCbqCpD/RYgigPWX67P29wzffBEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VOi9/FmrspjuWb4cWvNQv7eli026xW7yCkdYW/IQPgE=;
 b=XJqEAz2RCpLOcikWaziDGROrBmPuQDpLDHYXQlMw3HIHgvtJjaag9EPewl5Ii2+ruKw+bjghs0Uf8VtqwBSIum2R0CdhwnV0OFcNBXYYcsZnSYpfD/ezRg8kta/NPT15hEgvf0sa2vxLwhNiJXjHE/j04gJWLKAYPzMTgn8wjfM=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (2603:10b6:5:c3::15) by
 DM5PR11MB1355.namprd11.prod.outlook.com (2603:10b6:3:b::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6; Mon, 11 Jan 2021 04:50:36 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::647c:e8ad:f826:a202]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::647c:e8ad:f826:a202%7]) with mapi id 15.20.3742.009; Mon, 11 Jan 2021
 04:50:36 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 1/2] Revert "yocto-bsp: explicitly set preferred version for reference boards"
Date: Mon, 11 Jan 2021 12:42:54 +0800
Message-ID: <20210111044255.40615-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.29.2
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR03CA0117.apcprd03.prod.outlook.com
 (2603:1096:203:b0::33) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
Return-Path: kexin.hao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK0PR03CA0117.apcprd03.prod.outlook.com (2603:1096:203:b0::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Mon, 11 Jan 2021 04:50:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 491dfd2d-d1db-4fcb-5bc2-08d8b5ec6fc8
X-MS-TrafficTypeDiagnostic: DM5PR11MB1355:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1355F77D39C80920D148CEFAE2AB0@DM5PR11MB1355.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:534;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9J/oeItLpnSKkT13lBD4qNZXW2fveJRMsobTDGeI2zeIhBsEuU077bWr52lflqbUscpbQhAzQ0ewFSdaIi4WgLfir33HlMaWiQ6BVbRTQvTuO43rzsZQdSlGErIa0qIPdsUblu8Dp2uoAY2M769HiR6/2rSaCRmB7kO7f8ov2uRnjVkynyNegupm7Or/0nsf518srg6KVF+GlVvqofjmF+FVsic+M1bbfzmCdpUqDB13ykOH49tTFaZt1LKHaTyrmOJEioBAGDvb1ZrPUkH3UWAMyxjW6ez1eMEaXeHqYZBsT6ibqhiqwJLkTn6icOvsihmgXBeI3nbwHCm5cO7v3ql0+mveL5nEVBWUEEIpg2CPH4cV8cGhKMPfj2U9IchH8UrbJAtfkGTclkPgD/xmYQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39840400004)(396003)(366004)(346002)(376002)(2616005)(1076003)(52116002)(956004)(54906003)(478600001)(186003)(316002)(4326008)(16526019)(26005)(66556008)(6666004)(6486002)(6506007)(83380400001)(8936002)(5660300002)(66476007)(8676002)(36756003)(2906002)(6512007)(6916009)(66946007)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?9DLXtQA0TBMCvhNcaCjqy/WfYZAwuQeXPSbBN5Z5XYOms7NJQaiYXwdtsXaI?=
 =?us-ascii?Q?7JvCiI+uigqnKoU1wLcsbL/Z+/7uzN8MbhpnKVk/Ry2YGXg+91FEt+H7p764?=
 =?us-ascii?Q?jE1pfDZlQFQjDqYrjpXY/+T/bHXLZsnNuVt7IIvXsz/25LIEw8cKEqdDGWaX?=
 =?us-ascii?Q?+X0HIZjgCueYdyVi5b0lQm6PYuLU94irhz9AH2L7fNdV7fFrZ0VOhQu2eMXv?=
 =?us-ascii?Q?0rFjIHvSG+DyXbqcVZ7th/n4TuA1GejgIqOqxak0XnSioV+RWIsjpvbbBy6g?=
 =?us-ascii?Q?ew/2MuuJGx2agmlk4d7dlabnYNDcjAKuB5Xb0sEMa0ytFHhXwHOWItF0D3V/?=
 =?us-ascii?Q?Imh/jSIpSiWf1Xq3JS2Q92q2Ioqx0lpyPifc1iX3sGFKKXBJ0/gv+l+yp+IK?=
 =?us-ascii?Q?CpshbEx5UizNtbD8Co/c3t5PnRxpS6sUfuain2KuQg+dVdmuhZIFnnupet8C?=
 =?us-ascii?Q?1OfxUGzP4O6MRvzEEMFU6l0MCp3tNc3d+VfvLTo7jfZa6enLJyt4Atn33/qu?=
 =?us-ascii?Q?LfhNyIbtSN8vvFxvIphLT3xJ6Vu1fPgrwXTTcLv2FW+j6WlGl/sub/4avIA9?=
 =?us-ascii?Q?5R7p9sgrlDPzKj0nSt56x5Q/G8HncE5fuSJR8deKHnPv6Wc/D3KYKiWVZiBk?=
 =?us-ascii?Q?ZTqbauW/H4uhXNW+jpfuZ5ZNYkpty3qq9uD0bB5durDdzBVW5w6l+BaFTqgn?=
 =?us-ascii?Q?/iOTB+phoLczXJFxIPgdt/HhEyC7lpmbLCICABxwI9Eft3V7z5ZOdVW9v2VF?=
 =?us-ascii?Q?8o7PyKtz+zEHDIFHr0CTRjhfpag9ODmDO6VJ0q3ZSOOHzJvV7jDfZV6Z0oBo?=
 =?us-ascii?Q?X/S29fC0I1N4zSvfwhdrAqrXJmpqT1OI8cE2+0pbhEI/6BgSVCT41yZy8SWS?=
 =?us-ascii?Q?gOXqcSm3rV/YgjyrpX3K95gyHEvqOpXIA34uhFJ0nmAJwtU9+3j7+/SFplIU?=
 =?us-ascii?Q?/TUU5dBemjRXn7JhE1bYWTOP8V+oL23PgFnkUyBEJ2gkWa7muNASm1sINloV?=
 =?us-ascii?Q?lJp4?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2021 04:50:36.4236
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 491dfd2d-d1db-4fcb-5bc2-08d8b5ec6fc8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++gmFHk+JkS99vLYdbM1VWyNVX0M4SzOllaHSvg8u8yGl/0+pZVhkW7WdT/WKO1ehqPBE3IkPhJPPeZywOrXIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1355
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

This reverts commit da27ca50eebf80463cb8d7b85f3b705254823413.

We usually select the preferred kernel version in the machine conf. This
is also what recommend in the BSP Developer's Guide. The beaglebone-yocto
and edgerouter have already done this in their machine conf files.
Resetting it in the layer conf is redundant. So revert this patch first,
we will also explicitly select the kernel version for the x86 machines
in the following patch.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/layer.conf | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.con=
f
index eb9f55ea978f..bf0c1bfece96 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -5,12 +5,6 @@ BBPATH .=3D ":${LAYERDIR}"
 BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
=20
-
-PREFERRED_VERSION_linux-yocto_genericx86 ?=3D "5.8%"
-PREFERRED_VERSION_linux-yocto_genericx86-64 ?=3D "5.8%"
-PREFERRED_VERSION_linux-yocto_edgerouter ?=3D "5.8%"
-PREFERRED_VERSION_linux-yocto_beaglebone-yocto ?=3D "5.8%"
-
 BBFILE_COLLECTIONS +=3D "yoctobsp"
 BBFILE_PATTERN_yoctobsp =3D "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp =3D "5"
--=20
2.29.2

