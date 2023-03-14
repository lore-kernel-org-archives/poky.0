Received: from FRA01-PR2-obe.outbound.protection.outlook.com (FRA01-PR2-obe.outbound.protection.outlook.com [40.107.12.75])
 by mx.groups.io with SMTP id smtpd.web10.355.1678814188881039139
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Mar 2023 10:16:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cpexterne.org header.s=selector2 header.b=hpEHO0UY;
 spf=pass (domain: cpexterne.org, ip: 40.107.12.75, mailfrom: emmanuel.vautrin@cpexterne.org)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dStyQLrAgmk7O0Z6UC8He5k4bYqKGVP7Kg2lgkDsEP/uJY2lMdra9xI0U72Q6ZvkzeilkQcZ6J06y3yDqIRt2DC8XbkwO9nD4SZV1dB3KOCy3/jYzuZKWbqg2XlLX0rmQrK1TRpZ1FHiwfCXO0s7agFSIYxiIrtaXl2cdCz9UpyH5assXUZlZmigNy20dCe8FHpmosWq3s499y45yds7Lzrk7Y51pz95oyX4gGvv0uMqVtPxxhINxWCAsiLrbFOCLyyHExC3RMaI7GLP0A/rBLHhfkSmOGmnBvAMhMSdUGlwJnE97wMdlxGeSje62jpDKeVmpU15jZw/GERFsvqUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRCXjQ182Q4uf9gZDAu3a1AUAchOS0++Ahn0x8nfWgI=;
 b=FcMcAHXVvUTdEIDjLRqGckzIcb4xQ10kfYEcgjZRQ6kzEO/jBFKWhFg/C6pVOMhHZzP7vXfFy2Tzu+fsmB/O+452aSMPVeMX4LiC/wussGRnUW+clcTlS1zfw0+8jNl+uo3gO5yq+18ND/X9Vcpv5tLAx06K2eJ2v9DyryuH8GcwRDEl8VGvFXeux7kAqYmyysLfYkysAdXo7IqLVjvQg91rwHqUOYNx8f6k7bGU+d1MTWBvnx+0eboTMLUUg5Wv9+duD6VpRt4cHoMBa9fPJBSmDhVVWtWFhnLb3ypjiO919a2TiAXz8t17mM9/E6Q8qeDHr0leQlwda7wbEaSYKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cpexterne.org; dmarc=pass action=none
 header.from=cpexterne.org; dkim=pass header.d=cpexterne.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpexterne.org;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VRCXjQ182Q4uf9gZDAu3a1AUAchOS0++Ahn0x8nfWgI=;
 b=hpEHO0UYffGkiweMwFs9vD5ZWUwfDZiAsrstTv7C13WC5fse4Dghd87tBVfbDgyq5JCfzndAttgMyR4QW5etBDHKEL0Aul2KTt19vGKvRiRHtoQA0FmXhsYk6OLUXk0cn/kIvlPO0cPwqqPQ7u6SHL7YYFJBRkY12T6D2kcVVqU=
Received: from MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:a::7) by
 MRZP264MB2396.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:1d::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.26; Tue, 14 Mar 2023 17:16:25 +0000
Received: from MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6d79:b93c:b64:95ed]) by MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM
 ([fe80::6d79:b93c:b64:95ed%5]) with mapi id 15.20.6178.026; Tue, 14 Mar 2023
 17:16:25 +0000
From: "VAUTRIN Emmanuel (Canal Plus Prestataire)" <Emmanuel.VAUTRIN@cpexterne.org>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: [meta-yocto][langdale][connman] Partial integration of CVE-2022-32293 fixes
Thread-Topic: [meta-yocto][langdale][connman] Partial integration of
 CVE-2022-32293 fixes
Thread-Index: AQHZVpibY64I3KYMn0mowgk+BFQDdA==
Date: Tue, 14 Mar 2023 17:16:25 +0000
Message-ID: 
 <MRZP264MB1544487A07884D37D9CFD78E93BE9@MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cpexterne.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MRZP264MB1544:EE_|MRZP264MB2396:EE_
x-ms-office365-filtering-correlation-id: 44636713-70f0-4af0-1fc4-08db24afd79f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MDqP6tTj42IG2rcYxtZEYWzTg55PTtJjP1DlhA2vx7JMm6cYU//P0tN2AUpIJpkjucIxNMK1UaY1ZOglD2BIW8XDPyV3uw5SJ3x/i+wh6iVc/dVsxvIbkPW35Vl1bY/yVEszCEOQZxUdOQJOPI4VNLIyqbmUBVYcFU5vdCjmufvLPEyEbHVTlcjZWX75JnsNYb7gl5AeM8fVIA+zMoLimBD/L5FnGtHZUsZIB1+Dm5vj1uAKjfAc1nqy1YHo609dBvlH9DulJEMjyu4RBlrMreUoKnldZOkDL6KVCFSJUL3T4LWuNT4xqIkqXBT5gclh+xIIoBZgl/cB32B3G+n+ykrHFODa6j4IaCak5WREZZhZ8B6bKN5WZRuzb+67/kOOObCRPCAQpMjFV6mgxyrNOUPnpVBY0FfPM4zh8P72AJGzwhNTfuElXfJN770ECIa2DUg0qsiq8+L9H/jZ/fehixFYRNQ0+3bCfMULSoFda9YQlKmLINk3NAzIZ+pTGQvzUcYkq7C2NRJqVKbA6e5uc7ND74gdFx29q3T044b0+xpio/RxqZqiCZXmM152uQVtnd4613JiyQ7Zdx/kj/ahz9lY5p2zYeWLU6xYs86+j81HTVtjlWre+qLhMVHdNMzxc7shwMztOPgOPIFnj8DsIIto2zLpSuzEbDw0vcGI0FmdxjdEHVSyYnE3G+3Vj9leCpJGqD0z/zGvQKwz56K4Uw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199018)(41300700001)(4744005)(52536014)(5660300002)(8936002)(2906002)(86362001)(38070700005)(33656002)(38100700002)(122000001)(478600001)(7696005)(66946007)(66556008)(64756008)(8676002)(76116006)(91956017)(71200400001)(66446008)(66476007)(6916009)(55016003)(316002)(83380400001)(6506007)(9686003)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?WMocz/HU+AqkHwxFEjHy/yLZGrRp3tsI7BLar6KVCusm7S6D2P3fNrxKGA?=
 =?iso-8859-1?Q?yPLmQkE6ABJ7aTXY8W/cPBYrspmpIgPT9thOn+UL56s58KnjvQ1Q/y3Q8L?=
 =?iso-8859-1?Q?bW1yQ0bMeMv+yKuA+Mikq+gp16WqlDPkBgezJrQ6NGSSTsm8SARypeB8C5?=
 =?iso-8859-1?Q?ABd1/G4dfrUH7c1OkZ3czH83HfyNPRXQj0wN18PfoxEGiABoMuJg9SKonT?=
 =?iso-8859-1?Q?3pZYejinh5HsE9gopoyGbDhh28B67yj6ccThLowHDRgqzH7DalCc5A5XNP?=
 =?iso-8859-1?Q?8GhBGRMM8rsMf9XvOkQaZtTaS6NtxF68+jiUcTjwfFrk/AI6gNIVj5y49Y?=
 =?iso-8859-1?Q?BQr/FzihozyWBRWyGR2fjBVCNG04sVHY72wabznfogj5ihe2zyEZq8MkPa?=
 =?iso-8859-1?Q?uT3cE7asAjNxTKql0LTX5feyLHRm/H7FL7HmToE87TGZDmFgLZQd4rqkbK?=
 =?iso-8859-1?Q?N6JXdwIPmaLs73UlD7mw4JOU35jgaQwaytYmxxnMiLu60sTayN+fZqktRh?=
 =?iso-8859-1?Q?9e3Etn4MP175wqNCfYV1R4PBdLZcgSLJ8fXzUOhw7NyWT3OqoHEuLzt6Mf?=
 =?iso-8859-1?Q?gIj4q+bg1pUREn3dm5IFHjGy3cOpRzNRx2KUWb7U+VDPSqAR2BeOnmer3B?=
 =?iso-8859-1?Q?qi/nh6qAxNi1Z29Yg5ARPitF08ERp3DaeDEXALGzC0jOz1W4lkkXzF04IF?=
 =?iso-8859-1?Q?heFI0jMs2jUeYFwFA1oRWk2o62qzr6KlM6zMv4Pk47CAJZSWKzFJKibehq?=
 =?iso-8859-1?Q?YOMqIxybga4qeilxAb5Yfi9cazMpMLmGm+Ib9fHZByDBPKbBOHQU2DYbVZ?=
 =?iso-8859-1?Q?N1Zdx3yCB4EM4yeknHyHbBD+lcnNIda25yXmD04IQKLV4WbLIIXubLcIRo?=
 =?iso-8859-1?Q?jB3DxeX76sLyrEzY3ZI+4wDtA9Uzhq1Q0+iQKQsGZ6N+hfW287I/4Oo4rP?=
 =?iso-8859-1?Q?sfxlI6UaqGZBgJQsM7u5z8qo9EA6Xv/rSkXRAyEf7OHf+skYDd2anRudGl?=
 =?iso-8859-1?Q?6GvyjuhoSRxxFsR2cy6lRUwU2AMTR8Kn/L1yMmAPsBiaqUMAMsiqdiekKp?=
 =?iso-8859-1?Q?ZPDlbu+6996CiotAe0Xku4wtgarkZ/YOGGZ8sTQuNfuPmGYmmUHH7Knn93?=
 =?iso-8859-1?Q?hcDID8kK4reO1MRJohYwgYkOxnR6LEJxE/Tc53aK68vc/U6SDCxdFuxIVl?=
 =?iso-8859-1?Q?30AqWQVcSp4ZBx8bzgbgKEL/RQKDJ2s3wq/KRWTwt8tglsUdOWjkKG++CR?=
 =?iso-8859-1?Q?6ixQUQKbP6NsU60OUfuwHaG7/pFGyPOhRcO6S6+6dRhD56QAQMmUgNctes?=
 =?iso-8859-1?Q?8xS2diQBhvcyJd30nnvf7GHUD+oxyw906VPsMSNZgE+OK35k5wv4OLYBQt?=
 =?iso-8859-1?Q?BgkygMy83UfiB9jSSq+7xij1EY7+iGmacS3DGpt9AHX0DI0G54cot0LkNK?=
 =?iso-8859-1?Q?lcrqKKCAvDiRUkmLZEGWq/1q0Gp8ROfcgLy2onr8w6tqkNGTy1XQLBIdlo?=
 =?iso-8859-1?Q?7zwb7XuBq0JKynuUqZ/hgkxeX8qG7+J95xqccbt6KH7vVXkeGGtnVIeUU8?=
 =?iso-8859-1?Q?f5KebyxZjcr6vv3oUbqSuYW9QooFgi5aNXanMpdCh5MTeYEzpRuQ/O0eLV?=
 =?iso-8859-1?Q?YgXymL48RmekTSUrgRBHytGP5gGtBIFhnWxRaFid9xkxHF43tABuH1ZQrJ?=
 =?iso-8859-1?Q?PGpC2yrHn3vSS69RHUUUg+Za9cEoOab1j7Ax1gBLomwfVav8eYmxmbzqGb?=
 =?iso-8859-1?Q?le/g=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: cpexterne.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MRZP264MB1544.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 44636713-70f0-4af0-1fc4-08db24afd79f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 17:16:25.7840
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bf5c5de1-6a54-4091-a72f-90e32801628c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ozeQ60qoSBzOrJ9qU/68d5wsOmJS27s69US5+witdORyMfMp0fHd0rLgkBT4N5coKKAY/2R9Og9YOavc843s7F8CWKMeKeAdIBrVoyQhik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2396
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,=0A=
=0A=
I have noticed that 2 patches fixing CVE-2022-32293 have been backported on=
 meta/recipes-connectivity/connman/connman_1.41.bb (b33cf2d113d0 "connman: =
Backports for security fixes")=0A=
Unfortunately, the last one (CVE-2022-32293_p2.patch) brings some regressio=
ns, which have been fixed by  e6523511d736 ("wispr: Fix context refcounting=
 in wispr_portal_request_portal()"). Can you integrate this commit as patch=
?=0A=
=0A=
=0A=
Best Regards,=0A=
=0A=
Emmanuel=
