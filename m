Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5387CCDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 12:18:48 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.60])
 by mx.groups.io with SMTP id smtpd.web11.52918.1697804318040657428
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 05:18:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=7+ek7JTj;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=7+ek7JTj;
 spf=pass (domain: arm.com, ip: 40.107.249.60, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9g4Q6aGMy8ryuoi6JfsZ6RTh8hmUAqzU15HYI+trnK0=;
 b=7+ek7JTj5wtmZLr/0ddfVyhy/hqEj4iD+LVSF1305jDqtl4N9yoLhGRLHs/ePmyQ4S3rUydY3Ia8h0gnxQnVHcI8pYnM2g0W8hd7Tckw23mIjDz0RQeNXtaIknoMxKygUtNoVwaU2LY69h5xXyYNlIU/QQ06cS+bI9F5B1cnJkc=
Received: from AM6PR08CA0036.eurprd08.prod.outlook.com (2603:10a6:20b:c0::24)
 by AS8PR08MB9504.eurprd08.prod.outlook.com (2603:10a6:20b:61c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 12:18:33 +0000
Received: from AMS0EPF000001AD.eurprd05.prod.outlook.com
 (2603:10a6:20b:c0:cafe::7c) by AM6PR08CA0036.outlook.office365.com
 (2603:10a6:20b:c0::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26 via Frontend
 Transport; Fri, 20 Oct 2023 12:18:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001AD.mail.protection.outlook.com (10.167.16.153) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.20 via Frontend Transport; Fri, 20 Oct 2023 12:18:31 +0000
Received: ("Tessian outbound 028b72acc2da:v215"); Fri, 20 Oct 2023 12:18:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fd4b712bfcf59f83
X-CR-MTA-TID: 64aa7808
Received: from 32e1e867f03b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 664943BD-84E4-4BB1-B9DE-8340A013D172.1;
	Fri, 20 Oct 2023 12:18:24 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 32e1e867f03b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 20 Oct 2023 12:18:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X2wyAMdQfXoAX1K2TqwMzgYcPqpWsuywBP0Ck+LqyVqZxJVZZW9xCD7RJ8loDLyZp2dcpDAKLPD4Sl7Vu9tQ4w4Bc4WUuL83SAu2WD2KAIjVB8Dd6kBoygrXRRiTpb617YUbfHG7hZJgFjpUgxzspkzeG2WI7M9BwjbV3s7Ytf2fS+old1KMbJLQbLU/AzFAvYxbIdvuQB7tKhA0au2cwZdUjTqbXtI1WUIHdEaU6GIsh1LTRglQl81EKvUNinauLteCHuYgbQhJJsuXjptjmDmp8BZQs0gRXJgCmd4kovlojcEphkgJQcj/VHVIbS2w5MYC/0HpDpTg4JucJPcLcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9g4Q6aGMy8ryuoi6JfsZ6RTh8hmUAqzU15HYI+trnK0=;
 b=OHC/b7LLqFbw4lQZdZIZAhfwKTx9BYFUXaGAOowOmvD82B0X2buL8VkaUE2zxDd1YDP0cm7NDQ8bnryThkdM7xx69CK2JT4mm+lIj++KB9ZcAo1Xkils4oBq/JPGfmNEKTbFsuaXeadnoeVDXnEL+XGg6BU3cbWNYMbZicgPGx0sWcZqaHDKg4n6YEzsU3+aAykYRY7lAIAqdj0cPjtneHXzXWcKfPjZemvgjAPc91DSYoOT7fxBSmo07rmbYjrnnWCIMEgevqUiQdfWrkN4kbNDXyM09vzWmR3duhHr1/djxEtc1iVI8R0DfamUCYnEovgizICfL7rv0kANvvOyQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9g4Q6aGMy8ryuoi6JfsZ6RTh8hmUAqzU15HYI+trnK0=;
 b=7+ek7JTj5wtmZLr/0ddfVyhy/hqEj4iD+LVSF1305jDqtl4N9yoLhGRLHs/ePmyQ4S3rUydY3Ia8h0gnxQnVHcI8pYnM2g0W8hd7Tckw23mIjDz0RQeNXtaIknoMxKygUtNoVwaU2LY69h5xXyYNlIU/QQ06cS+bI9F5B1cnJkc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB6603.eurprd08.prod.outlook.com (2603:10a6:10:25a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 12:18:23 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 12:18:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "gs-yoctoproject.org@gluelogic.com" <gs-yoctoproject.org@gluelogic.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, Glenn Strauss
	<gstrauss@gluelogic.com>
Subject: Re: [poky] [PATCH 0/3] lighttpd-1.4.72
Thread-Topic: [poky] [PATCH 0/3] lighttpd-1.4.72
Thread-Index: AQHaA0tvgTBQhnG7jUCtWOLliAzzfLBSmGYA
Date: Fri, 20 Oct 2023 12:18:22 +0000
Message-ID: <32D688B5-0765-4F89-B0FD-1BADD4458601@arm.com>
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
In-Reply-To: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB6603:EE_|AMS0EPF000001AD:EE_|AS8PR08MB9504:EE_
X-MS-Office365-Filtering-Correlation-Id: 84724e76-3dc0-4dbe-159a-08dbd166acbd
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 6hKkYMcjtTt9GXmd1zJC9nLhYDdP5lta7KN/lGJEPqlm6EQbozKWElEYqpFJeoqpxINhevrutjhbLtkXHBlCgrr3zf9D63hXN2Eb11kkLIUUsS6eQlEgpZjRz4MO/nL3m6sICQPhFztrxjbQhvfVocuC4xfjInCY1JowjMxMCJv+sFIAqiq7/7HdNQvZeXACUb9jLEUM83iMakfk375K5A2FabRA3ps2xaZh30M2J43hufcInf70nrHKmyosXM0Iw4dib8ejwbB+KcdfDWdSjsI2FpS25OxBXnkG8F/be8p+cGCK+lnJb+i+b8z36f7LKOf/90Vbc1UDzGYGUIqg9QrO0q1eZga3/TPDDtQZ3G76bzwLPc6vwJlgsL43YXfhNUaaxoOAALNyTZr/0zrRf3c6WvhEpyKSdHiXapOl+br9Vr7YPv+8R7qfG1h2Y9ie9nM9QKsnxzMTrs8Dzo4nf8D+FuCFOZI0WqA/W/vJrBO+eE5rn+AK+f+CCkWdTqa3cldRyz1IFtWx9eFNs4KJfW1HTnSMPiUljOubOd1qK0+I84Iu3wrxGgfRurNCsZZgPIMoI04KuekUTJQ15XR+NV4WsVjYnkJvIDikgTfv0GPY1TAR6WRyQjpxzNE0LVWOdIXTFvWRd6BtCqPOUXGPBw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(396003)(136003)(376002)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(41300700001)(38100700002)(6506007)(36756003)(5660300002)(4326008)(86362001)(26005)(6512007)(2906002)(122000001)(83380400001)(2616005)(53546011)(38070700009)(71200400001)(8936002)(6486002)(8676002)(33656002)(478600001)(91956017)(66476007)(66556008)(54906003)(316002)(64756008)(76116006)(66946007)(6916009)(66446008)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <EB3B331491D56D4498C5CDA77794DB59@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6603
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001AD.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7ab35fbe-370c-43a4-7ade-08dbd166a765
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	R7SjoDEonyNEH8McQTMaBwvt1ac1C0EtlUD5VgdnJSO2pm0aYeNTeJVbkYBXoOw7d0zaJ3VfN6eQJHOvrYiDpHRZEvrRj9vLGBOK3OyWX7gntBr8Y6BNQH7N34xxplXYbqxFEZxQzAwTrkAx2jvdPcxbtQEjRqoJGHhgaC+YSBNPPt8Y7OPjhQkQZTrqidRu/egXIrBbsOH4IeJul8hULpdYLLJ/z7MEwPkNfC3qLLJfzj5hn9jrSU12kGwo9ceU63xUxgTqCbPKTAL741J2r3ZVyJO9vl+FUihHH52u0AKvsvANnf8W1z7Nn1Qo76QcregNmYPqNKRPuChRqocqGOaUd4mPx9g3I/7BnrrJDiynL7ifEzSRZa1PLIllWa29F1cZV7xvMaDHOaCMg2mcQuGQTEGXc50tr8PpJ+4u/Ds/eMoJNK/PuI9rybHB9nH6G95KTuU8sap7Cz6I2l0COhnMoeWcHwdKEKLqIFFinJ2OGAxZLwAIkVFKQUs+14gYBX1GGivLTROPwY6/ISt4xg9toJ87ypV43KqGIW4wz6k6Ug3dtI3oyQYWVY6HaW8BKv/8odbOeAP1uiR6dyBIwvszfeQfrOjgdX1YFO428MAzwUzqyabENeOFXVnn2/jtucZXzefnLdE57vxXH2lW4C+4tUp3AxUSxt1nS8vo3zxUJKqQ9emo3Uqx8i2mWgFR6xvHRu5dr8h7y7EUpVqmWXI9HqawZ7YYXPbbCKuKq54=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(346002)(396003)(39860400002)(376002)(230922051799003)(186009)(82310400011)(64100799003)(451199024)(1800799009)(36840700001)(46966006)(40470700004)(4326008)(40460700003)(86362001)(81166007)(6506007)(47076005)(41300700001)(6862004)(2906002)(83380400001)(6512007)(356005)(40480700001)(82740400003)(336012)(36860700001)(2616005)(107886003)(5660300002)(26005)(316002)(36756003)(33656002)(6486002)(8936002)(54906003)(478600001)(8676002)(70586007)(70206006);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 12:18:31.7374
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 84724e76-3dc0-4dbe-159a-08dbd166acbd
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001AD.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9504
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 12:18:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13188

T24gMjAgT2N0IDIwMjMsIGF0IDEyOjQ4LCBHbGVubiBTdHJhdXNzIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxncy15b2N0b3Byb2plY3Qub3JnPWdsdWVsb2dpYy5jb21AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZz4gd3JvdGU6DQo+IEdsZW5uIFN0cmF1c3MgKDMpOg0KPiAgbGlnaHR0cGQ6IHVw
Z3JhZGUgMS40LjcxIC0+IDEuNC43Mg0KPiAgbGlnaHR0cGQ6IHVwZGF0ZSBpbml0IHNjcmlwdA0K
PiAgbGlnaHR0cGQ6IG1vZGVybml6ZSBsaWdodHRwZC5jb25mDQoNClBva3kgaXMgYSBnZW5lcmF0
ZWQgcmVwb3NpdG9yeSB0aGF0IGRvZXNu4oCZdCBhY3R1YWxseSBoYXZlIGFueSBwYXRjaGVzIGRp
cmVjdGx5IG1lcmdlZCBpbnRvIGl0LCBzbyB0aGVzZSBzaG91bGQgYmUgc2VudCB0byBvcGVuZW1i
ZWRkZWQtY29yZUBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxtYWlsdG86b3BlbmVtYmVkZGVkLWNv
cmVAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4uDQoNCkhvd2V2ZXIsIEkgd2FzIGFsc28ganVzdCBs
b29raW5nIGF0IHRoZSBsaWdodHRwZCByZWNpcGUuICBTcGVjaWZpY2FsbHkgSSB3YXMgZXh0cmFj
dGluZyB0aGUgc2FtcGxlIHNpdGUgZnJvbSB0aGUgbWFpbiBwYWNrYWdlIHNvIGl04oCZcyBlYXNp
ZXIgdG8gYWRkIGluIHlvdXIgb3duIHNpdGUgZmlsZXMsIGJhc2ljYWxseSBwdXR0aW5nIC92YXIv
d3d3L3BhZ2VzIGludG8gbGlnaHR0cGQtc2l0ZS1zYW1wbGUgYW5kIHRoZW4gcmVjb21tZW5kaW5n
IHRoYXQgZnJvbSB0aGUgbWFpbiBwYWNrYWdlLiAgVGhlIGdvYWwgYmVpbmcgdGhhdCBpbiB0aGUg
c2ltcGxlIHRlc3QgY2FzZSB0aGUgc2FtcGxlIHNpdGUgaXMgcHVsbGVkIGluLCBidXQgaXTigJlz
IHRyaXZpYWwgdG8gcGFja2FnZSB1cCB5b3VyIG93biBzaXRlIHRoYXQgY29uZmxpY3RzIHdpdGgg
c2l0ZS1zYW1wbGUuDQoNClRoaXMgd29ya2VkIGJ1dCB0aGVuIEkgcmVhbGlzZWQgdGhhdCB0aGUg
Y29uZmlnIGZpbGUgaXMgZmFpcmx5IHRpZWQgdG8gdGhlIHNpdGUgdG9vLiAgQXMgLSBwcmVzdW1h
Ymx5IC0gYSBsaWdodHRwZCB1c2VyLCBkbyB5b3UgaGF2ZSBhbnkgb3BpbmlvbiBvbiB3aGVyZSB0
aGUgbGlnaHR0cGQuY29uZiBmaWxlIHNob3VsZCBiZSBwYWNrYWdlZD8gIEnigJltIGxlYW5pbmcg
dG93YXJkcyBidW5kbGluZyBpdCB3aXRoIHRoZSBzYW1wbGUtc2l0ZSBidXQgYW0gdW5kZWNpZGVk
IGFzIHRvIHdoZXRoZXIgdGhhdOKAmXMgYWN0dWFsbHkgYSBnb29kIGlkZWEuDQoNClRoYW5rcywN
ClJvc3M=

