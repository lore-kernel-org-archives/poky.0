Return-Path: <Enrique.Herrera@swisslog-healthcare.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E61C25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 12:59:41 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.84])
 by mx.groups.io with SMTP id smtpd.web11.20615.1717505971015862285
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 05:59:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@swisslog-healthcare.com header.s=selector2 header.b=KYAAcsV2;
 spf=pass (domain: swisslog-healthcare.com, ip: 40.107.8.84, mailfrom: enrique.herrera@swisslog-healthcare.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FmIoYtikRSoLM+o7Y2d5728TavScmiPE5nYSUnxNXj9rrFZsq2i9a7DcK6lVdIlobfAyzIw3ND1RW5nGG5/G+/EX7QlrTE+yVoiUqGnzVqLfxfmbPpIQCklEpm1y1ck4/gMz/kKxh8hUC3kCyht1I4147uouCm+TseLAUHdbWv+yd0rK1Iau9jOqM/PIJ++kaOyb6QNYXXM00PBbN/ATkUoTqlrM1sxqj1LfL2d1juyMyp9yatFPNH1j73ZeiFTqKrG/MhTBgMxPrVPhWz10KIGksJ5rk49c4hxGtHoxqkNIFcaDmi5HnJRtrAw76wr+zLKPe7Po3lc11HP9ZNiroQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ceM0V1+hUl40kn2zsBslh0+WlWdoll/Znm7hCxf7yvQ=;
 b=AHGHU0QswHL7eFt+snfuI/v1GzncSI/5W4+v3owR5XKoAoRHp5V1/HCwVA0mVm4QUTED0bYQItcbf3nprMrCe/4cp/G0K+phYJycr+nDWNY9IRvxCuHpW7CFgcYNtCt3xVDgFo2P2tiOcrqF/j7DykQC0ZLhvO0JVInfnnPpycazdblKaFuYGQNFu037n6Sdcv73dmdXH/rl0QlOeK0/mUCiIPEvhELNcCXkOxw2mJ8HEPL9PipQTJkpCz5EzGBayi5ufxRrjJbWepoPxBRBfVAbj123e5QvjPcHY4gpDNIbdum+dhDDqCzI8HtJL5cuzKo/5UFxnOKeFhUkZu9Crg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=swisslog-healthcare.com; dmarc=pass action=none
 header.from=swisslog-healthcare.com; dkim=pass
 header.d=swisslog-healthcare.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=swisslog-healthcare.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ceM0V1+hUl40kn2zsBslh0+WlWdoll/Znm7hCxf7yvQ=;
 b=KYAAcsV2550r0sgEyA+YPE+Q+3ujqJ84ewBQ4ko+jEG5uEMX3abFGLqpjhAGXbk2Ic0U+4b/9yR/w4zQ9KGQITjnP5kzJdjzFW6/khLE63n/6pIeF74Oh5SvTBNfO+LqvqBOoSl0WaYuhFQeVk2gdpevBJs/Jhn9H7kUreKHfncqr18d9hwrBCAGj9SSUdwN5EmQnoQYV1u9uIrnR2vYdOHho8vht8qW+MMQdhn3v3F7fe9u8G0E+5Kz9mqMI8y1pEDCH96U3c0rvPV5MNotNyLgl9pjXtC6b/14uwZxHM9QITXY2GAXMICjdWFOHTCVeUYQLdpuyef/nQ/0/DA1uA==
Received: from AS1P250MB0655.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:48e::12)
 by AM8P250MB0358.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Tue, 4 Jun
 2024 12:59:24 +0000
Received: from AS1P250MB0655.EURP250.PROD.OUTLOOK.COM
 ([fe80::9164:843c:e322:148f]) by AS1P250MB0655.EURP250.PROD.OUTLOOK.COM
 ([fe80::9164:843c:e322:148f%6]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 12:59:22 +0000
From: Enrique Herrera <enrique.herrera@swisslog-healthcare.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Host PC Image - MACHINE genericx86-64 - Unit Testing/TDD with Target
 Application using the Yocto SDK (krikstone)
Thread-Topic: Host PC Image - MACHINE genericx86-64 - Unit Testing/TDD with
 Target Application using the Yocto SDK (krikstone)
Thread-Index: AQHatnrEfInhVrzqt0Cci2VHqBTwxg==
Date: Tue, 4 Jun 2024 12:59:22 +0000
Message-ID: 
 <AS1P250MB06557FACA8CD7E1BFE0F9052BCF82@AS1P250MB0655.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_Enabled=True;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_SiteId=cb7220b2-13d6-4f28-a895-fe9733df80d1;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_SetDate=2024-06-04T12:59:21.867Z;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_Name=Internal;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_ContentBits=0;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=swisslog-healthcare.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1P250MB0655:EE_|AM8P250MB0358:EE_
x-ms-office365-filtering-correlation-id: 0aa53d97-dc69-4872-53f6-08dc8496276d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230031|366007|69100299006|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?fRKb8dcksI/vpXceKrItzVGHnz8J9YUE4Sai0e67sPSQ9EvTBl2lrWLv?=
 =?Windows-1252?Q?WdJcjFuLZWghS0/fs4+e22lPEEIltzOrQS91vykmnA6WcUIv7NygYg/+?=
 =?Windows-1252?Q?oFp6QgReS2TkOx4aJMSbRfJ85pwGjUXZFrqHhyxjZjZbNAjTGRt9fOkV?=
 =?Windows-1252?Q?meJkJ0WswsLn89Ma3otDXgxilzy2yYk00nEqi2q5Ja39W4tEGNBumtNO?=
 =?Windows-1252?Q?6Li5qUwovVq/8qLrPTKbxsCTMTuoc8M++YkMRnPx5aNfrvQTfXxDi+X1?=
 =?Windows-1252?Q?hejCe8G7vOqXOsV4O/J4SDv+8KtNqnfZTf9HOULlyP8Ec/Ml9cGVGtI2?=
 =?Windows-1252?Q?gZlLyAfhDmSxZr87n5nRLXDieSIqmi9EJQ/SzAncnWgLFNNXaAr04rEQ?=
 =?Windows-1252?Q?hOrXycGAhwjcPAYURdve9EsO76m9YQsMb3DhmPOViheGrQ8PwpQrlDO7?=
 =?Windows-1252?Q?ZKzaeXEeMy7kpy7xYXPqFEQLShrPB2w8w8A4zIjgBr+9GDX7Jqtorc7D?=
 =?Windows-1252?Q?FsQh9dXLLDl9DIRw3ZR2FTNDJUl8MQ4+QAmQ8o64W9kaw0XdWG2CLZKC?=
 =?Windows-1252?Q?L+u6eToKkwlwac8R36MxUzqDnCYL9uUA4tKvtx7T9DAIoOMKIymsGz3O?=
 =?Windows-1252?Q?rPVqocb6/ixo5xW79zQkOlotklDH4IUxsk/7v1NY2HzPzWTXozrAYQod?=
 =?Windows-1252?Q?qOFa45c7Jq5KS/lNafR4ptRMxCs0rIKOuW/+Go/wjFc2//vYYcpe1O64?=
 =?Windows-1252?Q?me/LeMZvUUrAWuVgU8uP1DFcPYrdQkoeUn3HLD5wPhc3f/zS/2OoABY5?=
 =?Windows-1252?Q?h/OtCoGMqXCCH5mIgX/t97yUdA5O0xQKVtA6AMdz8tWAlZS3NkzXC/2i?=
 =?Windows-1252?Q?nTem7UXf8u50RV419Xh21aHx2A9vp6qSn/GE5XQQzqFWizpMm+UgKw1t?=
 =?Windows-1252?Q?wMSSlXSFP4W9OPwD60mRf0f1YhymPLh+676GBfskSTD6TIESp+OovyHz?=
 =?Windows-1252?Q?OVFlOwplAI2pCk9tbmoYsI/i2dFT4doAcKWQRyedMDMsdoDw6S1iibZW?=
 =?Windows-1252?Q?Oep4N5k+XofE5AqRgEDgtXCi9zDO919hwL9IyXdUDJLGwOlxXDiiYLfo?=
 =?Windows-1252?Q?WHnhRcqnbFPx8hmmv1/sYMcZ+aahBKt5oICNmgIg+qBAZBRQ5OxmEqyF?=
 =?Windows-1252?Q?yRnLq3qcjwdi0inxSVGbeZASAv1l2+wg/79RGS+z1xco3jTV5kGr72WC?=
 =?Windows-1252?Q?R++vVrLa2PdRABgRd8+EJsHzkHggCFne+UyuO39bugMUgWHDYHqIrm/2?=
 =?Windows-1252?Q?bNQW3eprDgMWOs2X4gmd2QjOgdtiHujT7tRPhXTkLUA7+IilFuhdfXXw?=
 =?Windows-1252?Q?gqGTs7Wv5M1enKIFDm7372hmYYb6VX2LWu0lOhCWN+wBU8hZOhcsh3wa?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1P250MB0655.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(69100299006)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?uekK5j/kfcVRiJ/IZTe3jXBToibnbLI8pjQ2me+rWhN38YIEYXFPrmxK?=
 =?Windows-1252?Q?XlozhJ3NLXadHaJtIFEn5WnPAId0VvTVg686zjiwtoCA6X2Ji84M2ZEc?=
 =?Windows-1252?Q?OzzRE+f8lQVJimNelxZN5d0631JgTvkxu4j3qfu6itzR70ZLG2biZygL?=
 =?Windows-1252?Q?Mht2X9PXjvA975SzGDMIR7Px/1WeU9Zxc/6Nx6aKqh+dLQ+AiAc1HSjI?=
 =?Windows-1252?Q?8AIYLPaH19LVGp4u0+L89OKACMPc3BzKVM0BdIZRznHDmiMxkrYIGKKY?=
 =?Windows-1252?Q?EUR85t2eBy4cnj6o64TN4I+kNhHkjT7P5sb9kNQUY2jIr9GN825OP7W+?=
 =?Windows-1252?Q?77+TNlr+/P4h51T8iyx7RxM4ae150f6X3GxT5kJweSIfP5erfDwgzxIG?=
 =?Windows-1252?Q?6a7shxq0+BrVgj5rihdESz5JJMmd2qiRb3XdL5tSzSHKENe1XK3nrgO/?=
 =?Windows-1252?Q?u6wj7l04dUBd1xRIO1eQ7kR8vacxQBSHoEs8g66GfBLEk1c6DfYeMjdi?=
 =?Windows-1252?Q?URt2t9SAvWVMrqOHAfjDpUqUbNYsXlS2rHNr4xk/RI/SkpVzxNbsjjH2?=
 =?Windows-1252?Q?Ugi/wvg6waKSqM78OaGhUeP1tx8qP1Mzc7WlK4DflLCzw/pfgKwLUQSe?=
 =?Windows-1252?Q?c7YfLA9sFR7YGgncZngAN6XkAHBYXpLHDLKWuNOWhqBCutaZ589UY2iR?=
 =?Windows-1252?Q?r2oyAZoyXdYk2ho9f1+xX/1ASWk8B5qQjL7LUQOQlCrXmEBYGKw70zcO?=
 =?Windows-1252?Q?sSpaTiKJCST8CMr7+02wgYztTwcaiXBsRBsz+M1hvhIEhCsPjetN5FKh?=
 =?Windows-1252?Q?Gap63uhR6L/kEbzRYkm9X+QOtG2CN6hDvvhOk3+2noTy3OND9S5aNm1b?=
 =?Windows-1252?Q?g5sXLPgQ1A0cEvCtHPUxAWkZZUDJXqJa1g6C6+4Egr8no1gsAzLkoCjh?=
 =?Windows-1252?Q?j5ovQWSahoxCDHoGS/Xr8K0pRgReRSePxLljtZbfZGHobga6WqIz5N4c?=
 =?Windows-1252?Q?2Wv//Lt7a5U7qYUZqn1THb9Kr909dbpbCYtjM1UrB0xHRQRcKKohdq7a?=
 =?Windows-1252?Q?bQlbPKTam9iNTwrhfbD7fDjpTdM4awAQGmQVOl85pYp1oN0OWlRt37zR?=
 =?Windows-1252?Q?RIAdUugC69TbRC1V4MFsf0Yh6QNhtZbUoSAgzFzpoYXdpt58HeDL9hV0?=
 =?Windows-1252?Q?GuzXDqz2PJH+ucLmnIGOVYg+7G0KvaBl0VpYpwRIS7OQoGMRBr1KJPFM?=
 =?Windows-1252?Q?ZzMtPLttrPWo+L6yghWZOVG/ohQzjWCjsXbVWlvTQizSoJDCXK/o9Qwm?=
 =?Windows-1252?Q?eoiSo8iyyikd4iqdAjv0T/j/AmT5cnDTBBDSCWRiTTJLXaDiRGDGWHUE?=
 =?Windows-1252?Q?IutFsU9tMhztXtTldCL+wKyv/VaZ2+4gW6WvUeewiVWbPUp3/5YiR2yp?=
 =?Windows-1252?Q?B9rCDO0kp65rl8zDw1HzED7AKJKTB+VQJ0zzUuV+BO875i5APw5I/dJh?=
 =?Windows-1252?Q?b9O1YhWunChW6T1UkBStLyqPZxK9L1dYK0osK+AVwBGgXnOqKFdnNM+F?=
 =?Windows-1252?Q?y7Jtj/lnRyV6vY8yy1I7o20KxYkw9gjpCWV1U9IFmD+aOF3eRUZ1Wlmu?=
 =?Windows-1252?Q?KlLUvAgUb074BBy2KFiAkp+nu8zgjcwDY4wMk1X3iEWRrYkX18MlvJWc?=
 =?Windows-1252?Q?OGLRO6Nh46dvz2huj8P4b9quWPqndBRVZZ32sNAQMJMP0+Nzd/hCtS1p?=
 =?Windows-1252?Q?+s12VCL1XyzU7MD5aW8=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS1P250MB06557FACA8CD7E1BFE0F9052BCF82AS1P250MB0655EURP_"
MIME-Version: 1.0
X-OriginatorOrg: swisslog-healthcare.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1P250MB0655.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa53d97-dc69-4872-53f6-08dc8496276d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 12:59:22.1024
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cb7220b2-13d6-4f28-a895-fe9733df80d1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /c/t6ThMAePpHRzE8Tu0WfFW/ADfEzFzwTj3MA5wkcaBCCdI0zAxvaXwTAsCtYbZ1Ws8vY09J0ypBEJMkK5Lq8j5sjSmmSDshWEtuzFnYo/QjgcUzv7y2WrPs+vTRCHI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P250MB0358
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Jun 2024 12:59:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13365

--_000_AS1P250MB06557FACA8CD7E1BFE0F9052BCF82AS1P250MB0655EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


The following blog post link fully describes my current situation.
 Exploring Approaches for Unit Testing with the Yocto SDK =96 Page Fault Bl=
og<https://pagefault.blog/2023/05/16/exploring-approaches-for-unit-testing-=
with-the-yocto-sdk/> (https://pagefault.blog/2023/05/16/exploring-approache=
s-for-unit-testing-with-the-yocto-sdk/)
I made a CMake project that included the Google Test framework. My intentio=
n was to implement TDD, test-driven development. The process of TDD for emb=
edded development is not straightforward. Every time you want to run a test=
, it takes time to deploy test case binaries to the target. For efficient T=
DD workflow, developers would need immediate feedback from executing the te=
st cases. Running the test case binaries locally on the developer's host ma=
chine would be necessary. The SDK that was created based on YOCTO image rec=
ipes is intended to build target binaries. Natively building targeted appli=
cation libraries in the SDK is possible. However. The build environment set=
up can be a mess. I know I couldn't get it to work.
I followed the recommended solution for the 'Page Fault Blog' post. Basical=
ly, set MACHINE configuration variable to "genericax86-64". The libraries t=
hat were generated in SDK for your PC will match those in your target image=
.  Despite my efforts, the binaries I built using this SDK did not function=
 properly.

[r/yocto -  Unit Testing/TDD with Target Application using the Yocto SDK]<h=
ttps://preview.redd.it/unit-testing-tdd-with-target-application-using-the-y=
octo-sdk-v0-jvsedi5ope4d1.png?width=3D594&format=3Dpng&auto=3Dwebp&s=3D65b8=
0e3becb3defeda4eda4e6cada09147ad2802>
When I tried to run the binary, I get "No such file or directory".
I found a Stack Overflow<https://stackoverflow.com/questions/46787700/contr=
olling-architecture-in-resulting-rpms> post about issues building generic x=
86_64 targets, by setting DEFAULTTUNE:genericx86-64 ?=3D "x86-64" .  Still,=
 i get the same result.
 I cannot be the only one who tried test driven development with YOCTO proj=
ect..



Enrique Herrera
Sr. Software Engineer

Embedded Software & Firmware Technical Lead


Internal

--_000_AS1P250MB06557FACA8CD7E1BFE0F9052BCF82AS1P250MB0655EURP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 0px; margin-bottom: 1rem; font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
The following blog post link fully describes my current situation.&nbsp;</d=
iv>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 1em; margin-bottom: 1rem; font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
&nbsp;<a href=3D"https://pagefault.blog/2023/05/16/exploring-approaches-for=
-unit-testing-with-the-yocto-sdk/" target=3D"_blank" id=3D"OWA670152cc-3b03=
-db97-d919-8b4319281964" class=3D"relative pointer-events-auto a hover:unde=
rline OWAAutoLink" rel=3D"noopener nofollow ugc" style=3D"text-decoration: =
none; display: inline-block; margin-top: 0px; margin-bottom: 0px; border-ra=
dius: 2px;">Exploring
 Approaches for Unit Testing with the Yocto SDK =96 Page Fault Blog</a>&nbs=
p;(<a href=3D"https://pagefault.blog/2023/05/16/exploring-approaches-for-un=
it-testing-with-the-yocto-sdk/" id=3D"LPlnk" class=3D"OWAAutoLink">https://=
pagefault.blog/2023/05/16/exploring-approaches-for-unit-testing-with-the-yo=
cto-sdk/</a>)</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 1em; margin-bottom: 1rem; font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
I made a CMake project that included the Google Test framework. My intentio=
n was to implement TDD, test-driven development. The process of TDD for emb=
edded development is not straightforward. Every time you want to run a test=
, it takes time to deploy test case
 binaries to the target. For efficient TDD workflow, developers would need =
immediate feedback from executing the test cases. Running the test case bin=
aries locally on the developer's host machine would be necessary. The SDK t=
hat was created based on YOCTO image
 recipes is intended to build target binaries. Natively building targeted a=
pplication libraries in the SDK is possible. However. The build environment=
 setup can be a mess. I know I couldn't get it to work.</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 1em; margin-bottom: 1rem; font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
I followed the recommended solution for the 'Page Fault Blog' post. Basical=
ly, set MACHINE configuration variable to &quot;genericax86-64&quot;. The l=
ibraries that were generated in SDK for your PC will match those in your ta=
rget image. &nbsp;Despite my efforts, the binaries
 I built using this SDK did not function properly.</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 1em; margin-bottom: 1rem; font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
<br>
<u><a href=3D"https://preview.redd.it/unit-testing-tdd-with-target-applicat=
ion-using-the-yocto-sdk-v0-jvsedi5ope4d1.png?width=3D594&amp;format=3Dpng&a=
mp;auto=3Dwebp&amp;s=3D65b80e3becb3defeda4eda4e6cada09147ad2802" target=3D"=
_blank" id=3D"OWAb18e0c4f-1c54-13d7-e5ef-686f9ce6b8d5" class=3D"OWAAutoLink=
 elementToProof" title=3D"Image from r/yocto -  Unit Testing/TDD with Targe=
t Application using the Yocto SDK" rel=3D"noopener noreferrer ugc" style=3D=
"display: block; margin-top: 0px; margin-bottom: 0px;"><img alt=3D"r/yocto =
-  Unit Testing/TDD with Target Application using the Yocto SDK" id=3D"imag=
e_0" width=3D"594" height=3D"226" style=3D"width: 594px; height: 226px;" sr=
c=3D"https://preview.redd.it/unit-testing-tdd-with-target-application-using=
-the-yocto-sdk-v0-jvsedi5ope4d1.png?width=3D594&amp;format=3Dpng&amp;auto=
=3Dwebp&amp;s=3D65b80e3becb3defeda4eda4e6cada09147ad2802"></a></u></div>
<figure class=3D"rte-media" style=3D"margin: 0px 0px 1rem; color: rgb(42, 6=
0, 66); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot=
;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;=
, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, sans-serif; font=
-size: 14px;">
<div style=3D"margin: 0px auto; width: fit-content; max-width: 100%; displa=
y: block;">
</div>
</figure>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 1em; margin-bottom: 1rem; font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
When I tried to run the binary, I get &quot;No such file or directory&quot;=
.</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 1em; margin-bottom: 1rem; font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; co=
lor: rgb(0, 0, 0);">
I found a <a href=3D"https://stackoverflow.com/questions/46787700/controlli=
ng-architecture-in-resulting-rpms" target=3D"_blank" id=3D"OWA443eb908-448a=
-3526-8e20-886f14687c5d" class=3D"relative pointer-events-auto a hover:unde=
rline OWAAutoLink" rel=3D"noopener nofollow ugc" style=3D"text-decoration: =
none; display: inline-block; margin-top: 0px; margin-bottom: 0px; border-ra=
dius: 2px;">
Stack Overflow</a>&nbsp;post about issues building generic x86_64 targets, =
by setting DEFAULTTUNE:genericx86-64 ?=3D &quot;x86-64&quot;&nbsp;.&nbsp; S=
till, i get the same result.&nbsp;</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
margin-top: 1em; margin-bottom: 0px; font-family: Aptos, Aptos_EmbeddedFont=
, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; col=
or: rgb(0, 0, 0);">
&nbsp;I cannot be the only one who tried test driven development with YOCTO=
 project..</div>
<div id=3D"Signature">
<p><span style=3D"font-family: Arial, sans-serif; font-size: 10pt;">&nbsp;<=
/span></p>
<p style=3D"line-height: 14pt;"><span style=3D"font-family: Arial, sans-ser=
if; font-size: 10pt;"><b>Enrique Herrera</b><br>
Sr. Software Engineer</span></p>
<p style=3D"line-height: 14pt;"><span style=3D"font-family: Arial, sans-ser=
if; font-size: 10pt;">Embedded Software &amp; Firmware Technical Lead</span=
></p>
</div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Center">
Internal<br>
</p>
</body>
</html>

--_000_AS1P250MB06557FACA8CD7E1BFE0F9052BCF82AS1P250MB0655EURP_--

