Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.12015.1643994185194205211
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 09:03:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=h6jy97lp;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=903448d3ab=saul.wold@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 214GM6Us016182
	for <poky@lists.yoctoproject.org>; Fri, 4 Feb 2022 17:03:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=mQuZgaGbInXOtKHJART9sOJLff7L0Z+PUUO+Yqhomo0=;
 b=h6jy97lpHSBQDCtv7LP5c823MQUq7nMSWgK1QfRFLaMuR6pzyXWoPCWtO8JrAvimW2Sp
 hwnysEKolqPu9d4skYEZVLP90fxPTQxMCSg8xQhzjS1kT0h8gX3YWoIIWQKNaCiToJLC
 dInCZ/A/5m5+GNKuU8NTCREBDZIFrcGcouJeb0Nu9V1GNJP67tm/CmCyVHbW/wpQrxc0
 nBee574Djj2SEQw0Ke60a9AUeLYJrKH1VErZAMeA2RzUJYLf5ofEZVcg+kIn9LWkTyoz
 JAIguzcsiVH6Jdby3iguqnGc/YghETTuDfu3qtHK/C9OwNoNd1gGsx0+EhSR3O2+tLBy rw== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2043.outbound.protection.outlook.com [104.47.74.43])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e03e79dk3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Fri, 04 Feb 2022 17:03:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZIoa5mAU4icRJOm6n4ZV0NiVbt2yBLUytmhipvZbzSCaYvC7rsHAnq4CEUUW21qLHZzi5yq/L3uNo5muO07AeybFHRGTmv1N6gUXH2tCozjnnlb9esaFGDaMLxFGKWUMuIsxp2cWWc2Ye9L/owT4osCODDAYTotjMl0Cbi/Ft2NSi9RJtWbziJiT+9RrvEf4UPFIA2uzYHU8Biv1irMI9aTeha+r1n0jZ0JcFcrYC7eUqbZLKONa9/37H9XTNroLdlnOxOv7lYFoDylzQ1uRgMSfTuzN3irMpwFdGsimlknQ1y/v0okisG+9rNgmiDWbLopLTERWlaVq6xu+rcZFXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQuZgaGbInXOtKHJART9sOJLff7L0Z+PUUO+Yqhomo0=;
 b=D5mv3Qb/mpT9ZPazkZdgaI4fdrvWOi/rePYZcrKekexgkQXZy2YvE+4M7nRoZ/mDVSD5b7k/YFY49jCk1RsZ/m6I43c7Jn6ZM//9rnXtIRG2gD+6E5NH012KxC2hKTk2VzJoJ9eIEeFqVkOBuIUQc63zDLwNjvXYVGMT1VZsqA0ftvRT9X021bM4GuJAbl7GnSUQEdSW/KKDiasEDHQwViwpkZ6ncOTmZWVXm74o1eR8JNNaUEZKWquW1ii2XGpz+lq71i0Trr3vAWXLcIrTg24YlUM3wJTmztsyfMGQ80MmO9I9OpN22DNGr3DyzFBDkldnOFzIuSciZEuq4uZuoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7)
 by MW4PR11MB5797.namprd11.prod.outlook.com (2603:10b6:303:184::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 17:03:02 +0000
Received: from CO1PR11MB5076.namprd11.prod.outlook.com
 ([fe80::2027:9b43:472b:13ac]) by CO1PR11MB5076.namprd11.prod.outlook.com
 ([fe80::2027:9b43:472b:13ac%4]) with mapi id 15.20.4951.017; Fri, 4 Feb 2022
 17:03:02 +0000
From: "Saul Wold" <Saul.Wold@windriver.com>
To: poky@lists.yoctoproject.org
Cc: Saul Wold <saul.wold@windriver.com>
Subject: [PATCH] poky-tiny: Use renamed SKIP_RECIPES varFlag
Date: Fri,  4 Feb 2022 09:02:49 -0800
Message-Id: <20220204170249.105722-1-saul.wold@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: BYAPR08CA0019.namprd08.prod.outlook.com
 (2603:10b6:a03:100::32) To CO1PR11MB5076.namprd11.prod.outlook.com
 (2603:10b6:303:90::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4c45250b-b1c5-4563-68dc-08d9e8003435
X-MS-TrafficTypeDiagnostic: MW4PR11MB5797:EE_
X-Microsoft-Antispam-PRVS: 
	<MW4PR11MB579775C367BC472B427CFDF4EE299@MW4PR11MB5797.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HBLWflRL1nFPidtja6dtVwOBfo1+dBOYZST79QMhE0q3hgMxwaArCPpXICgac+/RYuwYgD3LuZmKCTpsv5RTvG2Cad3shpV1WoA6L5QnoJdCbT+Gf+FQZaIIXAkyeURaSv7V3pMKCeZiAG+8UxbVe094jTlp8Lx6ZD3Ejy0p0tsdc0tnEJVR7L0uCm+jZXILFXmIb/XLdR7Smmb7p6fy4oPrmG/89lMHkkt2buV0mBIysXeUqwMrO8JeyuOVoKKOHMp8VG+CvI2+5kskya3qLJvug5ZCDZIbslYNfF4Qt3JnE56GufSblokONElh6L4JBC+F3Yu4MljLC/S1JE7PikKLuRzT15xzwfsmx0iOrsm1Q1K+nv5MnbVw9m+8Eg9OL5K8TObE1/oinN4Z0lVnbjfoc3nQ6RA5WPGFoRTGXGlADCD1RKbuZRLTnbWCwazDiR/ZFs2CGtrX1Y+K481NQ7ghSL/NdXBY8MNUsuhcQGCB4B0FZPdRGe+sReAWa0Au/9WvauuTvCDg7MreOuEzMcuuj9eSlobdV80X7xg6rBJgBtqh93AAttWZb9Yrsd+O7woCBqzZ1IytwzsVF3KBHE6CcrhhO7ZnkI3+DLnEkWwaP4fPqX/JVL12de1fXj/otju9K5pz24jqh1x+F5+i86LKhD3CZ7gnB61ojFfOqVYaVBKu9ARPBr8iGyTZdGem1vomBjWbU0vzOHeUSQtnmw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5076.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(8676002)(36756003)(6666004)(44832011)(186003)(508600001)(6486002)(1076003)(38100700002)(38350700002)(83380400001)(6506007)(26005)(8936002)(52116002)(5660300002)(316002)(66556008)(66476007)(107886003)(6512007)(2906002)(6916009)(66946007)(86362001)(4326008)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?cGYyIRBB4AwQwHpVRkybsLqJAddjaQj0iJgkHLBS8ffjvrfyFkrEvEVnoVlb?=
 =?us-ascii?Q?UC9LO1wK5SPts2TShQ//sDXeCH9hpLCjw2Pqr9g3pYry+D1tbSjjSGgvdjeX?=
 =?us-ascii?Q?ST7+YHDJQLDYyL6bJfNa3a4ST71mWbZkEDhFtsXioFVxnB1wWoFP9w1cxkYV?=
 =?us-ascii?Q?QWokaaicTvT1PzxLI7GEnXJqj1fnGAzGjAZynbUNwqj3DH2meGtL5rnjUVXz?=
 =?us-ascii?Q?ARaSFpXK+BzRYvhrCg9xcM03d8PHCiTHTOZrbaUeOPxUdfa+Lx6A2QOwBR3b?=
 =?us-ascii?Q?KGYgLslsB7OEqF9+4ib0ccvV0LQ+8f9FVs3A/uP95RBcPDeV4KHIZcVs2OWA?=
 =?us-ascii?Q?hSGqbJ4knSSdP+8kTcSB9nXbqczoeIYKGz9uoVQESIShsOG+UvrKeEHoqvYR?=
 =?us-ascii?Q?QYg/I0/x1ouahtXrOfmMxfTwMwt5VGbrZVgiaxcYA6pXKCH0N3Lv0fYgUlCJ?=
 =?us-ascii?Q?vouXLNNMo4o7FpXyJkB1wm0CmOG2gzBoPI1k0CwEZjSFE+28N922K4P8K6vl?=
 =?us-ascii?Q?tlFYhPbwGKReQhaHxmdEzIfbe5Fz5M4z+jc5VVCh908UiZhS0/Dxer3TWBnT?=
 =?us-ascii?Q?ZOcU9vE5vZ4d5qBd3VI4K8BTvwgQtrhrZKZjuKCELk0RZdVz3Boxz8Uuj2ha?=
 =?us-ascii?Q?82VbfBwR6jBOzNoZTrHO957eko3lmIhawIp3Qqbm7MysrDGF7OH3BKw9/xJ4?=
 =?us-ascii?Q?v8Gf9IJ5T+r6NRKx4BrWxy4NWOQbLte8iL5Y9VyKNGywb3mHp9F2WVSEff3k?=
 =?us-ascii?Q?H3gOd+zqbrlCMLNLhROspcNCc+TZqeCw9rgsULBdlD2x4nsW66sDRIyn87ua?=
 =?us-ascii?Q?sDeLzv/sSrAhGmU4gvNwTnRRxuzIE1javeq+vo+Yh+doXHa0d/GRYO4t3B7w?=
 =?us-ascii?Q?AQtv2ZEQ0QyVrIdieAd2mQFSvpTkX1/ufeLHWVfLKuUSQCVE2AqJp0kItKGL?=
 =?us-ascii?Q?NYiS6ZVHzIxjth4pqg9m0CriChogiPKneLNN5UJfkWLe1wdRsM/tgbvrkmZJ?=
 =?us-ascii?Q?Bjk4BvoiWkgH/B7BdQVoVCCy4UrHSOULJsqq5OV22q9H2ST8Yro01wqKbszW?=
 =?us-ascii?Q?lWJRVdkKuyY4kIbruC2+cBPIypeaFtjRB8rldsSk8uXlRRPCI3okGucq5SZr?=
 =?us-ascii?Q?1P76J8sioeZnsDPlrNrSUYa4R6L7rdUjwQmdbHNGMCoo8rxo0bKYahIJk/yD?=
 =?us-ascii?Q?FS3S/24Cf1UJMnykjqo2SiiBbLBWZc4LDR5T2YAFEj+8h6N++JdLTEhYAXVo?=
 =?us-ascii?Q?VhpIW5riDKO89yTVpDf7kDobd5xfdtdqFh3u3s5eq87l3m0CCWnMeLMuCmcO?=
 =?us-ascii?Q?u4OgJ/PXOjmdYs5zv2SGFvKs5o6TNdiBJvHiNVpO35f6Se64Y2sWU03bmgU4?=
 =?us-ascii?Q?kNzIoYWdSR4SNM7yFx/+srL/EliFfI1L+Sq+bkQzae9EsAbE4DIYQDXdQmnD?=
 =?us-ascii?Q?Gj8jzZXNAkPVg+pV/qS0LWl7lnvM0GGcrA6apVev638vBe6hwM6j6rOJ2XQJ?=
 =?us-ascii?Q?kNTtyFuJ1YQYvQbSLGjanNcn1JzRprSWIm5QR8gjsFduVGxLEiJNMrnz7s3L?=
 =?us-ascii?Q?B7NodiafzslfGW7s8ZXPVB8v/KcRoSkk5bXP6IwKgh+jqRnY2YUhEv08WWXH?=
 =?us-ascii?Q?0G8dvcj4+47EMEK2buoB63c=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c45250b-b1c5-4563-68dc-08d9e8003435
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5076.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2022 17:03:02.4601
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ouSXOd/BJ/CuoaaBRd20jVfCA/Jb9mmIUsTrI1CmGEvDLcl3Wx7raUBelxDN8an6V95Ja/MyEs8HKtdj+xRFrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5797
X-Proofpoint-GUID: gw82dYSeIJSWp45SjFdvFw_9Jlog28ja
X-Proofpoint-ORIG-GUID: gw82dYSeIJSWp45SjFdvFw_9Jlog28ja
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-04_07,2022-02-03_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1011
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 spamscore=0
 malwarescore=0 adultscore=0 mlxlogscore=422 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202040095
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This is a more descriptive variable name updated in base.bbclass

Signed-off-by: Saul Wold <saul.wold@windriver.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index b6c4eeccd0b..30c031550f6 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -112,16 +112,16 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
 # this script for the purposes of tiny, remove the dependency from here.
 RDEPENDS:${PN}-mtrace:pn-eglibc = ""
 
-PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-full-cmdline] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
+SKIP_RECIPE[build-appliance-image] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-base] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-full-cmdline] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-rt] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-rt-sdk] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-sato] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-sato-dev] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-sato-sdk] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-x11] = "not buildable with poky-tiny"
+SKIP_RECIPE[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
 PACKAGECONFIG:remove:pn-opkg-utils = "python"
-- 
2.31.1

