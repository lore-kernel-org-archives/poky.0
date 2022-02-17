Received: from GBR01-CWL-obe.outbound.protection.outlook.com (GBR01-CWL-obe.outbound.protection.outlook.com [40.107.11.99])
 by mx.groups.io with SMTP id smtpd.web11.328.1645107676227634557
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Feb 2022 06:21:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sancloud.onmicrosoft.com header.s=selector2-sancloud-onmicrosoft-com header.b=BQ67BS7K;
 spf=pass (domain: sancloud.com, ip: 40.107.11.99, mailfrom: paul.barker@sancloud.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IvVYZdTpXBN7hfWuuk7fG+TeMeCaDy1elS4XoH5vK4NUzqEt9S+lGSmD79C3RJU/tSuj2/CvzoTUoItjckfnH3lZ09Y3JRgykgDZB95hwyMk71ZOpK8PFAm1PNND5HIEPpS3yh3eMxD4zIjQZA+gto1NRsl/AiiK2r1h9vP+B4PCRs635nipGaXCsW5jjzJiTQf6RmT4w4R1IzIDAdymOc+G9ADNojdYEgzuzdNiEQ1YN7NB2TIbNcCZVroDwZJyvix+Oka19lZ14Y5dCOz25d+V6VzovF1WXuCgKxg6/zjIMf5XxM0CvIx8dr8TIo72aQtlxH+AwRhrK/axn4ZAhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nguKTYG/nBvH6pioIO1y+JHdxFDgllKlutP8uaqUgRQ=;
 b=H6Hvmc7BM8n4yuvZUZkiCbY3r+DGo29urZpGQ5f+79O0f0bojl6w1RI6EtCv4Xqu4nDekPlyMAo9Q/4ut2ti/vmVIKwdiJfxWzxFOKzN8Z+0dWhnkel0dBK+FOL1eLrmU7ZxXOP0E5OXOvytmC8A+/ykQ7jyQvYqh5qlUm6F51lvEC//Fcm5fkSDjGtqhE0/35VkCcnMb/6t9AHHdZSF4XGZUpoR1RpkH4BwF2JfCj4C2taKINaSvLxO0Y61NLLMq/xmoA3cqwOVcH4Lt7GVXNJvj6gHZe9OmQ8K6Z4dHa5RAJ2jzwlBhgRlP9RD6uirXYVohrEgb3xkq9lmFXyGfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sancloud.com; dmarc=pass action=none header.from=sancloud.com;
 dkim=pass header.d=sancloud.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sancloud.onmicrosoft.com; s=selector2-sancloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nguKTYG/nBvH6pioIO1y+JHdxFDgllKlutP8uaqUgRQ=;
 b=BQ67BS7KcdVPKjB1yS5Qq/3YZOMnLtW6DZwGYX5/zAEhA6x5CXQeO6e4BCt6ZVNuUrHfAAGA4kR6/6VzVgN0tCQvbeLB4iiMc3DUwpnaIXc0yJ4bjXc8IdahrzK+tpgL72cmiLc0bKzFmEN0biAjcamqTLTIxHlG0c6xlvuI1BE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sancloud.com;
Received: from CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:61::19)
 by CWXP123MB6287.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:1a7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.17; Thu, 17 Feb
 2022 14:21:13 +0000
Received: from CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
 ([fe80::554d:d250:a048:97a5]) by CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
 ([fe80::554d:d250:a048:97a5%5]) with mapi id 15.20.4995.017; Thu, 17 Feb 2022
 14:21:13 +0000
Message-ID: <a33c6b51-0195-b343-58cc-89ffcd7d02ab@sancloud.com>
Date: Thu, 17 Feb 2022 14:21:12 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [poky] [PATCH] poky.conf: tested distors: opensuseleap-15.2 --> 15.3
To: Christian Eggers <ceggers@arri.de>, poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20220217131007.21843-1-ceggers@arri.de>
From: "Paul Barker" <paul.barker@sancloud.com>
In-Reply-To: <20220217131007.21843-1-ceggers@arri.de>
X-ClientProxiedBy: LO2P265CA0351.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::27) To CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:401:61::19)
Return-Path: paul.barker@sancloud.com
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9be06cbc-f490-415d-731a-08d9f220c076
X-MS-TrafficTypeDiagnostic: CWXP123MB6287:EE_
X-Microsoft-Antispam-PRVS: 
	<CWXP123MB6287CC732FC2AF0F35357CB093369@CWXP123MB6287.GBRP123.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KkkwO5x+OFcqpSyFTuuvKWdL2yBXhorAbksSUhZOHchneSmrquke8cSIiT041YUU6Shj+LWZhheKdsTl/fjQD3UePN+CinNbW7JMgfTiDKuBnGh//v/W0Y6ktt11rFX2s1k0rKzp5tR9LvfwOu+P22g06GpdLVBaglIlzi3oCax/5wO/cXtaDZ7hiXu0ojUZzZzBSQ2MvCQEAncd+tySveyoDcSEnSTnq9CaNFZoRS2CSVuRmd9frifhSc3qjORMeXQ8rfojwajST4N+1AT3wRLaG3TwsIEe6OWlY3laW2Ezu1N5Di/nZ6TDjwfQQzxvfRAZXkhMtzTr9SMOUTnXgdLAQUCxV50B5SwTYiIS7St1KSxcf/V2GzzYi9ll6kNUJ9bPPTAHp587UYEckS1NBJEaHBNGyvlLvbdB/V0fB1akpFdGJDErrJLZ2q48E1tvxu3EwY7OSLlQ3jKvNpHMBkdvimZ8vNOguvkc33HYJthvBCc9T/Oe1v3z5ZDXV/HZrQh+tAjtwbw0OgoOTl+fxnhfmr4XiMNLrd7MbvFEeLlNv79HnM5PX3abb6W35AjspdyRkeBpFjgDf9V7tvVW7XYkRgvV2iMNrI2sY8jbawg2YY+s0c9148FKt3oEacAjJwM9M2yUVMewDZ4lP95DqjtIrBP7PoZupUzZcc1x3aGl8Ke61ef5Gw+pIBPcypxP0hRYAX3saoSTf5THvpTVa/k1kyHxpJoo6bcuXIEYJ5g2/3bAzl8JskO6IoEsXlMsKNexzUkSxbjEQ8LjPgslHs8itOxjXgnJ5T4PLsit5Z/6eF184pjclDz1OwYU7NpCSHX05NHvAryV6PfVDIfVHY/v9COHAkkwbs9UyDxlVQM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(39830400003)(366004)(346002)(396003)(136003)(376002)(86362001)(31696002)(44832011)(66556008)(66476007)(316002)(4326008)(8676002)(235185007)(38100700002)(5660300002)(38350700002)(66946007)(8936002)(6512007)(52116002)(53546011)(6506007)(33964004)(26005)(83380400001)(21480400003)(2616005)(966005)(6486002)(186003)(508600001)(2906002)(36756003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WkdtQ2VKSVRYeW9pSW8wMmU4YTM2c3RNVWYzdS92ZW9qaENXeSswRWJTM0RU?=
 =?utf-8?B?NGtoanBoenRCTmM5bHdqZThrYmt2R3NqNGg5NFpPeEREWjJENStpSVpTVGU4?=
 =?utf-8?B?Z1c1Z3h5Rm9uQVoybVBJUFg0K2I3QmlmcFhOYnpFZGlRMkVTWDg0K0dJLzZn?=
 =?utf-8?B?eHhLZld3SDQ1d0hhYThqMmhzYkMrT0F4MXRKbmdYT21pYyttYnlheHd6Z1Fk?=
 =?utf-8?B?R3FVVkVTYlRGWlFoMFRzNXBodURlRXozQW0vRDdySFd5UEUvNzdEUzhqa05R?=
 =?utf-8?B?SDdvL1dDYkhFTUVPVExVY014Q2lGRHpwMkppamFiYm11RDc3NUlGeXBzTlRh?=
 =?utf-8?B?UzVrUjJwQi9wMHNuc1czc3hyWmhCcWNGNFI3TTlqRVNJbTNSSTlrdkFuYWRm?=
 =?utf-8?B?ZkoreHBxUDVlWU9IQ29vT09ocUdXTWhYQm05RGdqUzBIeGs5cGFRcG5hUHZ2?=
 =?utf-8?B?MUV2VzZDQ0xYSFZlVEFnUXJVQnpVOTd3MU8zR01sT2k1OXpqS3Y0SFQ4eVVH?=
 =?utf-8?B?WEVxQU5wekkzaFVOa2w4Wi9ScFZoRWxJQUdpTXdxQUJTM3FtZXJWOTgxZ0pO?=
 =?utf-8?B?ZlZ6OGUrb1RmNzlRNzVHaVU3b2s3UXNrazNQNmRUb2JZamMvM1VyYlFaVXgv?=
 =?utf-8?B?aEZKWTJNTS9nVFRjLzFkWUVrbTBReG9XcVZ2bFEvOXY3LzBTeW04WjNibE5X?=
 =?utf-8?B?b3EycjRJVndjY2Z3c0pkWnpTN2RkS0JRYXhDR0pKdVA5T1ZPd3g0bWxNampP?=
 =?utf-8?B?ZXNFclFnZDluRXhnZGlibm9YYWI5WmVJK3Y5eVJlVm5TNzhmZFArMFZpeUpy?=
 =?utf-8?B?NWZrbnFxQ3czN3QyTytBdS8zTHp3NEhMZ3hLMjJVMjRHaGNTNkFUeC9zQmVk?=
 =?utf-8?B?NWZjbjh4dy9ubWJhUC9CTGU3TTVYdWRCY3QreExBRVRrYnhZT2dWOTFFNjlI?=
 =?utf-8?B?bGE5Z3hZTmQ1cUNTTWFaMkFpMEtHazRLbVp1SlV1SFo1VnRPb3FTYkRLSlcx?=
 =?utf-8?B?R3ZMajRRRTdiallNdU85U1ZqcWE1U3ZZMVJta1NiVUpIMGRBT0xSRkdDODFp?=
 =?utf-8?B?bzdZdkE3YzFpOWRNWG1STGxEZzQ1dUFZaGsvdlhCdWxTbmJqeU1IMC94d0N4?=
 =?utf-8?B?blAvODRPK3VoNUFuUFdndEZzQWI4eDJOdy9Hc3ZjT3p5SGxLaG9od0loOFA3?=
 =?utf-8?B?bUM2N3BTZFI1ZzMxRkcvYlNYQzA3WDlBSVVFbnBCWS9OdG5wOFNHd0xEUTEy?=
 =?utf-8?B?VGhwOFZ4WlJGMkJaT2dwekd0NjA0RHc2RzNCemJ0RzJLeHU0UXV1Z2EwK0tS?=
 =?utf-8?B?L21HdkFvdXBPbGVxWnUwMTU1WEVDazl6dEFnbjVucTVqa1dlUTUwMyt0bnQr?=
 =?utf-8?B?NktZUEpLMEpjQWZrd3BoTXpLQlBjS2tsMHRtL3RzNDZSUVJxWmhIV25VSGtE?=
 =?utf-8?B?RldUQXBHMDNaMkdublJBVlRSTW9zeTdkL0hocnhRZ0VrWHBJQ1RFcTdQb1NM?=
 =?utf-8?B?M2VPM01RcEhaWk5PYlNuU3BBWmxPRVJGeWl1YTFETlRYNVFyUTR3RnlTQkIx?=
 =?utf-8?B?OGFPa1VTNEoyekdMVHRnaXNxRS9ETUE1MThLdiszTjdtUnQzaGdBMzZSS3hY?=
 =?utf-8?B?ZkQyRUdpQ3drT09Jb0F0L1BWVEFzVlBWMi93Z3hQVTg4dnBXdnBzL0NVbkh4?=
 =?utf-8?B?b0U5VUNxcWNwdEdFcUlpNmF5Y2pCRjBPeWNBMk9Jb2xFMElLMkxmakFYaVg0?=
 =?utf-8?B?RHpJWXVubjJ2STB5MVM1dlZ2dXRQRGlJaHhXKzlBOFplMVhCWTU1cnRGeVVV?=
 =?utf-8?B?Z2hzZVFxT1g4T2lCME92dzJiOUpuRGJmM2xZY0w2VE5MakV4dHQ4cm83Q0RP?=
 =?utf-8?B?WFdUR20ycGdYVmY1RHFndjIzaFk5dmtlSzBQOS9oM1RWdDhHL1l0d0JGdnN5?=
 =?utf-8?B?OEVYQnVueXA1Qm9LbU4rdExwUU9VeXdpWU95N0hRSGU2TUpBYlFDcW1NNjlG?=
 =?utf-8?B?TG9oeDZ6SU9mUzdMc2djNFFEaUdkeFcxQjF5STJLOFpqMStnR2JpSUtiMk01?=
 =?utf-8?B?TzNIcFN1VXEvdTNTQmFxM0huL0VaWTR3TXVkY0c4YWZ4WG1EY1pQSDVGZkNv?=
 =?utf-8?B?NGYzWUM0RXJOUUNLaG1GQ0hHc1R0ZExsL2ZWdGJxQ0VqMEhoTGFMbEtuNnYr?=
 =?utf-8?B?dzZTRTlRUDdXc1lPWTBseUZFWE0zV09rK1FNajJ1dkozY3NMaGhReThhV3pr?=
 =?utf-8?B?NC9wVUhtVSt6VG5wTFZVTDhMZVp3PT0=?=
X-OriginatorOrg: sancloud.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9be06cbc-f490-415d-731a-08d9f220c076
X-MS-Exchange-CrossTenant-AuthSource: CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2022 14:21:13.3061
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 840be37c-244a-450e-9bcc-2064862de1f4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 05t30rZQdviNTlglH8Wckr/3Eb3mpoZju6OqvX0Rs+eZU0DX08uCHv3b/teVO6hrrruXhBI8T93qvcK1DeVa45HOTXoLeEcYHRXHB3CQDLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP123MB6287
X-Groupsio-MsgNum: 12708
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------B31UTAiyUGB05hL9jtXxAeN0"

--------------B31UTAiyUGB05hL9jtXxAeN0
Content-Type: multipart/mixed; boundary="------------aYOWklI5m2m0s1BpOr0XOU0X";
 protected-headers="v1"
From: Paul Barker <paul.barker@sancloud.com>
To: Christian Eggers <ceggers@arri.de>, poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <a33c6b51-0195-b343-58cc-89ffcd7d02ab@sancloud.com>
Subject: Re: [poky] [PATCH] poky.conf: tested distors: opensuseleap-15.2 -->
 15.3
References: <20220217131007.21843-1-ceggers@arri.de>
In-Reply-To: <20220217131007.21843-1-ceggers@arri.de>

--------------aYOWklI5m2m0s1BpOr0XOU0X
Content-Type: multipart/mixed; boundary="------------k0ncw0zQ94UOSauiNAqS0vde"

--------------k0ncw0zQ94UOSauiNAqS0vde
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTcvMDIvMjAyMiAxMzoxMCwgQ2hyaXN0aWFuIEVnZ2VycyB3cm90ZToNCj4gTWFpbnRlbmFu
Y2UgZm9yIG9wZW5TVVNFIExlYXAgMTUuMiB0ZXJtaW5hdGVkIEphbiA0dGggMjAyMi4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBFZ2dlcnMgPGNlZ2dlcnNAYXJyaS5kZT4NCj4gLS0t
DQo+IEkgYW0gdXNpbmcgb3BlblNVU0UgTGVhcCAxNS4zIGZvciBhIHdoaWxlIG5vdyBhbmQgZW5j
b3VudGVyZWQgbm8gZGlmZmljdWx0aWVzLg0KPiANCj4gQFBhdWw6IFlvdSB3cm90ZSBpbiBjZWU4
MGJkOg0KPj4gcG9reS5jb25mOiBBZGQgb3BlbnN1c2VsZWFwLTE1LjIgYW5kIGZlZG9yYS0zMyB0
byB0ZXN0ZWQgZGlzdHJvcw0KPj4gVGhlIGF1dG9idWlsZGVyIGNvbnRhaW5zIHdvcmtlcnMgZm9y
IGJvdGggb2YgdGhlc2UgZGlzdHJvcy4NCj4gDQo+IERvIHlvdSBzdGlsbCByZXF1aXJlIG9wZW5z
dXNlbGVhcC0xNS4yIGZvciB5b3VyIGF1dG9idWlsZGVyPyBDb3VsZCB5b3UNCj4gc3dpdGNoIHRv
IDE1LjM/DQoNCk15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCB0aGUgY29udGVudHMgb2YgU0FOSVRZ
X1RFU1RFRF9ESVNUUk9TIHNob3VsZCANCm1hdGNoIHdoYXQncyBhY3R1YWxseSB0ZXN0ZWQgb24g
dGhlIGF1dG9idWlsZGVyLiBMb29raW5nIGF0IHRoZSBsaXN0IGluIA0KaHR0cHM6Ly9hdXRvYnVp
bGRlci55b2N0b3Byb2plY3Qub3JnL3R5cGhvb24vIy93b3JrZXJzLCBJJ2Qgc2F5IHRoaXMgDQp2
YXJpYWJsZSBpcyBvdXQtb2YtZGF0ZSBhbmQgc2hvdWxkIGluZGVlZCByZWZlcmVuY2Ugb3BlbnN1
c2VsZWFwLTE1LjMuIEkgDQpleHBlY3Qgd2Ugc2hvdWxkIGFsc28gYWRkIEFsbWFMaW51eCwgRmVk
b3JhIDM1LCBhbmQgbWF5YmUgb3RoZXJzLg0KDQo+IA0KPiAgIG1ldGEtcG9reS9jb25mL2Rpc3Ry
by9wb2t5LmNvbmYgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWV0YS1wb2t5L2NvbmYvZGlzdHJvL3Bv
a3kuY29uZiBiL21ldGEtcG9reS9jb25mL2Rpc3Ryby9wb2t5LmNvbmYNCj4gaW5kZXggNDdlZjlm
YTJlZTVlLi5hOTcwZjZhZTQ1OWUgMTAwNjQ0DQo+IC0tLSBhL21ldGEtcG9reS9jb25mL2Rpc3Ry
by9wb2t5LmNvbmYNCj4gKysrIGIvbWV0YS1wb2t5L2NvbmYvZGlzdHJvL3Bva3kuY29uZg0KPiBA
QCAtNTMsNyArNTMsNyBAQCBTQU5JVFlfVEVTVEVEX0RJU1RST1MgPz0gIiBcDQo+ICAgICAgICAg
ICAgICAgZGViaWFuLTkgXG4gXA0KPiAgICAgICAgICAgICAgIGRlYmlhbi0xMCBcbiBcDQo+ICAg
ICAgICAgICAgICAgZGViaWFuLTExIFxuIFwNCj4gLSAgICAgICAgICAgIG9wZW5zdXNlbGVhcC0x
NS4yIFxuIFwNCj4gKyAgICAgICAgICAgIG9wZW5zdXNlbGVhcC0xNS4zIFxuIFwNCj4gICAgICAg
ICAgICAgICAiDQo+ICAgIyBhZGQgcG9reSBzYW5pdHkgYmJjbGFzcw0KPiAgIElOSEVSSVQgKz0g
InBva3ktc2FuaXR5Ig0KPiANCj4gDQo+IA0KPiANCj4gDQoNCi0tIA0KUGF1bCBCYXJrZXINClBy
aW5jaXBhbCBTb2Z0d2FyZSBFbmdpbmVlcg0KU2FuQ2xvdWQgTHRkDQoNCmU6IHBhdWwuYmFya2Vy
QHNhbmNsb3VkLmNvbQ0KdzogaHR0cHM6Ly9zYW5jbG91ZC5jby51ay8NCg==

--------------k0ncw0zQ94UOSauiNAqS0vde
Content-Type: application/pgp-keys; name="OpenPGP_0xA67255DFCCE62ECD.asc"
Content-Disposition: attachment; filename="OpenPGP_0xA67255DFCCE62ECD.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
4yvD5AdHy8s8HYtBP5oowjSllz6aOtP0BiQ=3D
=3Duult
-----END PGP PUBLIC KEY BLOCK-----

--------------k0ncw0zQ94UOSauiNAqS0vde--

--------------aYOWklI5m2m0s1BpOr0XOU0X--

--------------B31UTAiyUGB05hL9jtXxAeN0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQS7m7rT1+CktY3YG1PYN3IfEvob6gUCYg5Z2AUDAAAAAAAKCRDYN3IfEvob6vCx
AQD9PoaOYAVoBSgtWe+6AVRQkCSsbQzVBApNazu57wsBWwD+KUwFkaiBbbOowhGKz+IhyzsEmtO4
hbPdp3VZ9jFXNwY=
=v5la
-----END PGP SIGNATURE-----

--------------B31UTAiyUGB05hL9jtXxAeN0--
