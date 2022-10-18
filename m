Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.57])
 by mx.groups.io with SMTP id smtpd.web11.5085.1666088695566733387
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 03:24:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=8VGRS8WY;
 spf=pass (domain: arm.com, ip: 40.107.103.57, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=OTmWEsMeSrtJvAIOV8BJkYqK4m0YF4whzEuhTcK01RGRYsnANRW/jdK6kkgimWLWnRXGxHwNogK8L7hH0C3odMHf/OEhpmlhBVkuzzra/sEKlbK45myXFMCkH1pUBjsSyaB7ZZjlmxf4fSKzm6RuAiWy/UlrzPLlgl5Q8qagsB5miwIPLL15f2aXqldfaQXKyKnaLozFTC1KeLGb9xeo040KRAKBXKn4EMG0Ai/J5yPUt6lHWcPew/b36xXkqmK1tfKJr6UaqK1TjPGHWOmn3a/vE/S0PPku5ArT+vgvxEaxsWIsVen0jeJizUfTTP6YRFUBZILCIb+4U1AWOqg8XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPWOVM80BtU9WhBrGRSLMjwmNC7a7m1VEVlfPAnWmLA=;
 b=QZDiLLC7bPgcd7TqdXB9dO/s1QtbAxnRdlKbpzT584dezWyVbDpqjI66hApPxlmtJOW9snTFeHInibuw/+X5/wIe2Lcfj6FIv101c5UgQDEQk3WVuP1lZjbbrvQX3aqt75oUGY1Xkeq5xiDvklclhgzgqrXNmiX6wUxefYuLFnhTY2IPdC2KC0t2vnROlo+tUzIptW2wV2xvjL4wDcukeTh8+MVPqMmFaknwnPUiewvw9lzd45Elo0vTLKzTt1C7EJpU7QkrDBV+KrItOdtZMTE/6mQjhVSD6BCBz0oCPIAEoM6BXp/PmxOR1nrY8DZCKFlpBtfPfKlZpL8FAhWpiw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZPWOVM80BtU9WhBrGRSLMjwmNC7a7m1VEVlfPAnWmLA=;
 b=8VGRS8WY8HKxb0SYE2ncBg2j6PW1A5UyZa93OIxru/wy1nTlNLPSV7dqdwVLttv/etSo1d4TzuuhaI+w5cBJiyGkYQukYsu7cmwkm0bpVcZHdyp/OjmAZdz1+n6A8HNNGsBkvAzRZjlPLG5j+++yCo0hBlJ/S04pS907rWuMCJ4=
Received: from DB6PR0601CA0042.eurprd06.prod.outlook.com (2603:10a6:4:17::28)
 by AS8PR08MB9266.eurprd08.prod.outlook.com (2603:10a6:20b:5a2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Tue, 18 Oct
 2022 10:24:52 +0000
Received: from DBAEUR03FT043.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:17:cafe::8d) by DB6PR0601CA0042.outlook.office365.com
 (2603:10a6:4:17::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30 via Frontend
 Transport; Tue, 18 Oct 2022 10:24:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT043.mail.protection.outlook.com (100.127.143.24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.32 via Frontend Transport; Tue, 18 Oct 2022 10:24:51 +0000
Received: ("Tessian outbound b4aebcc5bc64:v130"); Tue, 18 Oct 2022 10:24:51 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 92ffe954e92f65fc
X-CR-MTA-TID: 64aa7808
Received: from 1fddbd3e402a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F9A3B6C1-FDF3-4ACC-A042-E7613B0A9FDD.1;
	Tue, 18 Oct 2022 10:24:44 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1fddbd3e402a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 18 Oct 2022 10:24:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BkZ53r/jBYAgQiO0LZygTTCskctvJVsvsS55SLQvjBYgcBOVamnMKsbFayM/KEAUUaoBugEuUZN/kqoGXpDD7xi7KZAFWSP5ShfCNtVoSasHtiVq2lKR1WE9wwXS597xggF8rnJwoGj+4qRDi1EYLD8pvpYYRcIdn3NLi2UTgX5YAeylMnrdvqSOBxHCyMq3n3iOJKl7KuID4A4rD5eRhd9Dqtvls/yelK2g9GQbFsibBYCKn3A2wcoqLl0jbEIxvbUUNC+kY7onp1cvxK8KopLqcvR0qz0JrHtQz7jZOXEN3Om8pc2KdRyrAnITK+A+EvjThYMbRVWwKccRIoP1gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPWOVM80BtU9WhBrGRSLMjwmNC7a7m1VEVlfPAnWmLA=;
 b=hrhwEVH7Q5lx64R4RxTzA/4gKrbWCqGV0cWpY14P98zLOPr/2qGSn6x6fO2/9CG9uMn7uFI07dOe+SHniZE6r3a0Js7tWGvJm5RMsNLN+0uMQ0KD0pthALIlJWb6kiGdvHn8RAEz3tozvV1ZQEMO+AHg6jnbwzh/KaKzIsgHdQaqZwQLhBF4DbN1dDGRfyf0CpOFgsB6l7ZI0FBii4v1klHVnl/G+w+VQbvQV1YsIWBnaITGiSVXYeMCafP1MYblOlt1CI99Mg12RUpjzsg/gFHCbjwyBwxHZU2l8uuDr9k+9puU//EoAH5o/lirY2vvpbumK+u8kU4/5Z7691HiSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZPWOVM80BtU9WhBrGRSLMjwmNC7a7m1VEVlfPAnWmLA=;
 b=8VGRS8WY8HKxb0SYE2ncBg2j6PW1A5UyZa93OIxru/wy1nTlNLPSV7dqdwVLttv/etSo1d4TzuuhaI+w5cBJiyGkYQukYsu7cmwkm0bpVcZHdyp/OjmAZdz1+n6A8HNNGsBkvAzRZjlPLG5j+++yCo0hBlJ/S04pS907rWuMCJ4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB7892.eurprd08.prod.outlook.com (2603:10a6:10:39f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Tue, 18 Oct
 2022 10:24:42 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7d2b:2570:9a99:a3d2]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7d2b:2570:9a99:a3d2%7]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 10:24:42 +0000
From: "Ross Burton" <ross.burton@arm.com>
To: "quantenkeks@gmail.com" <quantenkeks@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] bitbake: cooker/runqueue: fix a typo
Thread-Topic: [poky] [PATCH] bitbake: cooker/runqueue: fix a typo
Thread-Index: AQHY4mqGnAzB0wp55Ue+AWsLMJbULa4T8tYA
Date: Tue, 18 Oct 2022 10:24:42 +0000
Message-ID: <5CCACCAA-29A7-45D9-AC44-8ABB03ECE4B3@arm.com>
References: <20221017205253.87665-1-quantenkeks@gmail.com>
In-Reply-To: <20221017205253.87665-1-quantenkeks@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB7892:EE_|DBAEUR03FT043:EE_|AS8PR08MB9266:EE_
X-MS-Office365-Filtering-Correlation-Id: 4113bcab-a131-46d7-3177-08dab0f2fe21
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 7PINaVFzY6OewhRGl7NPjN7UnQ2P3Oj7SbggLS+yvWhGl04QYvBVxJAA+nBfJMzaV1Z/ftzQRP+hDr2a/t0lh6IL4hz2trlvGbSkCc6GazV8mtvW0cFWJ+9YM13aHFp7usRRpW1pSkPn5RRG4veoT7LKeiNaFbjx7XI+BemewWubeYQVfYKrK3iBCskVzUJyG6fWKqFRfVdrjAMoGxDd00HViHiC8tRpz7Y/y4ROebyY+SmZODKnh1YJ3eK5Gdjm153rJ5QOGIUcUvMjMw4AK+PdrquxuMFlWZCCLrmK034BNuLzTyQxZwDpP09iF+RAg9XGoc/Dgy/zmzsy8jf47bA5U2SQfkmeIgxOTZPCu0FqVoVQvQLjh/iXAM5gma56xeqUmupqmph+MhIXmrOo4icOaHQsB3y+1HagGJTpuscBAeb3dpziFfoy21s1IRJU4ULsM1fJKE/MegpRhq0t9IWFbH9p0lIoFx9CHKD49jY/12fV1LImAazuREZebUhgHN7PBDKOu1OLkNPfWgnTDbyhjRkkLDRwGP9pRVqrltW8b70BEdZIdUh4fIxUkYrsUE9vFagrzYenHV0tEupVdICC8ibQfYvQ8pxYhYA5Am5DablwWbujue8MiRUN3UoZ6TNJQc4d6BQNcVXgXdAPSW5codc3UW+x+IdbslXUZN/qBNM+Mr+fb1Oa+vC7BSrfPehgsI5AVEwBDTqrSy1u2KsylBBbmz4N38PRwUNz64oqWO/USUDExP8JNugXg1HyUub93ZlkO1XKnokyDSV2eZn6i80pat3QjxdgCCNvJplCGHvczBdz41vqfVBVq5pwcj2ibW1rkCbDtDt+uiecOA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(451199015)(71200400001)(478600001)(66899015)(6916009)(966005)(6486002)(6512007)(66446008)(26005)(66556008)(91956017)(4326008)(76116006)(64756008)(8676002)(66946007)(66476007)(2616005)(6506007)(41300700001)(53546011)(5660300002)(8936002)(83380400001)(38070700005)(316002)(186003)(2906002)(122000001)(38100700002)(33656002)(36756003)(86362001)(45980500001);DIR:OUT;SFP:1101;
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7892
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Return-Path: Ross.Burton@arm.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT043.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	98127b38-13e7-48bf-8d9d-08dab0f2f8ba
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NVSUNLZMSVDSlCr4GxNz+tql0LzN/w1lk4HHUUeqSIDVtjhrOXn1Wm0wA6XvpAsppkHgP92rM1LcysqP47KEnOc81h9mOdtamIJOhK3qyCB31rIBNqDwKAW0hc7948BHsWInQswAYymKadZCg3ElmDL1NnZR4O6JByrXgj9XRhpJ4M/BLQSm333vu5bw6QfWXBGC58W2inZ0Vr0GpLgZXITSpqFvXeQbLDTTE+CWKZsFDIsh3qnquEKcpbZp3+8Z+Vv8cX0NJZGoyrYVSRUrDMSwRHm6pkznDKdKwE8IMEfm6VsSFJFqecnrK3od2+rFb2u2Ywt89EwY39Yy0V/TVQI5D13DupPFnHu9ci6bILyQF61ToAIUVB1BTWQ0lN7i41wnHXfdOWTU1PSoWr+m0IFBnDWzbqtFNqgPjvEXI+sJdTkJWRbxPsDOLJshz32r5mWELsngXp00kHmgowH+r6beHREty0jLsKG1Fx73sEMlsCa+Zl4sv0Dw9zN9gtL1d3sXcXB60NMpNdZyyE13OkbHD+8Z0l9dRuSnz1Go7zrcnfXhq5RI934RnCWUvpO5bgq8Xhlm9AiAeLZHiyFReyWXtAqHBjHLTy3EExleEwvJxsoWS4z4GNIXu0z22Y1bsUoXi+QIV29crC2rch4A2A9zCkOP8uVSmO9hJZ9hiLKqt/dRaWViOFzNEXsF5HA2qWf37mQctAhIcwp/wkGI3O9zHOUHQaAExOWNTcwIaCWyciDCY2ef3b33ZLlWGPN69AqHjIbhleX8OuPNedAY9Ane3CYqcR/slQ+PSZE+F0c=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(396003)(376002)(39860400002)(451199015)(40470700004)(36840700001)(46966006)(6486002)(86362001)(33656002)(966005)(478600001)(316002)(82310400005)(41300700001)(8676002)(70586007)(70206006)(66899015)(40480700001)(356005)(81166007)(82740400003)(2616005)(336012)(40460700003)(186003)(26005)(6512007)(6506007)(36860700001)(53546011)(83380400001)(47076005)(4326008)(2906002)(6862004)(8936002)(5660300002)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 10:24:51.8508
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4113bcab-a131-46d7-3177-08dab0f2fe21
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT043.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9266
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8D88A854E042C647B1B34F3FF61C6639@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

Thanks for the patch, but bitbake changes should go to bitbake@lists.openem=
bedded.org.

Basically, poky@ is only for meta-poky/.  bitbake/ should go to bitbake@ an=
d meta/ should go to openembedded-core@lists.openembedded.org.

Thanks
Ross

> On 17 Oct 2022, at 21:52, Oliver Lang via lists.yoctoproject.org <quanten=
keks=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Signed-off-by: Oliver Lang <quantenkeks@gmail.com>
> ---
> bitbake/lib/bb/cooker.py   | 2 +-
> bitbake/lib/bb/runqueue.py | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
> index 32a529f0f9..1da2f03197 100644
> --- a/bitbake/lib/bb/cooker.py
> +++ b/bitbake/lib/bb/cooker.py
> @@ -250,7 +250,7 @@ class BBCooker:
>     def process_inotify_updates(self):
>         for n in [self.confignotifier, self.notifier]:
>             if n and n.check_events(timeout=3D0):
> -                # read notified events and enqeue them
> +                # read notified events and enqueue them
>                 n.read_events()
>                 n.process_events()
>=20
> diff --git a/bitbake/lib/bb/runqueue.py b/bitbake/lib/bb/runqueue.py
> index 48e25401ba..338d1fe36f 100644
> --- a/bitbake/lib/bb/runqueue.py
> +++ b/bitbake/lib/bb/runqueue.py
> @@ -2256,7 +2256,7 @@ class RunQueueExecute:
>         if self.sq_deferred:
>             deferred_tid =3D list(self.sq_deferred.keys())[0]
>             blocking_tid =3D self.sq_deferred.pop(deferred_tid)
> -            logger.warning("Runqeueue deadlocked on deferred tasks, forc=
ing task %s blocked by %s" % (deferred_tid, blocking_tid))
> +            logger.warning("Runqueue deadlocked on deferred tasks, forci=
ng task %s blocked by %s" % (deferred_tid, blocking_tid))
>             return True
>=20
>         if self.failed_tids:
> --=20
> 2.25.1
>=20
>=20
>=20
>=20

