Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6C0C2BA1A
	for <webhook@archiver.kernel.org>; Fri, 21 Jun 2024 13:23:40 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.68])
 by mx.groups.io with SMTP id smtpd.web10.72925.1718976213082203478
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Jun 2024 06:23:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JwxUDwSG;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=JwxUDwSG;
 spf=pass (domain: arm.com, ip: 40.107.104.68, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=iGWZAxveQXVySGnEFmHtCVNNiaQq+025jQx98kwdg9TQDp+9vIxQTGDBwV8+xlYf2TMUWbtwR2KLXWWe6doWQCErK7UKao8QRvXh3RuNk97RJxOc3vuu+/dz+WC3+BHBPBXNXWQD6gURDzuNXAh1L+tEYCstVFYGs/yr2qRUAptDtIUuKFcodgJLyRro9THrHEGp82AwcYeN1wSKUH4EDD6wtzvs4vWw555crdAZgBN4WXKR9QXxgDGrIvvZf1Pw95gCsikf3ZEg6T9CG0m+s77PtPgcZYCV7uhUU/1sgxmUwtU/dfyp8eVCQNuqGZEyquB+5ADq4TQc5nKy7XJa8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjBQxBxTxohOddj8if467IZx3RXn1nK89E5AIP6Kbnw=;
 b=ZjiMuJqqjm0EJBbYNbl2IC8A2nJfbQZnWSN8iRTuWbvanHUYpa3pncR987OD5TJz3Y7wE/qqlgFaholUSCPYZFeegxHyhjisf8lclcKhZnumc0/sbgj9ovnOJ9fp9wr7lzdv+AO+lYqrhGnF+IkUVy4px+KX5Szv54eskBwsgXpFyn7++U/a+4rrcW2CRnkyzeqwWKel3iuOA+EL9LdgqAX2ACbYrrMk7zzmx6A58pblZDnIZ2a96fPzZe+xxAxetDCnKbqjpjimrVffqIquPNlglIGPGTa+E5MRi9jUZcVycYVfeIf4NMMaysqNu3gpV6EkAkz1Ql4Nk0JyrwKNlg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EjBQxBxTxohOddj8if467IZx3RXn1nK89E5AIP6Kbnw=;
 b=JwxUDwSGA+WYGW0DBGrZjdSFn0xMHqKhJ4aqH28ItqknODSc8eRtzkuNiqp5RlQp9KHSJ3cd3kLA6Yubz++Z5q8I9LK1fWk4kO1GiVSADB5Bidkv+kOQ/7NmXPsijKdC4J01g5T9Yk47AsEzOMVpp1edRt4usKomk60E7jAFjcg=
Received: from AS9PR01CA0009.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:540::17) by GVXPR08MB7725.eurprd08.prod.outlook.com
 (2603:10a6:150:6d::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Fri, 21 Jun
 2024 13:23:29 +0000
Received: from AMS0EPF00000191.eurprd05.prod.outlook.com
 (2603:10a6:20b:540:cafe::a0) by AS9PR01CA0009.outlook.office365.com
 (2603:10a6:20b:540::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.36 via Frontend
 Transport; Fri, 21 Jun 2024 13:23:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF00000191.mail.protection.outlook.com (10.167.16.216) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Fri, 21 Jun 2024 13:23:27 +0000
Received: ("Tessian outbound f73a80402c83:v339"); Fri, 21 Jun 2024 13:23:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8416976f948f061a
X-CR-MTA-TID: 64aa7808
Received: from 5296e7450537.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 9503E16C-4AB6-4036-B847-0F6CB98E7764.1;
	Fri, 21 Jun 2024 13:23:19 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5296e7450537.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 21 Jun 2024 13:23:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UDV6kK3UbT3rkc7BvS1jglw0a8VXmLCqWbAazDZhM2bFtX1MZ6y3RLTteDRwPe0wLV7ZCIr7namxGCQCPBKhTLiiviivy0Sd3QEaCoLkpzborkNN9BYbDttcPhKRPp7pJCxnmU2XJem/RUw5qEvRdbMjebYtauQZTmBTzXvkxTUCD9vucCFM47w42hI7ShnzvTBqExP6iKK15e6VYy9UhQzpnQev5hFcJ/D/bHTGOdSAAWo/REEEs1BxtTYVqp2+XLvIxvVwpc461gLDyTtdDDBsVwrWN8Lmi+i9KRTQwBEgO2GnHgKgqzwHkbjzRyPcGAkMO+NEYw7e/FFV2Gr43Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjBQxBxTxohOddj8if467IZx3RXn1nK89E5AIP6Kbnw=;
 b=LPBJB0sSOgmMnYuprnGvA/7Q+/cQPZ0oy2YANzXRx/oWSUwQ7UEy90AIrJJUjN6CpFmsVBrgchAQ9QY2bAAs5DcWqYAaQe8IVPRu88tbuYXRkG3KLNcUYnAlSz539vZU1otQos3Cmj3JTOmgdJ9R2manpX/RJ1Kz76C6CNrLC5PFYKFFr1340xyTICbCQCKRUo6QQ0VHJFQI/Tl9AD4x69OXCl0mSQkDtnMkl9jEKzcBOf8+jhoiIu5IFQhkyXtOsbKpA6+1UPVEkVET7frwjx+BJtwO8ERehKbdWY0c6U9BVx7ndKGmKwEXJHd0HxxyxpWadBmZXmeuSE+UOcA6SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EjBQxBxTxohOddj8if467IZx3RXn1nK89E5AIP6Kbnw=;
 b=JwxUDwSGA+WYGW0DBGrZjdSFn0xMHqKhJ4aqH28ItqknODSc8eRtzkuNiqp5RlQp9KHSJ3cd3kLA6Yubz++Z5q8I9LK1fWk4kO1GiVSADB5Bidkv+kOQ/7NmXPsijKdC4J01g5T9Yk47AsEzOMVpp1edRt4usKomk60E7jAFjcg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5716.eurprd08.prod.outlook.com (2603:10a6:20b:1d5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.22; Fri, 21 Jun
 2024 13:23:18 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7698.017; Fri, 21 Jun 2024
 13:23:17 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "nicolas.wirth@speedgoat.ch" <nicolas.wirth@speedgoat.ch>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] Issue with Dynamic Linker and Python Dependency in Yocto
 SDK Setup
Thread-Topic: [poky] Issue with Dynamic Linker and Python Dependency in Yocto
 SDK Setup
Thread-Index: AQHaw9ESE8Ehh0jdKk2bW5ysmrw1pLHSNKyA
Date: Fri, 21 Jun 2024 13:23:17 +0000
Message-ID: <06C32164-088C-4ADB-AA7B-BC20E68EDF84@arm.com>
References: <6txm.1718970556825135447.eRWi@lists.yoctoproject.org>
In-Reply-To: <6txm.1718970556825135447.eRWi@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5716:EE_|AMS0EPF00000191:EE_|GVXPR08MB7725:EE_
X-MS-Office365-Filtering-Correlation-Id: a8dd496a-4338-4ffc-93a4-08dc91f555e0
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230037|366013|1800799021|376011|38070700015;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?eHRsNS8yanYzdFdyWjVNVnlKd1p0LzlrNHZQRXNtcHRySGtLc0JmVkY4T21i?=
 =?utf-8?B?bjhSVDhXb3hLWnc5Q2VNZXhrdS9RZzlXR3hWWCtob1pRS2lndytpL01zTlJ3?=
 =?utf-8?B?SFlYUlpmelYrUG1UeG0vZEhJWnNibmRWblVWVFYyZ3Nwc0Y5NFdqWHJ4RHAv?=
 =?utf-8?B?amRYZVk3K3l0ZTQyRU93c2JxU0NQRVBhZ25GTmRiL2pybnVaQjlhUjFtZ2Y3?=
 =?utf-8?B?ZU5iL2VUZzA0TUZYNTh0cTBnc0hhUWhkaEdJWWhHRlNsbExCMUFnRTczY0dm?=
 =?utf-8?B?SW9hYk10VnpCa3JGR1l2SW04T1BaZSsvUlhIUnArMjI1bmE4YTkxd0JSMUFV?=
 =?utf-8?B?eDlZdUZySzUrMmtXSkxuSTZnV3pmVEhtVHFZcWpIWnNCTElKejJaWThqaHdD?=
 =?utf-8?B?Ry84N21FUlY4QVlxdGp4MTFZUkRBRjRubVhzM0diMnR4dGRQc2ZEeDJpNDdD?=
 =?utf-8?B?NVpNTGdrU2tlMzU4aStBK1d6VDhkKzZTenZKWTVrMGZoWS95UkVFWFNETUNK?=
 =?utf-8?B?Q2JFK2NjczBReS84UlVFaXN4YVdNZmVVOStVTlo0eThVNmtuQmdBQ0xMdFQy?=
 =?utf-8?B?SjBPeXllaElFcU1iRmJqdDhQN1QvdTNSSlZGaWNaSHVaWVpSN1ZIMThKWFVh?=
 =?utf-8?B?V2FnbDE3akNjU2hQNjZpbmZNSzcxeENPNW5XVE00VVErQXMxR2tWR3owbGNB?=
 =?utf-8?B?WnBnSGdYOTFjMkkwcGx2SEtLU21KTytHTm13Um5uVFZSSmR1a1VuK3JpOW5F?=
 =?utf-8?B?UmZzZkJvNnpodkdET0JSeEdRUDlzTStBUmU2Z3dtNVkwRzlFZGxGdFBTY2xr?=
 =?utf-8?B?UkQwUlB3aEZiblZWMEl4YXE4ZjdIQURJajZsZE5JOEUyVG50MGhOSXc0VWRz?=
 =?utf-8?B?ZTBIMXhaM0FwY1dFUk1pOUU0ODhHNVp6R1BQTlFWcDZLY0NPVGtMUlJ5SU1C?=
 =?utf-8?B?SkhIYmhLMC93TFlyQkV6NmJ1aHc2bkVycnNEWmxJdlhTa2ROWDJmWE94OWsx?=
 =?utf-8?B?K1ZLU1JmTmFXY1FqV2R4cjNRYVBrbXpzR3o3VUYzN1B4c21VT1g2SUQrekFL?=
 =?utf-8?B?b29ZekVxTmFqOXptYTMxZDNHS0h5d0FmbFRNT0lSL0h4SDBoK3p2dVFLZDF5?=
 =?utf-8?B?TUhWdkU2SHRDbEg0UjRpMlY4Y1pNZlRnMkZaQ0FFR0tBMnNtS0VEZHMyUFh0?=
 =?utf-8?B?WXBpWU9FV0lhaGtIbS90b3A3NG9OOGFydXpRM0w0cC9JUzNUWXZNNzFzUklF?=
 =?utf-8?B?MHhMVzg4bWtzMHdJVlpuLzYyUW5CaktXc01HZ3lBYzBPL2drSXkyWG93SndO?=
 =?utf-8?B?WUJHTUhnVTFheUxLZnEzVFB2enNQTGlNb0lOK3loYjUxRzdXYVprK1Y5RExw?=
 =?utf-8?B?S2I1NXpkL1ZtUUJMTHJDeWtIUEg1dUlkK3FDcW8wbkZLYmhXdThPVEhla2pk?=
 =?utf-8?B?bWJodWtKSzdRSTJYVmVsYVhENnZYRUpwYnV6cFBmOWMrY1F5ZDllNVJ3aDhJ?=
 =?utf-8?B?dDJrVDk4bFJKbGpKSzhYWU5RbXQ3OWVIS3RadXdqQUFxZlpLNkVJMjl5LzFR?=
 =?utf-8?B?MEdJd2RXRmxHczdsVnVoQm4wa0pZYUVaQWtITEIvaGpjR1VaV0M3VFZuRmpq?=
 =?utf-8?B?UFUvdTdmcGl0ZEdEYUZOUHZvODZFRURpNkVQTmRaclcvVWYrOGtFekJiWlhX?=
 =?utf-8?B?aDdoL0Rsak40cmord1RvSmJNSGhhQ0hjM1pHTithdnJFcUN4TmJlWmJxclVI?=
 =?utf-8?B?Zk1mYlZzeDhPMVRQNmpVYWZZWEFqYm8xK2krNXFQd1pEdWhEemVtRncrS3Iw?=
 =?utf-8?Q?2uur2OaHiFdRPMx3ss1NQiGb49eJxGgeinKlc=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(1800799021)(376011)(38070700015);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B1FC6204FFB46841889348D7065848CD@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5716
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000191.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d6894c4c-281e-46a3-c6fa-08dc91f55046
X-Microsoft-Antispam: 
	BCL:0;ARA:13230037|376011|1800799021|82310400023|36860700010|35042699019;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?U21veUZuZGdEMWxHN1pnMkpUbjRMUHJMMkY1V2FaME5HSm05YjR0ZEZyTWlm?=
 =?utf-8?B?MnFmVXFZcDU4TDRxMk8xYmR3MTdzWHJlOTdPWGd1Q2RtaXdzd0d6SEUxTWJ3?=
 =?utf-8?B?amlGeXdMQ0tJdWUzOEVtNk8wNUZnaFZvSUhubXVWa0tmTHJaS3Q0M296c1Fl?=
 =?utf-8?B?YklkYVdRUG4xOUczMlJFVEVVSDV1QnJIUXYybmwvbm52RUFtWURSYXpQUWVF?=
 =?utf-8?B?ZVphbzZNWnJBbGVORHFleHloWU9qUDJtOHd1WjNYUG9zMExTQUZqYXRTT082?=
 =?utf-8?B?NjBJdm1lY3hjbTY0NGlURkZkN2RhUHJjRnZkd1JwRU5EOFNNRFU5WnRaMTNB?=
 =?utf-8?B?VzdqMkpoM2JsN2VpMUNzblFZbmlRdU1GWFpMOUhheHpXTHFPelBRUU9lVmNT?=
 =?utf-8?B?N2dlb0VtdXYvUEtlaXVNc2Y5NGNlU2tMMmhsZEFBTUY0Ti9EejkvemZoY2hz?=
 =?utf-8?B?cWlKMjdsb045WTdRcTNVTEIrZEtzSlZlMk91Vm40SGhiNzlYaFdWR28rWVVX?=
 =?utf-8?B?UkF3aTZEQzRZVjIxYnR2a1NTa0F3aHVkNExWb2JIL3ppcHJ3ZUpiQjB6Y1Rs?=
 =?utf-8?B?TEdHcXdPMlNGZDBDR3VMeUJNS0FNUHNVNGN0Slk3YWxrN0hrUE5wcUo2d3dK?=
 =?utf-8?B?Tm1aMWJlZldsZ1ROa1BWNjNDQ0d5RlFoZHB5MzR4OGM2L3Z3bGxLUEFGWWJK?=
 =?utf-8?B?bzQ5MGxQTHpuWnhDRDNmQnRaR1dldXhLbzBwWFdGYzljUzZxNkhWaW9QTHBz?=
 =?utf-8?B?TGUxWTBEN2djL1U4dlFpZys0K21HK3liaEdWMXN6YlM0RjIrT0wvVG5EQ0Jz?=
 =?utf-8?B?T2JRcnhwR3pCak1YYU4zTXdGZlAvU3pSdmRqMHFJTzkrdGttbG0zeDNheTlQ?=
 =?utf-8?B?RGR2MnRZRXZuMUIrZnNXaE1lV2h1M1RyMXRjT01RSkRDL29od0xlQ1orTjJa?=
 =?utf-8?B?cWczV0tCeUYwV0pvQnV1bUZGNHBpUDBvcEtCSXIrby9jWitvQmx2ejk0NFcr?=
 =?utf-8?B?UDE5MzcybWFNRkRNUUo4ZlZCa2FIZzltQmZrYUVwdEF2bjVKbTFZYmd2alM0?=
 =?utf-8?B?b1dGcWRxRlNYcFpmc2N0Slhiak1SdXBnZVBMdVl3WUVybUdRM01JbW0vYWcv?=
 =?utf-8?B?ajcrQUhYdCtHbEVpS1R5cktoSHRpWHhrNEdQdjByV01BNmo3VzFvdzFlMmZa?=
 =?utf-8?B?U01KVjVmdW11QkhPRUNEN3VidEcvQmdVWXYyNjE5TWEzbFQyTjR1Q0ZoZjRr?=
 =?utf-8?B?UG1kZG85dCtYdzRLbDc4U0FaRU1jR2RueWM2TmxmWmkxdmcxTDMyWjFXbnpx?=
 =?utf-8?B?ekhVSnhhZHRhTWMveWpDd2hvbFdaR2JEVy9wYnUwS2pFd2MrREQvNmdza3Ev?=
 =?utf-8?B?NXRvTmliMm1hTnhybm0vSCtGYlZVbW5rWTB0c3FxWkFUZ2VMK1FHUW9LYVJU?=
 =?utf-8?B?YXhZbWxpWUxoYnRUbURTa08wN3cwN1FIcjc3RERUMlQ5SjBUNjRmb3cwSXRQ?=
 =?utf-8?B?ZHR6Tmh3d0sxN0N6UE5HNGxJNnZBWW9pRUUrKzRCdnMzVkpobERUdGNjeVZ1?=
 =?utf-8?B?a2tldFhFZjRpdnBURlUxd2RaYThuUEw1SEhWRC9pbWlPaWtkZEpnWFBBMTJF?=
 =?utf-8?B?bUpCTmNNa201bDdyS1cxb0Z3V3VMS2JESFNrbURCZy9mRDZlVUNxUHNESUly?=
 =?utf-8?B?eHVKUHIvMTNlaENpb2MxZnFtYkJreXdYL3VaOG40OVRSVlo3REU5aERndGtp?=
 =?utf-8?B?SnB1cXlhUWlSd1plSG9EZmFOY04ydDhkRFhnQnFybEFWUmRZN3Q4c3JQaE4y?=
 =?utf-8?B?bXF3YU5iMHJyeUNoRmlzQkE1VFh1VG9mZUhrRStFVGNsUGgyc0tvNWdnaDhl?=
 =?utf-8?B?UFpvNlp5ZGFuRjM2cFZDd0QreU01S2xlcE90UHRVem95Smc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230037)(376011)(1800799021)(82310400023)(36860700010)(35042699019);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2024 13:23:27.3095
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8dd496a-4338-4ffc-93a4-08dc91f555e0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000191.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7725
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 21 Jun 2024 13:23:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13385

T24gMjEgSnVuIDIwMjQsIGF0IDEyOjQ5LCBOaWNvbGFzIFdpcnRoIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxuaWNvbGFzLndpcnRoPXNwZWVkZ29hdC5jaEBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+IEhpIGV2ZXJ5b25lLA0KPiBJJ20gY3VycmVudGx5IGZhY2luZyBh
biBpc3N1ZSB3aGlsZSBzZXR0aW5nIHVwIGEgWW9jdG8gU0RLIGVudmlyb25tZW50IHVzaW5nIHRo
ZSBiaXRiYWtlIG15LWltYWdlIC1jIHBvcHVsYXRlX3NkayBjb21tYW5kLiBUaGUgU0RLIG5lZWRz
IHRvIGJlIGRlcGxveWVkIG9uIGEgbWFjaGluZSB0aGF0IGhhcyBubyBleGlzdGluZyBpbnN0YWxs
YXRpb25zIGFuZCBsYWNrcyBQeXRob24uIFRvIHdvcmsgYXJvdW5kIHRoaXMsIEkndmUgbW9kaWZp
ZWQgU0RLX1BBQ0tBR0lOR19GVU5DIHRvICJkb19jb21waWxlIiBpbnN0ZWFkIG9mICJjcmVhdGVf
c2hhciIgdG8gZGlyZWN0bHkgb2J0YWluIHRoZSBzb3VyY2UgZmlsZXMuDQoNClRoZSBTREsgaW5z
dGFsbGVyIG5lZWRzIFB5dGhvbi4NCg0KPiBTaW5jZSBJIGRvbid0IGhhdmUgUHl0aG9uIGluc3Rh
bGxlZCwgSSBhbSB1bmFibGUgdG8gcnVuIHJlbG9jYXRlX3Nkay5weS4gQ291bGQgc29tZW9uZSBw
bGVhc2UgYWR2aXNlIG9uIGhvdyB0byByZXNvbHZlIHRoaXMgaXNzdWUgb3Igc3VnZ2VzdCBhbHRl
cm5hdGl2ZSBhcHByb2FjaGVzIHRvIGNvcnJlY3RseSBzZXQgdXAgdGhlIFlvY3RvIFNESyBlbnZp
cm9ubWVudCB3aXRob3V0IFB5dGhvbj8NCg0KWW91IGNvdWxkIHJlaW1wbGVtZW50IHRoZSByZWxv
Y2F0aW9uIGNvZGUgaW4gQyBhbmQgY29tcGlsZSBpdCBpbnRvIHRoZSBTREsgSSBndWVzcy4gIE9y
IGhhY2sgdGhlIFNESyBnZW5lcmF0aW9uIHNvIHRoYXQgaXQgY2FuIG9ubHkgYmUgaW5zdGFsbGVk
IGludG8gYSBzcGVjaWZpYyBsb2NhdGlvbiwgYW5kIHRoZW4geW91IHdvbuKAmXQgbmVlZCB0byBy
ZWxvY2F0ZSBpdC4NCg0KTXkgcmVjb21tZW5kYXRpb24gd291bGQgYmUgdG8gZW5zdXJlIFB5dGhv
biBpcyBvbiB0aGUgbWFjaGluZS4NCg0KUm9zcw0KDQo=

