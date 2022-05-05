Received: from IND01-BMX-obe.outbound.protection.outlook.com (IND01-BMX-obe.outbound.protection.outlook.com [40.107.239.80])
 by mx.groups.io with SMTP id smtpd.web11.9865.1651752186904853781
 for <poky@lists.yoctoproject.org>;
 Thu, 05 May 2022 05:03:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpit.com header.s=selector1 header.b=dRx2RRyd;
 spf=pass (domain: kpit.com, ip: 40.107.239.80, mailfrom: pawan.badganchi@kpit.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CVOYw7u6opGmrXoJMSWroqd51z96MqOL4O54v4Oi1KPZnuQ8Pq4I1m7lYevEYDSMRGtNGU4S5UIFSDgFjoYuNH0MfLAaG/INiCM5voGcP6Md+pCwatdA1b3cw1tKAxV5BOsuqj3FaUb+03wt1J6RM4Jy2bslaoX64IOW+2sJosMhALJeUggXoN4g+KAJe/9tHwmNwyjhhG2uNCXfY6ay31omuXnwBUq1Or2ubSSQo7Ur3fU86cp90S2sE+sN0/MtNp4XrO7noxoWcHORB7hvdIFaJeTeE7lKrVyJMokvNu7fYIujdbjdYm32OUJugOfCvPDTw7wvLcVKsCA+1vpBxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4fC1vs8QeG8j3qJnDvhb6zVElolQTCwjk1Px1BnApxo=;
 b=XY5qTAM2iN3FN6o5er+fXrtun9xp5APr5SZd2Fp0ooSgUOCMDabEMLEIiieOvZM+eVItql7LqRMDV2XaXJywstrw5RM7B6aWjW4TPCKFd3JPXS72E613jkuhmO3T33dGba3TCQgXH3Kkw8poJ97s22PSs+lyXrAJDpqikmVcG6zr4SuPJ/YBIl+nQJ4cGa8M9d95hGSl+rHiK4u/XgIcjh4JLv1/EopTij2+ngBPX12ZXsOlirra2TuBrKDTVbV3mNq+Otb7/QEuRPOgihkJB2H61SBEvq0//NTpEvBm6Y/ExdbFrvvxfFimcw1fBM/40uBcC12/u4gc5HfGvPSNvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kpit.com; dmarc=pass action=none header.from=kpit.com;
 dkim=pass header.d=kpit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4fC1vs8QeG8j3qJnDvhb6zVElolQTCwjk1Px1BnApxo=;
 b=dRx2RRydb+F1G17yKTiDZaegnGfClxWa8G4GytPBDDJBntxPUWndRzzLR7AaFR0T6GEAy3e9D813XAJHQ19321msW1wt2jvzuJN5RSnIYekXmDM27vNM9Xrcq7l8QkYAgv7B9YeRyl4pGL3aGnnOq1fKX2GsQu9kjaRchNnnxEA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kpit.com;
Received: from MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:28::11) by MAZPR01MB6353.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:4d::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.14; Thu, 5 May
 2022 12:02:59 +0000
Received: from MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6c6a:548b:35fa:55e4]) by MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::6c6a:548b:35fa:55e4%4]) with mapi id 15.20.5206.013; Thu, 5 May 2022
 12:02:59 +0000
From: "Pawan" <pawan.badganchi@kpit.com>
To: poky@lists.yoctoproject.org,
	pawan.badganchi@gmail.com
Cc: akash.hadke@kpit.com,
	Pawan Badganchi <pawan.badganchi@kpit.com>
Subject: [poky][dunfell][PATCH] fribidi: Add fix for CVE-2022-25308, CVE-2022-25309 and CVE-2022-25310
Date: Thu,  5 May 2022 17:32:18 +0530
Message-Id: <20220505120218.25096-1-pawan.badganchi@kpit.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: PN3PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::17) To MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:28::11)
Return-Path: Pawan.Badganchi@kpit.com
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1803b2a6-b603-4d8a-63fb-08da2e8f3298
X-MS-TrafficTypeDiagnostic: MAZPR01MB6353:EE_
X-Microsoft-Antispam-PRVS: 
	<MAZPR01MB6353E58172B49909827AFD5A99C29@MAZPR01MB6353.INDPRD01.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eAib/9w950Q0Jvwo/idGpJ9J1vzVrwakhRYiSW+psmK1JNPGiz943GpCjsfYthcQbRH6/UnNKaRikrrHy0KcUjvFKd5EPKOuIv/lScGTIb+l73a7BsQjVm41HhskDMeKfhAqrwQIzUSfFkldvqc6BzYHplRyBvaf7LtoSPzwOvtTmt2r50HnhSV5jHIiwR9I4gihhhR+eHwzRwogXY2U6bXDHUbsy7imT2JOL7YNHHLDmVT34paHmHxis9p3qjvhuexJMW0C6XxHIdSYPe2fM2Rug6QbNl+4ZYqTTDmG5m0FDSI6OR27M14BOy+shK0T+KP1Hcta+NTfka5Fr3TDEsTuRV9G7lwzcZmDkhejfy4I/LIDrP9NJwh8ZFvOQrYFNgM3vgHC2EL7ob2Yvc9Aa4dRUSzzhwTo80yi/IydvU2p23b2StHS8At2t9jxXqJmxbCQEG98flLDFJAk56zj+Tmd1Wei9bH2DZFiZtF5twHqmNyCtb/4XuSDvFaaS60yUIGdom9bfzZtHEs+wvAFD06tUPQIPOudaiU5LgDXx1n+Twzlh44q6wq/Qs0ZmvL4WsUbCnQ2dEi9smZvhSDHxAANSbwJ96BJf0ZKRAK7wBOcDGDF0TBeGyCnXa76MN8JnjvqV1aAfYJIma4G0pQYVO1++7fVEPYTqWwFpRODmIfE/fEc1pF2FbvcOjLUXNtd0Ws4iInfbTHtDVgpDi6gJ+cfdnp54AtecxabDk4V+bUga4gPloQXM1S8odio/aH3YrFWTKyTmNQiVJcs6i9jnA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(83380400001)(38100700002)(4326008)(2616005)(5660300002)(508600001)(66556008)(966005)(66476007)(8676002)(66946007)(6486002)(6512007)(8936002)(36756003)(186003)(6666004)(6506007)(2906002)(316002)(66574015)(52116002)(107886003)(1076003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?w0RbBnSGoY6a+AO2dYT7FCJr93elV//nmTmDGT7/087I8daVxPJ5t5gf8oXh?=
 =?us-ascii?Q?4UK4qrjMfs9JWGFOBfOM/Q8ATMI4ZnPJd6dqkmjntDw9v4kpbxkQmPnvdZxp?=
 =?us-ascii?Q?qUTn/iw/yQChNb5ibxFRXmQiVB22PX3bPwhU+zAOd8jJ3iTw1mRl6wkbqo06?=
 =?us-ascii?Q?Bnmw6ulk9kVtWokdeEwrRwtG7IdW/24IP2MsrGaDgyOV0Xb0geE5lBXJA/0/?=
 =?us-ascii?Q?jjL8CfxsQI1zvI9QBYwOkGq9yt5wY65pLBJp96FFX9ed8VKfrCdTzD40OWWI?=
 =?us-ascii?Q?KwpxL76nHFitYRpK89eUa9befPIUIWlAtMDBHIj12j4NLLrlOeUdz0HRFJgA?=
 =?us-ascii?Q?OUA9Rn3XQwzd4qfQ1j/4+3GNY/LMRvzci0ixCvOQM7l2CPlHDImjKgA5MCey?=
 =?us-ascii?Q?y1LqLi1vHdmW7NVcvS82PNUJ0YOsOtylBCrthuY84at7qo0DDJP8e/FUa4UP?=
 =?us-ascii?Q?QFp9+dy+dF2f55sjDYcs/2nOv4UYFsjn6l59KhBAKreOELUTS2Osv/f8m6in?=
 =?us-ascii?Q?TCQzXPoz4XTV/WtxOucSEK3+l2GucDEt9sH/XVTO6/kHASF25M0bxGC/7PlT?=
 =?us-ascii?Q?jZ7brFfaSR9hrNX6FObO9fwYaKGpKc1pFU19f8Zb5W72StNATkq5MZ0JP2nt?=
 =?us-ascii?Q?QDEvqHxKMFec0sw6Bv+AyNspRYY+8hlF425cz0KE7FTUV03nfXmxhOHynTa5?=
 =?us-ascii?Q?FyhRtCuBVNxb8wwcYaFZLuI27d6jFzOPIrhH04muCqsAiduySat0Wze93MH6?=
 =?us-ascii?Q?oz9Foye3kZmpxE4uY6p+NF6TJoDgprIQ+2w+bsIdwoOPK2a1v0WvWrYnj1L5?=
 =?us-ascii?Q?swHODya6Xs9jbafR1CLnFln0NLUwQ/imS49QRXVDQdPh1nHiCYOKZsGwM65D?=
 =?us-ascii?Q?cNn17TmUvCnV9bL5iD05/qd99U0tuE/gPwk625+aYACrh8/aaaCfkh3p3RnT?=
 =?us-ascii?Q?RKuEdzVV97W9VwONUHIR+brMFSyQFehsqyrQI6QKj2AthgCDe2IROFHs2RPx?=
 =?us-ascii?Q?aR8ee4hrZX+gYYEUAubb6EC///YOrWQOjbAbpWO+2L6B08DEVDJcSu7WMshD?=
 =?us-ascii?Q?fB3vH7wb+FZUhE7jENZKbeqzxQRy13aCFkidlRtm3x6vlAD6Xr4oHYBci79Y?=
 =?us-ascii?Q?Blj0Q7D18Q5Q2fQ4n4Mm68DUKdwASKGeGHIzf7VAOO8i2vbH5l+lA4ylTgI4?=
 =?us-ascii?Q?sSrp2NDLLfTkjsn++G1313KyZDcRNNN3HAKtltBpiyachXQHGLUcnGa7PKAW?=
 =?us-ascii?Q?lwLqH0/iVGgncNVJ2dbYL0SW48QPY8ZDRjTKPh3h9D/BZe5bNQCKkECsa/rP?=
 =?us-ascii?Q?kISMpIFODFjW8rFxftDoS/nE+Xqo71VtfW0dSeZwmc8DpSkLUkM0jbO4oS5H?=
 =?us-ascii?Q?DnZEa1muyvpWkeTkeMR2GsYPkE8QI9Kbs7XOlNJrLqE1/UPBlEzC0AKOVbaU?=
 =?us-ascii?Q?VGYV3S0lzPNpMkaWFv0/K+W072BXLzRgIS6k5Txu1qnsvEzm7YEphawqtnwC?=
 =?us-ascii?Q?dHHQWfeK8TvWnQEQO3SHI4V0C3wUCQdy2kpvIYbmipVK020iR9J4B423FhzY?=
 =?us-ascii?Q?mK2IidCjYmYpN5dKxeHj8lxZIPXFYC8dvv2Z+yiC7ZHNKAipkJTFzIc9c0+l?=
 =?us-ascii?Q?AypYEkUyXw6AXCygoUXcEiIsR+vEChieMrbUfulCG3rs42Y9vxm+qzLyYi9H?=
 =?us-ascii?Q?5a75PGZWQ8ybCTZZ14OGtqMX0MibcQEjsd2hdrb2ruR2H6HrhsY0A0kUDyxa?=
 =?us-ascii?Q?h20lPpoiTHu+Va4sD7zSN/gk89uwETPouz2W/3quqTYnIQMU2A4KOpfWbXSS?=
X-MS-Exchange-AntiSpam-MessageData-1: hj+adlGmVK7D+A==
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1803b2a6-b603-4d8a-63fb-08da2e8f3298
X-MS-Exchange-CrossTenant-AuthSource: MA1PR0101MB1462.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2022 12:02:59.3988
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I6DObQAV9JFVFNAScL1bhzfVY0jBGjY85+b4syp+KXJAlLCDYzKgA+h9+3ee5aKo3S3xCD8ChoqlftHzNgIQKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAZPR01MB6353
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

From: Pawan Badganchi <pawan.badganchi@kpit.com>

Add below patches to fix CVE-2022-25308, CVE-2022-25309 and CVE-2022-25310

CVE-2022-25308.patch
Link: https://github.com/fribidi/fribidi/commit/ad3a19e6372b1e667128ed1ea2f=
49919884587e1

CVE-2022-25309.patch
Link: https://github.com/fribidi/fribidi/commit/f22593b82b5d1668d1997dbccd1=
0a9c31ffea3b3

CVE-2022-25310.patch
Link:https://github.com/fribidi/fribidi/commit/175850b03e1af251d705c1d04b2b=
9b3c1c06e48f

Signed-off-by: pawan badganchi <pawan.badganchi@kpit.com>
---
 .../fribidi/fribidi/CVE-2022-25308.patch      | 50 +++++++++++++++++++
 .../fribidi/fribidi/CVE-2022-25309.patch      | 31 ++++++++++++
 .../fribidi/fribidi/CVE-2022-25310.patch      | 30 +++++++++++
 meta/recipes-support/fribidi/fribidi_1.0.9.bb |  3 ++
 4 files changed, 114 insertions(+)
 create mode 100644 meta/recipes-support/fribidi/fribidi/CVE-2022-25308.pat=
ch
 create mode 100644 meta/recipes-support/fribidi/fribidi/CVE-2022-25309.pat=
ch
 create mode 100644 meta/recipes-support/fribidi/fribidi/CVE-2022-25310.pat=
ch

diff --git a/meta/recipes-support/fribidi/fribidi/CVE-2022-25308.patch b/me=
ta/recipes-support/fribidi/fribidi/CVE-2022-25308.patch
new file mode 100644
index 0000000000..8f2c2ade0e
--- /dev/null
+++ b/meta/recipes-support/fribidi/fribidi/CVE-2022-25308.patch
@@ -0,0 +1,50 @@
+From ad3a19e6372b1e667128ed1ea2f49919884587e1 Mon Sep 17 00:00:00 2001
+From: Akira TAGOH <akira@tagoh.org>
+Date: Thu, 17 Feb 2022 17:30:12 +0900
+Subject: [PATCH] Fix the stack buffer overflow issue
+
+strlen() could returns 0. Without a conditional check for len,
+accessing S_ pointer with len - 1 may causes a stack buffer overflow.
+
+AddressSanitizer reports this like:
+=3D=3D1219243=3D=3DERROR: AddressSanitizer: stack-buffer-overflow on addre=
ss 0x7ffdce043c1f at pc 0x000000403547 bp 0x7ffdce0
+43b30 sp 0x7ffdce043b28
+READ of size 1 at 0x7ffdce043c1f thread T0
+    #0 0x403546 in main ../bin/fribidi-main.c:393
+    #1 0x7f226804e58f in __libc_start_call_main (/lib64/libc.so.6+0x2d58f)
+    #2 0x7f226804e648 in __libc_start_main_impl (/lib64/libc.so.6+0x2d648)
+    #3 0x4036f4 in _start (/tmp/fribidi/build/bin/fribidi+0x4036f4)
+
+Address 0x7ffdce043c1f is located in stack of thread T0 at offset 63 in fr=
ame
+    #0 0x4022bf in main ../bin/fribidi-main.c:193
+
+  This frame has 5 object(s):
+    [32, 36) 'option_index' (line 233)
+    [48, 52) 'base' (line 386)
+    [64, 65064) 'S_' (line 375) <=3D=3D Memory access at offset 63 underfl=
ows this variable
+    [65328, 130328) 'outstring' (line 385)
+    [130592, 390592) 'logical' (line 384)
+
+This fixes https://github.com/fribidi/fribidi/issues/181
+
+CVE: CVE-2022-25308
+Upstream-Status: Backport [https://github.com/fribidi/fribidi/commit/ad3a1=
9e6372b1e667128ed1ea2f49919884587e1]
+Signed-off-by: Pawan Badganchi <Pawan.Badganchi@kpit.com>
+
+---
+ bin/fribidi-main.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/bin/fribidi-main.c b/bin/fribidi-main.c
+index 3cf9fe1..3ae4fb6 100644
+--- a/bin/fribidi-main.c
++++ b/bin/fribidi-main.c
+@@ -390,7 +390,7 @@ FRIBIDI_END_IGNORE_DEPRECATIONS
+           S_[sizeof (S_) - 1] =3D 0;
+           len =3D strlen (S_);
+           /* chop */
+-          if (S_[len - 1] =3D=3D '\n')
++          if (len > 0 && S_[len - 1] =3D=3D '\n')
+             {
+               len--;
+               S_[len] =3D '\0';
diff --git a/meta/recipes-support/fribidi/fribidi/CVE-2022-25309.patch b/me=
ta/recipes-support/fribidi/fribidi/CVE-2022-25309.patch
new file mode 100644
index 0000000000..0efba3d05c
--- /dev/null
+++ b/meta/recipes-support/fribidi/fribidi/CVE-2022-25309.patch
@@ -0,0 +1,31 @@
+From f22593b82b5d1668d1997dbccd10a9c31ffea3b3 Mon Sep 17 00:00:00 2001
+From: Dov Grobgeld <dov.grobgeld@gmail.com>
+Date: Fri, 25 Mar 2022 09:09:49 +0300
+Subject: [PATCH] Protected against garbage in the CapRTL encoder
+
+CVE: CVE-2022-25309
+Upstream-Status: Backport [https://github.com/fribidi/fribidi/commit/f2259=
3b82b5d1668d1997dbccd10a9c31ffea3b3]
+Signed-off-by: Pawan Badganchi <Pawan.Badganchi@kpit.com>
+
+---
+ lib/fribidi-char-sets-cap-rtl.c | 7 ++++++-
+ 1 file changed, 6 insertions(+), 1 deletion(-)
+
+diff --git a/lib/fribidi-char-sets-cap-rtl.c b/lib/fribidi-char-sets-cap-r=
tl.c
+index b0c0e4a..f74e010 100644
+--- a/lib/fribidi-char-sets-cap-rtl.c
++++ b/lib/fribidi-char-sets-cap-rtl.c
+@@ -232,7 +232,12 @@ fribidi_cap_rtl_to_unicode (
+           }
+       }
+       else
+-      us[j++] =3D caprtl_to_unicode[(int) s[i]];
++      {
++        if ((int)s[i] < 0)
++          us[j++] =3D '?';
++        else
++          us[j++] =3D caprtl_to_unicode[(int) s[i]];
++      }
+     }
+
+   return j;
diff --git a/meta/recipes-support/fribidi/fribidi/CVE-2022-25310.patch b/me=
ta/recipes-support/fribidi/fribidi/CVE-2022-25310.patch
new file mode 100644
index 0000000000..d79a82d648
--- /dev/null
+++ b/meta/recipes-support/fribidi/fribidi/CVE-2022-25310.patch
@@ -0,0 +1,30 @@
+From 175850b03e1af251d705c1d04b2b9b3c1c06e48f Mon Sep 17 00:00:00 2001
+From: Akira TAGOH <akira@tagoh.org>
+Date: Thu, 17 Feb 2022 19:06:10 +0900
+Subject: [PATCH] Fix SEGV issue in fribidi_remove_bidi_marks
+
+Escape from fribidi_remove_bidi_marks() immediately if str is null.
+
+This fixes https://github.com/fribidi/fribidi/issues/183
+
+CVE: CVE-2022-25310
+Upstream-Status: Backport [https://github.com/fribidi/fribidi/commit/17585=
0b03e1af251d705c1d04b2b9b3c1c06e48f]
+Signed-off-by: Pawan Badganchi <Pawan.Badganchi@kpit.com>
+
+---
+ lib/fribidi.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/lib/fribidi.c b/lib/fribidi.c
+index f5da0da..70bdab2 100644
+--- a/lib/fribidi.c
++++ b/lib/fribidi.c
+@@ -74,7 +74,7 @@ fribidi_remove_bidi_marks (
+   fribidi_boolean status =3D false;
+
+   if UNLIKELY
+-    (len =3D=3D 0)
++    (len =3D=3D 0 || str =3D=3D NULL)
+     {
+       status =3D true;
+       goto out;
diff --git a/meta/recipes-support/fribidi/fribidi_1.0.9.bb b/meta/recipes-s=
upport/fribidi/fribidi_1.0.9.bb
index ac9ef88e27..62b7d72812 100644
--- a/meta/recipes-support/fribidi/fribidi_1.0.9.bb
+++ b/meta/recipes-support/fribidi/fribidi_1.0.9.bb
@@ -10,6 +10,9 @@ LICENSE =3D "LGPLv2.1+"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da916467b91076e631dd8edb7424769c=
7"

 SRC_URI =3D "https://github.com/${BPN}/${BPN}/releases/download/v${PV}/${B=
P}.tar.xz \
+           file://CVE-2022-25308.patch \
+           file://CVE-2022-25309.patch \
+           file://CVE-2022-25310.patch \
            "
 SRC_URI[md5sum] =3D "1b767c259c3cd8e0c8496970f63c22dc"
 SRC_URI[sha256sum] =3D "c5e47ea9026fb60da1944da9888b4e0a18854a0e2410bbfe7a=
d90a054d36e0c7"
--
2.17.1

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.
