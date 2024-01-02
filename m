Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680CAC46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 11:57:49 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.27277.1704196662613589465
 for <poky@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 03:57:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=PrqooarS;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=17315d9973=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 402B1RrR002455;
	Tue, 2 Jan 2024 11:57:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=9fCnDPuMPS04agXzyZ8e1np6Y+gD7gTqVT4MpMT9Z94=; b=
	PrqooarSigw+/ALKPaX3oZ4tRq9ZRzIHGHEdTSu631PrgxKp1yTPUYCUszRmx3V5
	1jn1ulSEWXLXy98wr6J82gv3S5aq4dKTuELR5Hs1/aqfcHPzkxsRHzCtXsecYjYG
	+/fN5TgdNM2V+19CiKHARhwSEXO3rz5L3D+heZuunebakYw5UeC5rvFqE8/ZHsEa
	fYbUKjPBKz7a50zCeN4HF2r88GWDL8Tp1Kf89yftF3/S19abT2Lc3Dt8vXkW4SPy
	VhoP4HXzfpxhXLatOTkjiEjkaemKDTrD2Mv6s4qS+b75gyC5N30cmdSFGYfcpRHu
	ii7wS/bNgZgmm38vVwteoA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3va8dxat3d-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 Jan 2024 11:57:41 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/8kmUkoEJzVLpuD5NnIlQVq01dltt1xVQghGCzsc1zXaMPvdSzy6Z2xJkJlRF9gk4nCTr+2KcDJXYyZSZVJdAe9MxPLxsGHQP/3lx9hLNqik0LbG+MFRXcZ0ZswIyg8varMCDM5kS0ccpvtfPvn5HogFKavO2+wJlgUmu8sag0YF+pXqkK58cMH6n6ZP5C5bLdU2OrhococwIslKo9ij0zJDUKES5NHKqYWxTGOn3fbJzM8W8ke33Ymzz6cIRzwLreVXqlf+hWJ/N1HVAFPH6Rg3mNymCYsiCgsIjqklz1l+2ThzVJhUUCTqunEiAPEplab1UWgGnMFZsrWC3Y7Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9fCnDPuMPS04agXzyZ8e1np6Y+gD7gTqVT4MpMT9Z94=;
 b=d+lJYmY+AFAVj1Vtw5OWraT3nF9EMCj38IctNtv638cEeOkSNk86+rUkuDcJhOsswyIJMl0BaKfwMcHegJ4xWDD8XTfpe4P77BtyW28W0HRXUNelz6IAzpZtQ2NyMFXGM47OrAepgBeDkhlMq44K7bRyu3n59Ont0CE4oLh1b+iEJo152HomEqgttCyWmS6Zvjv17CVmR6o78vgA/pfp7VLduvdn2IGYhzgEVlv+NydFmSn6qaULNglrEPGOZ8wHV2aMv09b+o6Rt4Ji94W+DRkJALvUNOkHFmKNfdyblwodhsOc1COVboZrVrjmhdgVFC1p1sZCG6KoeOrkei7mBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 by CH0PR11MB5505.namprd11.prod.outlook.com (2603:10b6:610:d4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Tue, 2 Jan
 2024 11:57:40 +0000
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::f34:b6ee:e03f:579f]) by SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::f34:b6ee:e03f:579f%7]) with mapi id 15.20.7135.023; Tue, 2 Jan 2024
 11:57:40 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Robert Berger <pokylinux@reliableembeddedsystems.com>,
        <poky@lists.yoctoproject.org>
Subject: [PATCH 2/2] beaglebone-yocto: Remove the obsolete variables for uImage
Date: Tue,  2 Jan 2024 19:57:09 +0800
Message-Id: <20240102115709.4165033-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102115709.4165033-1-kexin.hao@windriver.com>
References: <20240102115709.4165033-1-kexin.hao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0090.namprd13.prod.outlook.com
 (2603:10b6:208:2b8::35) To SJ0PR11MB8270.namprd11.prod.outlook.com
 (2603:10b6:a03:479::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB8270:EE_|CH0PR11MB5505:EE_
X-MS-Office365-Filtering-Correlation-Id: d6311184-138e-42ee-9768-08dc0b8a0521
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ExvKXE1GHqIiqjVtiNbt/AsvWTfL8E275i4zHkVjzf8XMI74GI6TxKzZTgtXrDQeb5BG50GCy6sud+rqpNkwqbQKkfQZmlapNusjWhPDls3Tu9zmJA+yGTW60e3wPafL+TQyaBFVuIXbl6LjwiSuioPNzKVdu+M4M3cLR/fSkaZKTB/G/SIUS/VHPByFpbuUgAPm7StEl7nb+sog+9pSEvRXcVjaGH3XG5Civk+GhTNZgDr6oZeNnvJPIw8MBE1/OMwh4foSFLYbuJh6SUOjbJi/5MRgOzkKY+0txbVo3wo6PbaKVjMkNSAhyv3G/hgHzQalVq8dNWFoDAXRCJS8JlfdwOuDXh+xV6nKChSGGdviD6oYKBGCb8AGJQtr8xIHQY0MLoRYcZIel+5KvzuKIm4aDCBgBq6aYuLS53j6TK6nHReUlnEOjneQxURE5GlVXeXii0ApZw5/MTkaKLv2PJf50Zz/PLAK5xcTH1R/VCLzM8iZRs3NLqtI6Fnyic6nfb67Qhsl/IdypNUpLd/7LLuQB6YMpLiN1brwHCFiSdgHeAUwvm57mIXcbgW8Rba9CMrSDdZXGZe1G4XQQwcY/Gka1Jh7EgBli6PKY+092vvaDAI+5sPfuDLfr4nLLrTC
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB8270.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(366004)(396003)(39850400004)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2616005)(26005)(52116002)(83380400001)(1076003)(38100700002)(86362001)(38350700005)(36756003)(5660300002)(4326008)(6512007)(6506007)(6666004)(66946007)(6916009)(54906003)(8936002)(8676002)(316002)(66556008)(66476007)(2906002)(41300700001)(478600001)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?dQXPwLlMwFzUvQV6zvBJEkAJLas945uAPXaKmh29yPWoo2NQuTgXTPNslYoI?=
 =?us-ascii?Q?BuKE6akHd4n0S1wRgwAua4tQpaMdCQzpQM51NSHcxQIvcOiuofeXwiegchHt?=
 =?us-ascii?Q?QKJiqnBFRxBAbrvOOdmY+/AixpXlDIqrIqIiZcbQ2SEnmV609/33+IwzKR3t?=
 =?us-ascii?Q?jAtL9qKL2CQxZ5TFvs/hpjnglXu591gsjBklfdrvx+Q7uWjmh2AtJJIezZJL?=
 =?us-ascii?Q?kYjxMTknd3rBsSCQPJC5POcx6mNEi60pCMDoCK3nFBdWHdTnLglcg+V6Abs4?=
 =?us-ascii?Q?pSgD74hOBQulPlcy/7emXiWXowf6TylX9UT5bQu/tHu89Xx9XUDpc2g21ZoO?=
 =?us-ascii?Q?cRaEg3p4JZMmUB8/fyZVnCP7ioZluRZp16EqvO324kYt5pphUucFgd6uFeUM?=
 =?us-ascii?Q?B4kBORt5dq6AZMtsCPZmtiSLs9RVQn2PX2ff0Y6BTAt84hc3T/KrckfpNKHo?=
 =?us-ascii?Q?PYLTjLn6nQ9fmuM2BxcJIx1+vjQyX8S+nEYPj+5rISjVGv8xi3fPebUu6w0P?=
 =?us-ascii?Q?XQ63vDvEPR+5rzONB4HL2yh6p6WSnHtGd5bVrIummErooiih3H3V3roM5YvO?=
 =?us-ascii?Q?Zcs8UhRZ0ZRtuaQvQPeTVjFThe0UR9O1Xv0zAxfsdAJhy7k6lNKosUMtg2vx?=
 =?us-ascii?Q?M7RnEgH7DSOUtyZ7obTSjgoxj/oIwbhf6yrmYAv4eUuSKwEZDBtzksbVulic?=
 =?us-ascii?Q?5b8ENbYBqOPApzPymtzpy1IjKM9ZN58ne9a9zz2aX+v94LZ41LmfH3XF+YcK?=
 =?us-ascii?Q?Cn6E9AWBiINCj7XHo0iSSW6ja8fabvc3giuEmCzDB+kBDLneFxBgfmHUcrE0?=
 =?us-ascii?Q?Q9NJf9Jd+MPEELwXwgbu8Trf8VOopSJiiPVYXvN1CR+nsyU61ex9aEwDSdQC?=
 =?us-ascii?Q?2PydFGAZDIIx7STzoO6lAdCZvrer1MaF1OGbdI2yF1XU7rHeHIHEQ2JrEshO?=
 =?us-ascii?Q?jm9vC2qDk4u32aig3AdPDBLlLfYDqCeAX5cLTeEqBz3SIgVnZByxoIGkPp6p?=
 =?us-ascii?Q?nPLJpH1CwW/AHNzdhz0XsSgO2D7CAx3MWFUxMC5Iz16GlTZ33OpMsKB63WdF?=
 =?us-ascii?Q?a+EMAOZnBnTcLYgXOas+CEqELu/hR7wpLZ/bzyErIip+qCpsc+5uUzxG/FVW?=
 =?us-ascii?Q?41Q55st56ZtIFomFMRcr6AElAo+3t8wgYzqOZkCC3jT46tk9usItcjr1OPu8?=
 =?us-ascii?Q?EVUKAqOjL65a6lvTp1jxAEyAdqFLvhnVJzjdM920Z4LGCkcgi/3unXQha87c?=
 =?us-ascii?Q?rYiviBmkrBCoFnIJHx0GMW2pUbsR/ttqrXa/I18YwpTZ6QJ1XzKQLGRZOnUt?=
 =?us-ascii?Q?pI8zFJ42qKgYSkIVlVva7cCMP1iedrbH8HXNBJv6EQM89FNTBvfcHe4Mi6Yj?=
 =?us-ascii?Q?XcI3R/ujHHfMSPwL6CkTLy9A6XLVegIoywjDtP4DIGE336jYY1itmg2MUHxd?=
 =?us-ascii?Q?b1diwydGShtFDHzb0BCx7SVj4eQvwvTy5Q7MR0X4L5Ll8LQZK5tZgFLO9n0g?=
 =?us-ascii?Q?PGhJkEQYbGd4o8aJO9ABVl2PvrZEXTT5ZntRh7KOCZacsw+NhmlXT2Yz3y/d?=
 =?us-ascii?Q?zBF4go9N2pKLdf4XC2MUwFN9X5jk0fq6Bu/h6+xEo/RhhDkwuk8eGq0nGHET?=
 =?us-ascii?Q?4w=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6311184-138e-42ee-9768-08dc0b8a0521
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB8270.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2024 11:57:40.0442
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CyrrMmPQJYPkUaw4koD6+bwWhjN3OZBxoiugpWlHMdlQLxQBYzWatgeNcx+0kLVMWYZn0xaxTTKEtpfP9J/0eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5505
X-Proofpoint-GUID: 1HnZorzO6nr_v_dh_JtHfl-jRvt9vajC
X-Proofpoint-ORIG-GUID: 1HnZorzO6nr_v_dh_JtHfl-jRvt9vajC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 clxscore=1015 mlxlogscore=680 priorityscore=1501 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2401020091
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 02 Jan 2024 11:57:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13240

Now we only support the zImage kernel type for this machine, so remove
the obsolete variables for uImage kernel type.

[YOCTO #15232]

Reported-by: Robert Berger <pokylinux@reliableembeddedsystems.com>
Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 0c1741235368..06a49f45f76a 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,15 +24,12 @@ PREFERRED_VERSION_linux-yocto ?= "6.1%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
-KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
 UBOOT_MACHINE = "am335x_evm_defconfig"
-UBOOT_ENTRYPOINT = "0x80008000"
-UBOOT_LOADADDRESS = "0x80008000"
 
 MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
 
-- 
2.39.2


