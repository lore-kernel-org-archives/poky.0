Return-Path: <Kris.Gavvala@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B1F7C61DD3
	for <webhook@archiver.kernel.org>; Mon, 31 Aug 2026 20:41:47 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6141.1788208901892575076
 for <poky@lists.yoctoproject.org>;
 Mon, 31 Aug 2026 13:41:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=EM7wAg+r;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=37036ba633=kris.gavvala@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VKASkN4045077
	for <poky@lists.yoctoproject.org>; Mon, 31 Aug 2026 20:41:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=PPS06212021; bh=4JDUniRxv
	Y0yDZvhNf/HuIaE7iqDOSUS8KdGxKU7YU8=; b=EM7wAg+rvHLxWTkOqvqF4Ai4/
	t1SKghudGBlS9R/xS+wOmNoFv9digD2cydLK5DVh8q8cr1WN62ZND1PzbRWpM+Di
	4JDzpFWUickTPhNyQixBijDh6IDyiC8CHGnmkxoieIpr2XoLhc4d+SNivb/QfRBb
	0fw0JcqBibW9ofbvHCiLweVaFhz0k6EWr8TgrpzUviQfUC4cMs+vCrqiskrkcWBs
	HUr1fO1rSZsqpsXjDFhHE/ANnXXLV9idP9ehe/dCUHZV5hU1ZWINbtNWbiMvY5hy
	dTZCcO7cvgMrLzC4ttIamzhjSQUi+cvnF0bu5OZ2RoWSwO1XTPSvggIOq6o9w==
Received: from bn8pr05cu002.outbound.protection.outlook.com (mail-eastus2azon11021116.outbound.protection.outlook.com [52.101.57.116])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4gbpd7u7q6-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Mon, 31 Aug 2026 20:41:39 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VYbIMg4L6CWJXC6YF8pLO81wusGKXOEkzP5Wm2yjxj7L+fWbhRCu/l8gSPDK21OAkK3vJWeJ8g3zpe+HfoOrr86P2Qm6mbrrHOlUoHpYhb/Dzi0+yStXhLCR5sguGTj/f7M/Da7MGtMBwBeaZsA8MjyrwR81qPb3P3JXhyeNavsFuoSHTErWnnqrQwJHB0YiKWZHPdgNc5+mZWtIjJJucY6QEi+VtKH+FuGh3iBDr8zYeK8E2h3VQyC7qterScejTmYBgMA8HOQT0m2PhwG8Zp/dEN1+HW6nsK6EY6fbXfr1+DHjC/j8yuZ6u25usNG5zjOvBjEURj86+YaNKKH/Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4JDUniRxvY0yDZvhNf/HuIaE7iqDOSUS8KdGxKU7YU8=;
 b=WCyQm/3cHPdnMLQ4jNpLGte/RbzofGQwD52+afAyUEI5oOYuVHJJ/z0zVWMX0SnOzZFFQ/MJeBPV2ZwFVc+HLsPKz6TVYAiokCENGq0m0xu+h/zAh5/UUHK+DpNLeUgtj+3Wf7zofZbVkmDy/OafY1WgFEnbAV0Z/XJ6fUBn7faJBcVXIKMtUBtYvaEoSCfJi2XCUgBH6h3HgJFK9IUrzns1SKbWSmUu5CwTb9sYpkFQ4zHY4M+aCmkU4w0H53TgXFRTzOBQ5rPwoQqQmUypa3XEe/PjQGgXoHSGyfSUIP+ciXhxi43SksgnGhycACQahBSFX1jK7a8LO/aN4oFcNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS7PR11MB7783.namprd11.prod.outlook.com (2603:10b6:8:e1::17) by
 SA2PR11MB5067.namprd11.prod.outlook.com (2603:10b6:806:111::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Mon, 31 Aug
 2026 20:41:37 +0000
Received: from DS7PR11MB7783.namprd11.prod.outlook.com
 ([fe80::aa04:56da:f40e:96a1]) by DS7PR11MB7783.namprd11.prod.outlook.com
 ([fe80::aa04:56da:f40e:96a1%3]) with mapi id 15.21.0360.008; Mon, 31 Aug 2026
 20:41:37 +0000
From: Kris Gavvala <kris.gavvala@windriver.com>
To: poky@lists.yoctoproject.org
Cc: kris.gavvala@windriver.com
Subject: [poky][PATCH][wrynose] poky-tiny: remove eglibc/uclibc references
Date: Mon, 31 Aug 2026 15:40:58 -0500
Message-ID: <20260831204058.2665478-1-kris.gavvala@windriver.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0092.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::7) To DS7PR11MB7783.namprd11.prod.outlook.com
 (2603:10b6:8:e1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7783:EE_|SA2PR11MB5067:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cca1060-a9bd-4706-38e8-08df07a0407e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|52116014|23010399003|1800799024|366016|376014|18002099003|56012099006|11063799006|10067099003|38350700014;
X-Microsoft-Antispam-Message-Info: 
	3hmj+W21FQdcmwPDlaztHus4SmIH62v7TOw6sSVtSKxLeIpGbosCJllvd9bVPMvb9HYFxbCvIAQYM67aGdIt+jHAF///iHPH9i3M/FFzPUwGjbteBBs3RTnAxU8zbHu5bI94NpHLNG8JQI/WmfTfgLNzIZwcMtYRQ2EnH8OHs9yuPi4F9ZUPf07aQMDjrH/awdG9QUZLaS3LENpogRXh9PRYSdKNZ4jX6uEIQZYadue0FcQChZ9MSJ8OoswRYEd0rJep1PEMe3BbUYs4ucuEG4vn1jjl5wGXNK55dQjiZQo4CA9Vd9rkckhw5ygPuqWMH0fKnyr1coIAmPYm5lwobMPuXCw8Ele1Vuwd+fXaTm45tIprDapSo48GMCwKXIzRYalZ9ruEyCrzAq5jqqYSOtYt0broycIKHJa9aCcq6wTlJl6UU5L0J9o5NTf+xXW7AeuCKLcszjnJrjcL/t3V1TZ6x8SZoJOJeB5FZXCypuarqQNYQgBO1pgsesX6tHsLYXtBLeOnlDD71bB4C3xWsZZvYPSoeV9AQNj7nNaEo3K253IR9Js8NQFieFqxlZycQVEYNUv/NkcV8DG9QMy2INRPE5yVdywlw8ZdI0nzsGRVk+qP20HcsyUiynqTjhWKZloNBcNCm/UcF1/ZbiqoWiRTlkaraYBurZYCbrreQzO4LoL0LroSSvu/le5EWd9kaKVKDyOjB3KFz2hMA727JEVxMd+o+yTPrrVFjqFtDEA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR11MB7783.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(23010399003)(1800799024)(366016)(376014)(18002099003)(56012099006)(11063799006)(10067099003)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?WcD+bJAM5aVKWqRiXPlDEIzzVUaqt5J4ScidSButeSdMG5jjiCcF3FuBrCYT?=
 =?us-ascii?Q?ZoZqgm/bBvCmQoJELVSS3i+zc3JBkKUKReV0PgxGcECBE/eR9EYMSiP3VIlg?=
 =?us-ascii?Q?W0y3uI/sCBWqL3q8vNghyzpkZa0e1qKGcJoyiofUd/avnT2ZVUbWs0p4yveP?=
 =?us-ascii?Q?yjLpYVwZ2ekZoL0mxSrK2zlAlj9lv8Qckj/s2vyRakWe3u6BNnUg04Juam3P?=
 =?us-ascii?Q?c/wpW5/J694tnGcEN8s9VaqBPfzoGksAhunal597s4WeTNZ7JOZNWmDz4Jz0?=
 =?us-ascii?Q?1xi1LSIFtqyytfd8ylMAvGblr7sqduaRa8XoX8Az9yQlQq32XU9+AnHZEnY1?=
 =?us-ascii?Q?HwngVdaMsNb+hXU/zJ5YdynhwSwpit4xrvUuGTtQBj5EuUzitYGZzAmk5CmM?=
 =?us-ascii?Q?YT+owYr8Q21E6ZCPhC9E2+//l2b01utaRBRKbJsHiRwC+muQ4WseNzslcmOd?=
 =?us-ascii?Q?OcnvTCtd8ElLYeVuwsfBG4U6txgiZz/DfYV/mbz1OT9xMl7WxCzJy+nwQH+p?=
 =?us-ascii?Q?/QaLWDmsc+DhQKYDzoXj7SAqQ8QIxHH8gAoChAqiXQAtoyObBQgaC6b3mGCK?=
 =?us-ascii?Q?v3LYC5jNPS10s7xU8sV+zi5kg2GlLblBobuOfgyUD469nEAnrm2U4bQ9LaUy?=
 =?us-ascii?Q?ElZO5UXioBuYs4wzqyPRw87mXfSUsYrcL30lY8/wBfMkAYzLomlO48Ac+Q3y?=
 =?us-ascii?Q?7qQJGrltc96BT/1jLVjK98qLbYKz58T6WGzokJVb5F0kjIlfsoQfMFZlhEAN?=
 =?us-ascii?Q?6JtFPsS631dasW2z4VxS0JM+Q4FVwAYl6bU+uqC9DpZNePYbuNkzuRvdQc0o?=
 =?us-ascii?Q?7KD6X2L0l8HuG3qZIv0Gs2t2FWz4m4pV31uKVgs1BgS6kfzIyrMah9u5wwd5?=
 =?us-ascii?Q?QE7J1GAuC+1qjrJ8I1sUpuayhH/E8g955sdAOi7E+6E80deEIJn6+rCIQdLs?=
 =?us-ascii?Q?XntvrvfFK/abGcr37FINNsUhJ4tTyzM+2bAQpHvCmkbQXaLMBG3Db9RDvAM6?=
 =?us-ascii?Q?19rRTZZwYpSunzAY9m825HbT3Cd5AwK5EER3u64WqBrjqtqBg+9HrBlmj7dV?=
 =?us-ascii?Q?JapqTV+wmt5910RnkejcQjZ5Qpxl+LYU/hsMuMPw6W3EsN39dYhtFR0YEgFT?=
 =?us-ascii?Q?OR7FmvT+OEE1oZLMZ7jtIgw9pR9frcxqRFKlQIrPp/Cyplr/1t6CICS3OV8Z?=
 =?us-ascii?Q?3+nWOo9saKoKk4/9+/7WuFW4ZQAUPgvwfuKayKCDzNRQ9CLuBVhZLOSbDQJX?=
 =?us-ascii?Q?WKn+pp4nSZAzI7W6byjzlZvjv4tL5bgxSQhFEafotLYaO/rPDLVdvZpPwnlM?=
 =?us-ascii?Q?FtEOBlIm92DJMxuTjfaefKfE2VisU3dzTTJGnCg17al3hXrz0gtyQz/M0Mu4?=
 =?us-ascii?Q?70vYBveeWW9WrBGyRmcCAxLnpPDp4NgmjNJxW7UrXyvYQ4KhVR65UWvjzTZf?=
 =?us-ascii?Q?BbTUP9HcSOxkkrq+1wMMXkmvLv/HHJRIL4J0lKD9UT36lUXsbhgxEkFD3DeJ?=
 =?us-ascii?Q?gamcemzhbP//8+db8R0tzJiaQrcN6Lax1hp48vT5rVZAIqzL89T8f73eRRDy?=
 =?us-ascii?Q?ueCoCt4t7bedyn0e5wotnc278zPXmxo4L3ZVM0NdCFIK2tZgKPcBtRzDtl5f?=
 =?us-ascii?Q?YuI6//zLDfJ0ecXoOuKSyTdR40eW6H4Kn8myP11Y+tl/pELEXnKpWVMY0LpY?=
 =?us-ascii?Q?MX961aWHf3MxORbHO1CNdDbPx0elfmgtTIeQdK8v2/SAJkXbfjuHhRNd7KCZ?=
 =?us-ascii?Q?tpAx8vtyX6XcA3Y4ZB3P/Hffxe1K1W8=3D?=
X-Exchange-RoutingPolicyChecked: 
	bbQ5PyZ3c3/nmVvdYNAUDCJ+XNh+iV+7Bj97CgSF64NgmgVteQPjd/LWI4G+Ko7rcqVlz4VHRDViBInfcz38G7M6cNuyoVWxPzk6vKocMVK28ZbxD62fBu/IjZmTM/fgRgqq47vHBJ8vGyphV/KkaYPDLzYvIEE9px5oVexx5BrTtkWMOjcBoSXpz42n2mKbJd32/CHbvKzCkjKioNas4y4mN/lzEAmGp1WBFJ/BGFxy8Y4Vvs0WOuCPLBtVbsm/0+kdy32+9Wv7E910IEqofXLnRvxAIJw5yEhq4qQ+bKmh5iYJjHuhhM/OElLlQ4JquEkuHrOU7ZEGlml27EI/Ng==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cca1060-a9bd-4706-38e8-08df07a0407e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7783.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2026 20:41:37.0085
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5l8qZxDYdoLq+Y8k6H5wf14MhOpnzO3EDx4rpZY1N+JzLAzQuiFhRuudzYKT/yEQQl9s9TURkg4Z7O4gwMuDS2z4TlwWd3kNXu9Xz3OZ4Ew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5067
X-Authority-Analysis: v=2.4 cv=Ie63n2qa c=1 sm=1 tr=0 ts=6a95e703 cx=c_pps
 a=VPmHu6eXMPg+68oZcjUWEA==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=Sv0fKeRqtYgA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=bi6dqmuHe4P4UrxVR6um:22 a=fTW__CHxibyLmBMfj2wP:22 a=t7CeM3EgAAAA:8
 a=ag1SF4gXAAAA:8 a=sAHYvhl7vSkFV1b-DgYA:9 a=FdTzh2GWekK77mhwV6Dw:22
 a=Yupwre4RP9_Eg_Bd0iYG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE3OCBTYWx0ZWRfXwAT+RGzJJhmq
 O/9W46ysOTkn+XbDFqFFZGbLVDzLgzDjP2QMSknipf4OQZ1GKW2Wm/q4bZSA0AFFHliwhYbLcI0
 9OkTU1ZkZZ0efaf4tFpnKMrn5Pi7Wg3cTcvjx3wRpfQSrFOu3x8mMcJVrnRyIKplGIG67ul+G//
 wW+BZIk7DPpA7JcheRKU7qE4s87dE8RGrsVxy3Ki+FlnyaIa/J+V1AWHomjhvpI8HmigoTdaBUn
 wo1mmaHTAPsKsg6jdvALBUEU48v8lmWs71xomJuZMJEhXFeRI7ZfwFHNqgUA/o831JcCFHUNs1t
 z4ql9ymJrv9zZSzs2TsrBpDjMSQYwcqwK/8Xkt+HJS5IvymnshRWOGMv3+CY6IesrfowahEbCB/
 Rioa2pIBUeDpjTSUXcEd68H9LQ7yjUvUcj59LeO/8LVwvn8aibj6MkNH00xvsswUbYSkig5XSJG
 ZFJby72NBijSfBJaDcA==
X-Proofpoint-ORIG-GUID: bXpij1bXNRJDLEAU7WKmly-GqSlb5abD
X-Proofpoint-GUID: bXpij1bXNRJDLEAU7WKmly-GqSlb5abD
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE3OCBTYWx0ZWRfX4VsQgTR5ZuX0
 yZkelLzoK4JHiY+EgeK/9Qlt2TJQLYiv8HZmCWEMBJ9SybbHt3kqOGmjvenNwuPITzjf/hXbNp2
 R907ims5UiY37iT0Ow1ckp2jMD6t/4mfrx8A/TTHJE41qL1BYs3s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_06,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 suspectscore=0 clxscore=1011 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310178
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 31 Aug 2026 20:41:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13958

From: "Gavvala, Kris" <Kris.Gavvala@windriver.com>

  Removed leftovers from the eglibc to glibc and uclibc to musl
  migrations in poky-tiny.conf

  - Updated TCLIBC comment to reference glibc/musl instead of
    eglibc/uclibc.
  - Updated dependency chain comment to reference glibc instead of eglibc.
  - Removed the mtrace RDEPENDS for eglibc since the package no longer
    exists.

Signed-off-by: Kris Gavvala <kris.gavvala@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit fa0b356c9e20279f9c49231e768a6f3a4c93dc00)
---
 meta-poky/conf/distro/poky-tiny.conf | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c0c5fe71..1e32dd38 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -18,7 +18,7 @@
 # o Static images (no support for adding packages or libraries later)
 # o Read-only or RAMFS root filesystem
 # o Combined Linux kernel + rootfs in under 4MB
-# o Allow the user to select between eglibc or uclibc with the TCLIBC variable
+# o Allow the user to select between glibc or musl with the TCLIBC variable
 #
 # This is currently a partial definition, the following tasks remain:
 # [ ] Integrate linux-yocto-tiny ktype into linux-yocto
@@ -55,7 +55,7 @@ ENABLE_WIDEC = "false"
 ENABLE_WIDEC:class-native = "true"
 
 # Drop native language support. This removes the
-# eglibc->bash->gettext->libc-posix-clang-wchar dependency.
+# glibc->bash->gettext->libc-posix-clang-wchar dependency.
 USE_NLS = "no"
 # As we don't have native language support, don't install locales into images
 IMAGE_LINGUAS = ""
@@ -89,10 +89,6 @@ QB_DEFAULT_FSTYPE = "cpio.gz"
 #        more machine configs to maintain long term.
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
 
-# The mtrace script included by eglibc is a perl script. This means the system
-# will build perl in case this package is installed. Since we don't care about
-# this script for the purposes of tiny, remove the dependency from here.
-RDEPENDS:${PN}-mtrace:pn-eglibc = ""
 
 SKIP_RECIPE[build-appliance-image] = "not buildable with poky-tiny"
 SKIP_RECIPE[core-image-rt] = "not buildable with poky-tiny"
-- 
2.43.0


