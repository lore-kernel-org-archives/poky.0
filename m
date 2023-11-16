Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D90C197A0
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 11:53:27 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.49])
 by mx.groups.io with SMTP id smtpd.web10.4986.1700135598868371011
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Nov 2023 03:53:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=d+tU38pv;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=d+tU38pv;
 spf=pass (domain: arm.com, ip: 40.107.15.49, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=O72+AHupAd186dq2EfSG6gF6pn3Jckh9CjRaSS7SrEcmVYIzWKS2+LLvckt5G+fBugTNDCbin/Guz/e0WO2QVN7D5vIG/koSag1JW5u2hk4+ETmpDLRRI+QCNpI8EFd8wJE5bhVBXCP8jhPh+LN8FMMKrUVCFKtzLLYgw+KqgFjKx+QLqGcyzdis4ogFHDZ8kVMH6q95kmMbUpFr5Sq4wTRowAVmDtmmu73YzvmXhCuuyfoEsrW+XgrGXAazqN0ClF37aaVmeWbBwK28JVSFz9O0e9rXG+0IXyftnV77hdR/4yAOxlPMSIKZG2CBJ17WHo8cEc8RPlijYA1ARTlRxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=gDHjkudMeJkIiZqRV9C6Ox7TnEqHwW+9Lof8GEl5ra3KzFVeHQEaRjX+qDkQRITR4jEelXyIKgOCS0M8xe9rl86bvEbNzggLXgvm6Wedk8EIxwfTflIZHK89G9BXoY1heQTtBHlYxNOKY7s1RaTtYdjZ0QxELGbaEAXdLvH6LSyICPdMFfvjBdoKXSv91iNaJ12toxF8ktX8obpVsNOfA1zDQRZttnbXGn6wJ0E9IxzvJxeOnC02eHPupEWLswxjSPl5IwqDH6m/yTyu0OufxWnrBCpsejuVKvxitgzEI3wi6F0lCItCqsowQw+NjfOr0ziyOZadENTDrRgHXWhNvg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=d+tU38pvWYSoTfNLXxShSOi59osJJWbiHjXIKNerjwkYKHS9d3cr3ZhJ0mmQ5z2Txv89xngCSkX0x/g+J+K3JSrHYwA0c1+1exiattbWvVZfQBt6j/0t1L80mJ8caP8v5+Tta6aC21CAjuKjxyF7l/fwK7ZBqoo2h40DVQc6sqw=
Received: from DU2PR04CA0313.eurprd04.prod.outlook.com (2603:10a6:10:2b5::18)
 by AS4PR08MB7688.eurprd08.prod.outlook.com (2603:10a6:20b:507::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 11:53:15 +0000
Received: from DU6PEPF0000A7DD.eurprd02.prod.outlook.com
 (2603:10a6:10:2b5:cafe::32) by DU2PR04CA0313.outlook.office365.com
 (2603:10a6:10:2b5::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21 via Frontend
 Transport; Thu, 16 Nov 2023 11:53:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000A7DD.mail.protection.outlook.com (10.167.8.37) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.20 via Frontend Transport; Thu, 16 Nov 2023 11:53:14 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Thu, 16 Nov 2023 11:53:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4f8fdafdbf2e41f3
X-CR-MTA-TID: 64aa7808
Received: from cdf57d0d1b0a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id EE571733-D189-49F1-8970-C0AEFC2093FF.1;
	Thu, 16 Nov 2023 11:53:08 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cdf57d0d1b0a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 16 Nov 2023 11:53:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mgFRGqFk/A2uBJTSyQF1ulCAgepSNMgmcjp1ZvUW8FIbShA6qMDdT142UE0eMDIWIwuO7TOHDBTC+4SeaS7gv1riDHcyWe/Bhv/esPEgqSrcAYl7ug+qBLb5yBiT+3BenTy8QQkHfodhibTfBmbEjtiLuq+AXEuIva6bm0U5dwKs9LooXiKK4QapQStVCU0X+NndTIrpYKXHOYf0Wwap+aY37iefmMHL0tDCLihr9IEEYIsMYD1cDMDRdOJbQxFO/3YYuUnGImrXpvCC95UDXsJTtVBJ+uoD3+deYmEI26odkSmaPry8Xh0H66NThuDaHjW1gsOPi4cuZ/Id+0v2HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=SJsSkaV1UEJR9/BV7BqXbVMpUyNNfmO+QgdJ5zMzl3mRlnYUZLrSQ15JX72/tBKaXo+vCsJv3JATtlKroMP1Ak3mnt5JuV9F+5TMMmz/cEJ3yVyRaHTNHuJslVfj+Do4iaaNGjL4LzxATR2Go2+evFMRNfSy7qi8I5SM2r5kaxBGcNvyqz69EQhm0yGjBPwd8zTtDrrh44ES3LEt+d9SJK2fQ/K4h/yc8ponJhw/YVwj9eEsaEHeqevPkXbl5RSdUDlENFDQ3a46HZp+2b5v7SuKiUbSfruJWXS+DyK6ME4EwD+Rf5kdgsJvN+TIr2GStKBHKR7WA3A6WGydfoDMmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=d+tU38pvWYSoTfNLXxShSOi59osJJWbiHjXIKNerjwkYKHS9d3cr3ZhJ0mmQ5z2Txv89xngCSkX0x/g+J+K3JSrHYwA0c1+1exiattbWvVZfQBt6j/0t1L80mJ8caP8v5+Tta6aC21CAjuKjxyF7l/fwK7ZBqoo2h40DVQc6sqw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB6369.eurprd08.prod.outlook.com (2603:10a6:20b:354::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.20; Thu, 16 Nov
 2023 11:53:07 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 11:53:07 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Naveen Saini <naveen.kumar.saini@intel.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Topic: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Index: AQHaF+VVCd9cn5HlKk6U0Gs1H8hl87B7m0aAgAD/eACAADxXAA==
Date: Thu, 16 Nov 2023 11:53:07 +0000
Message-ID: <E400B826-3AD2-4F59-9036-699CD2BAE73E@arm.com>
References: <20231115170039.486447-1-ross.burton@arm.com>
 <5CA7721D-98E6-445A-8D8E-5C298118DB03@arm.com>
 <CO1PR11MB5026A695EC1B8DA80DF192F5C4B0A@CO1PR11MB5026.namprd11.prod.outlook.com>
In-Reply-To: 
 <CO1PR11MB5026A695EC1B8DA80DF192F5C4B0A@CO1PR11MB5026.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB6369:EE_|DU6PEPF0000A7DD:EE_|AS4PR08MB7688:EE_
X-MS-Office365-Filtering-Correlation-Id: c5167408-d8f4-4f96-bf17-08dbe69a9dc6
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 HDcplkw9LuRKCXYpE2Zvdcs2XmlAnBj0JKiBvupIb6GJxXELL9V9LbWS5Cee53216rvv6+EFeoOf2w1ejtqDuBfuSxYkT7IGacD9Q8CuxjbIW2PXtsdpmVMQcqNqL+vhxdvF9tMiPxcJ2+szbuDKMmlhNphGHDZIYcVa2Tf91QxJo9o9s5DCdoQemWCruP0fwxYamW4HeIjEwmxtWveybURLVOzp7PRuHZnMIIAdI7l+ok75qjDE+exwTysBfDpd8s0Lp0ORmUepF6KX9cLfFkDUl0ZSzByDJ8wQATjY2/VJjv5yyAGSGrXkibpPRFfXknERf+39SNhQ7Rwf+qXCOO/4k/bHg0uz9h6iodx4onuBeRZk084w0TAKKUA4uPMsbOD1pHU+eNGYlQZD4q9Y0LnZExjylK9gzeLiMxfPjX+UoGgfOioaEsduTu0yJdDk1lw2IVpdNzbfu21afk/6YJRvmml/Lzd7+VxNkBhOUe4h9QvTnOjtfTV6FYSsrJljYoh17Q3DvCLnt9+C/y38rDQisIHDlkrbcGVg3fT8ftThWwuQk3ojuCwRnMmCvWvwZMoDbK9745R8mXvchLILVZnSlRLmni8HfH16fzSInEF1jL0L1VkgYJbeh6cOn6sAaJue9+ojPDC1rdBxEb3z2Q==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39860400002)(366004)(136003)(376002)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(6486002)(478600001)(2906002)(2616005)(6506007)(5660300002)(53546011)(86362001)(71200400001)(8676002)(558084003)(4326008)(8936002)(33656002)(76116006)(6512007)(91956017)(66446008)(66556008)(316002)(6916009)(66946007)(64756008)(38070700009)(41300700001)(66476007)(122000001)(38100700002)(26005)(36756003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <CA6B4A43B9FC674087A3AF9746468EA5@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6369
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000A7DD.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e962facc-a481-4b54-f7f8-08dbe69a9913
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kZGi8VX6iRboD5SRzHXUf0a2Dyz9JaBg1H1vkVsI4DR0WiXeyfW0GDIliDitUdQ7l7LTmNuASx6+rgSZZH/DfsWG9lqwfKXPDrq6yLmZkXqVqd5qOQ04+KuuCPy6Sulj+tTUE7bIkUOb5bLJLutpKytU00FcbdLy9bVmq1Doo8HUxUIVVKkgB3xXela6iikzn39SsgQ4F0IaQoBEBO8DNmgvNjm1eZnTlWO3XXNCFnhYqnAWYoRjEazGLbPx76nvumQ3XMQ6LQOMP079JAlE0fdgqGQB30eZHcTaUiuhhT2ARtcPhQ3/D38CJ7N6aOZTXbT+LxJyKwASaTZhqdu7g0VOkE5bp+am16sjDG0umqPusCDDq7/O2so1dhkcPeIlLSOv3iqeaLrRVnYhEd67w6T18yuGvQWALHCLM3OYFTKgc9P2CvI9o80O8+eLDNjlksHUlyqDOQJWOwNfY1Kc28hNqNIsAFZyJNQMrFKdiHZfEzjMUhHbz9PBVV10J3v/RVbD4TfjO8k/fUmlZfOpCMZrKtYFQSFnZfOdH9g1wT7uk8C4V3jTcmQ8hpbqi7LBVVrUJHtW/WvIO1zOHNClAAitACbFY26bNeQLcl50RjGqwfoNfxbNaSk9K9HwsJI++rTDsGhyRc/ewIQz72F0Qi/HT7NeDyAwp7AQo4hoPCIMLrtEmpN389wZYYoXgdBEXwjooCSfneSFToW0qydNLjlf56n1ssJyhxiTfMslSK3bS++Pt35NEm9e6/+DoNao
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(39860400002)(376002)(346002)(396003)(230922051799003)(64100799003)(1800799009)(186009)(82310400011)(451199024)(40470700004)(36840700001)(46966006)(40460700003)(336012)(6506007)(53546011)(2616005)(6512007)(36860700001)(47076005)(6862004)(4326008)(5660300002)(41300700001)(8936002)(4744005)(2906002)(26005)(478600001)(6486002)(8676002)(316002)(70206006)(70586007)(36756003)(86362001)(82740400003)(33656002)(81166007)(356005)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 11:53:14.9457
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c5167408-d8f4-4f96-bf17-08dbe69a9dc6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000A7DD.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7688
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Nov 2023 11:53:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13207

T24gMTYgTm92IDIwMjMsIGF0IDA4OjE2LCBOYXZlZW4gU2FpbmkgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPG5hdmVlbi5rdW1hci5zYWluaT1pbnRlbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+PiBUZXN0aW5nIGJ5IHNvbWVvbmUgd2hvIGFjdHVhbGx5IGhhcyBhbiB4
ODYgYm9hcmQgYW5kIHVzZXMgZ2VuZXJpY3g4Ni02NA0KPj4gd291bGQgYmUgbXVjaCBhcHByZWNp
YXRlZC4gIEl0IHNob3VsZCBqdXN0IGJvb3QgYXMgdXN1YWwuDQo+IFRoZXkgbG9vayBnb29kIHRv
IHVzIGFuZCBhcmUgYm9vdGluZyBmaW5lLg0KDQpUaGFua3MgTmF2ZWVuLCB0aGF04oCZcyBtdWNo
IGFwcHJlY2lhdGVkIQ0KDQpSb3Nz

