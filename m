Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.41])
 by mx.groups.io with SMTP id smtpd.web09.4599.1660211332319369647
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 02:48:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=RKLkIvT8;
 spf=pass (domain: arm.com, ip: 40.107.13.41, mailfrom: bertrand.marquis@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=j58Rb6TW3mAq4OO5NBuGh2/5yl1HqxuA2rDgIrUA3iq/j7KUiE19OtbKQ2gO88jWyagOS6gYDO+t64NNnGaVqdVSJRLBwWi4xFh9ebZk+sxGNTQmuIY6w8Rer6SFutBJZRfnGNjCK+w8SOsctpEL0Gk7Y1M5fByfdGdI7LdtufTKDA1FGblOQiOp5jsYE//SEZ/W4xTCNvPUYBuBiknrfJjBGSj1FElyMzaYU2933B+ijlfO3Wa1NRRD9jOO39U+35bt5xz2cnYexW4ucvptS827cdn0+pXFkGBRbN4SkquynAkj/+KYHJgvcibDDZHA+Xar65n1OE7JgqncPDgp7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXPA5p+xjDsXOiVy/JzVJZiV87J1inf6AuP7Q7TU7KI=;
 b=i8jfbIGrcILxzdpVP28ifax7LQVqC23TXFYwFSNdIQfUKRqW26x/RnGCUlZwegKBqTu9qG2b/ebaodGYcozRU7ETkB762K6sy1dOnFUGMWshN6gXGkUxJEsxj+3lKMfCwwBuYtsRvE0Gi7k77xFmX+rWjhDS0hYxxR+BAYNW2/Op1ONPS7CRRSz8d+YIU5/qlxvQVuGuPkN5EVp/wSZxuYo6qS90fBjSXuGP8QaNIXKOTWr+tfVuK8D6Q13W3r3LifPSia1Mzcd4pVXDaasNkjTZlwl0WUVHniyNQOzrOrrNVXTX70o7XHQFFnkBNNFI0iOAr177qvYP70Cy+iQTDw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXPA5p+xjDsXOiVy/JzVJZiV87J1inf6AuP7Q7TU7KI=;
 b=RKLkIvT8xQiQQx4K7alGzgDaGVA/Q+I0PPdrOwYRapaSzNKgzUP3G1AUl4IlwXxyJLuibOJCvNXsbAwp+f2QTm6KA3fv7Hon1jfmzJ3+/1HQBTzuR57z5ECRBbl5op3PsXTeyNZpYrfUSf7inDN7tG4gZUJdU/7UCd2XS/M6Bz8=
Received: from DU2PR04CA0330.eurprd04.prod.outlook.com (2603:10a6:10:2b5::35)
 by HE1PR0801MB2027.eurprd08.prod.outlook.com (2603:10a6:3:4f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Thu, 11 Aug
 2022 09:48:46 +0000
Received: from DBAEUR03FT055.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2b5:cafe::32) by DU2PR04CA0330.outlook.office365.com
 (2603:10a6:10:2b5::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.12 via Frontend
 Transport; Thu, 11 Aug 2022 09:48:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT055.mail.protection.outlook.com (100.127.142.171) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11 via Frontend Transport; Thu, 11 Aug 2022 09:48:46 +0000
Received: ("Tessian outbound 6a3290ff1310:v123"); Thu, 11 Aug 2022 09:48:46 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1496eebcd7b3ccdc
X-CR-MTA-TID: 64aa7808
Received: from 640475b84bd9.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 61EDBFD0-1CE8-45A1-B48E-022A5DE12D5B.1;
	Thu, 11 Aug 2022 09:48:39 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 640475b84bd9.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 11 Aug 2022 09:48:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDaM7yRSLkq1OU1bEJ96uAxzTsx3dUvxvk+C+UdsvpuMvWaU/3EaQDPq4mlHcIHcWpvbjfwX/uDOeVVTz8jZsBAMocHZs+H7gMoo6C4gxlTPH19Cgu9KOu8RaDzvEhe1gOT/fej9IXxZy+oBrM141pMv0MX1iUKw2WXIJ8SIaGxqz/RzmD6RD/pktQMizDwi7p2y34A4XpEFW+ZNko2/uzrwMxEADDZXdjjUUtFrBLk+KbyLu6mqK7kmaIP/sCto73TQ30/Qg5mgKRZQdTF2wzQzfZOEOoo9Jbym0P23Vh0RKKVJn5IG+cE+8oEadYZ+731m9Rr8cQLTqRyu9vlHSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXPA5p+xjDsXOiVy/JzVJZiV87J1inf6AuP7Q7TU7KI=;
 b=mDg9yFjwS+C64b828xRk5npvBiJFQlNSgKl7jujRCUxzBNx/5IhQS4yjwBAzD3BvpwbucMk4v7+2AMoGB+qeyr4sgbmHUpSd1LEFSKY6RUJG48JwU8Yl+/cCrVo7YMj0OntRLVQmJgiOn+uN97VRbwBp3XxVhOUct4KPU/qYhgb4DRCGvJdWUNlJim1kiIFSFo1lCQJSnCpDZeih3oNkI6dCuNAtfWg6NJCoSn5MHVj60DpkMp5j0JMkRC4QVA6im3cNwCkyACfX90XjFZa/NGvGm+9h1Omj0qQIdiX5tZG3f69jKSO5g7LTbWsere0AvuSjexoyO47dPhPLotqmDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXPA5p+xjDsXOiVy/JzVJZiV87J1inf6AuP7Q7TU7KI=;
 b=RKLkIvT8xQiQQx4K7alGzgDaGVA/Q+I0PPdrOwYRapaSzNKgzUP3G1AUl4IlwXxyJLuibOJCvNXsbAwp+f2QTm6KA3fv7Hon1jfmzJ3+/1HQBTzuR57z5ECRBbl5op3PsXTeyNZpYrfUSf7inDN7tG4gZUJdU/7UCd2XS/M6Bz8=
Received: from AM6PR08MB3784.eurprd08.prod.outlook.com (2603:10a6:20b:85::25)
 by AM5PR0802MB2580.eurprd08.prod.outlook.com (2603:10a6:203:a2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Thu, 11 Aug
 2022 09:48:38 +0000
Received: from AM6PR08MB3784.eurprd08.prod.outlook.com
 ([fe80::f474:4549:1f7a:b89a]) by AM6PR08MB3784.eurprd08.prod.outlook.com
 ([fe80::f474:4549:1f7a:b89a%4]) with mapi id 15.20.5504.024; Thu, 11 Aug 2022
 09:48:37 +0000
From: "Bertrand Marquis" <bertrand.marquis@arm.com>
To: Bertrand Marquis <Bertrand.Marquis@arm.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, nd
	<nd@arm.com>
Subject: Re: [poky] [PATCH] sysvinit-inittab/start_getty: Fix respawn too fast
Thread-Topic: [poky] [PATCH] sysvinit-inittab/start_getty: Fix respawn too
 fast
Thread-Index: AQHYrWJM/JMKcE1qwUq+mwgRmGV/Uq2pdEmA
Date: Thu, 11 Aug 2022 09:48:37 +0000
Message-ID: <7CF40224-E147-42B9-B17D-9ED2980123EE@arm.com>
References: <170A3F574E62B677.26714@lists.yoctoproject.org>
In-Reply-To: <170A3F574E62B677.26714@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: ce12f071-3068-4989-fb4b-08da7b7eaf55
x-ms-traffictypediagnostic: 
	AM5PR0802MB2580:EE_|DBAEUR03FT055:EE_|HE1PR0801MB2027:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 qOcvaKQIW7jlr/nsCtOlUFEjY3C658Fiwseecs1KOT627iLEnj2QqKVy9MgRdtrvV3ZPds5lY6sNrHRGOcav2hf8YoUR0SMP9kWw7d/6pxH2/cXURDn4CbPdVOFdSxvke8pUZu+N13eCqsunuaRYCZ6avzj03WQKZtBTWbL7Vm9bq8KWr93PMRVrezp6m3AlDRQAAKh6ikx7CNJId5Ii005YQX8a3sYuPv3jjvIjRSFcPKQij8Kvyn3XI88AA4ETzZo/R7Ypdw7LzpUv7vyC0C1ho1gXGONyGX3NR6Mf8QfoS74dVAX0dxXrs320OEon6pHaJJB2h01aEHSVI8OjiQqo8jRvZQTry7b72SjMjPAtRHsXVeO3srg7JYbkBjSc+wSOvH7e23Z7KTlcLx1FJ5yZp/Lbtnz4AwdTVDJrW/ady6V0yHW5lRGgvvHUj3kPta3+hCYU3szqrNvcUJxxIFOoAXPnMx6kFTxelbNePVbOESMaIqHa9LWhftspCP9d6gTs/57O+w1fACWFfiAXds25uPvi2Q/wSdtpw78+9Di5v6y1gkTca/U5Icner8NsJ87WkBjnrpA0SLeiODVCxp2XmuaBuSaF0aHzBHNlXNwr2rq+FtZBImNXi3dfbdAfODUyFholP9rkiBULQBfpjmCRYSi/GrnOXRU9DNIggG0U6m4AjyVjRCzoJnrbqX5ijk6nAWs9botufvaSxvw5K205sSoOxorEdZUEBPXM1tR4PBEJX/CKkA8NOCJ9JQoLl933dc4FvDM/IozJnjhXufbYTzLS4l0YB4Cfq8H9f4BfmwvHY8azz6jNRaj0oZJ3S/2ksWDl3Rz0JhTNh/FJKbgyPvA0W+abSft9YOBmsjfuXvjxyOQAC4ll882o+G5wJa9zukbhBYo2r5QAZ0OdwQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB3784.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(136003)(346002)(366004)(396003)(376002)(37006003)(54906003)(316002)(66446008)(66476007)(66556008)(76116006)(91956017)(64756008)(66946007)(4326008)(8676002)(6200100001)(5660300002)(8936002)(6862004)(2906002)(38100700002)(122000001)(86362001)(33656002)(38070700005)(36756003)(6486002)(966005)(478600001)(6506007)(41300700001)(71200400001)(83380400001)(26005)(53546011)(6512007)(186003)(2616005)(45980500001);DIR:OUT;SFP:1101;
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0802MB2580
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Return-Path: Bertrand.Marquis@arm.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT055.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a6e9b5da-9d17-4509-1854-08da7b7eaa28
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eAkrDGQqupCOt+0zLJp1UuAsIqClzx8JsOZZyPEU/du+AIa1euVHRXcB9MZT4uYSIMO5LT0fuyNnsV42ac4ohbcECEJLyLkq9aGRi9SwuUah1oC+M0X/YDaOHCNxUbetn0llfJykz46wOJOPb3SVEX4d+0r3CmQDS1CcccjuEZdyEbFq++ZruRA/l3YVma4z/BHsmQ9U5cmHgPNuvK1059I//xAhBdTcgTMUjygQpRWzq0hik5CmNRgjiMpMPXITcq2aQ3a+1tNTWf0Qc/pFnFqXvctslLc9DH7N2C5DHs/x2geX8eOch/MHZbFaDltb/I9FH37dil97yH5ntrOmSfyBuGsN/k6YJwvMY1m2xwUmBNq7D0wuOkaiAiamlSgPjClKt6lOZxPFPqxp8FtXyiWNXP+j+A36Jb//h9k9YQaks/dCh38iC4m/tU9cIT+4bHEX9ffAWcFwklXkajtZFdhWW82+Lou3aA4puKxdP08wpyXStHmzPrQQkFguw15C49xtekbii+dNUIXtjGDLJWh4wier959qSvYkQoZ0p5FgTuvyRO3n9jRCoY3gMPlde8qAw/0EVMmJcWGkdKfSXFUqKxDTjo4ZuJcB+EzdBS6nhLepr197XtTNUaKyWvJn7Hjg1S5/6+LMDyxuG/ruK/3a63M4SnGHOe7WJ4XLquGx+//U1zADfRsHfSXxtMn3xTDu5ePJPJarNd17Q1XRPz7JZ0ayh5RbqxeHK00IIGDMIuJmhqcwII4QM8dm/a1nJpO4omR7Og8k0zze/ILuwDKJgu2njLI2gkSh7MgJ5/epqUrouSs3AgTJ+LKY4pQgrXN/6TGGXD/auXw9HQmu1FWrEjFCNui1wBvvo6nIuGNLYAq+7K6xsPuJzg0mknpV
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(136003)(346002)(396003)(39860400002)(376002)(36840700001)(40470700004)(46966006)(82740400003)(86362001)(316002)(356005)(4326008)(36756003)(81166007)(8676002)(70206006)(5660300002)(40480700001)(70586007)(6862004)(8936002)(336012)(966005)(6486002)(47076005)(83380400001)(478600001)(6506007)(53546011)(6512007)(26005)(41300700001)(2616005)(186003)(82310400005)(36860700001)(54906003)(37006003)(40460700003)(33656002)(6200100001)(2906002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2022 09:48:46.4089
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ce12f071-3068-4989-fb4b-08da7b7eaf55
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT055.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB2027
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8547E209BF333048A92971A27CB260C3@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry for the mistake, this patch has now been submitted to Openembedded-co=
re@lists.openembedded.org instead.

Please ignore this.

Cheers
Bertrand

> On 11 Aug 2022, at 10:10, Bertrand Marquis via lists.yoctoproject.org <be=
rtrand.marquis=3Darm.com@lists.yoctoproject.org> wrote:
>=20
> When an entry in /dev does not exist, start_getty is returning directly.
> As it is started from init in a respawn mode, it will loop infinitely.
> In this case add a sleep inside start_getty to prevent the "Respawning
> too fast" message popping up every 5 minutes.
>=20
> This case is happening quite often when the system is started as an
> hypervisor guest as the standard serial line is usually taken by it and
> removed from the configuration.
>=20
> This was triggered quite often running linux as dom0 on top of Xen on
> arm as the serial line is taken by Xen and removed from the device tree.
>=20
> Use the opportunity to replace one tab with spaces as the rest of the
> file is using spaces.
>=20
> Signed-off-by: Bertrand Marquis <bertrand.marquis@arm.com>
> ---
> meta/recipes-core/sysvinit/sysvinit-inittab/start_getty | 5 ++++-
> 1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/meta/recipes-core/sysvinit/sysvinit-inittab/start_getty b/me=
ta/recipes-core/sysvinit/sysvinit-inittab/start_getty
> index 699a1ead1a40..2bfe4310acad 100644
> --- a/meta/recipes-core/sysvinit/sysvinit-inittab/start_getty
> +++ b/meta/recipes-core/sysvinit/sysvinit-inittab/start_getty
> @@ -13,5 +13,8 @@ case $(readlink -f "${getty}") in
> esac
>=20
> if [ -e /sys/class/tty/$2 -a -c /dev/$2 ]; then
> -	${setsid:-} ${getty} -L $1 $2 $3
> +    ${setsid:-} ${getty} -L $1 $2 $3
> +else
> +    # Prevent respawning to fast error if /dev entry does not exist
> +    sleep 1000
> fi
> --=20
> 2.25.1
>=20
>=20
>=20
>=20

