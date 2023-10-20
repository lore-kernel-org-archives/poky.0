Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D551ECDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 13:56:18 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.41])
 by mx.groups.io with SMTP id smtpd.web10.54893.1697810167949198479
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 06:56:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=EPfjJTKw;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=EPfjJTKw;
 spf=pass (domain: arm.com, ip: 40.107.14.41, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7NyJrirmeOBACxFnaDIzn9r0X3/cE5VbeEkGqVl+fcU=;
 b=EPfjJTKwFjPp2uLFnYHPih5h+b4D3cK6VnJF8wYHf86Rn1VhqMHH3gxxjofwQINzmInWeK28RaxMfAk8Zn93HByuKJ9n++zNXbQu8SYCOYh/9vi2NJuI9OTC3iCzhIDN7GPLxfUY+HkvGSlTSXO1ss3wjti4ZG0KZZyCQo9JyeE=
Received: from DU2PR04CA0268.eurprd04.prod.outlook.com (2603:10a6:10:28e::33)
 by VI0PR08MB10827.eurprd08.prod.outlook.com (2603:10a6:800:203::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.23; Fri, 20 Oct
 2023 13:55:59 +0000
Received: from DB5PEPF00014B92.eurprd02.prod.outlook.com
 (2603:10a6:10:28e:cafe::94) by DU2PR04CA0268.outlook.office365.com
 (2603:10a6:10:28e::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26 via Frontend
 Transport; Fri, 20 Oct 2023 13:55:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B92.mail.protection.outlook.com (10.167.8.230) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.24 via Frontend Transport; Fri, 20 Oct 2023 13:55:58 +0000
Received: ("Tessian outbound a024c74d4d6d:v215"); Fri, 20 Oct 2023 13:55:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a88dd679b560ad17
X-CR-MTA-TID: 64aa7808
Received: from b4bc5653e906.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 847D7E82-2AC7-43FA-A742-24D05D0FCDF7.1;
	Fri, 20 Oct 2023 13:55:52 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b4bc5653e906.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 20 Oct 2023 13:55:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=auiHrE9vd7uet9+YnaOGJVsJi9IDV8wj/nitZDnjeplNJ49bQSEJ4sbCaln6urKn7YurOYhrJM/5TvJ8m5F1x+GntHb9/2L+WuFlgYIWVKVL3sEk15aFHGB+bwlERw7c2DTCnv6eqGDI9wyt+hhQEg7TzIHIIrb9kYVNsRidukh+tmRHPcmnODxWqUzXZMapzRVjpXUDMtQCyn6MrG1+2W2xEGvTc6yvhJkrIHGtqYRqK6iDcXnc0JdO6Nf3OhtfZswj64uU26qt3ZziCWYxmITw4zkEQ7oVoN6lXrveQSMcwUABpYpkUp6PWqjEb3GTWVnqsDm1E8CtcAx4Q7nXqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7NyJrirmeOBACxFnaDIzn9r0X3/cE5VbeEkGqVl+fcU=;
 b=Wrkp9pJ+CVtVRCNxD0H0AO1SQygjz+KbQOiwP//6ffv5dyPJL/K1HzXq6ac2lUy97Al6MbivQrJUXoO3tymWVJTcrBA53IF03g/KZdEN3zrwjyBfyv/U7p9M4GLkNFVqwT4epyMJMuRuo62MxVTMj/34LtbkXxqajXh0bsfl+LH5G3NvV1owkb08ucr2NuugBuvtII5gOX3fjHyDdYVR7wWV4VoxHA9cz24cRORzvrD2KfmfEGf51Y1kK/crbcWPHAuHD0//AcTEUHkJEDO6gYMDxMtCfOGO6Z/FDVXlhKvhBodKqAQ8X9f9KgNYYpYjIcA2AWbjif+z0Doz5py+Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7NyJrirmeOBACxFnaDIzn9r0X3/cE5VbeEkGqVl+fcU=;
 b=EPfjJTKwFjPp2uLFnYHPih5h+b4D3cK6VnJF8wYHf86Rn1VhqMHH3gxxjofwQINzmInWeK28RaxMfAk8Zn93HByuKJ9n++zNXbQu8SYCOYh/9vi2NJuI9OTC3iCzhIDN7GPLxfUY+HkvGSlTSXO1ss3wjti4ZG0KZZyCQo9JyeE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PR3PR08MB5754.eurprd08.prod.outlook.com (2603:10a6:102:91::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 13:55:50 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 13:55:50 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "gs-yoctoproject.org@gluelogic.com" <gs-yoctoproject.org@gluelogic.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 0/3] lighttpd-1.4.72
Thread-Topic: [poky] [PATCH 0/3] lighttpd-1.4.72
Thread-Index: AQHaA0tvgTBQhnG7jUCtWOLliAzzfLBSmGYAgAAKNwCAABEDgA==
Date: Fri, 20 Oct 2023 13:55:50 +0000
Message-ID: <10278B77-7E5C-43FB-94CC-A1E7E0C50B95@arm.com>
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
 <32D688B5-0765-4F89-B0FD-1BADD4458601@arm.com> <ZTJ4lpMInFmxKpVx@xps13>
In-Reply-To: <ZTJ4lpMInFmxKpVx@xps13>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PR3PR08MB5754:EE_|DB5PEPF00014B92:EE_|VI0PR08MB10827:EE_
X-MS-Office365-Filtering-Correlation-Id: e19b637a-e4e5-4d8c-879f-08dbd17449d7
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 iAjWDwRgXc5bK2nhJtoRD581/nRAU2ytP5952g5AjH0Hy6GkXtCRuJatCEDUNbGuxYspL53o2hx6JvW5GKMTJT8Fh8OT/HjX3pbeTmRWXRM1BNXbjofLCls4L2dD+sNP2nXIsTBIthJSuHq9JhwgKfu1moJEjESVTrn/OBV/tXPTCvcbEfRJhmLu59l/CnMXbV2T5mWk4hyMoTHyd6M3yxMgk1bT3pkjZ5F+u35UOCCLSbw4EFltE1reWb25AQBIL8qaoNUniQlmuqAldiCOzAcgAHdN9H2ITjFwGSnJgPH6lA4yIMxbU72GgWK4cQpZ31jSlU/3XZTaUaYlcriqw1vCab6qiQ1OKY/t9Ccx4SRSYciVKeoEQSgGe7banEdeXD7UypUPVyBYluYNCCk4KJ97AbWgWVEoIEHTxVTMf86CfQPaDJrVMviw1JiJV+rROTEBGVeMzbWQ9wds5zgQsQGH/a7iD5HVHipC+xb4Yi98JDD5E9KyIh8kbQen2ykJ6xxPbhbaQGuHrdd3HXGaprmtzuTfU2qEdsEsFIkR0wu4NAJQ3GuxJnovRayJQM3UkukHfWffQFn2TwbAvpg3wJHdUnEYP6np89VSJg8d6Ta73VzEB6GWZQIFN7Wn0cMf
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(136003)(396003)(39860400002)(366004)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(8936002)(8676002)(84970400001)(38070700009)(66899024)(38100700002)(2906002)(5660300002)(26005)(4326008)(36756003)(41300700001)(316002)(33656002)(86362001)(6916009)(71200400001)(91956017)(478600001)(6486002)(966005)(2616005)(83380400001)(66556008)(122000001)(66446008)(66476007)(64756008)(76116006)(6512007)(6506007)(66946007)(53546011)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B1F009484290F4478BA9E869328541FF@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5754
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d52da583-0fb7-4c32-6de5-08dbd17444b1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	K6nCPF9FC5vLI/XMRnhdZbnmzk83aDRMLCYN0ect0PyaBfQkcURtp5NwBlnVkpsk3ZDZGIz/7QJhGAgGND7/6wJw5G6EvsFroyWcPCMRo7IpZENs/FSjujd39Bx50oo0rVbiFV1RTycQ5D0ISqs0gRVQ8ppA/cdeXN+JcGIWJLOWFU0sZIUyff+1cZn478g1rsLhumiWynMMWMLNr++CirxahQ+qlD6u4inMJJRFFeIQwcH8V3T1dGGr+RWLpMEPN8Jkn+zeQsmQ7TnMgb+SWCcAnQidQmbpN3EoofXwNwWhV5akHMGIXSssr/i8jLSzGM0NbNvuQXd77VCwU4HlfJty1FAHinoXaIsftMASJrDwGmD1JIRoPdu/zgtCl5+0SIvsptxScWtpIIdF9//SpISJBk8SMZLunRoxH8vCinK+S4D471RxwGufpIxhvfYlr6GadPwkmxLLv5EvzXtkYzvUlG5qMaFAME5as55tadHjtbKlDEgiWElaAeamU/8WzRplDKby6XY1M0lM5VfniBDmUYhv93sqD3E4W+8RbPAHvu9pitWgVe1ur37bz0zkM3ufMvSl3WyTPzQKPrwb3uLPTnHxnEqXmM5+XZRRj+kKb3L8HiprcCIbMe1Gb1ngvvCdBp2j68Gxx7TqrfIQ4OloMrTeJoPYdWjUtmJp1MOpFqjgE9ISjrTds3C4EbBshNw2oXsRJGw5Z075MMtrhyKrTdJE+T4gpnV3f/1P4XU=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(346002)(39860400002)(376002)(136003)(230922051799003)(451199024)(186009)(82310400011)(64100799003)(1800799009)(40470700004)(36840700001)(46966006)(40480700001)(2906002)(40460700003)(66899024)(26005)(53546011)(336012)(6512007)(2616005)(41300700001)(47076005)(36860700001)(8676002)(4326008)(84970400001)(83380400001)(8936002)(478600001)(6862004)(6486002)(966005)(6506007)(5660300002)(36756003)(86362001)(33656002)(81166007)(82740400003)(356005)(70586007)(316002)(70206006);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 13:55:58.8174
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e19b637a-e4e5-4d8c-879f-08dbd17449d7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10827
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 13:56:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13190

T24gMjAgT2N0IDIwMjMsIGF0IDEzOjU0LCBncy15b2N0b3Byb2plY3Qub3JnQGdsdWVsb2dpYy5j
b20gd3JvdGU6DQo+IA0KPiBPbiBGcmksIE9jdCAyMCwgMjAyMyBhdCAxMjoxODoyMlBNICswMDAw
LCBSb3NzIEJ1cnRvbiB3cm90ZToNCj4+IE9uIDIwIE9jdCAyMDIzLCBhdCAxMjo0OCwgR2xlbm4g
U3RyYXVzcyB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8Z3MteW9jdG9wcm9qZWN0Lm9yZz1n
bHVlbG9naWMuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPj4+IEdsZW5uIFN0
cmF1c3MgKDMpOg0KPj4+IGxpZ2h0dHBkOiB1cGdyYWRlIDEuNC43MSAtPiAxLjQuNzINCj4+PiBs
aWdodHRwZDogdXBkYXRlIGluaXQgc2NyaXB0DQo+Pj4gbGlnaHR0cGQ6IG1vZGVybml6ZSBsaWdo
dHRwZC5jb25mDQo+PiANCj4+IFBva3kgaXMgYSBnZW5lcmF0ZWQgcmVwb3NpdG9yeSB0aGF0IGRv
ZXNu4oCZdCBhY3R1YWxseSBoYXZlIGFueSBwYXRjaGVzIGRpcmVjdGx5IG1lcmdlZCBpbnRvIGl0
LCBzbyB0aGVzZSBzaG91bGQgYmUgc2VudCB0byBvcGVuZW1iZWRkZWQtY29yZUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxtYWlsdG86b3BlbmVtYmVkZGVkLWNvcmVAbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4uDQo+IA0KPiBJJ2xsIHJlLXNlbmQgdG8gdGhlIG9wZW5lbWJlZGRlZC1jb3JlIGxpc3Qu
DQo+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXIsIFJpY2hhcmQgYW5kIFJvc3MuDQo+IA0KPiA9PT4g
V291bGQgc29tZW9uZSBwbGVhc2UgdXBkYXRlIHRoZSBkb2N1bWVudGF0aW9uPw0KPiANCj4gaHR0
cHM6Ly9kb2NzLnlvY3RvcHJvamVjdC5vcmcvY29udHJpYnV0b3ItZ3VpZGUvc3VibWl0LWNoYW5n
ZXMuaHRtbCNmaW5kaW5nLWEtc3VpdGFibGUtbWFpbGluZy1saXN0DQo+IDQuNC4zIEZpbmRpbmcg
YSBTdWl0YWJsZSBNYWlsaW5nIExpc3QNCj4g4oCcbWV0YS0q4oCdIHRyZWVzOiBUaGVzZSB0cmVl
cyBjb250YWluIE1ldGFkYXRhLiBVc2UgdGhlIHBva3kgbWFpbGluZyBsaXN0Lg0KDQpTbyB3ZSBv
YnZpb3VzbHkgbmVlZCB0byBtYWtlIHRoYXQgbGlzdCBhIGJpdCBjbGVhcmVyLiAgVGhlIHJlbGV2
YW50IGxpbmUgd2FzIHR3byBhYm92ZToNCg0KICAgIOKAoiBDb3JlIE1ldGFkYXRhOiBTZW5kIHlv
dXIgcGF0Y2hlcyB0byB0aGUgb3BlbmVtYmVkZGVkLWNvcmUgbWFpbGluZyBsaXN0LiBGb3IgZXhh
bXBsZSwgYSBjaGFuZ2UgdG8gYW55dGhpbmcgdW5kZXIgdGhlIG1ldGEgb3Igc2NyaXB0cyBkaXJl
Y3RvcmllcyBzaG91bGQgYmUgc2VudCB0byB0aGlzIG1haWxpbmcgbGlzdC4NCg0KQSBiZXR0ZXIg
d2F5IHRvIGRvIHRoYXQgd291bGQgYmUgdG8ganVzdCBsaXN0IHRoZSB0b3AgbGV2ZWwgZm9sZGVy
cywgSeKAmWxsIHNlbmQgYSBjaGFuZ2UuDQoNCj4+IEhvd2V2ZXIsIEkgd2FzIGFsc28ganVzdCBs
b29raW5nIGF0IHRoZSBsaWdodHRwZCByZWNpcGUuICBTcGVjaWZpY2FsbHkgSSB3YXMgZXh0cmFj
dGluZyB0aGUgc2FtcGxlIHNpdGUgZnJvbSB0aGUgbWFpbiBwYWNrYWdlIHNvIGl04oCZcyBlYXNp
ZXIgdG8gYWRkIGluIHlvdXIgb3duIHNpdGUgZmlsZXMsIGJhc2ljYWxseSBwdXR0aW5nIC92YXIv
d3d3L3BhZ2VzIGludG8gbGlnaHR0cGQtc2l0ZS1zYW1wbGUgYW5kIHRoZW4gcmVjb21tZW5kaW5n
IHRoYXQgZnJvbSB0aGUgbWFpbiBwYWNrYWdlLiAgVGhlIGdvYWwgYmVpbmcgdGhhdCBpbiB0aGUg
c2ltcGxlIHRlc3QgY2FzZSB0aGUgc2FtcGxlIHNpdGUgaXMgcHVsbGVkIGluLCBidXQgaXTigJlz
IHRyaXZpYWwgdG8gcGFja2FnZSB1cCB5b3VyIG93biBzaXRlIHRoYXQgY29uZmxpY3RzIHdpdGgg
c2l0ZS1zYW1wbGUuDQo+IA0KPiBUaGF0IHNvdW5kcyByZWFzb25hYmxlIHRvIG1lLg0KPiBJIGxp
a2UgdGhlIGlkZWEgb2YgYmVpbmcgYWJsZSB0byByZW1vdmUgdGhlIHNhbXBsZSBzaXRlLg0KPiBJ
IGFsc28gbGlrZSB0aGUgaWRlYSBvZiBoYXZpbmcgYSBzYW1wbGUgc2l0ZSB0byBnZXQgcGVvcGxl
IHN0YXJ0ZWQuDQo+IA0KPj4gVGhpcyB3b3JrZWQgYnV0IHRoZW4gSSByZWFsaXNlZCB0aGF0IHRo
ZSBjb25maWcgZmlsZSBpcyBmYWlybHkgdGllZCB0byB0aGUgc2l0ZSB0b28uICBBcyAtIHByZXN1
bWFibHkgLSBhIGxpZ2h0dHBkIHVzZXIsIGRvIHlvdSBoYXZlIGFueSBvcGluaW9uIG9uIHdoZXJl
IHRoZSBsaWdodHRwZC5jb25mIGZpbGUgc2hvdWxkIGJlIHBhY2thZ2VkPyAgSeKAmW0gbGVhbmlu
ZyB0b3dhcmRzIGJ1bmRsaW5nIGl0IHdpdGggdGhlIHNhbXBsZS1zaXRlIGJ1dCBhbSB1bmRlY2lk
ZWQgYXMgdG8gd2hldGhlciB0aGF04oCZcyBhY3R1YWxseSBhIGdvb2QgaWRlYS4NCj4gDQo+IEkg
YW0gYSBsaWdodHRwZCBkZXZlbG9wZXIuICBXaGlsZSBJIGhhdmUgc29tZSBzdHJvbmcgb3Bpbmlv
bnMgYWJvdXQNCj4gcGFja2FnZXMgYW5kIGhvdyBpdCBpcyBkb25lIGluIG1hbnkgZGlmZmVyZW50
IGRpc3Ryb3MsIEkgYW0gbGVzcw0KPiBmYW1pbGlhciB3aXRoIHlvY3RvIHNwZWNpZmljcyBhbmQg
bW9yZSBpbnRlcmVzdGVkIGluIHRyeWluZyB0byBoZWxwDQo+IHBlb3BsZSBydW4gdGhlIGJlc3Qg
YXZhaWxhYmxlIHZlcnNpb24gb2YgbGlnaHR0cGQsIHdoaWNoIGlzIGFsd2F5cw0KPiB0aGUgbGF0
ZXN0IHN0YWJsZSByZWxlYXNlLg0KPiANCj4gSSdsbCBzaGFyZSBteSB0aG91Z2h0cyBhbmQgaG9w
ZSBzb21lIHBlb3BsZSB1c2luZyBsaWdodHRwZCB3aXRoIHB0eGRpc3QNCj4gY2FuIGFkZCB0aGVp
ciBvcGluaW9ucywgdG9vLg0KPiANCj4gT3ZlcmFsbCwgb25lLXNpemUgZml0cyBhbGwgcGFja2Fn
aW5nIGdlbmVyYWxseSBtYWtlcyB0cmFkZW9mZnMNCj4gZm9yIG5ldyB1c2VycywgdmVyc3VzIHNj
cmlwdGVycywgdmVyc3VzIGRldi1vcHMuICBQZXJzb25hbGx5LCBJDQo+IHRoaW5rIHBhY2thZ2Vy
cyB0ZW5kIHRvIG92ZXJjb21wbGljYXRlIHRoaW5ncyB0cnlpbmcgdG8gcGxlYXNlIHRvbw0KPiBt
YW55IGRpZmZlcmVudCB1c2VyIHR5cGVzIGF0IG9uY2UuDQo+IA0KPiBUaGUgc21hbGxlc3QgbGln
aHR0cGQgY29uZmlnIGlzIG9uZSBsaW5lOg0KPiAgc2VydmVyLmRvY3VtZW50LXJvb3QgPSAiL3Bh
dGgvdG8vdGVzdC9zaXRlIg0KPiBhbmQgbGlnaHR0cGQgd2lsbCBieSBkZWZhdWx0IGxpc3RlbiBv
biBwb3J0IDgwIGFuZCB3aWxsIHJ1biBhcyB0aGUgdXNlcg0KPiB0aGF0IHN0YXJ0ZWQgbGlnaHR0
cGQuICBPZnRlbiwgYSB0ZXN0IHNpdGUgYWxzbyBpbmNsdWRlcyBhIHNlY29uZCBsaW5lDQo+IGlu
IHRoZSBjb25maWc6DQo+ICBpbmRleC1maWxlLm5hbWVzID0gKCJpbmRleC5odG1sIikNCj4gYW5k
IHRoZSB0ZXN0IHNpdGUgaGFzIGEgc2luZ2xlIGZpbGUgL3BhdGgvdG8vdGVzdC9zaXRlL2luZGV4
Lmh0bWwNCj4gDQo+IEkgdGhpbmsgdGhhdCBpcyB3aGF0IGRpc3Ryb3Mgc2hvdWxkIHNoaXAsIGFs
b25nIHdpdGggb25lIG1vcmUgbGluZToNCj4gIGluY2x1ZGUgIi9ldGMvbGlnaHR0cGQvY29uZi5k
LyouY29uZiINCj4gDQo+IFVzZXJzIGNhbiB0aGVuIHJlY29uZmlndXJlIHRoZSBzZXJ2ZXIgYXMg
dGhleSBsaWtlIGJ5IGRyb3BwaW5nIGZpbGVzIGluDQo+IC9ldGMvbGlnaHR0cGQvY29uZi5kLyou
Y29uZiwgaW5jbHVkaW5nIG92ZXJ3cml0aW5nIHRoZSBkZWZhdWx0IGRvY3VtZW50DQo+IHJvb3Qg
d2l0aA0KPiAgc2VydmVyLmRvY3VtZW50LXJvb3QgOj0gIi9wYXRoL3RvL2RlZmF1bHQvc2l0ZSIN
Cj4gYW5kIGRpc2FibGluZyBpbmRleCBmaWxlcyB3aXRoDQo+ICBpbmRleC1maWxlLm5hbWVzID0g
KCkNCj4gb3IgcmVjb25maWd1cmluZyB3aXRoIHNvbWV0aGluZyBsaWtlDQo+ICBpbmRleC1maWxl
Lm5hbWVzIDo9ICgiaW5kZXguaHRtbCIsICJpbmRleC5odG0iKQ0KPiANCj4gVGhlIHNhbXBsZSBz
aXRlLCBpZiBhIHNlcGFyYXRlIHBhY2thZ2UsIGNvdWxkIGFkZCBmaWxlcyBpbnRvDQo+IC9ldGMv
bGlnaHR0cGQvY29uZi5kLyouY29uZiAob3Igd2hhdGV2ZXIgbG9jYXRpb24gcHR4ZGlzdCB1c2Vz
KQ0KPiB3aXRoIHRoZSBzYW1wbGUgc2l0ZSBjb25maWcuDQoNClRoYXTigJlzIGludGVyZXN0aW5n
LCB0aGFua3MuICBPdXIgdXNlLWNhc2UgaXMgc2xpZ2h0bHkgZGlmZmVyZW50IGluIHRoYXQgd2Ug
ZW5jb3VyYWdlIHBlb3BsZSB0byBjdXN0b21pc2UgdGhlIHJlY2lwZXMgYXMgbmVlZGVkLCB3aGVy
ZWFzIG9uIERlYmlhbiB5b3Ugd291bGRu4oCZdCBleHBlY3QgdG8gcmVidWlsZCBsaWdodHRwZCBh
dCBhbGwuDQoNCkEgbWluaW1hbCBsaWdodHRwZC5jb25mIHdoaWNoIHN1cHBvcnRzIGZyYWdtZW50
cyBzb3VuZHMgaWRlYWwuICBXb3VsZCBpdCBiZSBzZW5zaWJsZSB0byBoYXZlIGEgdHJ1bHkgbWlu
aW1hbCAvZXRjL2xpZ2h0dHRkL2xpZ2h0dHAuY29uZiBpbiB0aGUgbGlnaHR0cGQgcGFja2FnZSB3
aGljaCBzZXRzIGp1c3QgZG9jdW1lbnQucm9vdC9pbmRleC1maWxlLW5hbWVzLCBhbmQgdGhlbiBt
b3ZlIHRoZSBtb2Rlcm5pc2VkIGNvbmZpZyBmaWxlIHlvdSBzZW50IHRvIC9ldGMvbGlnaHR0cGQv
Y29uZi5kL3NhbXBsZS1zaXRlLmNvbmYgYXMgYW4gZXhhbXBsZT8NCg0KQXMgYSBkaXN0cm8gbWFp
bnRhaW5lciBpdOKAmXMgaGFyZCB0byBrbm93IGVub3VnaCBhYm91dCBldmVyeSBwYWNrYWdlLCBz
byBpdOKAmXMgZ29vZCB0byBoYXZlIGFuIHVwc3RyZWFtIGRldmVsb3BlciB0byBhc2sgcXVlc3Rp
b25zIQ0KDQpDaGVlcnMsDQpSb3Nz

