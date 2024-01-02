Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692ACC47079
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 11:57:49 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.27276.1704196662216765820
 for <poky@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 03:57:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=CjqtL7Sn;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=17315d9973=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 402B1RrQ002455;
	Tue, 2 Jan 2024 11:57:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=onP2PfneLcPebwmwiH
	0f1Pux4+Qgg5sQbDwbHtiS+Bk=; b=CjqtL7Sngti7liOsXGcJhcdDY5VSHn91m3
	G5s514KGPTNZygTtEap33ShVVAzOiGHSJpbpacN5ue+d4u3oYtiHUUkLH3Y/JPdi
	1+BEnO2IpfMQei9zLA1W66oujmLegzLEuJ7Yt+ccGo4iE7+ZywsfsLfzSryQM+GD
	N2VRYjM+MoDdOTvvoo9O9tIrTT6NAm3PK1E5pJIfIHjF8FDbS4P1VtU06fA4Q1no
	f9n11IKf6gyIB1rWPbwTwPgIfL0u8Y0y8oUmdkB5Sv3Bt78WLtGW0VsE9GVl9Hca
	fHTfgRZGL1ItwRiz/LUJuPuBmKBi2b7WPCtqa38+tX6xX10aGW9w==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3va8dxat3d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 02 Jan 2024 11:57:40 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HS0zaIj0X4M7foHBjgjRn1SZVbIruk1Ithhlvu11D4iZsOkf2UTRomUx8bKl2q6TcbriX+GzG24+hfz/+1j1ajqsi7diZAyV6zuKEHztQ9L89gTLBmqTSUrPu4LCXZlriRAmFVCADW3ur50PQ14F7xQoODNGXzK3bMq8qjnr8WGQMWtB6Pk0MXV0CB/cL4tpyu1oGaV8xH8h/wRPyhtjwyosXMre0OPB6hncPkx7TUtGc03jqk/oLlmDzp1+L9AA1qdnFriL+MBoTflZ0A6G3nRa7/39VoNZVaJpLWVrjZQjwijUbo49W3kBgafa030JQe7p4kAQcwE6ndRlXkIKgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=onP2PfneLcPebwmwiH0f1Pux4+Qgg5sQbDwbHtiS+Bk=;
 b=bN3CS3WfKGEV8Rv3+o3Ejo/8c5Mipt9pbB6ekXqJz+j/uJU/dmu9cCTYJW/btITFE1zAFID/O8W6c/ne0a4BT/6XdUtqTJ25SyBQQ8rGWjpof9/R0b0Z5ZWaJ6UXWH9B8ktZFbgvFri4COJBYcSq4YUU8BUGKjL0a7ku+FXrQa8YY6Fg8k9+L/xh6vT94mzmRytVSc53NjavBWQ2I6NbAgv4OOmD0XirT+fKkQ9bjJ3AEYDm7F6u2J83fK00No55Q5sproyF/bYQcR1p+v1rRTdj74U6w1AVeCKePXi2sQDKTQhKzsa2MwJHxYiCweX8eWOaB5ZIeHpi6IEsQo2uvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 by CH0PR11MB5505.namprd11.prod.outlook.com (2603:10b6:610:d4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Tue, 2 Jan
 2024 11:57:35 +0000
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::f34:b6ee:e03f:579f]) by SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::f34:b6ee:e03f:579f%7]) with mapi id 15.20.7135.023; Tue, 2 Jan 2024
 11:57:34 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Robert Berger <pokylinux@reliableembeddedsystems.com>,
        <poky@lists.yoctoproject.org>
Subject: [PATCH 1/2] beaglebone-yocto: Remove the redundant kernel-devicetree
Date: Tue,  2 Jan 2024 19:57:08 +0800
Message-Id: <20240102115709.4165033-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0090.namprd13.prod.outlook.com
 (2603:10b6:208:2b8::35) To SJ0PR11MB8270.namprd11.prod.outlook.com
 (2603:10b6:a03:479::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB8270:EE_|CH0PR11MB5505:EE_
X-MS-Office365-Filtering-Correlation-Id: be3ab9de-7834-4889-e6f0-08dc0b8a0148
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sM8aN4roz4x7j0BldVTWngyqTiT9ju2GL32Kte+Q2c+Ej/LLyUk33W+YSnCmnGHfq+4w55z06PG1GKZ4C6rC33hr6WJ8NRT/KLgv4Yy73ZYUIk3k6S4ppsWvGwOMadddh6bz91pBVJS+hg0s3vdmsToRPAJyITXVRhOETwul/Z8CnEv2WwY2G9qgDXowauNOFMg+exo2i7ACyC/EKmkHFB14qn0IcjifguonO/ZO03V8aDRT5iUxmRo5oV4Owa13qjbWc7ELPQuA5gdfk2cdjalOxMrptwTCi6lZX2WCfK4pBD+hGxEKelMbhELpXLXVfu0aB8nwmgR7Y6GNKVD/0ZFZpkdHWRpV7KI67obdX5ckdwPJzKqN+z/d8jxS7lGjVDhoqMSBh9h6K48/P3OAlflNsI7K1ZB8DnFThwbpvYOqI4Hhb8sQTsTMQCi3VhDxw3UNIWkF4Zt/L2eORN79r/v11n/ncy2Jzz/FbyU+l1JW6g5Fawzsmluj3tuJY0Pr0vKtZp5qNUUDPsewdLwX9n/zdMyEnQdifI4kkixUpGRUtNQb1504TmLdL766nFXpiUoMGwF3LkO7A9bpDSfTzVny9r+SiW/awTRIPqfzxk80fpeRk7+Dfa/RcxqtW9V8
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB8270.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(366004)(396003)(39850400004)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2616005)(26005)(52116002)(83380400001)(1076003)(38100700002)(86362001)(38350700005)(36756003)(5660300002)(4326008)(4744005)(6512007)(6506007)(6666004)(66946007)(6916009)(54906003)(8936002)(8676002)(316002)(66556008)(66476007)(2906002)(41300700001)(478600001)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Hc2eoAn4lFxvdxNREuaG/WCDv1TSvteZ/57xWFBbGNaxZSLznTLErXfDZHOq?=
 =?us-ascii?Q?DOQCr/bi8gwrHAiVteIJ/Pc5fKEHiiMUdGX6BqCw/jsI3Q6OFy/aUitDcPU1?=
 =?us-ascii?Q?OObPtio1WL/yEM8GgNiTRcteUu6mUPaY52RYUtjFgdtVt8/3sGd7MBpKp6Jy?=
 =?us-ascii?Q?ELd1NQ/P/NaRF+ZkHABKq6tS7wldLixHIQZx8KlaXOnoHezxr5Dtfb2qBVHu?=
 =?us-ascii?Q?jFt4PGvKA8T0wpnWEMvr7y9Kjy19vmwl2TJPteBOomxaHAb4jxWW3Q2+xT1I?=
 =?us-ascii?Q?Yzc708gAanPsRQaHZI2FVvO8KYxL6aQ/NVGEgROsMjweaUkv5eLmhw9Wozre?=
 =?us-ascii?Q?zGbUhpEVDfQg6ro0OhpiAv5cDjA2SjRakUjrsC2M4J2xtIumXyhQyMC0sZIY?=
 =?us-ascii?Q?zf7jS0Q5sRLDnC7HgIxKQqNXV+RIdV0VOCnMyPu5ripSMkRboB3YSZEi+2Ar?=
 =?us-ascii?Q?1ts+yxnReBmR1NZzXqHcAS0bIPBtMf4f8PMbORDW8DWrH1D2VhbsmSubb3jx?=
 =?us-ascii?Q?8tjw0lKpZ4Bk5nHudfJ4YKL2fGYel10E7FK3O/AhhNu8rN4fINyKKIofFgwh?=
 =?us-ascii?Q?/IozDOZ2qei0qdSML2pnEQMIuObt4tfzllf6BpLdfmqyY+uRl/KGXRq/d/JM?=
 =?us-ascii?Q?LX83a1U4ZzG+0tgAfPj+TkUW8foNj/MEo/vC6X2rA0t0CLPt4L7nHiajnjQC?=
 =?us-ascii?Q?S/pHJqW5VD6E38N5ALdHcPaS0/EC8FsUOOSXTBix8Yagj/Tnbe9ZW54Zw7Eb?=
 =?us-ascii?Q?/759WPPBKQ8MAsncjT2cXwp5cDpK3v10xqgN/8PMfW4M6LfDwT4rATXfuWqo?=
 =?us-ascii?Q?iuvAO4+Ki0kvlZIg5pmEhSWVsdMkqIKyvGp1+l8zCNeH74bIE026WGhg+DUG?=
 =?us-ascii?Q?afjdmghUij9WQOPZY4W4jbzeUwuUb9GnMNwuAGH02K1hqg+4RihCyvonOux3?=
 =?us-ascii?Q?Af50MWrI4lUTgfeI9xxPknGilfk8+WD/wbNbHkp3NPPmTEtcFF6FAr6zFrDS?=
 =?us-ascii?Q?CSNNz5nQG7LhA5+pR3/clsIlG3ghgogRAHcQGpnCSHuglxlwZ/o447whm9NX?=
 =?us-ascii?Q?z4rjIjnuSM83OKap+Oxp3pp4YKgWdq+gG8SxCKW534LOkMAbF2A053QRhGq9?=
 =?us-ascii?Q?mPDY1QbIVLOnHQ3ZcvUzmX40mADsd9hCbpzxVxhWw+125jU/Awg48pGe8Py5?=
 =?us-ascii?Q?9CIAFq16cOhIuciD3tPZZZMcUr5+Z/jBlAvlOx0qt185JV3QJcL0GQQQ1Erm?=
 =?us-ascii?Q?Vm1KJrhOGWJpUgMDeXRKug73uoHCQ9Y00ugV+u36Oi0qcNPqNEmIf1uC+tqs?=
 =?us-ascii?Q?GMeSYTjOzWCmDfpCdavbNAV+yTwkexpKMPsE4O++J+khx+XGFN4i0xdrAUhm?=
 =?us-ascii?Q?rn8xoluEsfmI3BezE8LATvRGIcT6jLM4S/1wkEiSzTO81007PAh/655uWP9D?=
 =?us-ascii?Q?j/5cgP4xbq5a/qWHUfJ8IUHylqvggmtJ0HQ4HxtAxQtfhk+3bvYoBfaAdmCu?=
 =?us-ascii?Q?KmlPEV/VAEm5bqMVdZwDnwmxhYOQnt41N9sh+CIblOm3dawwTFpVFCexD8tV?=
 =?us-ascii?Q?5W7W2G8QfT+khqnDY6g0fq+Ftcx+ejmOaUrBS/ucxnIko7idHI3mNXYB0qTF?=
 =?us-ascii?Q?ug=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be3ab9de-7834-4889-e6f0-08dc0b8a0148
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB8270.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2024 11:57:34.0500
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kLp7TbqptfOBFog3FnXfqjcdXlmxTVHe3i4rnUpF/TRL2tm821lCRh5OR0tTo7QKrgu7GzeSvF/BDz3xQ7n2aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5505
X-Proofpoint-GUID: CH88LGif7nd7zGK-_FqZEJBgM3BFoQMa
X-Proofpoint-ORIG-GUID: CH88LGif7nd7zGK-_FqZEJBgM3BFoQMa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 clxscore=1011 mlxlogscore=660 priorityscore=1501 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2401020091
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 02 Jan 2024 11:57:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13239

The kernel-devicetree is set in both MACHINE_ESSENTIAL_EXTRA_RDEPENDS
and MACHINE_EXTRA_RRECOMMENDS. Since it is an essential package for
boot, drop the one in MACHINE_EXTRA_RRECOMMENDS.

[YOCTO #15229]

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 9f389711b3b4..0c1741235368 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -4,7 +4,7 @@
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules kernel-devicetree"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"
 
 EXTRA_IMAGEDEPENDS += "virtual/bootloader"
 
-- 
2.39.2


