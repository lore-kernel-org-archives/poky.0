Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.78734.1629421432156070729
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 18:03:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=gzh+OKVF;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3866a3c413=kexin.hao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17K11V8o027924;
	Thu, 19 Aug 2021 18:03:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=0lm8/T399sN9y4uvdMuKmGQ8VIE4AY2usVwH3o349ZE=;
 b=gzh+OKVF7U1Er+Pwxar/W5BDy7/VzWgTGY18D9ZF3C1qrPktzOPdhZBwyMbAdU8/UWnL
 VTMK/1mwyOYyyumqPouS+8KuzyHnxwZ85Z7lcc+UChbm8rgTZoPX5fMKtcylTlVtCDzD
 LncknOtjv3HKviG0Agy2P1y/UUi9GJBVyy1pusLjBLWTGdwpg/DJE8y8y7hByDd7rM2o
 0joqPei1O+QDtDgu9Oo/ee0oMzhRUsKbcKpBpIoer7sp1usn2qTxcPDQ9EtjSC87Yms8
 sSo4DYCbtqjFCzAh8ncDDDLhmtHos1IjcmxXTXiVXHJYChD4eOE4MpoZ2Erdyp6/7yM7 kQ== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahp61ghsk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 18:03:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VHmGWs2N+uOgwKJU3b6VtWMwyFQSQAOS/htwV8U8vFwmEaec7Wdwq+7sYOxGAixyPMR2TyV0CXbLHje10Win1nplCtURVv86Cby7A1ndlVqjxAfk2CUz4dnsR0usGu9YtjX5w3NeneFgCWA8MtCTWQP3lus2U2zkfVL9F0mHx2BdMVQMPoMbeDMhnGuPOKWAzVMwzYPn2LDfzh5e7lScFxfkSQ5jD7at41y1r2l3TlU4UaCzCg0ksep3t5dHvQ1GJckqMcnr9fYmcy8tmeMEBYsIz50Mi78w8vcicsEBdI2W+8XDm+7d1M55MqdM1kPUXORZs3VzvGnZtrg0uEyD9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0lm8/T399sN9y4uvdMuKmGQ8VIE4AY2usVwH3o349ZE=;
 b=UGUs0HH+d3yc9QB+SEkmqs6MDmMwZUsZxViGXRCJjW3j0Ph3XW0K8femFOzcyVDV917wnMsvF1KnKAC30dYKu4Z/erliZv3Guvaq2Bsath5YTftXnaz4xTP5LRVAkQqPKTkTfWbdZJvb50xfmhzeSn2OOqWSu1u/mHf8KkLsZnub3h1uca6yvbBGLbnvJLBqzGFjLwl/XO3MlBlFwwwlifw22Lb3KuAKjpwpdjEJPasXvJL6j5a0GDc8GksersoNiqMFwYmv3zolNoEesV/Zeif+tzJtB93TRKu13GdrkuTnXpz5jL+hz9rUHI6E3HrJD2HZVn42MrAaCsNklkXwuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (2603:10b6:5:c3::15) by
 DM6PR11MB3836.namprd11.prod.outlook.com (2603:10b6:5:13a::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19; Fri, 20 Aug 2021 01:03:46 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::2df4:25b7:462d:39ed%4]) with mapi id 15.20.4415.024; Fri, 20 Aug 2021
 01:03:46 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH 2/2] meta-yocto-bsp: Bump the kernel to v5.13.11
Date: Fri, 20 Aug 2021 08:58:33 +0800
Message-Id: <20210820005833.7552-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210820005833.7552-1-kexin.hao@windriver.com>
References: <20210820005833.7552-1-kexin.hao@windriver.com>
X-ClientProxiedBy: HK2P15301CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::11) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK2P15301CA0001.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.1 via Frontend Transport; Fri, 20 Aug 2021 01:03:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d4261d78-cd2c-4777-ca31-08d963765cc4
X-MS-TrafficTypeDiagnostic: DM6PR11MB3836:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB383618D76D86654C3D4181FDE2C19@DM6PR11MB3836.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dPnx4+jRDoC9BMt7UlhzL0iQXGUkYKoDPrQZeraTnVT/CinYxrmREVynn2ysr38TES/3w7WXulXNWrUC0VhPsB02BOG77Gnh3akByAI7YVvARAqX6DdTqiKfmA/oa7to18/Mdlvdket84xX6HPDpdchkRfy/PCbOxFqf0OZQg2Llhmb4uVHVaHSFX1+USlc9od2nKJbIkdGmuRH7fbjVN6/peGdOiusp0YtP0nmxPYuwpll5ozyZUpsYXrixjnMr2iv5/iM8qpJOKHD/P+a20aTmtUILzuddnDcIxfhnA+/8USeTgq43GztFSgW1eWBl6uKoyEDfP76h/QOUS4yqYQhrMCd22hD/kCYVqdlB9s1rDRL+UY3wThzBzn78copy4YW3GOV9tyz7rFDzuh/rzjnz+yqI+00OsU9iD7laEfTohbaF6sKa08qEa2nJj3hLzEJYVijCUSK9Mmdxdvz7e5rF5bXSch9LEZdrJ2slwfycJ1VTLsADfMm4lfoNsBvOjKOwGcBvIcuWdsENmijz9Xe+bDASisGl3BOr+Yj2yARBl7zWjeEoju3Kcsn270Nq8NvrTyFt3OblNrl1uHXv6HZSWEk8uFxQPgYVncZvl3fIr1BgH6TfW0TyhIopgaATDlKZtKaq2L8NWx7Mny9U4YP161apTXojNUliQL5RlRDBX1sB/kgW5XAMmSF7UYDFWqXxZBIu+rYFozkA7RmqTA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(346002)(136003)(366004)(376002)(8936002)(316002)(6506007)(26005)(6486002)(52116002)(5660300002)(6916009)(6512007)(956004)(66556008)(4326008)(1076003)(8676002)(478600001)(66476007)(38100700002)(38350700002)(2616005)(66946007)(83380400001)(2906002)(6666004)(36756003)(186003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?shzZ1AH+HN8tUzSWDSm53VnovoL2VMCCf+0cKRq26eZ8i4g9OkpI9etU81sO?=
 =?us-ascii?Q?XkPPxkmkDKkUlqAUF0IDYB2pMi1lrTLHAL0Ej5VRP/v2qbFENQjQq/o/xu0m?=
 =?us-ascii?Q?EosfYc9tI3Tq3JnjHvmcp9iARAybrjKH5Bxmjg03m2ofDNYimuZ87TnmSGf2?=
 =?us-ascii?Q?YiN36cd4f0Gqalk+PFcoBBptc/tXRGhWegNCaJpzTC35Gsr3DxToQoAziMt7?=
 =?us-ascii?Q?Xkyyuw73hj2gL36Wa103aL5ViuDJTJ7bptAmSP8G5UNMj3Ez04H3/PP34FT8?=
 =?us-ascii?Q?CGj1wfyQcMWs7shJpfnO+U+PZRfXkNNmsrCzDc45MCYEBev8vTt19gJPqxHu?=
 =?us-ascii?Q?Qi15cVKVcQK8u0pJ08F8tBl91rpZe0EDQleIRuz79mFlHWJyXY71y5By1IfF?=
 =?us-ascii?Q?ZeSMsI3OIwr+ESDXqvg8CFbGvZ3v8RZaadqR+It8RH61rEcQTma99qTGcKvL?=
 =?us-ascii?Q?BCUkabqRVXhICuKlwzBjslwQ9I76aTimp25xID2F/F4T6dQIKcKrsleOneEv?=
 =?us-ascii?Q?WO1PW0ubG9eYde/LDE8JeDLbWMXHkk2ccOTVH5JLgj8KxTejSX5FJxqi9Rm1?=
 =?us-ascii?Q?umQDYJ+eR3+xBn28NDyXwpnAUcLT3WYG8XJRWaf3QVYpnh4TAc923WpsrzlF?=
 =?us-ascii?Q?hYZ5XP+0FsvCiRmj5meGlhl2MhfG399BOBS5UyJDbCIkQubagrRYj/dJyWMj?=
 =?us-ascii?Q?8FE2ZjSfw385Eb82U3FUkFEd/Lrx7KakmhqlKGdnC5ws6chNWSMEzNyfPAPR?=
 =?us-ascii?Q?2SiYZFSoLUsLMlwkmGbZ9NtPKXfoPForypMDqpX5GZJ+3b0fJgn3BiXQkPZJ?=
 =?us-ascii?Q?DFnfd4h+2jafHRk4keaDjMAk0h/NToTcjlHER8HX78FBxL4XXtmOdIuS2TQo?=
 =?us-ascii?Q?WB90nDMVydlhAPvFGtHowm+P0mvYgrYm2wSDLVFbZtG2wJ4HMgidqw2oRhEo?=
 =?us-ascii?Q?8JjGqJySAafsTQl4RWoYeTedruJkEYhbOzIkyNrfyDmJ7OlLa89hZjwzJuHv?=
 =?us-ascii?Q?5+TceSxW0RUPGmbBo9WjefHT0dIZIXzM6M2aHBH9em/lVaM2VEG9XcDqlTL+?=
 =?us-ascii?Q?aQbQfMDiI7MwGRADBC78dWKrITAfL5K6hwMkBzbRZ+5+BddnrZVkWP5HbM8P?=
 =?us-ascii?Q?WZpm8WGUlQliy8oBIKcKNPTacxyGei0B3VGL8e+pm09GGCb2cTg6tzwYJEeL?=
 =?us-ascii?Q?ZDZB+PhBeESeKe+W83LJ7vJDbByZHArUtlCMQ8+O5nG9OhPery6HirBq86dj?=
 =?us-ascii?Q?tf5PnubrK2l6PRjwoDqbPUV2tXle6mvjGqEPlNZS9fNQx9bjk6qiB503Jk0F?=
 =?us-ascii?Q?wdfcTjJ1lC62X0BPHe/g+A6r?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4261d78-cd2c-4777-ca31-08d963765cc4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2021 01:03:46.5066
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wn05vwz7CACen9bqzjRH662ININMVsN/J5q5z2Au2M5jMQEP+kBbZwtiEzFm6PjTE/DOeJ3PEcOtuOjDz4qIBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3836
X-Proofpoint-GUID: PGBbRKUTRjYDa8_C4Di4J1bTMP8fpUXl
X-Proofpoint-ORIG-GUID: PGBbRKUTRjYDa8_C4Di4J1bTMP8fpUXl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_11,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=880
 bulkscore=0 priorityscore=1501 suspectscore=0 mlxscore=0 malwarescore=0
 spamscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108200004
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Build and boot test for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../linux/linux-yocto_5.13.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
index 302d5ca8b558..6089a94d75a9 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.13.bbappend
@@ -7,17 +7,17 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "c1eb1eaf6fd3f1302b89194f629eafb9368a326a"
-SRCREV_machine:genericx86-64 ?= "c1eb1eaf6fd3f1302b89194f629eafb9368a326a"
-SRCREV_machine:edgerouter ?= "2d40c76f86e94252bbfbff4294b43b33de780cd5"
-SRCREV_machine:beaglebone-yocto ?= "18666b33d7ceaf095da5d58fecd6fcb070932434"
+SRCREV_machine:genericx86 ?= "fe64083abac67ac736aa0133f3a4088286aece40"
+SRCREV_machine:genericx86-64 ?= "fe64083abac67ac736aa0133f3a4088286aece40"
+SRCREV_machine:edgerouter ?= "7b80606f7484fb1967a261e7e262de9adeb7ed59"
+SRCREV_machine:beaglebone-yocto ?= "e486ea86794d62e7e6adbb3a2b2fd65222f323f7"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.13.7"
-LINUX_VERSION:genericx86-64 = "5.13.7"
-LINUX_VERSION:edgerouter = "5.13.7"
-LINUX_VERSION:beaglebone-yocto = "5.13.7"
+LINUX_VERSION:genericx86 = "5.13.11"
+LINUX_VERSION:genericx86-64 = "5.13.11"
+LINUX_VERSION:edgerouter = "5.13.11"
+LINUX_VERSION:beaglebone-yocto = "5.13.11"
-- 
2.31.1

