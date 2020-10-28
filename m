Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.115])
 by mx.groups.io with SMTP id smtpd.web09.5991.1603875627816269215
 for <poky@lists.yoctoproject.org>;
 Wed, 28 Oct 2020 02:00:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bang-olufsen.dk header.s=selector1 header.b=LFp9FOz2;
 spf=pass (domain: bang-olufsen.dk, ip: 40.107.14.115, mailfrom: alsi@bang-olufsen.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdJyJ0cqWXA+AtzydjpoCIEFrackA4CavZOCsxiIJOj5dm0/yAaWfUZvkmjg5z1UmQpRJfEHa5zVPJLFNcqJFXP9otjNDE7Ih1QdB1HMHl3HW5csTD6dD9h6JMp38E0LciKyME4ZxqzvZVrar7ffGXEkfPGzajHIfJPxZsB2T5KvGYOpIcvMmLX63p1MVjctEzuAtb6KBNwBj2GoRrEDdICvis6siMEmututmEebJN1D7UqWPrUjctAhFYhiKEmD39hfmYOm/MIEQ0CuqPP4GP41uymlqqsVS3K6JHgLalUhsbSIZEyaIIyuM5Dz0UikxWXFK8aPkUxfyq79x7/cvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcGOFRJLdAuH7P5Psr+vzGX1dhAXNjo3n7DvQ58gBZw=;
 b=ZCMMCMI45ucc61WCBhgIBfCPoFnZagcxwVfSNGqmaN79TV0C0FW65M0jfYKUM0U3E3QTzsBxaa5SLv8nFlO8ZxzH9mQZs+4VExk+WN4aQm+8Pph57qinKsvM70GadCZwXKHXWW/ExbGdk5fm8OfQ9ewdQJI00eqkBQFkq84yaWZr+oVepdDJIEjdMu/TZbSuqFokyohhQxJZvhEzIJxw9H26nFNvXbkURjZAk1wGEjtubRhYvXWIy2jl80PonhJh1Nfvvdi9yIikoW574asnarPBz3j88eVTe/ddzjFt/Msql72wTd2cFyPW6p0ax8fNQE7dApsMAgfn+7NXHIRiUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bang-olufsen.dk; dmarc=pass action=none
 header.from=bang-olufsen.dk; dkim=pass header.d=bang-olufsen.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bang-olufsen.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcGOFRJLdAuH7P5Psr+vzGX1dhAXNjo3n7DvQ58gBZw=;
 b=LFp9FOz2BAwG2PD3/wiq6woIBcRmTr6bLqJ8DQRDCb4B8dpOjLX9M5445wEa4/kM0c+ldfIxag1/I23yEAbOmUxGg4BDO+HrNvVcaUvM6dEwqorJFASvjKmLPjkCbw+iwWD4weHM+21O3nQaYYJQqaynw97QOWPlUvGLmumeWjM=
Received: from VI1PR03MB3166.eurprd03.prod.outlook.com (2603:10a6:802:32::30)
 by VE1PR03MB5629.eurprd03.prod.outlook.com (2603:10a6:803:11e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.19; Wed, 28 Oct
 2020 09:00:24 +0000
Received: from VI1PR03MB3166.eurprd03.prod.outlook.com
 ([fe80::1424:3563:c014:6918]) by VI1PR03MB3166.eurprd03.prod.outlook.com
 ([fe80::1424:3563:c014:6918%5]) with mapi id 15.20.3477.028; Wed, 28 Oct 2020
 09:00:24 +0000
From: "Alvin Sipraga" <ALSI@bang-olufsen.dk>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] cmake.bbclass: don't remove build directory for out-of-tree builds
Thread-Topic: [poky] [PATCH] cmake.bbclass: don't remove build directory for
 out-of-tree builds
Thread-Index: AQHWrGLyWLQeZRsacEW4x2+s4diPw6mrbpQAgAFJ8wA=
Date: Wed, 28 Oct 2020 09:00:24 +0000
Message-ID: <6a1627e2-5f78-3fd7-eeb3-893a3b7a61a9@bang-olufsen.dk>
References: <20201027131227.576470-1-alsi@bang-olufsen.dk>
 <ae92c90a0cd9c86b257094460b1779ad9f3cc094.camel@linuxfoundation.org>
In-Reply-To: 
 <ae92c90a0cd9c86b257094460b1779ad9f3cc094.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=bang-olufsen.dk;
x-originating-ip: [193.89.194.27]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: deb93d74-93c4-4be3-e03d-08d87b1fe834
x-ms-traffictypediagnostic: VE1PR03MB5629:
x-microsoft-antispam-prvs: 
 <VE1PR03MB562954212354CB61788EE15D83170@VE1PR03MB5629.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 n22AWyXh9QdEs2P6vgu96omTekyzr6m3Vtoh3hhAcQdqizXJ6VaOmTpWkSkvfByrVsRKs3U08QQD5buH13gFIffj5yt14tian9QmFVUgE5Cyb4SkH0X69qg2jCoeHw3msDVysPbskPBtcSZGax1YVu6N1pi6JFsAOEiSAXatED41MOPOLp9WQGOK5yBjUBtVixpW6ldqNogUwTEIq0rzXTCf42TXsvYe43vvxVb7a6azMBLv8/NzPH7NZ8so78tR7SG48U8O0m3AhKxmU/5thk5ayj/B5UzXaTMnWcLlGXlvE3j4zf4FLQhm7Ztx90tzhp8V0OFxipIABRIHWlctIXhjP9+Q/bO9nm1+zWF2GF2wYQhSYtvmJGNU0HtcTRtd
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR03MB3166.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(366004)(376002)(136003)(346002)(396003)(71200400001)(478600001)(8936002)(53546011)(66446008)(64756008)(66556008)(66476007)(91956017)(2616005)(5660300002)(26005)(6506007)(4001150100001)(8676002)(6486002)(31686004)(110136005)(31696002)(316002)(8976002)(66574015)(86362001)(2906002)(6512007)(66946007)(76116006)(36756003)(83380400001)(186003)(43740500002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 lCJMvhnxZsN86T/PSrcnJMZnwyyBNXst0zVXvHOBRaXVc3k/DFxOcq3X/QtL/IM3tyY+WvZ1zXohOpQ4wwFMH0QWP4BaSAwTGHy9Pz4u5/uLZPMI+iBtxkrFaBVscILNeqgA0yOwiNN/d1BfF4zuuEZ8EjD1ol0ZjpCNEOuVOJQ9EQF+/S7YjPJ4nA9JDHM/M6zIQd74wxicS03tMa2Q0Q+O99dQwbAhMttxf1y0Zn6vhIy3t9oNf0gy5NBr+gpNCVPG7RWrcacaKGbLNti03PagH2SRfz9uXTMqjDKZE/z00SEZiQMzptfrBNrd90KoxrPZKvQnpgaZkk7aF9xfU1RJ6ASzIHjmyVHIEBLxJ0FG6LgOOnN3Jy5OFhSVXuD7o718XQwTS/yEggLAYJ0fwKrATqy46/7K04Xpj6Dwn55oFCWnmV2U9Nu2ITLv3V3wYNDqmvkGRA7NET6Lk3uqXqBKBsTmCzs/cqlpBlYN4bDLET16aotLDuTzVCOaLQBm6p7gd0Kv+8cBcwoOS+RMGMZe6SuDGXKC/0uBkyZasH3bdQPF7JRQJUlqGMb8SndXAprtWjHKjJT/xZzXeEM2an0/2pgFWF5ZUcUFYWTjXzIyM+z5+bRTXPYLlh5JRHjg9vU1nMS8ivsPW8Tdb0hnHw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: bang-olufsen.dk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB3166.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deb93d74-93c4-4be3-e03d-08d87b1fe834
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2020 09:00:24.1737
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 210d08b8-83f7-470a-bc96-381193ca14a1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vbWFTQuwfbfy9cyR8Naf1LjSDWMNZKXS2GGTOrFxrFHqjFITQuOknODyMbSd9/WcsurEZIwu/dMiu5SbV3Fr5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR03MB5629
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B8CD9081E226BE44BE3B2CB97F8B35A4@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gMTAvMjcvMjAgMjoxOCBQTSwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+IE9uIFR1ZSwgMjAy
MC0xMC0yNyBhdCAxMzoxMyArMDAwMCwgQWx2aW4gU2lwcmFnYSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyB3cm90ZToNCj4+IFJhdGhlciB0aGFuIHJlbW92aW5nIHRoZSB3aG9sZSBvZiAke1dP
UktESVJ9L2J1aWxkIG9uIGV2ZXJ5IGRvX2NvbmZpZ3VyZQ0KPj4gc3RlcCwganVzdCBjbGVhbiB1
cCBDTWFrZSBmaWxlcyB0byB0cmlnZ2VyIGEgZnJlc2ggcmVjb25maWd1cmF0aW9uIG9mDQo+PiBD
TWFrZS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBbHZpbiDFoGlwcmFnYSA8YWxzaUBiYW5nLW9s
dWZzZW4uZGs+DQo+PiAtLS0NCj4+ICAgbWV0YS9jbGFzc2VzL2NtYWtlLmJiY2xhc3MgfCA4ICst
LS0tLS0tDQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNyBkZWxldGlvbnMo
LSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvbWV0YS9jbGFzc2VzL2NtYWtlLmJiY2xhc3MgYi9tZXRh
L2NsYXNzZXMvY21ha2UuYmJjbGFzcw0KPj4gaW5kZXggN2MwNTVlOGEzZC4uMzlmMzU2MDk5ZSAx
MDA2NDQNCj4+IC0tLSBhL21ldGEvY2xhc3Nlcy9jbWFrZS5iYmNsYXNzDQo+PiArKysgYi9tZXRh
L2NsYXNzZXMvY21ha2UuYmJjbGFzcw0KPj4gQEAgLTE1MSwxMyArMTUxLDcgQEAgY21ha2VfZG9f
Y29uZmlndXJlKCkgew0KPj4gICAJCWJibm90ZSAiY21ha2UuYmJjbGFzcyBubyBsb25nZXIgdXNl
cyBPRUNNQUtFX0JVSUxEUEFUSC4gIFRoZSBkZWZhdWx0IGJlaGF2aW91ciBpcyBub3cgb3V0LW9m
LXRyZWUgYnVpbGRzIHdpdGggQj1XT1JLRElSL2J1aWxkLiINCj4+ICAgCWZpDQo+PiAgIA0KPj4g
LQlpZiBbICIke1N9IiAhPSAiJHtCfSIgXTsgdGhlbg0KPj4gLQkJcm0gLXJmICR7Qn0NCj4+IC0J
CW1rZGlyIC1wICR7Qn0NCj4+IC0JCWNkICR7Qn0NCj4+IC0JZWxzZQ0KPj4gLQkJZmluZCAke0J9
IC1uYW1lIENNYWtlRmlsZXMgLW9yIC1uYW1lIE1ha2VmaWxlIC1vciAtbmFtZSBjbWFrZV9pbnN0
YWxsLmNtYWtlIC1vciAtbmFtZSBDTWFrZUNhY2hlLnR4dCAtZGVsZXRlDQo+PiAtCWZpDQo+PiAr
CWZpbmQgJHtCfSAtbmFtZSBDTWFrZUZpbGVzIC1vciAtbmFtZSBNYWtlZmlsZSAtb3IgLW5hbWUg
Y21ha2VfaW5zdGFsbC5jbWFrZSAtb3IgLW5hbWUgQ01ha2VDYWNoZS50eHQgLWRlbGV0ZQ0KPj4g
ICANCj4+ICAgCSMgSnVzdCBsaWtlIGF1dG90b29scyBjbWFrZSBjYW4gdXNlIGEgc2l0ZSBmaWxl
IHRvIGNhY2hlIHJlc3VsdCB0aGF0IG5lZWQgZ2VuZXJhdGVkIGJpbmFyaWVzIHRvIHJ1bg0KPj4g
ICAJaWYgWyAtZSAke1dPUktESVJ9L3NpdGUtZmlsZS5jbWFrZSBdIDsgdGhlbg0KPiANCj4gSSdt
IGFmcmFpZCB3ZSBoYXZlIGEgc2lnbmlmaWNhbnQgbGFjayBvZiB0cnVzdCB3aGVuIGl0IGNvbWVz
IHRvIHRoZQ0KPiB1bmRlcmx5aW5nIGJ1aWxkIHN5c3RlbXMuIEkgYXBwcmVjaWF0ZSB0aGlzIHBh
dGNoIGNhbiBtYWtlIGl0ICJmYXN0ZXIiDQo+IHVuZGVyIHNvbWUgY2lyY3Vtc3RhbmNlcywgaXQg
Y2FuIGFsc28gaW50cm9kdWNlIGJ1Z3MgaWYgZGVwZW5kZW5jaWVzDQo+IGFyZW4ndCBjb3JyZWN0
IGFuZCB0aGluZ3MgZG9uJ3QgcmVidWlsZC4gV2UgaGF2ZSBhIHByZWZlcmVuY2UgdG8gdHJ5IGFu
DQo+IGVuc3VyZSB0aGluZ3MgYXJlIGNvcnJlY3QuIEFzIHN1Y2ggSSdtIG5vdCBzdXJlIHdlIHdh
bnQgdG8gbWFrZSB0aGlzDQo+IGNoYW5nZS4NCg0KSGkgUmljaGFyZCwNCg0KT0ssIHRoYXQgbWFr
ZXMgc2Vuc2UsIGFuZCBpbmRlZWQgSSBleHBlY3RlZCB0aGF0IHRoYXQgbWlnaHQgYmUgdGhlIA0K
YW5zd2VyLiBUaGFua3MgYW55d2F5IGZvciB5b3VyIGNvbnNpZGVyYXRpb24uDQoNCktpbmQgcmVn
YXJkcywNCkFsdmlu
