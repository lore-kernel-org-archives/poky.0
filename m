Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.93])
 by mx.groups.io with SMTP id smtpd.web09.13794.1603804405050424190
 for <poky@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 06:13:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bang-olufsen.dk header.s=selector1 header.b=qEssd4L7;
 spf=pass (domain: bang-olufsen.dk, ip: 40.107.6.93, mailfrom: alsi@bang-olufsen.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFKthSdjfyYdUHI8vI8bXqYGihL7rK6q7SfrfRoPH4B3JGU1GzR9eYXmZmEO1JJZ0qzs6mdIYnau+b14JakCG1u1p3W6LXfECkF7Kyx3K7D2Hh8odOTxkXNJf9qvey5L+uDjhAIY3B5Sp2UdLUHLBVVcXL5xgAI2Vo6LRi45SUJ5Kl2ZTCyh83m+4jOz5FFF8W1zEEAYqEP+gDTL24skIIttqsFBVR5KRcbOntPiUVoG6ABFSqQMtTdhVulg77N0GklTr7GcNGcehgctNqnaesdT5XPje6D0AiW/4CNiDvq9wK5EYh86xYDKyiMNK4tpqmfX9BRr710AykMDEKEbbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7JSe34HuRcmiybPs5Gbdfqt5GXdUax7HCCxFrVAmEA=;
 b=eIeNYMuB74BjgPispl2j+EcTXPiXI1PViq9WIo0OqZXpFSf1vHGSvo0dqMSHpLsflYgTHWW9qA5+fxlN1x2KECgnKTwF03Yrx+bbt9kMR42fBVZRCGjFEYMTJtIHqNzU2D0w+4RS9u88fn5KPJzNxoqW5resrq8MBXWNA7tkTHGRKkolJKNg67Z9OhFdUm30Zu87gM1HRAX4XVw7auvkTUvxHeF9//8qYgei8smWIRnc3ljoOtRVYIYFxC/RRQoUs9xv27ujskMYHPSA3zpX1Z8LhAixigLVawx1P6aQDifCyiwocln8T4IL20bB/cmDoqGwl9oqvXMByLzM+ZHFQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bang-olufsen.dk; dmarc=pass action=none
 header.from=bang-olufsen.dk; dkim=pass header.d=bang-olufsen.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bang-olufsen.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7JSe34HuRcmiybPs5Gbdfqt5GXdUax7HCCxFrVAmEA=;
 b=qEssd4L7RzLFc3kffAzxVmX1yDwkc9RB1tY0keOAEdpveukYGEUZnJOvPi7gAk08O/sQu+vDQvScdjHhmZJvvLAaZjyBF0tAtj6EqCYhlyuXGTq1NY0buvIBWYOHtL5EujcUrE4b9QTMHBAli4yxSPw/WmDt3JxkkNlBdgKdQZ0=
Received: from VI1PR03MB3166.eurprd03.prod.outlook.com (2603:10a6:802:32::30)
 by VI1PR03MB6608.eurprd03.prod.outlook.com (2603:10a6:800:193::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21; Tue, 27 Oct
 2020 13:13:23 +0000
Received: from VI1PR03MB3166.eurprd03.prod.outlook.com
 ([fe80::1424:3563:c014:6918]) by VI1PR03MB3166.eurprd03.prod.outlook.com
 ([fe80::1424:3563:c014:6918%5]) with mapi id 15.20.3477.028; Tue, 27 Oct 2020
 13:13:23 +0000
From: "Alvin Sipraga" <ALSI@bang-olufsen.dk>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
CC: Alvin Sipraga <ALSI@bang-olufsen.dk>
Subject: [PATCH] cmake.bbclass: don't remove build directory for out-of-tree builds
Thread-Topic: [PATCH] cmake.bbclass: don't remove build directory for
 out-of-tree builds
Thread-Index: AQHWrGLyWLQeZRsacEW4x2+s4diPww==
Date: Tue, 27 Oct 2020 13:13:23 +0000
Message-ID: <20201027131227.576470-1-alsi@bang-olufsen.dk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=bang-olufsen.dk;
x-originating-ip: [193.89.194.27]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d55c1f9-f917-49c4-698f-08d87a7a151b
x-ms-traffictypediagnostic: VI1PR03MB6608:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <VI1PR03MB6608641BCE0DE4A39DF20DEA83160@VI1PR03MB6608.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Xj154upn9FogdEk19jNCHrgRM1YEzsiQnNN2r/60RuppWy9wsRrKI0K2oFx5suvj5sSa1lXCIb0jvLzRE9TKC/szhI9DFIAdpfxDEgmH+gKTZAufeK5Aou2gK4aB8KiVQ5IIAtYemL+7C0n1MtK/ffKzDhMlhOIRvnrlD/sNe83lWSuEVQ6lYKqcjqYVl5XgPt9d0NS/3aavaYGIBMmJy9sduNs12cpntQ5s4vea0+2QtZhnfKc+xkGZ7akwO/FtvCB1iKpjZcPkOgWoBkDy5At2iQUnlWBD1Lo7GU3bcRpf41Lfd6h0H/01SruoCHun29hIuQ0Zqp23Sxg+5QYaiQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR03MB3166.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(376002)(346002)(366004)(396003)(2616005)(71200400001)(4326008)(66574015)(107886003)(2906002)(83380400001)(66446008)(6512007)(86362001)(8976002)(76116006)(36756003)(186003)(66476007)(91956017)(1076003)(64756008)(316002)(66556008)(66946007)(6916009)(26005)(8676002)(478600001)(6486002)(6506007)(5660300002)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 AuiofiZn0dPotV/cXakglV67b2+ZXG5K+9uhTORWkwiuU/8tRnQ1Bz/Wkw8b68fy++YlLE9GIQZ6g7rfaS4+UBpfse6T7xWvBK2EQA+VQegxfcIhhKQDvrDI6p7R03DbLgshkmIJ3Q66uO1qx8kWiTFMS02RV00vSSQDhj6B8W3SDcjcK2i+r+fAoI4uzUUW2KBBKjs18DSjSM0IQwgoNqENMKbS2OQUTJY7YAa/qE4wxmsIhbhHegh+4zaOCDuhWgRxbIq2PLFg1rkHaHNYn9SeDFvZn4jvIZKC6y+yaC2BdfA72E/gfSKCrOCvJha+yCuGrhynrQxV98v4KbaY1zVJ3iZmf9zaFzjkp5aCev1v2FQk2Dga/088ZD517AI1TPGUUfP5TT53rLL56xUzPOM4g9MSUhr2Vu5a0qXhGYQR1F1EoQeICkpDvdNl6n7MEO+wfM8x2/uoZ4xHnkYI1nltfoNj8p7eMUJ7SMJxJyhLnQmkgy1i4rQocryBgOGFIXAP9v971uL+5uvrVWz2nfuuj+csuU+8wSfdCxBmoTL8RoZGAjqYon5gfRDijuFtV3NDCUTkQIc30VOArm6fCPmt4LmVQNemsbtqbsNxCLe+w92Og0+pNFJsQ/ZthRoKKUC+q012aF0LHdrxKzgf1w==
MIME-Version: 1.0
X-OriginatorOrg: bang-olufsen.dk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB3166.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d55c1f9-f917-49c4-698f-08d87a7a151b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2020 13:13:23.0742
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 210d08b8-83f7-470a-bc96-381193ca14a1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZhxsRofjJjJdggwcb9PATBTLdw3CvAYWHSY+Tfm8EhddbnX6b1ZmlSkjLhIEHIsDIPHq/9Ewi55dyYoKJYZtiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB6608
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <410B3DA9BB2A08478ED5578692A24E75@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64

UmF0aGVyIHRoYW4gcmVtb3ZpbmcgdGhlIHdob2xlIG9mICR7V09SS0RJUn0vYnVpbGQgb24gZXZl
cnkgZG9fY29uZmlndXJlDQpzdGVwLCBqdXN0IGNsZWFuIHVwIENNYWtlIGZpbGVzIHRvIHRyaWdn
ZXIgYSBmcmVzaCByZWNvbmZpZ3VyYXRpb24gb2YNCkNNYWtlLg0KDQpTaWduZWQtb2ZmLWJ5OiBB
bHZpbiDFoGlwcmFnYSA8YWxzaUBiYW5nLW9sdWZzZW4uZGs+DQotLS0NCiBtZXRhL2NsYXNzZXMv
Y21ha2UuYmJjbGFzcyB8IDggKy0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDcgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9tZXRhL2NsYXNzZXMvY21ha2UuYmJj
bGFzcyBiL21ldGEvY2xhc3Nlcy9jbWFrZS5iYmNsYXNzDQppbmRleCA3YzA1NWU4YTNkLi4zOWYz
NTYwOTllIDEwMDY0NA0KLS0tIGEvbWV0YS9jbGFzc2VzL2NtYWtlLmJiY2xhc3MNCisrKyBiL21l
dGEvY2xhc3Nlcy9jbWFrZS5iYmNsYXNzDQpAQCAtMTUxLDEzICsxNTEsNyBAQCBjbWFrZV9kb19j
b25maWd1cmUoKSB7DQogCQliYm5vdGUgImNtYWtlLmJiY2xhc3Mgbm8gbG9uZ2VyIHVzZXMgT0VD
TUFLRV9CVUlMRFBBVEguICBUaGUgZGVmYXVsdCBiZWhhdmlvdXIgaXMgbm93IG91dC1vZi10cmVl
IGJ1aWxkcyB3aXRoIEI9V09SS0RJUi9idWlsZC4iDQogCWZpDQogDQotCWlmIFsgIiR7U30iICE9
ICIke0J9IiBdOyB0aGVuDQotCQlybSAtcmYgJHtCfQ0KLQkJbWtkaXIgLXAgJHtCfQ0KLQkJY2Qg
JHtCfQ0KLQllbHNlDQotCQlmaW5kICR7Qn0gLW5hbWUgQ01ha2VGaWxlcyAtb3IgLW5hbWUgTWFr
ZWZpbGUgLW9yIC1uYW1lIGNtYWtlX2luc3RhbGwuY21ha2UgLW9yIC1uYW1lIENNYWtlQ2FjaGUu
dHh0IC1kZWxldGUNCi0JZmkNCisJZmluZCAke0J9IC1uYW1lIENNYWtlRmlsZXMgLW9yIC1uYW1l
IE1ha2VmaWxlIC1vciAtbmFtZSBjbWFrZV9pbnN0YWxsLmNtYWtlIC1vciAtbmFtZSBDTWFrZUNh
Y2hlLnR4dCAtZGVsZXRlDQogDQogCSMgSnVzdCBsaWtlIGF1dG90b29scyBjbWFrZSBjYW4gdXNl
IGEgc2l0ZSBmaWxlIHRvIGNhY2hlIHJlc3VsdCB0aGF0IG5lZWQgZ2VuZXJhdGVkIGJpbmFyaWVz
IHRvIHJ1bg0KIAlpZiBbIC1lICR7V09SS0RJUn0vc2l0ZS1maWxlLmNtYWtlIF0gOyB0aGVuDQot
LSANCjIuMjkuMA0K
