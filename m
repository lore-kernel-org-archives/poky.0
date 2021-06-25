Received: from EUR06-DB8-obe.outbound.protection.outlook.com (EUR06-DB8-obe.outbound.protection.outlook.com [40.92.51.54])
 by mx.groups.io with SMTP id smtpd.web11.4190.1624603996857925604
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 23:53:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=Y5SKKi4i;
 spf=pass (domain: outlook.com, ip: 40.92.51.54, mailfrom: asfakr@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KuAMbDhYSYQeqkNFlUM+DsE2zHGgnbJT1Jmsf61bQTjE6j4ypryTav6ow8i/6c/CPya9A7cIPvWvPAoL3XK0kGDBqEMGkw3whfp/ZPSabchu4j1edPvrilL4BAiobQOtlsUlSkmV8aarhnZCWiQzb4JPhI/xX4kB9kCwXruZvJZGdZALEtQ21424kT8H51M5rGigbWCpr5ltBJ3Vpl00Nw/6lEAYViThJKpsGtNiaafMK7GLuTTVUP5MWiaOwMgoL52QUNPL79YcnY1+K2UU8m3Hp6dUiULbVqtkP9feqjJMsNlt9eRBNj2prGWergQHDrvTaZz2CGI0yy+frNcaQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s7xcZ2FIuhf1lW3RCrXZeEBFl+UTaG+5Cy07QA9oJVA=;
 b=m10rilUkUEikH4/7J2Bf902HDSdCxUcy0M8O4fhvKO7WNClQXKSZIBer1GF2et+z6QeiuGarKiZKhgu5SkKLIRnXV/Sl+KWtIjGISClJX+GU5JMTcJoyntoT6cJyZ0yWScPzNHu3tc91sHsUSF8BMtsqCe4VtANVx046ASc4bGZteCMUsOUVC7t8M6nDv2CLqoc2Rgl4rE1YeyXpv7Ou7GcBN7EKvN8475O5QStPQFg2KpslRepRrv2f1vQX2vAjQyupKPfl97kK9t6KiZri2ssciiTvdkk3jwW8xtg/zzYf+Y28G7PT5/jGNxLaws7QvomofCDN9xW7iWhF0+YqKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s7xcZ2FIuhf1lW3RCrXZeEBFl+UTaG+5Cy07QA9oJVA=;
 b=Y5SKKi4iRnuBvBVWCq97DmYmxJdDCO/XdHkgOhs5EKHiqDC7+BS+hilCdEjWPrtKv1ehI2RF4e7ZtY2Y8QfvFFFmMV7m3JrCfh+Bc6Smeo0397eafb2ieV8D07RyBD1AUhVsgcHvPltXdpwZqxWb7KYOqgjX22dtSwdtHJ+jeKbLl4ytAuNxU5Qje19xNXJYI4n52dy6g9ihanCfJqCD2UhK9yf2Gz/9exU1oJbObrP6caaR6+YxgMYJwjfDTuweXgXY4vpheXXzts7LkRSM04nY6qyqjtYm/KO6m9F1ejBpLNySI4uWeUegrKa/fWhbnQSGBQWgY7jMmayTNJLKfA==
Received: from AM7EUR06FT008.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc36::51) by
 AM7EUR06HT005.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc36::390)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Fri, 25 Jun
 2021 06:53:14 +0000
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com
 (2a01:111:e400:fc36::49) by AM7EUR06FT008.mail.protection.outlook.com
 (2a01:111:e400:fc36::498) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend
 Transport; Fri, 25 Jun 2021 06:53:14 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:E9D7B9C4920460A76208C4B32BFBABCBDF9FF5357F744898551E3EA57CC499F6;UpperCasedChecksum:DF0830C565F65FCF2D4D2706338FFC5E51BB6FD4FDAC3DBD809492E85C8E79D9;SizeAsReceived:7218;Count:44
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::a8a7:b6e2:88a5:c551]) by DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::a8a7:b6e2:88a5:c551%3]) with mapi id 15.20.4264.023; Fri, 25 Jun 2021
 06:53:14 +0000
From: "Asfak Rahman" <asfakr@outlook.com>
To: poky@lists.yoctoproject.org
Cc: Asfak Rahman <asfakr@outlook.com>
Subject: [PATCH] openssh: Remove temporary keys before generating new ones
Date: Fri, 25 Jun 2021 09:52:57 +0300
Message-ID: 
 <DB7PR08MB35957959D8F1BF30774D6CF9D0069@DB7PR08MB3595.eurprd08.prod.outlook.com>
X-Mailer: git-send-email 2.17.1
X-TMN: [azRQqOD9rmVzqbk9nYS817aoIcytCWu1]
X-ClientProxiedBy: HE1PR09CA0050.eurprd09.prod.outlook.com
 (2603:10a6:7:3c::18) To DB7PR08MB3595.eurprd08.prod.outlook.com
 (2603:10a6:10:40::14)
Return-Path: asfakr@outlook.com
X-Microsoft-Original-Message-ID: <20210625065257.14717-1-asfakr@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (62.65.226.182) by HE1PR09CA0050.eurprd09.prod.outlook.com (2603:10a6:7:3c::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 06:53:12 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 44
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 9fb5f11f-177e-4bff-4fef-08d937a5e6ce
X-MS-Exchange-SLBlob-MailProps: 
	mBRmoEB1kyKh4G3VY8aIiXKspBtAOBf+1VHyrp/x4sdmZmTL5ykqdd87wGjXZ6Bjsk4v/KGhxS3uzEAiisF7zLFInlHuwK7KORxf92yurU4euaaaaMQxMuZsZtwZ2vbKV8TrB9MabZ+b51VtjV6PsEr3d6Hmk/uNbsTYE3ZkO1SvumwvPhxhXq/YUfzXB/QSQNWQzJW28Y3QYWwWewOQSoEGfFy1YHyhgMXChnn/DLSCUQ79uIQPkCJ2OweyMgjBrHsp10MW6QM5SJoN+fqYgkvCWHovm/Og45ISuBUBd+oKtjR0nJJfFEQzDozmZOf49HDlZwDUhfNJApkd20985lEt2Zyio/NepF1d77PVKVmECqP2vEXLCtkArpMCMcCBV5zwddyt8Ss4aquZj9qiQr7+BjyLdAyzwRfCh9TH7YS7Nj4WGQcZWR9k/ALDEEWpLtg1fGJPH1bnjtumch7OStzAhMTghI8SO+iQhxldKX++8YFAA9nKSh2HkJtD8lC7HEWfR9eLb/vwBD/2SWAcc3ljw//G/rvXBaZ9CcjxXWmEDN7pp9PXIkZzLM8hmR0o0oeuRZfGyM4VQEY4VE7soYZBNG4Kqr6RUSNvdl3cy05pViGZAJAs590Wxpy8PQvvugRlCTxRweOBHnBXH0q6ibfzPF0+mhB4Kdm3BFJxgxfl4bUQmEGgjDpidjolMpGrGgKNiayRmoaBIZT91ZTc+M4wNGNb+hS+98rOLoBh7HR1Gn9oZ0Ju9dbIip3qmyLQwQ8t/YpDVzM=
X-MS-TrafficTypeDiagnostic: AM7EUR06HT005:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jfz1B+XVeacG4Dp+KdJ1bfEYjtT/n49DYP2SqZkgNQVhwk5CWN1HSS69qhsuRv7a7LOyjYkMnyAnyAnCE6Db/pzTywK3t5iEwzeajwydeHGYc2j2zxXXw9QUHGYTuXzTTi3/v9RtZPemLQKdDIoto5I20/2Md1tmX/aOWg5G+p09m5vLwzHXOTppAsp7utUQ4qtjt5P5FF7j/06UzI+DbrJphNR82tsZnJX8FIWwVArG2o+PDS2+WUr6zUxFusWWypUeW/cCbZib+DQh7kK6E8Qd99oD3qk9931SV6XJZ9Xokxp5GMT3h2mSGoDiP2dbizafJ7suN6xQGtt+BJ6Jahms7+xQMC+PBm1iteOmcCUq/suzOsZBtkWaZ6p8ShCBiHtqH8GRWnASM1bxmLj5vw==
X-MS-Exchange-AntiSpam-MessageData: 
	IZgA9KQZvBWm5z5AwsXKANtdJbLeOqlMVOO8MlITnN5clNny235eINOKmhvQnlBGdCKKzxLyXyK/pr5W9z3jYqH2VsRjYewzXrZ9vXjPux9OJpa4mj2W842/v6y6f3YRT/t2WRb1ATBXPRv18jMpmw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fb5f11f-177e-4bff-4fef-08d937a5e6ce
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 06:53:14.7008
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR06FT008.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7EUR06HT005
Content-Type: text/plain

Key generation may wait for user input, due to the existence of
temporary keys resulting from power interruption in the first boot.
This prevents users from login via ssh.

Signed-off-by: Asfak Rahman <asfakr@outlook.com>
---
 meta/recipes-connectivity/openssh/openssh/sshd_check_keys | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
index 1931dc7153..ef117de897 100644
--- a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
+++ b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
@@ -6,6 +6,7 @@ generate_key() {
     local DIR="$(dirname "$FILE")"
 
     mkdir -p "$DIR"
+    rm -f ${FILE}.tmp
     ssh-keygen -q -f "${FILE}.tmp" -N '' -t $TYPE
 
     # Atomically rename file public key
-- 
2.17.1

