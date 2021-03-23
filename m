Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.44])
 by mx.groups.io with SMTP id smtpd.web12.6423.1616492326220372674
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 02:38:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=HgjM+gD2;
 spf=pass (domain: windriver.com, ip: 40.107.237.44, mailfrom: kexin.hao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tr2frrRWfhRan9y7aTfiySKZrT6dJ5P130C6lqKe0nTaM5fRi+5Aj///bArRUIOcBhEHePmuAWRW5vrIsQVz2lDj+v5WmV5FBuIjDtA0KGZCCSy805VF4paY8Yrqlndgv+zZ7W58yaxtuYMTVwIdfrcwQUL74wDi412mAcbhwHgIYDmnr8qsAQxHDugWlAcd6CW3xt7XvTayP2u0uSKSI7KF5Z2zX/5afHM/eJmLGRuIKNImVI+unq7oyGIJbp47I0Hfld/0uVPmo4HFoLVkmLCikY1Xu9Y6duK76+d9KoB14k0+K2cZrpbnDXnu6c8W0f5Rd2jzCf4aeHK0UMdwFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2UN0fCJIFhVfyiHOI4s8SSKQN//DBz8Aj4gK2XnIHDk=;
 b=kgGiGQS+mGuAhBUS386DwD8YLpgffIkCQFUfCOYhSeXIf5CD4LoQ01t8RBTi+wWsb7A1YUJFaf4E/pFRkXzAISyUpnhCWUzJUKV5IBI72w8g7rK1vwWidReC3yWZeX4vnnsu3bmndWkDnpyBOQAkS4nhHP5SF0STFBQVnhnxFCPiBitAYcyT2q+pD0zBlX4u/a6hv4aaCtShQRi35gvTivSZuGnGGSWC33lLfSxOSoeZ3PbPTOwAHtHSMPvGNVaecRvJXALD8vi4j+0uid/DsbG4OFLWAwfuVIQeGQRAhQvaIj3XAtLNLcmY7znNYwqIfLRFMAGg/6H9q4mEvka9ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2UN0fCJIFhVfyiHOI4s8SSKQN//DBz8Aj4gK2XnIHDk=;
 b=HgjM+gD2VXoc2Sc9mjxu9NX8tT+97akaVU6yaqSwJzyoXOC8QDOpTOqe62TI47yi6CCd072gxdfa76hetmD9gaecSxXEIsHIx3hjdhBlFdmtTtzupqezd0s278eJBKP9fvBef7D8g8ugWM3hvUxpUwHPAMnBTW7PDzda4aFtnII=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB2682.namprd11.prod.outlook.com (20.176.97.143) by
 DM6PR11MB4610.namprd11.prod.outlook.com (20.180.254.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.18; Tue, 23 Mar 2021 09:38:44 +0000
Received: from DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::d8e:556b:f64c:6d6a]) by DM6PR11MB2682.namprd11.prod.outlook.com
 ([fe80::d8e:556b:f64c:6d6a%5]) with mapi id 15.20.3955.027; Tue, 23 Mar 2021
 09:38:44 +0000
From: "Kevin Hao" <kexin.hao@windriver.com>
To: <poky@lists.yoctoproject.org>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH] meta-yocto-bsp: beaglebone: Set a fixed size for boot partition in WIC image
Date: Tue, 23 Mar 2021 17:35:29 +0800
Message-ID: <20210323093529.35493-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.30.2
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0063.apcprd04.prod.outlook.com
 (2603:1096:202:14::31) To DM6PR11MB2682.namprd11.prod.outlook.com
 (2603:10b6:5:c3::15)
Return-Path: kexin.hao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp6.wrs.com (60.247.85.82) by HK2PR04CA0063.apcprd04.prod.outlook.com (2603:1096:202:14::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend Transport; Tue, 23 Mar 2021 09:38:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18819330-69e2-4189-7ee3-08d8eddf739f
X-MS-TrafficTypeDiagnostic: DM6PR11MB4610:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB46105C22178FE529365D558FE2649@DM6PR11MB4610.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TxWGjbTKh5pqCA25ZX8LVh73ps/Ip8bx5EW9Y0ncHUiWmNPGDHb0VCpJRuTOEo1yp44xBg7Q+cZGev0eUL3c3znCj/xfhFWowOz0xecUZcteVnlcQvc3BhSUHaPGeiUyxJRb3IqHdvFc4u6Y+BR65RxajM15wSbV++sUtg4CznwgTZ/Klh/h5xgy5qDEs4Lh11fAEeleLsFiVZVFdj7zaWcDSD6KS7Z8U7Ac6UTCpnnLYjS7/yLqCpLpHd5X+3VQIwOcuqN7G+yemtopclxxS31twioPRkjpdGppYEFIWIIO3TblZLYG3mToqgBve1W3BTLgpz3TokS66VE6tn/8Wj9j5Bb4ck//ws9ggPhYs1mgsK5Zg2T4G4mRXcM0hryErE4XD2q80Bta7PbJMM1IzcZp+xJ0s8/r9hRNNLCpfNa9B9jY5PIba8p976fgRFVBjyfJ9ju/aZpzNtPKoLRvYTti9HChpzgWyJSvyqAQ5qtvpwPCblfH0oaMZ9RZ165Y3VUkTiRg1utO7TeHQhOMoPLs52H+A5F+OBa7UcGHcWhZ29rVVRzxmzxGyKyfel8G7Ln1YiUzz5H1NhfWiK5ySwioaMBtoLxWT5r0slKmsIrh/zEJJC1wXvMel0taJ5bLgVH97ONQi/XcAHaezZuDQNeHwafqxpBaht/rbxFD5a/Y0sM88NFXTfV6K23zsc2O
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2682.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(346002)(39850400004)(376002)(366004)(8676002)(16526019)(36756003)(956004)(6916009)(66476007)(66556008)(26005)(186003)(86362001)(66946007)(8936002)(2616005)(83380400001)(6666004)(316002)(6486002)(5660300002)(6506007)(2906002)(4326008)(478600001)(52116002)(1076003)(6512007)(38100700001)(3714002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	+U/G2vfrI5k5Wzkt4TmK0zCuUbaFURz6jYSwEbjSYPbgtMZ9Qduzpxk8FXYzmInlvfUx4UG2PmH5N5j+gRktTLm6HtUiO0giViB7XFfSHy7qHuHs8KjMRaOlxRnl9Wsfcd/3eYcHLz4NEPvGPoWXB2Cs7Gt/VyjOxxAg/QpNVD+sUtGPnqbFjsSbAAEeotV4AUnHkAlVbIck6Q6IddqWW4wVWNxK9ATwcatitIvTPKyyc7bBKPntUW9ZIeC6eXeUsr4PQHY8+WwuRhiFuiajFytytWccY6JKxdcWsTbu51sbqtjICOrKPjfk9Nq4NIDr2FPl37oGPJ3UVoL4wC3t61mPJNnkRt9L+YejVdAyhZgz93nMLtr5a271k/OPpPss4Lg1V8tyUJL9OHdCzV9moHSFUVwK4yl6zm6LC+lE/pw2VNf5kBgfam3N094O8iVh3YFYpCvKi9PSxPST+v4iC2RrLsUewT9euNfKbSuM16f3fi4ZBacgzD2ypt0A55yN+VhZwnDBNkhMnY8cJq11V0mFE8SKEHpeSFcMuUVwNWmTcZyIp9OR/M5U3iIchzSx2cxFXCU9JszJZmaEipu8/OUkGFIyWfQJcjD5NverV+SAj8+zE9ecUm+YfUJOMcdUhOuR8yM9W8HfAY6Qrx2UVClSQuVOeJiy4TYclnrlo7Y966p2JXBSObnGMMUq8CQJU3xu6JV9uMaRgbyZeRxcUDfS9voql3rwn4okGB/i8NC/Vqp03pJddG29BrDYrVCn
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18819330-69e2-4189-7ee3-08d8eddf739f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 09:38:44.8086
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d1OfaoTNLuNQHvRE2amWj+VaZKMH5IFjPLx2A3SEGRrNIlA0wEtSTHP3YWR8ZVXJJp286p9UPvLaoCJ0TjVh0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4610
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

After the dosfstools has been updated to v4.2 by commit b522f24723e1
("dosfstools: update 4.1 -> 4.2"), the commit b29eb5be67e9 ("mkfs.fat:
Align total number of sectors to be multiple of sectors per track") in
v4.2 has caused a regression in beagebone black board. The reason is
that the real total sectors of the fat filesystem created by the mkdosfs
may not be the same size as what we requested due to align with the
sectors per track, this change seem no side effect to linux kernel,
but it breaks the beaglebone black boot ROM and make it can't load the
MLO. In order to fix this issue, we choose to set a fixed size for the
boot partition to make sure that the total sectors always are aligned
with the sectors per track.

[Yocto #14306]

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/wic/beaglebone-yocto.wks | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/wic/b=
eaglebone-yocto.wks
index 701ae0b3d4bd..7a28fb23dc89 100644
--- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
+++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
@@ -2,6 +2,6 @@
 # long-description: Creates a partitioned SD card image for Beaglebone.
 # Boot files are located in the first vfat partition.
=20
-part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --l=
abel boot --active --align 4 --size 16 --sourceparams=3D"loader=3Du-boot" -=
-use-uuid
+part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=3Dvfat --l=
abel boot --active --align 4 --fixed-size 32 --sourceparams=3D"loader=3Du-b=
oot" --use-uuid
 part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label root --ali=
gn 4 --use-uuid
 bootloader --append=3D"console=3DttyS0,115200"
--=20
2.30.2

