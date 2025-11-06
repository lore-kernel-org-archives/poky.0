Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B35CCFA03
	for <webhook@archiver.kernel.org>; Thu,  6 Nov 2025 11:38:47 +0000 (UTC)
Received: from MRWPR03CU001.outbound.protection.outlook.com (MRWPR03CU001.outbound.protection.outlook.com [40.107.130.19])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.12985.1762429124425784244
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Nov 2025 03:38:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=PXj7pqv3;
 spf=pass (domain: siemens.com, ip: 40.107.130.19, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rww0WRE8MIM4Mrnvkl1k5JTZ9X8GoE+/hYNv5JJ0NkozjFiOaWNIDdtLEwLjJd7EMz+4ipaOg3hBTOdObrQBX7/A0ZNaZJnuK1dBYaJhqc5EhzNT+7yCUAHONjv8jzJP4LPrZDTGTV9jh6XyLEEAnGLSDoEzaXQwgMiCkVPqvKDciyMwENchT7vLkVCb6mENSqg5H3djLYaFH8HmuzipuOiC6ANtJlgsl5c53UFV1e/D179Corw/UFHp5CR0M8ckzojKKKQx2IncZRQMHEmvYPoYMJcHlUVhAOvHM2FMJqVUab17jl0dyiO0yqrNTJUjTqRLF6CmhRvBt+F3Of6Wnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1muiDG6nkoD0CBvHVnCg0hkkOaNkQOYGiQaitnVonfM=;
 b=Mbh1IUj/sjKSLALjwaG7CQgLS/8+0hLODEgLCmopGMbez62kCbFyBK6QKsRO2AsbHpHPycOBv6agj/ISQbLJxv6ZoOWXTbU3yjGx96vCHfJFJThxKKAf/J5fxqKRwVdkS5yPSHnYi4ZQf+kWfxtSzs2dVzOQCfqrBP5Y7K3xrTNDjrwcW8Dd2qd8rLzvIX7JR0pNheqbMeSPdlCgB9CS9hsa/x+w6pDuSprXZzwDX7esuPYF6Gth2qXvu6uUISvR2lzpmXPlJgKS24GDzEpDArv0jnF0Idb7kuaFd8xhEiDJmy27QDjWEMTadtHeFfoIs5IUsUqaAVBfWQdsZDoESg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1muiDG6nkoD0CBvHVnCg0hkkOaNkQOYGiQaitnVonfM=;
 b=PXj7pqv32oTTpWPswCa9pQn28hISF0Gz2F2AGp4MLX0zyZTrU7mntC4Ix3C9ruNbLGMDynRnfHrnyW+Io/DBwvkJe7/TzYVhXaxQQ2aSozs8fUFMVnQIn/RPLzCEXfC8Q8YQORuXoXM6kCJreye3TD7KOMgDh1zEyUMSqDLpvTClQUiPU5VsY7YW24Q/+t6kJLo2oGWOAW/2YGTD6m/tNG9iIt9uPJevS0rIerX832ETba6WtkGm1YEW8YT2wtDzZ+qoo9aSCcMb8STtOpK0c/PH+lmF/sU6Uo5RaccUjfZ5JXxCHNPcMOB9HN9bHvM8XuOpDV0b4pKlQ6bof9xu2g==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by DB9PR10MB5642.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:30d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Thu, 6 Nov
 2025 11:38:40 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%6]) with mapi id 15.20.9275.013; Thu, 6 Nov 2025
 11:38:40 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "davepregan@gmail.com" <davepregan@gmail.com>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] Problem building poky
Thread-Topic: [poky] Problem building poky
Thread-Index: AQHcTw8I1GYlDWWlgECLbSJNMFZaB7TlhH+w
Date: Thu, 6 Nov 2025 11:38:40 +0000
Message-ID: 
 <AS1PR10MB56976B057310779DF98EA661FDC2A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <CAHzZjuM04xDPTVo2u4p4wDv+HEAzGSd4mp0gNSoLU_QrO6AYfw@mail.gmail.com>
In-Reply-To: 
 <CAHzZjuM04xDPTVo2u4p4wDv+HEAzGSd4mp0gNSoLU_QrO6AYfw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=f536e330-c05f-4a22-b725-d1dff5be478e;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-11-06T11:34:26Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|DB9PR10MB5642:EE_
x-ms-office365-filtering-correlation-id: 5225c3ab-b4dc-4f76-1e5e-08de1d290840
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: 
 =?utf-8?B?WmJTZisvbk9sdC9jYWt6OHd1SHBLRGt2UE1PT3ZvbTRibjIzWStacUxseW5G?=
 =?utf-8?B?aEtjcEpnU2dtWmFDa25ZRUh3cnJleThwbGw0MUZDVmdyZ2VPTjYvcFNvQSsw?=
 =?utf-8?B?SnMzaDVlR3R4UkVxWXl5S0NBUU9OaDVaL1o0eUIrc09CWHcyNXM1Z2F1VnNq?=
 =?utf-8?B?aEovUlFRUTh3eVkzZWEvWmtwSkFMQXVhbXBFSVl6QjFyMDl1VHhBLzg4ZTdq?=
 =?utf-8?B?TU5TZ1dJSmtCaDlteHhNV0hKTUgvMksxYkk0ZGRoU0lheTRoQTNlZ1MyOGpO?=
 =?utf-8?B?K2ppTUd2TS81cFFRVHMzS09JMWQ4MEIzSnhkNm5NZHgydy9sd2tRR0pFSFlB?=
 =?utf-8?B?M2cxVjBwamNIOUpXQjhmaUY2NWZkMnJKcjFKMnBFQXRncWRNQkF3dHV4TVkw?=
 =?utf-8?B?L1hVZzZ5aTRjUndIRWZMNGQzL1dCZmg1M1BFRE04TTVITzJIbExGZjF3bEZY?=
 =?utf-8?B?RlVIWk8vY2VvRHFwaDBYTU1qRGJ2bHdmM0V6eUs2a2lXK1ZpNU55SlBwZkZa?=
 =?utf-8?B?MURsdVRPakdJTXhXVlJXSzFkREJpYmpodTdmSTJGTEtib3BhaFpoQ200ajd1?=
 =?utf-8?B?M2lEbGxxZEpadTlhZkw1OFg2cGJhcStTMjRYY3QvYWpIM1pMRUJWQVpFYmRQ?=
 =?utf-8?B?TmtVakxZNnNoNXQ2L2xkbXgxekh1M3pYUHBvajhpK0k4SGpoYlBXaUdhOGlu?=
 =?utf-8?B?R21Tb3FGMGNOTWZRVkhVb05Jc05FTFZzY1Y4TGgxeGtZMkE1ckd6LzVhVFI2?=
 =?utf-8?B?ajlLOXhuNjVJYWJFT0QrS3hjemk4RnVOdTBDUlJDaDZjdjBKME9LNVJBQlRH?=
 =?utf-8?B?c25xK1RRYjJ5ZUEyUHZyOTY4dkVpQ0I2SG1HejBYTEZ4a3BraVFwWCtpWUh4?=
 =?utf-8?B?amNyV0F3Vm8rRzhFMDREajJsTEYzT0dwY1NOY3BhQWU4Nm11dUdoY2ZPYVpj?=
 =?utf-8?B?a3g4UmdvQVByR01NeEFGZlZZa29NbWhYSjFDZXdOTkxxOStBaW5peVVJZFJr?=
 =?utf-8?B?VDNoSjVHTTh5RkY1Sko2VnNQcDJoRzdrclZhQjBFamU2VEEvQWVhTit6SFlC?=
 =?utf-8?B?c2VvVE5LYXNDMldXYyt6UlpIWVljdVlEUjg5c1ppdHBueWYxeGUwSmZaM1N2?=
 =?utf-8?B?TjVQcG8rTUZubCtOaVV1M0xuM1VOUGpUb0VPakl2UEgxL2VHdUxqWk9TM21Q?=
 =?utf-8?B?dU9lemxiL2pEWVc1QXJ2VjNHY0hkVmFqWGMvZjFKK3RWaUxNMFk2K2hYSUdv?=
 =?utf-8?B?VTdWUDMyUWdETGEvZ09tSFlvV3ZUTGFiZGNDQnBiRlJIYUxKVUxrQ1RWRGhx?=
 =?utf-8?B?SExEVHRlckVQSDZYT1YrRGl2VjdKU0JYN1ZLbGg1YUNxYVNWcUp6VVZ2Z3dM?=
 =?utf-8?B?N2hTQTNuZHZOUXUvWlhyMTErbTNQa3NNSHFpSFdUKzZraXZvd3VsL2ZBYlNz?=
 =?utf-8?B?UlB6am5ZMVpYSmtzeFVUM0JxMEZyYWJpSGVKd2JaSFJPMnFKcUlFTlBCa2Z3?=
 =?utf-8?B?RW9NL2dxK3lRSTA5Q08rZHVzcjJnWEt0L2JVOXFZYWpKdk1PcVlBeVZPNkNa?=
 =?utf-8?B?TTNRN0k5clZEU2Rzei95bDZneXE2UXpYY1F2N2xyejAwRFVPZXhJbytrTE1q?=
 =?utf-8?B?N1RwaFlSUzVBNjhnRnRMQmpVK081WUdCV2RtWnBtNGlicWJ0REVHSXllMHZV?=
 =?utf-8?B?bjBWeXNQcGxpNVliS1RtNHBmV3dXRDhJNXpRREwyMGtiSVBabWV1cGF0RHE2?=
 =?utf-8?B?QzUxVXREU25VK0lzWUEvQXB5dFN0QjQ3YlVqeVlaQVp5cUJSVzV5cjNoY0Vq?=
 =?utf-8?B?T1I5ZlFtaHlVMm13NlJkV3hwejROVFpEQzdPcGh3dXhzSTE5Yld5aUN6ZmpD?=
 =?utf-8?B?c0s0K1hQckhOZVNiZ1drblUvU2wyOHc4bEZrc20rVjYrajRjaFkwYys4UWxO?=
 =?utf-8?B?VDN2YTFJbitwYXZ0WklsRU53VFIzUUozNTRCRXJVckgwUmN4Rm14RE13d2F3?=
 =?utf-8?B?eWlaMUF5bkw0YVpnRDV2M2c1OEF4WCtBL2N2cFc2ZnlZemV1SE1CNDlNT2F6?=
 =?utf-8?Q?E7qUjv?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZnpPL0huOGJ5UjZsUHJvSmprVTFnL3JZYlVRcmVySGptREFST0k5czVtMzJV?=
 =?utf-8?B?endRMUxNMmlVc2xHWHdwd2YzeE52dG9URGFkQkVBZUVxK0VUZ0loSWRUNEht?=
 =?utf-8?B?SXhOTjhRY1VOUkZNWCtyTm00ZEJHSFpIMHBBRW5leTBNTkxUZTdsVzJlYTho?=
 =?utf-8?B?N1JGcFl0ZE4zZENvTWRkTUV3SW9kWnYrU29zWHY2dlRWcVhSdko4cG5kaFdD?=
 =?utf-8?B?MVZRbmdPcE5XTWpRbmhLa0JRNk1FeTk3WmpELzA2UkNqZ2FPU1NsV0lUVDR5?=
 =?utf-8?B?dy9SOHE0cXdwRkY0dC91eWhLRVBLbVpLbzZESzVwV1pyempob0hTcTNBTzQ5?=
 =?utf-8?B?QkhNTThRL3ZHODd4Q3VGSmJxRHdTanBCRnhueFM1VW85QlFvVkx2MHNVcDRx?=
 =?utf-8?B?U2VWeGdka0dCY0xCdk1yMTBnS2ZDS3d6SEtiRllQL0QyblFEQUNWazg2QnIw?=
 =?utf-8?B?V1lYSTRrdG1keHNzV1BnTnF5ME9wYlJubUdYMlpneFpqWmtDbTFCdTNxMzFS?=
 =?utf-8?B?b3ovUXRaRUZSRkNGcEFLc3R3THAvWStUV2ROKzJLTzhBL0pXWSszQ3VMUGRQ?=
 =?utf-8?B?MWtGbjByN2kwM1JFcXdxTW9FTVRoVkJPVE1YMGQrUEdIZVVVZ01YMTd2am5S?=
 =?utf-8?B?cmwzMys2VGhLOCtweWVWYWhmQ1hXS0VvQW1PYjhHdW5rczFmQlRLMC9KZ2JB?=
 =?utf-8?B?MG0wdUxWRnpFcVEvZDZPeW0vbGRQK2F4OGU5MTA4MmlleHI0bGF4UWF0MTJP?=
 =?utf-8?B?S3NMT0N2RUI2VksyR1R5emRxajZoa0Y4YitQMUNQT0VobmU4SnBVNnN6VThl?=
 =?utf-8?B?cTNqaWZOdWZuWFBHdWpjdjE0K2gvdHc1YjJaUi9pcWpmVEhOdDIwWXVLdkZz?=
 =?utf-8?B?eURnZ05DWEMreGVLNnBZSldCaE4zRjJnL2hvM1VTWHRRdTZwL3VDdWkvR1ha?=
 =?utf-8?B?QUZxNlRDdzdlcGNTVnNDUVZlSUg1YnlmNlVKRDZSOCtoK3RjK2luU0lUZzRx?=
 =?utf-8?B?dnhCN0hjclB3RXE3YXlxOUt4cHg1M0dwakdQQVJ1cFFrUHcrU1FIQzFJK1Fq?=
 =?utf-8?B?K0hMdk5OUWQyWXpEVTlNRmFSTXQ2dlYzQWFVUlA3bmd5eTJUWnhCMmtDRzha?=
 =?utf-8?B?WkpDREhCZnBJK3hnUm03K1BMUE9Lb1BHTm1OVG5iZ3IrcjVkd3h6QVovSDE2?=
 =?utf-8?B?NThtb09VUGlIRVJ1dHRJbTg1U083bXk1VmpTV1k2NE5XdUJCWTdKSGRBdEhk?=
 =?utf-8?B?dm5SVmNPbkp3ZjdmSGltWVROL3lFclN3SDVuL1dEWjV5S2tIek5Oc0xyaVg4?=
 =?utf-8?B?bi8vTXp6c2g5S3lxMStCelFCYUh6cmVQU3NWMnBsQy9tUy9rTm1qdHhmcndj?=
 =?utf-8?B?bXlqb3hjVUd0aGowNkgwYng0ZVNkZmhLdjFnOUYyYmZqVmtBeVdHNTg5Z2E3?=
 =?utf-8?B?aE1uVEcxZUpveVdyVTZHMDhhNjdBNCtGTllNZjJNb216R3hlS2Q2NTJRbm9Q?=
 =?utf-8?B?NE9DeWp3OG0xNnUxVUZNZHBEZWRtdzExSUdMeEw2LzIrT2NYRlROYzZIdUVN?=
 =?utf-8?B?cmxXZnRETDdTSnNYbUpxYVIzOFVJdS9uQzdOdHk0d1ZueVVVUkRWZ2VjaEhn?=
 =?utf-8?B?bGcySE9jZEVlSVpjWmovanpjbCtsWHIzYlZ1bkN2aXAxa0theDh5TlE4RWVi?=
 =?utf-8?B?SnhJWEN0bmd2QW96aCt0dlVlS2NGamZOQm16RXVDNkpvS0gzbW1GODVWTnVD?=
 =?utf-8?B?R3BkbFJVaTh5cy9SM1ZmenRrNVNsc0l3TkxJWkgzM3RBeWRkTUYvODRDbmpj?=
 =?utf-8?B?SmFBUHpENldjdEJ0bTFNREhhUXhuYVVMc3pvVWJ2MjRNcGViSTcvMDZmY1Bs?=
 =?utf-8?B?ZUJGMGZLV0pkYlE1ejhtbnBVQnN3UlNHVjNCcW5FaHVQalhOWDVpVzZUZzBj?=
 =?utf-8?B?M0lYN2MzL3dITzNycVBsWEI5cDVOYm9lZGI3S01ISUJ0N1pqQVFrbzhuK0tK?=
 =?utf-8?B?V2ZxRXdyczV3b3VPcXQ3aVJpTXlYZytKVG9IbGYveVAzVnd2WGVvcTl4aDVr?=
 =?utf-8?B?ZmUxcHhpb3JDdVFiYm1KZTVsSU1QMUYzNGd3VWVEVzlnczhlOTRLakJ6MnBL?=
 =?utf-8?Q?CtcXVSF08AkwnE9GSBntBHEEQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5225c3ab-b4dc-4f76-1e5e-08de1d290840
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 11:38:40.2090
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F4qTLp3nfj/kdUelt0pR7n9xjVO7w5kXxxcPqr2wfXpsD1tJRKJ90JSaFqfFdWeuAkccIboS4TsoOE9wlUYYYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB5642
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Nov 2025 11:38:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13780

TW9zdCBwcm9iYWJseSB5b3UgUEMgcnVuIG91dCBvZiBtZW1vcnksIHNvbWUgZXNzZW50aWFsIHBy
b2Nlc3MgZ290IGtpbGxlZCBhbmQgeW91ciBvYmplY3QgZmlsZXMgYXJlIGluY29tcGxldGUvY29y
cnVwdGVkLg0KSSdkIHN1Z2dlc3QgbG9va2luZyBhdCB5b3VyIENQVSBjb3VudCB2cyBhdmFpbGFi
bGUgUkFNIGFuZCB0d2Vha2luZyB0aGUgY29uY3VycmVuY3kgc2V0dGluZ3MuDQpJJ2QgcmVjb21t
ZW5kIHRvIGhhdmUgYXQgbGVhc3QgMkdCIFJBTSBmb3IgZWFjaCBhdmFpbGFibGUgQ1BVIHlvdSBn
aXZlIHRvIHRoZSBidWlsZC4NCg0KVGhlbiB5b3Ugc2hvdWxkIGRlbGV0ZSB0aGUgYnVpbGQgZGly
ZWN0b3J5IChhcyBpdCBjb250YWlucyBjb3JydXB0ZWQgZmlsZXMpIGFuZCBydW4gdGhlIGJ1aWxk
IGFnYWluLg0KDQpQZXRlcg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8cG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiBPbiBCZWhhbGYgT2YNCj4gRGF2aWQgUmVnYW4gdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcN
Cj4gU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDYsIDIwMjUgMTI6MTgNCj4gVG86IHBva3lAbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBbcG9reV0gUHJvYmxlbSBidWlsZGluZyBw
b2t5DQo+IA0KPiBIaQ0KPiBJIGFtIGNvbXBsZXRlbHkgbmV3IHRvIGxpbnV4IGFuZCBzbyB3aWxs
IG1ha2Ugcm9va2llIG1pc3Rha2VzLiBBcG9sb2dpZXMgZm9yIHRoYXQuDQo+IEkgaGF2ZSBzZXQg
dXAgbXkgcGMgYXMgYSBkdWFsIGJvb3QgYW5kIGFtIHJ1bm5pbmcgdWJ1bnV0dSAyNC4wNC4zLg0K
PiANCj4gRHVlIHRvIGxpbWl0ZWQgaGFyZCBkaXNrIHNpemUgSSBoYXZlIGNvbm5lY3RlZCBhbiBl
eHRlcm5hbCBkcml2ZSB3aGljaCBoYXMgYmVlbg0KPiBmb3JtYXR0ZWQgYXMgZXh0NCBhbmQgaGF2
ZSBpbnN0YWxsZWQgcG9reSBvbiBpdC4NCj4gDQo+IEkgaGF2ZSBmb2xsb3dlZCB0aGUgUXVpY2sg
QnVpbGQgaW5zdHJ1Y3Rpb25zIGZvciBwb2t5IG9uIHNjYXJ0aGdhcCBicmFuY2gNCj4gdXNpbmcg
Yml0YmFrZSBjb3JlLWltYWdlLXNhdG8gdG8gYnVpbGQNCj4gDQo+IEFmdGVyIGEgd2hpbGUgaXQg
ZXJyb3JzLiBIZXJlIGFyZSB0aGUgbGFzdCBmZXcgbGluZXMgb2YgdGhlIGxvZy4gVGhlcmUgYXJl
IHF1aXRlIGEgZmV3DQo+IHVuZGVmaW5lZCByZWZlcmVuY2VzIHJlcG9ydGVkLg0KPiANCj4gL21l
ZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC9o
b3N0dG9vbHMvbGQ6DQo+IC9tZWRpYS88bWU+L2xpbnV4X2V4dGRzay9kcl9leHQveW9jdG9fYnVp
bGQvcG9reS9idWlsZC90bXAvd29yay94ODZfNjQtDQo+IGxpbnV4L3B5dGhvbjMtbmF0aXZlLzMu
MTIuMTIvYnVpbGQvLi4vUHl0aG9uLQ0KPiAzLjEyLjEyL01vZHVsZXMvcHdkbW9kdWxlLmM6MTc1
OigudGV4dCsweDRiMCk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8NCj4gYFB5RXZhbF9SZXN0b3Jl
VGhyZWFkJw0KPiAvbWVkaWEvPG1lPi9saW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1aWxkL3Bv
a3kvYnVpbGQvdG1wL2hvc3R0b29scy9sZDoNCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2Ry
X2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82NC0NCj4gbGludXgvcHl0
aG9uMy1uYXRpdmUvMy4xMi4xMi9idWlsZC8uLi9QeXRob24tDQo+IDMuMTIuMTIvTW9kdWxlcy9w
d2Rtb2R1bGUuYzoxNzU6KC50ZXh0KzB4NTZhKTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0bw0KPiBg
UHlFdmFsX1Jlc3RvcmVUaHJlYWQnDQo+IC9tZWRpYS88bWU+L2xpbnV4X2V4dGRzay9kcl9leHQv
eW9jdG9fYnVpbGQvcG9reS9idWlsZC90bXAvaG9zdHRvb2xzL2xkOg0KPiBNb2R1bGVzL3B3ZG1v
ZHVsZS5vOiBpbiBmdW5jdGlvbiBgcHdkX2dldHB3bmFtX2ltcGwnOg0KPiAvbWVkaWEvPG1lPi9s
aW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0
LQ0KPiBsaW51eC9weXRob24zLW5hdGl2ZS8zLjEyLjEyL2J1aWxkLy4uL1B5dGhvbi0NCj4gMy4x
Mi4xMi9Nb2R1bGVzL3B3ZG1vZHVsZS5jOjIxOTooLnRleHQrMHg1Y2QpOiB1bmRlZmluZWQgcmVm
ZXJlbmNlIHRvDQo+IGBQeVVuaWNvZGVfRW5jb2RlRlNEZWZhdWx0Jw0KPiAvbWVkaWEvPG1lPi9s
aW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1aWxkL3Bva3kvYnVpbGQvdG1wL2hvc3R0b29scy9s
ZDoNCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1
aWxkL3RtcC93b3JrL3g4Nl82NC0NCj4gbGludXgvcHl0aG9uMy1uYXRpdmUvMy4xMi4xMi9idWls
ZC8uLi9QeXRob24tDQo+IDMuMTIuMTIvTW9kdWxlcy9wd2Rtb2R1bGUuYzoyMzA6KC50ZXh0KzB4
NWY2KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0bw0KPiBgUHlFdmFsX1NhdmVUaHJlYWQnDQo+IC9t
ZWRpYS88bWU+L2xpbnV4X2V4dGRzay9kcl9leHQveW9jdG9fYnVpbGQvcG9reS9idWlsZC90bXAv
aG9zdHRvb2xzL2xkOg0KPiAvbWVkaWEvPG1lPi9saW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1
aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LQ0KPiBsaW51eC9weXRob24zLW5hdGl2ZS8z
LjEyLjEyL2J1aWxkLy4uL1B5dGhvbi0NCj4gMy4xMi4xMi9Nb2R1bGVzL3B3ZG1vZHVsZS5jOjI1
ODooLnRleHQrMHg2ODcpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvDQo+IGBQeUV2YWxfUmVzdG9y
ZVRocmVhZCcNCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9w
b2t5L2J1aWxkL3RtcC9ob3N0dG9vbHMvbGQ6DQo+IE1vZHVsZXMvcHdkbW9kdWxlLm86IGluIGZ1
bmN0aW9uIGBwd2RfZ2V0cHduYW0nOg0KPiAvbWVkaWEvPG1lPi9saW51eF9leHRkc2svZHJfZXh0
L3lvY3RvX2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LQ0KPiBsaW51eC9weXRob24z
LW5hdGl2ZS8zLjEyLjEyL2J1aWxkLy4uL1B5dGhvbi0NCj4gMy4xMi4xMi9Nb2R1bGVzL2NsaW5p
Yy9wd2Rtb2R1bGUuYy5oOjQzOigudGV4dCsweDcxYyk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8N
Cj4gYF9QeUFyZ19CYWRBcmd1bWVudCcNCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4
dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC9ob3N0dG9vbHMvbGQ6DQo+IE1vZHVsZXMvcHdk
bW9kdWxlLm86IGluIGZ1bmN0aW9uIGBwd2RfZ2V0cHduYW1faW1wbCc6DQo+IC9tZWRpYS88bWU+
L2xpbnV4X2V4dGRzay9kcl9leHQveW9jdG9fYnVpbGQvcG9reS9idWlsZC90bXAvd29yay94ODZf
NjQtDQo+IGxpbnV4L3B5dGhvbjMtbmF0aXZlLzMuMTIuMTIvYnVpbGQvLi4vUHl0aG9uLQ0KPiAz
LjEyLjEyL01vZHVsZXMvcHdkbW9kdWxlLmM6MjU4OigudGV4dCsweDc1MSk6IHVuZGVmaW5lZCBy
ZWZlcmVuY2UgdG8NCj4gYFB5RXZhbF9SZXN0b3JlVGhyZWFkJw0KPiAvbWVkaWEvPG1lPi9saW51
eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1aWxkL3Bva3kvYnVpbGQvdG1wL2hvc3R0b29scy9sZDoN
Cj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxk
L3RtcC93b3JrL3g4Nl82NC0NCj4gbGludXgvcHl0aG9uMy1uYXRpdmUvMy4xMi4xMi9idWlsZC8u
Li9QeXRob24tDQo+IDMuMTIuMTIvTW9kdWxlcy9wd2Rtb2R1bGUuYzoyNTg6KC50ZXh0KzB4N2Ey
KTogdW5kZWZpbmVkIHJlZmVyZW5jZSB0bw0KPiBgUHlFdmFsX1Jlc3RvcmVUaHJlYWQnDQo+IGNv
bGxlY3QyOiBlcnJvcjogbGQgcmV0dXJuZWQgMSBleGl0IHN0YXR1cw0KPiBtYWtlOiAqKiogW01h
a2VmaWxlOjEzMTY6IFByb2dyYW1zL19mcmVlemVfbW9kdWxlXSBFcnJvciAxDQo+IEVSUk9SOiBv
ZV9ydW5tYWtlIGZhaWxlZA0KPiBXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29t
bWFuZC4NCj4gDQo+IEkgd291bGQgaGF2ZSBleHBlY3RlZCB0aGlzIHRvIGJ1aWxkIHdpdGhvdXQg
YW55IGVycm9ycyBhcyBJIGhhdmUgbm90IG1vZGlmaWVkDQo+IGFueXRoaW5nLiBQYXJ0IHdheSB0
aHJvdWdoIHRoZSBidWlsZCBteSBzZXNzaW9uIGJlY2FtZSB1bnJlc3BvbnNpdmUgKG1vdXNlIG5v
dA0KPiBtb3ZpbmcgLSBJIHdhcyB1c2luZyBpdCB0byBrZWVwIHRoZSB0ZXJtaW5hbCBhbGl2ZSkg
YW5kIHRoZSB0ZXJtaW5hbCBzdG9wcGVkIGFuZA0KPiByZXR1cm5lZCBtZSB0byB0aGUgZGVza3Rv
cC4NCj4gDQo+IENvdWxkIHNvbWVib2R5IGFkdmlzZSBvbiBob3cgdGhpcyBjYW4gYmUgcmVzb2x2
ZWQuDQo+IA0KPiBLaW5kIHJlZ2FyZHMNCj4gRGF2ZSBSZWdhbg0K

