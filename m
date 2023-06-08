Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75399C7EE29
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 13:08:09 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.71])
 by mx.groups.io with SMTP id smtpd.web11.8367.1686229682920242837
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 06:08:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=XT8bbEWf;
 spf=pass (domain: navimatix.de, ip: 40.107.15.71, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L+dInu1BmppHZnl+xK6H0w1IKO4DQ0S/pQZItUM3A62cINktpuaxOCglZq8zWXpRKJvWMZgbB9TnNJj7ojpuENbFJD3Hfv44KDNxL32PpgR5IKxPKP3axlVp67MUFPszoGYusr0y5zuiT0PaUDGmpKeHuME3V+fhru0W/otjO97r8rTq+nPfIErmmP0ib0ZblrxnQbmwTk1N7Z7hE+XUt+5pB8uRdLzarS7/t7VPDpISoIL/2i6igXPlzBT2O9s+d3TRCRESyjJaADhAZ5bCTeIH1lyBLb/AU1EaN2NEpsSu+cQQOoSh0PATWXdF9a7B8E7iWxdUfsU0K7NuVYLoFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHNW1WqcHUM7Bgb+agy0e459XixQaetDvzuIzMx/kJE=;
 b=kx54M15apDTi55AJ7Tz6mCGymVTCzSs7m+7N8Fm7zx94wdaWIzelYAjSkp8fghgqHWUl4yJ0vgoRw64ci5jfgO2KXb2sCDtthAmZwQIsv3a1Q10QzMAcE2Z7UXgaqIfmfo253hES5/szMwRUkd/T40ITWveM60oTb+5ET4wvHUPivzajE6zcHMuPianaqrkAKkVUrBGp4HEBo/qD+jzIS2wAPQDVt/F+RM9MjrfMcTaeLAl7hrimyVwe4YPNGz7o4K6j7Vm2AuVwjsS6OaBYfVb5sOZo4aXzSNK9IMZ63FJWbQMzLXLyFvYm/7Cugd39PmY9ihzl12jYpkuO03sHug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LHNW1WqcHUM7Bgb+agy0e459XixQaetDvzuIzMx/kJE=;
 b=XT8bbEWfelARNNZ7CpHPhcrOytvdHzpo7O3HYPZ6Ocjcv7SmJCqIiz/4KSpTnFAiq+BfNnXJc7RoJt7eGCKtjpmrfwF+r0yemwCnmLdrnJuctI6gHEpZoP/wBGMl3CpeiFrdiTM+ZwJXp9YK5HvcGHrWiUya/+1y8QZZWDhN+Y8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26) by AS4PR01MB9350.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:4ee::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.36; Thu, 8 Jun
 2023 13:07:58 +0000
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::1549:2f60:3152:7383]) by
 VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::1549:2f60:3152:7383%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 13:07:58 +0000
From: =?UTF-8?q?J=C3=B6rg=20Sommer?= <joerg.sommer@navimatix.de>
To: poky@lists.yoctoproject.org
CC: =?UTF-8?q?J=C3=B6rg=20Sommer?= <joerg.sommer@navimatix.de>
Subject: [PATCH] runqemu-ifupdown: Add support for ip tuntap
Date: Thu,  8 Jun 2023 15:07:18 +0200
Message-ID: <cc9a474aa35bc29c00dc7ed216f697a8ccbb0f6e.1686229638.git.joerg.sommer@navimatix.de>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0412.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:83::15) To VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR0102MB3136:EE_|AS4PR01MB9350:EE_
X-MS-Office365-Filtering-Correlation-Id: db2ae206-7bdd-4baa-6510-08db6821613b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BaO90Ns6mt6nOpT7ZKlDhUgBPhHO7YzlDd1i1pxLuAItbCoY4mEoyAbo9e2IYbwBj0/ckfCNK1OGvOIIuXUeSGGXpeiA9gXwm8vFqLfr84JSgWHjMjJ1WLuHrmPpDs9yP5kBkVBRCoT4bfNuie4ZQTAVfR8wCvV+4rTZEY+mkY5WUfn74ww9Mtp5SLjEW7Cj75l/FLpVHCh6kruzbPxwYVFEISVI3BGLTMdJsNs6WhWnRkpjeqcBR9//MFt+ogZ9fQVEvjhvfhAz3eTXd7kvrI+rtQexRddahngeVgTqv51hcLpkaK259apoeMorC6LdkoyRcmYC3VC1TG/gLeyjJ1ycz0+N75JtNtdHOvP/alsm8qGrRkHWYjwXGEl5qtPeplZ3UwvecEd+YGqzjpV1iwZUMw3nfmOoB0GceAwQwD70oT0D1Zh3o+E5ck1O5/CULtQMcMM1HIn0h16mH5BiTjL7o5d7ctDVNpSCQbARiTOgCMT224m1kXeAu9aRx5ZQkJrGrbug921KGiWH3WUuQEzNsKrKkHCYjYHJNUsjBS8goQzKORL8x+MaHIWkdxBLS/0eontDUR0HeO6dSjqdsNYGtVidziM9cuwFIt5mTQg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0102MB3136.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(366004)(396003)(39840400004)(136003)(346002)(451199021)(107886003)(186003)(26005)(6506007)(6512007)(2616005)(966005)(83380400001)(6486002)(6666004)(36756003)(52116002)(2906002)(8936002)(8676002)(508600001)(6916009)(38350700002)(41300700001)(316002)(5660300002)(38100700002)(4326008)(86362001)(66476007)(66556008)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/kge1zJm4FpN3vas+U/jpnmMqsMadZ5vqBUWJ6ULcFMVfDwZchuYVQob+2a9?=
 =?us-ascii?Q?/NNmrVLnZSbG1aDeWE+3MpJAVW935HK4Z62yVwwX5ObhMxiPqndkWJQHeUGR?=
 =?us-ascii?Q?rnnmGcHQJCTHo4y1LJx9WCslILLa08Hmt1Rqbi9gTWFZkP8HSL6Gk9BM+P3K?=
 =?us-ascii?Q?XX113ouc4Y08XvtWW6RVroMnm6OpRGh9y2n0qrlvcq83KVuPxOKUQ4q9QBtJ?=
 =?us-ascii?Q?xPhCQBqhp//QCENzcaZ5AbESRJ6HWiWOcJezu9JlZpvCJ8diwBHbYQZxZ951?=
 =?us-ascii?Q?gLZOyF7rCeHeymMFHSdMPL9xFq3DWRpbKtCtSKprxaz0YBgHMFd7WLDs0x+v?=
 =?us-ascii?Q?HUW3Wmyuhu7xCk8HUUU2d7nybtsss37Aeb7AInC3Kb1CUtiqr1JVhllbJRUY?=
 =?us-ascii?Q?9fb65KVWlZdzQqrKiYu+hxGRVJTKrrxqfbptljBFqQKKdAm5k6+cc7x9ptvc?=
 =?us-ascii?Q?43pdtwwuDTEM1MWFDsGfqh7miQydNa1HEsv0lnkIvUY/CiZQRJqWcaBjev9X?=
 =?us-ascii?Q?GH9nudmOlMeTnNLbvRAPAq9bRvy0Enob+YXHWncwWW8gjdonApBeE4L7hLOF?=
 =?us-ascii?Q?uIoFYylxd8fDkom4D5AsD7tUcP1j3H3oHSCV5D6PjHVLfoUDTZ3zKb8XfuIS?=
 =?us-ascii?Q?nJeMJ7Id+x8jlS1ic4BJyVE14ZIVK09bYMIBTYMxXl7CCULZO/O9ZleIIE7+?=
 =?us-ascii?Q?NUj+H+1vHr/uUeU2/qJO4tJFfWYwcAMvZ1yJjwC6R15fgHUZK98e0WdmUX0R?=
 =?us-ascii?Q?jwcpGC2x/bedvMqTUrL485sMVi4FLQYz+iPh6A4Mx48phn/qs0G31m/O4Hpc?=
 =?us-ascii?Q?cT0vzDeeqCbAUoBMDAl7kN+2Tec39oO8lkfQiUGYRhPsvnL3GbObKahW2Am7?=
 =?us-ascii?Q?USK+isx7OVBHna0QHNNHZUdg+O2oF/7suJqWy4nAm/8D33o6lVRQYId/Bg3n?=
 =?us-ascii?Q?bGaxuPwYbpk2U/OrO/7Pc6DwVQyARyJo2wsF+qUfX4cJGAr4N5j+T8LookDJ?=
 =?us-ascii?Q?veARHRI3hg76enUOhujZcnvdhrqmd1XBSeD5uI2coowcQMFccfBEQX5bov+C?=
 =?us-ascii?Q?2KHY04w55g9I6bTSXhjNLm7Cgy90piStDAKcaxNZrtE4z52hgcJ/NjDgCflD?=
 =?us-ascii?Q?+XeQdTxDn4W+Yk+/UwwgWGMyroA0unc5fpoxiqnnrsoSox2sfTB2niuoCAIz?=
 =?us-ascii?Q?ctzkxPPCdBTW6KB3Baa0Ul2mexUkDYHtseJuUWTdWN2XqB7NGGU49BW6Yp8+?=
 =?us-ascii?Q?1udXcdcqlOmRF9HpfwvjipbkxL3tHngVWrd8RndQk4iZXp/bmD7txdNBuwvg?=
 =?us-ascii?Q?QVGcHzc7LFn6sXrzZbYAr7qOAR8TM5Q0+MxrV+9abBc4OOC3CTNVPFbNs4Gu?=
 =?us-ascii?Q?yYxsvhVOsxbnSIglnbbAlnrzNsX5uFXAYKPGWaEzhTp2wgcu26lnZha+B0t1?=
 =?us-ascii?Q?olV2Iynr4snTGmiKbgnw4np7ylQ5QJTWhdShGQPpE5WP5R+rWofivzJPoUNt?=
 =?us-ascii?Q?hczKiyR8cP63NFBQZIfKbtby6IbMehtNUKrSIoqkUacW0CEOKB0jfN4uXsIC?=
 =?us-ascii?Q?rQ4ujj33DQ04bDbtv3kLpV9XI4mR0iCBaPjpP5CPXxB1pfgbJKtYUrh1iBgq?=
 =?us-ascii?Q?jw=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: db2ae206-7bdd-4baa-6510-08db6821613b
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 13:07:58.0227
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 27hb0Ju9L8z3NTkfAvt7eqBK24iLct5VoS0EtJgWi6l8qOZr3mnqBrm9Et9qFtOxKm+yExaADh1OBMgEe0KxZ7V6BqD8Qq/giIafqVCSjJc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR01MB9350
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 08 Jun 2023 13:08:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13076

The *ip* command supports the creation and destruction of TAP devices since
2009 and might be more likely installed on systems then *tunctl*. Therefore
it should be tried to setup or teardown the TAP interface with *ip* before
falling back to *tunctl*.

https://git.kernel.org/pub/scm/network/iproute2/iproute2.git/commit/?id=3D5=
80fbd88f75cc9eea0d28a48c025b090eb9419a7

Signed-off-by: J=C3=B6rg Sommer <joerg.sommer@navimatix.de>
---
 scripts/runqemu-ifdown | 14 ++++++++------
 scripts/runqemu-ifup   | 31 +++++++++++++++++++------------
 2 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/scripts/runqemu-ifdown b/scripts/runqemu-ifdown
index e0eb5344c6..f72166b32b 100755
--- a/scripts/runqemu-ifdown
+++ b/scripts/runqemu-ifdown
@@ -33,13 +33,15 @@ fi
 TAP=3D$1
 STAGING_BINDIR_NATIVE=3D$2
=20
-TUNCTL=3D$STAGING_BINDIR_NATIVE/tunctl
-if [ ! -e "$TUNCTL" ]; then
-	echo "Error: Unable to find tunctl binary in '$STAGING_BINDIR_NATIVE', pl=
ease bitbake qemu-helper-native"
-	exit 1
-fi
+if !ip tuntap del $TAP mode tap 2>/dev/null; then
+	TUNCTL=3D$STAGING_BINDIR_NATIVE/tunctl
+	if [ ! -e "$TUNCTL" ]; then
+		echo "Error: Unable to find tunctl binary in '$STAGING_BINDIR_NATIVE', p=
lease bitbake qemu-helper-native"
+		exit 1
+	fi
=20
-$TUNCTL -d $TAP
+	$TUNCTL -d $TAP
+fi
=20
 IFCONFIG=3D`which ip 2> /dev/null`
 if [ "x$IFCONFIG" =3D "x" ]; then
diff --git a/scripts/runqemu-ifup b/scripts/runqemu-ifup
index bb661740c5..5fdcddeeda 100755
--- a/scripts/runqemu-ifup
+++ b/scripts/runqemu-ifup
@@ -41,22 +41,29 @@ USERID=3D"-u $1"
 GROUP=3D"-g $2"
 STAGING_BINDIR_NATIVE=3D$3
=20
-TUNCTL=3D$STAGING_BINDIR_NATIVE/tunctl
-if [ ! -x "$TUNCTL" ]; then
-       echo "Error: Unable to find tunctl binary in '$STAGING_BINDIR_NATIV=
E', please bitbake qemu-helper-native"
-	exit 1
+if taps=3D$(ip tuntap list 2>/dev/null); then
+	tap_no=3D$(( $(echo "$taps" |sort -r |sed 's/^tap//; s/:.*//; q') + 1 ))
+	ip tuntap add tap$tap_no mode tap group $2 && TAP=3Dtap$tap_no
 fi
=20
-TAP=3D`$TUNCTL -b $GROUP 2>&1`
-STATUS=3D$?
-if [ $STATUS -ne 0 ]; then
-# If tunctl -g fails, try using tunctl -u, for older host kernels=20
-# which do not support the TUNSETGROUP ioctl
-	TAP=3D`$TUNCTL -b $USERID 2>&1`
+if [ -z $TAP ]; then
+	TUNCTL=3D$STAGING_BINDIR_NATIVE/tunctl
+	if [ ! -x "$TUNCTL" ]; then
+		echo "Error: Unable to find tunctl binary in '$STAGING_BINDIR_NATIVE', p=
lease bitbake qemu-helper-native"
+		exit 1
+	fi
+
+	TAP=3D`$TUNCTL -b $GROUP 2>&1`
 	STATUS=3D$?
 	if [ $STATUS -ne 0 ]; then
-		echo "tunctl failed:"
-		exit 1
+	# If tunctl -g fails, try using tunctl -u, for older host kernels
+	# which do not support the TUNSETGROUP ioctl
+		TAP=3D`$TUNCTL -b $USERID 2>&1`
+		STATUS=3D$?
+		if [ $STATUS -ne 0 ]; then
+			echo "tunctl failed:"
+			exit 1
+		fi
 	fi
 fi
=20
--=20
2.34.1


