Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A24AC4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 16:49:48 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.71])
 by mx.groups.io with SMTP id smtpd.web11.2556.1707324586835924228
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 08:49:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=bDkNYCJN;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=bDkNYCJN;
 spf=pass (domain: arm.com, ip: 40.107.7.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=W1t6EHBOz4og6UV2ZQ8zvU704NoBU9LJ7+ERF9Eij2/SFV/SETNTq7gwrI76cBAxjeosyCMrLQoKacYOKvdIZIfdI+bQTlLXys+Xie44A8i0uMNzjENO6cYan+sAKi/+pXjKdH0Y3rWCNkzDmOY6T/otVe8LiPaggwtGB9f4Wo1b/2LgozNJJIFlcoNMY/OSuVeLDYpvvj6Fcv/Noqgr0nV8xT34WdjgIwO7RXDHy5RYu+VbLBgwCAqFG/rJ3kV1b2BfjMxRPEPmvT+KGTJUAErDcWrt/VN1JAAJc8M+FW06k7KLQ1AvxvldbOObipQEAHQpV99bRBYyUr7T4n+N0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5TC1UsxjhpFXJY4e1nvIF7krhTXjWstXX8q9W+RquQ=;
 b=TcmlpQ2MMAePQLqg8OngpcI1gGMuoXZuAajL7px3xod/GT7/S+eSN0BSsmLyRJ9xgLvRkPHkEKjPW/Ud7zG9ItJsfO4nK9HQcQiq3a+GGeDnewSfYXlQXtm0vR64C23Lg7foap/E2X0DCVvhkW5VQYi65nDrZ0l6HTuVvYDKnrhnOoG0C/k8WkEHoeNH8bTlWqio1zDgWV6xCu5FzxYYfa2/XmdJXpcO+NkCLPYbk6q8wriW11mmtqfvvkgXBy2lqOo40Ms5HENEXJ3guXcIKmRazdePIamzXe0GJmvuJpigOSjfm29Dgl/KR4vX1JU6YCehGoVeyNEVGzIZ18fc7w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5TC1UsxjhpFXJY4e1nvIF7krhTXjWstXX8q9W+RquQ=;
 b=bDkNYCJNRpjfMTjt03jSLSqBe7d+uh16RCWgvxHMbAxpsYAhySw/7p46zHvQPdnf2XUT6wTJHWBoMSCo5hPIp7obKjmoGqKRYr9cMM9GQELKmwx8pVKGpU7maQQKMpE9AY6FcnXqIj9PjWlwcDmcv4q+DLN45VyfBhJqzF3DLss=
Received: from DB3PR08CA0028.eurprd08.prod.outlook.com (2603:10a6:8::41) by
 PAXPR08MB6718.eurprd08.prod.outlook.com (2603:10a6:102:134::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 16:49:41 +0000
Received: from DB5PEPF00014B89.eurprd02.prod.outlook.com
 (2603:10a6:8:0:cafe::1b) by DB3PR08CA0028.outlook.office365.com
 (2603:10a6:8::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.37 via Frontend
 Transport; Wed, 7 Feb 2024 16:49:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B89.mail.protection.outlook.com (10.167.8.197) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.19 via Frontend Transport; Wed, 7 Feb 2024 16:49:41 +0000
Received: ("Tessian outbound 31df1b57f90c:v228"); Wed, 07 Feb 2024 16:49:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9f3c98682dd17109
X-CR-MTA-TID: 64aa7808
Received: from 4422818529fc.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 94721BA2-1947-4D18-8D79-54D4D16D731B.1;
	Wed, 07 Feb 2024 16:49:35 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4422818529fc.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 07 Feb 2024 16:49:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Te/mCAwep+4jlKm+mczOBoX4MJuaLHXA81XXuqQXd6fdyFpQxl8WLaO73JWO3g0SCKYuidfs9k0ReWWUzDtT7n/bldqP3qdY63guwuAJ8uDOxGPW9XkkgsOWo5VbBEzPs0rPv3jZzi+g//XVw6pixq2LNEN822KC63wz6aw+UFk20ctyJxeLr6eMwi/rH/DHsf0WsxIvvNPtF2Tm9Rl5ItcoBt/vHzWo21uqvFkObKdrLZZzqycYHwlH4iZxzZpCB/wMAyipeIcxEdN1HTg/1ng951TXML8aV9HIU/yZrNgJjJW22Me7ndTJlhqP27JE2eC3Mn8WduQifTkrzSI58A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5TC1UsxjhpFXJY4e1nvIF7krhTXjWstXX8q9W+RquQ=;
 b=RWUbidrtmSdrpXMmP3d2qGSilEPdXyVFtGMw5dG+f+x1IMVTCTZuogHYSharfFH0cTPOhygC98cX1r6dFEu0H8AnM3M2eTO0bk60oVcScGex275JQj0hULkDvy6ZviP/Qd4Ip8x2lLCuV+dtmhWYKkOMKhb4vgHBlHTWKqqmBD/sw77uygD0awDd3njvY1MF0go/IwLkXsESBCpym24TxRYWAIgLRXsSeNH8mMlaitLQnmepq8Z/T1GwzQ+gVGsQyp+WB2v9Z5dsiNRnVerP2mIDjTaoSteENSxH3aoYb3juqHQ58jiWScvljx7VMUF67mKjCVjgamaVf5JOkQ0ffw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5TC1UsxjhpFXJY4e1nvIF7krhTXjWstXX8q9W+RquQ=;
 b=bDkNYCJNRpjfMTjt03jSLSqBe7d+uh16RCWgvxHMbAxpsYAhySw/7p46zHvQPdnf2XUT6wTJHWBoMSCo5hPIp7obKjmoGqKRYr9cMM9GQELKmwx8pVKGpU7maQQKMpE9AY6FcnXqIj9PjWlwcDmcv4q+DLN45VyfBhJqzF3DLss=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB6355.eurprd08.prod.outlook.com (2603:10a6:20b:363::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Wed, 7 Feb
 2024 16:49:34 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7249.035; Wed, 7 Feb 2024
 16:49:34 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Ross Burton <Ross.Burton@arm.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] base-files: add usage warning to motd
Thread-Topic: [poky] [PATCH] base-files: add usage warning to motd
Thread-Index: AQHaWdUuPzSfj4voa0uIXYcLglXIXLD/F4sA
Date: Wed, 7 Feb 2024 16:49:34 +0000
Message-ID: <6830CA62-13A6-4E25-B064-8CC4A912DDA9@arm.com>
References: <20240207145125.2317134-1-ross.burton@arm.com>
In-Reply-To: <20240207145125.2317134-1-ross.burton@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB6355:EE_|DB5PEPF00014B89:EE_|PAXPR08MB6718:EE_
X-MS-Office365-Filtering-Correlation-Id: f2423b1e-3a47-4f61-900a-08dc27fcc7be
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 A1HMWBI6Bz+0GUwt6OKIMfPnPyOJFaUbhj2Iry8ackZywLlwT4VO15YW7Abyn29gSkqTSMbPdr8ThlkSwYZ7BVWfj2SVf28w1GIfflqMkRXFjfAr+lrC9Nqw64AoJVRw6TOBO8cwEhUjK2qoAcFpiEoHLYI3VI+CzeMPKIpmFWWKSudQEZKppDzENAouScSu2WOZs/6tHgbO+xD12cKsOrYvoUUmRp4eMeY/gFDJ4PFFW1F0vFutOSJmFLPQTa0OhyCbruIIuKjux9/lSOZBtAVSw/jixXtrFlgjBUmcWV4KWQiLjXyPoHJ3F9gfmmKk2TCJUJdU5c/mfSBynyJi+MYf7UjsWvvk97AI6wzJ9vclOLfJxTS2ByWjsc4Hbsup8BHEBlWu/g086ufjK8fHZqvUtoAJhBP16dn6O+9f8W3bmxP6vZjLtKdkRVBZGvBbKKl3R2bqTxqU+5B7rZ/135pR+zIiJYfFDKLrlQQ9KEiqZ+LOC7sCtgMtZTBQftQMTcrnSiCGr6BvYSdie+3BtEEFZ7G57euhixXO35n63VeP8C3G+wx/7btqi76hnYQdwXNR4qmtMZxI3ISYlREbHUgi2OsiG1r7Fs6RD0tt1lxAcZM06cSKSdyKZ+J9JdqNYfyIuIzS05qwiQ8jLOXHew==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(396003)(136003)(366004)(39860400002)(230273577357003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(38100700002)(6506007)(53546011)(33656002)(83380400001)(122000001)(86362001)(26005)(2616005)(41300700001)(66899024)(8936002)(36756003)(4326008)(6862004)(8676002)(6512007)(71200400001)(6200100001)(478600001)(2906002)(6486002)(966005)(5660300002)(37006003)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(316002)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C69D8FA61B68CA49B7AC0E3F8231141C@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6355
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B89.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	09a48b93-d874-4f50-e64d-08dc27fcc362
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5ZpmC72qXTEQJhz2HRStrCudm64uNMdNGeyPR82VvhISHmIdIjCGyELe2hovVBDUobDc0zi5A1B9vh8nEHrvjRBEzxA7HNAP9LbEgKW27lU+Ds4OYFl9kB5I2O3RIqRwQ9NXsVPuccMpS1SW91il29KMvFL4TzrxlokUsLsRQm9wy+ykYTIHIqW1hacUE9VF944TYchL5+SdAyA26L+gQ2s5yxEmtvTxqdRVkjPNJEcfi7SYGrpmwdwFYcsUYZbwqWf0hRzQh445MQwrPSKj5hWT+AMWqZ4MW7APsYObVnIbEOvKpfNRmi4pQkcb7mIQv6nynOKP+NG5Bsnfm5N1+MMeWH4tXrtUpUiIyvQDe4UJICBYpieXrhiDc/vKUbEBZsjLmjQA7/YLT8QWIqttobEc32ZR2NQh8kA2f1796rnpizIR4fzkZoffIWQxDIvDEnkrNPudxp0e2zIgHgFVaQY6kmVHgXDHcSo07fbvqHeGSF2R2hl7Ylj9ffmwxjJFu51foZa0y29H+8TT3JL0sKeTCiph0wz1qLCW/OGztEwjuOnhsuB28oap+dt3Jrv5Abb8/tT0xDln0ntBjKQwKUuFbXLpVJYRKfKRf3y6bV18gxwp5U5H0sfhanEsRlmjQFvCyE0A4wCfSl3upHOkTl5Y43+wm0XomVd6TaTbaaZHMyAeiMBrve51BDdmTPvK3ZakmBSFSngsXVl/hHKsTDZxeXDsVvQ2E9Zz0Ckhfb4=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(346002)(376002)(39860400002)(396003)(230273577357003)(230922051799003)(82310400011)(186009)(451199024)(1800799012)(64100799003)(36840700001)(46966006)(40470700004)(81166007)(356005)(36860700001)(6200100001)(83380400001)(2906002)(40480700001)(40460700003)(82740400003)(66899024)(41300700001)(47076005)(316002)(70586007)(26005)(70206006)(37006003)(336012)(86362001)(6862004)(8676002)(4326008)(8936002)(2616005)(6506007)(6486002)(6512007)(5660300002)(478600001)(53546011)(33656002)(36756003)(966005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2024 16:49:41.6164
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f2423b1e-3a47-4f61-900a-08dc27fcc7be
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B89.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6718
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 07 Feb 2024 16:49:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13252

Turns out I forgot to save the motd in my editor, so v2 incoming.

Ross

> On 7 Feb 2024, at 14:51, Ross Burton via lists.yoctoproject.org <ross.bur=
ton=3Darm.com@lists.yoctoproject.org> wrote:
>=20
> From: Ross Burton <ross.burton@arm.com>
>=20
> The Poky distro is explicitly a _reference_ distribution for _testing_
> and _development_ purposes.  It enables most hardware and software
> features so that they can be tested, but this also means that
> from a security point of view the attack surface is very large.
>=20
> We encourage anyone using OpenEmbedded for production use to create their
> own distribution and not use Poky.  To encourage this behaviour further,
> add a warning to /etc/motd when Poky is used so the developer will see it
> when they log in.
>=20
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
> meta-poky/recipes-core/base-files/base-files_%.bbappend | 1 +
> meta-poky/recipes-core/base-files/files/poky/motd       | 5 +++++
> 2 files changed, 6 insertions(+)
> create mode 100644 meta-poky/recipes-core/base-files/base-files_%.bbappen=
d
> create mode 100644 meta-poky/recipes-core/base-files/files/poky/motd
>=20
> diff --git a/meta-poky/recipes-core/base-files/base-files_%.bbappend b/me=
ta-poky/recipes-core/base-files/base-files_%.bbappend
> new file mode 100644
> index 00000000000..8802adbb46b
> --- /dev/null
> +++ b/meta-poky/recipes-core/base-files/base-files_%.bbappend
> @@ -0,0 +1 @@
> +FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
> diff --git a/meta-poky/recipes-core/base-files/files/poky/motd b/meta-pok=
y/recipes-core/base-files/files/poky/motd
> new file mode 100644
> index 00000000000..bffb7fadf1d
> --- /dev/null
> +++ b/meta-poky/recipes-core/base-files/files/poky/motd
> @@ -0,0 +1,5 @@
> +
> +WARNING: Poky is a reference Yocto Project distribution that should be u=
sed for
> +testing and development purposes only. It is recommended that you create=
 your
> +own distribution.
> +
> --=20
> 2.34.1
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13250): https://lists.yoctoproject.org/g/poky/message=
/13250
> Mute This Topic: https://lists.yoctoproject.org/mt/104219418/6875888
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [ross.burton@arm=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


