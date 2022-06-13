Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by mx.groups.io with SMTP id smtpd.web10.3695.1655112061340150792
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 02:21:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=ky8Z4QVS;
 spf=pass (domain: intel.com, ip: 134.134.136.20, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655112061; x=1686648061;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=ppxLrjrzPl87uZvCuvcEAG15JyVgpyQqycJgnhML8QA=;
  b=ky8Z4QVS7e3boAe8R5oaidJ9hKijpG5kctA3N90bFq3T1msweQYYlvem
   j8ZSKUwS0K+1qGN582D328Ml2MWImRsb1o8OpTI1G8v+ZLJ3ceG88NLM9
   yfZB4lqWt2LfAJ3Xr+llQ2y5l8zV4RC+s5q5FYY7RGN2Lfzv+0uc/H4bl
   FVpwNkh/MXm4PhG3hUjf/3Ms2O/X6wedi/1P0fZscjF8tZXbh7sPskJKE
   A3sN/xxYKnzE7ftrwEXa219MMEowY4NUihdPXDJtHnWVA6rrDQZO550UF
   hgX2i8HwaROhQYsqePQfay6/JI8Mm/0HvGbI7A8G81a/bs3wUHxrCv2ju
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10376"; a="266917265"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; 
   d="scan'208";a="266917265"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2022 02:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; 
   d="scan'208";a="611685376"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga008.jf.intel.com with ESMTP; 13 Jun 2022 02:21:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 02:21:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 02:20:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 02:20:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 02:20:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kBqhe+WbxRF5qANs+yzOL8OrvOc2EKNs/r3mNSKLJRE/qRkGkEOV/qLDomCtbZ+T6bCcXOwH8Ist/FpHPtSkOEqBuzpTogLs5T7RHkoSp686pWkk/O2o4XpdbM5XVUEK0ZlY6KkbUvH0vru5js9hhQoi4NRs6KnwVrps08fn6GIts/mSRENdG9d0M2pTUZ2ekubDqutzjOHYIKxJOk7JktKRMcqwB7y1/PpBwZy+SIJryCikdfIK6E/YgY9aw4o5xa4fTuKCttwRx3uCZun9d/hCOphxp1eRU+O0RS1Hhw3jmJgR+8qnfmSGpy6LaazzKj0ucfO9dc5UNaKy7RggBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ppxLrjrzPl87uZvCuvcEAG15JyVgpyQqycJgnhML8QA=;
 b=DSnruo3o8zIgmvOv4Brt0C1MQoLfGGyIsuc4gsVduf2jnp/7K63/B/YJTagaRJI2ivQ3f0vyStkV7+O3zv/Y4xKtXSeeFZVyT+DeqIX8go5Lo4vrcQCuOBUnifGTq5dUgAg4qnU51FKVs15yUWnyh4TTecAdSWTRUmTGfR2koaoJFatwJTcpabEVWTUdpjXqjQEFIXZZUwgSU8K9gqvJkw0DnUIfR5A+Wz48rTn7e4yrk49Cj4LyA/lkr7Cg0zai92ahkn1Zo6R+SYD4l3McbgGI4M+IUFc4g1dCupHXLeBZRwavpbRxk0M+z1m+CM+NY21Y3d7QDi4MxN777cqPQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by DM6PR11MB3819.namprd11.prod.outlook.com (2603:10b6:5:13f::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.15; Mon, 13 Jun
 2022 09:20:51 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::648a:64c9:761c:be1d]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::648a:64c9:761c:be1d%6]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 09:20:51 +0000
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "ian.dev@arkver.com" <ian.dev@arkver.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] [honister] elfutils: Fix null pointer dereference with upstream patch.
Thread-Topic: [poky] [PATCH] [honister] elfutils: Fix null pointer dereference
 with upstream patch.
Thread-Index: AQHYfwYBUsW69mvDi0uwMhYk6POxO61ND7IA
Date: Mon, 13 Jun 2022 09:20:51 +0000
Message-ID: <7d4c8c9b27d9f9c0b1f7564b897d471566c322ee.camel@intel.com>
References: <41b44b09b021a586723372c6ab8a5c12bb2f06ee.1655111663.git.ian.dev@arkver.com>
In-Reply-To: <41b44b09b021a586723372c6ab8a5c12bb2f06ee.1655111663.git.ian.dev@arkver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ce36084-fa88-47b1-7ea1-08da4d1e028e
x-ms-traffictypediagnostic: DM6PR11MB3819:EE_
x-microsoft-antispam-prvs: <DM6PR11MB3819878533FD32C85C34F9B6F8AB9@DM6PR11MB3819.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xgivvLF+hcuH/iCEOrNtc7Mjz7HSXn95KV/OFGxqedkmXMviNzywpUKgeaOyJS8y//FMxionWF8n27PWBu4w5z49HzkDqemtfbwabD+iJRFuGj5KKNypnH1RzBUeBOVcfFsviLpCl+bKXIHyrgildDI8CME3W/ND8WzJwgOzldnReQB/JM4+LbhnvJX87OC0Ug312e5E9dggvTEpPmsrz9VqtfEJqPKJBcnT/uSa2+LN0+CjqMtRif1bVi7EypGGwW0YB+3MYXf3wzTC2+8saWPs+LeBitXRuQx/28kiOrG2jMyY3zi09vI2HnqDLU82a3uNI8GiC4r8LPCPjQfzHpFBmIVoid+sXLsZs6/cp8gdXaeTKkVFhjlEsdUp8mvV2se8ZI/NZJ5sgf0kozbP81OkXFe+QwICM/wp1MwzhfWaeLyFcZxYV83UIqdG1klpwJMWjR5sJAjI5oN+rnKWxE8Bxmz89Da38b6eqzhSIRWDyw+hFOmhMfInjAf56hGd+mI9/84DHLCFn25Zi4oPM7Pih0akE1IqaSpl58EhV1Gwd18GqkA/ntcCDOlP+muLCl4Dd6myF71CmhssbRuvxRmqxCbjJACp3i5BcJ24HOhwKdtSHwMeKy4gb/CftIfauzkjRVJVWpKbLNi54GWln5yliF01kDWbu4swB8KFdpisvnDfiLkvQXdJic/UetS2a6ufyCtC4QPJ1Kl1/XlPQvaMuktKzS78T/kBvjfQtcpYRs1l6GvAOcvy+5CG7eUKqtdC5YudWV4l8nVJPjlSUSr6S1cB9+a9CkOta2+/dr0Oh2d7V/OSLTTtrPDp6v+ggmALMv1rUAjP/4Xk5iX36g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(2906002)(66946007)(966005)(6486002)(508600001)(64756008)(8676002)(66446008)(66556008)(66476007)(91956017)(86362001)(316002)(26005)(76116006)(6512007)(6506007)(71200400001)(110136005)(38100700002)(36756003)(2616005)(83380400001)(186003)(8936002)(5660300002)(82960400001)(122000001)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZG5DeHJCbWhVR09FeHN4L1JpSnpIMkVZVnBJejlLejFVbzc3WVlwQjA0ZEpU?=
 =?utf-8?B?QUh3MkhRcVY4NDNNUU5BcnZSdjBnU2cyenhIRWlwaURRVHAvQnNxdW0xYjNr?=
 =?utf-8?B?SEVSb1ZlMFk5M3dQakVqNk42MGdKK0g1RC9lOVhNcHJRbldVZmVPWnMyL3hR?=
 =?utf-8?B?ZS9McTV6OSsyYU1BK1JLd3p3bFVBN2NMYXM1OFlPMkt3VEtOVHk3MnRnYmxs?=
 =?utf-8?B?M05kNWlHejJnSHZuZy96aW5VYitKSTJMcGc0R2dCdDJIdXJ4UFpLZkErTHE2?=
 =?utf-8?B?OURXeUhhY0xuZHJ2UVcwWjQwMkc5ZkpPQlJ1enA4UG1vV2ZFS2xkdVJlUUUx?=
 =?utf-8?B?dU5GV04yZStEcGlSNHYvSUZhd004RFJ0RDY1NmpMV3NIYXMzSy9lRlIveUxp?=
 =?utf-8?B?ZFh2cEEyOWFZZVJ4N1F2c0VhWGl4S3hLejA1UlpJbVNIV01TL2ROL2pTWmg4?=
 =?utf-8?B?aVNOYVVoU3NrUmVON1dBVVk0VFZOWHh1a0hvS2NrWGVVR3pqTUcwV1lyakw3?=
 =?utf-8?B?Y2Y1ZjdvTWhiMzRheXFmelVKaDVQbnFCeUFWUGxBRURrMW1ZMm9pTzk5SEg5?=
 =?utf-8?B?eFlkTnorK1Q0QzJ1c05JOW1qbTd5YU1SZytlbTZjQld2NUVJdVI5MDhyQWRK?=
 =?utf-8?B?NlJEdnRiSklXNlR3Mm1FejUzMHFETUo2VGhyeHdlcko0RFBLLy9TaGhWSm5t?=
 =?utf-8?B?TUplOUNSWDZ6TEdhcVV2MFNUOVliT3AwTHllSUgyaXlLckJWRzFFNDB4dG92?=
 =?utf-8?B?bTFSYzg3ekNXaklWS0N0WHVLUE5wUUpTWS9udHppa2hacGJLY2c1Q25Ga1cx?=
 =?utf-8?B?RUpFaXJoajRzVXcxeXNnVndaZm82S0N0ODR2QUdkUEswaDU2QzNEM2s5S2VQ?=
 =?utf-8?B?d25CU1JpY1AyTHl3azA5MHVUWGcwV1k2RkhHVDR5UW9GNjZkMXM5a1FGeWUz?=
 =?utf-8?B?aUZCRTdCTXUrQ1dsSTUwRS96UlNkMG1ad3pBbjlaWDFaaXdKWEF2a3FIVFFE?=
 =?utf-8?B?TmEwVEZjNHlhMXliR3hkbncwUzJRckhWOHBjbXZWckF0enpObHJGeFlKc2dF?=
 =?utf-8?B?V0lROGVyMk5vbmlzQ1hBa0RuYnh0eFgyWXRvSGo4MHpkOUdsY041QWhKSDg3?=
 =?utf-8?B?K0V5L0U2ZmRGTFVUZjRDcURsZDA3R0VaMFRNV1lVTkNVNUh6THpQYmEwNzdG?=
 =?utf-8?B?RHJxZzRWd0FEZEJySXVwa1NDeVA1dnpHczFBQksyWGNaQTkrRmlMUjVSc0NM?=
 =?utf-8?B?NlExbUY2c0ErSlVqZDBnUTEvVHllN0IxUUlPa25kcnA1TEJsbXFDN0pUM3lp?=
 =?utf-8?B?eGhLU3VqWlo3enM3Sit4WXAzWjI3ZGF5NVJ1Z2ZSdXJ2T1FzdzdjL0JkeGZ3?=
 =?utf-8?B?ZURqeEU2S2NaSjh6cnBRMG5zOFZTV1VRVEJZRWR1STdmZko5d0NtMVpucXZp?=
 =?utf-8?B?Z0pDMGU3Z1RUenIyeElXVERSN0dFYjQ0UE9zMjR5TkhXZTNLQXNVT3Zzc21O?=
 =?utf-8?B?b2RTOElyaTB6NHNzNGI1RjMvK2t2MDMvUlhqczZqQmFHSHFWVDlSVUJWUUxB?=
 =?utf-8?B?bnVzY1RmZy92bnJHb1JaOUQrd256cy9OZ1RUMk5tbnR1cTRSOHZ0V1I1cDZp?=
 =?utf-8?B?em9abHZCR0p1Q3lRSVdpQStmd2g0RmNUS0VpMXhSZXhHTTRMWGNTL1pRT3lt?=
 =?utf-8?B?MFVoZ3M5akczSXhJcFpFZkxjWlFwdnpjN04rNU1UUUtlQmtJYkV1dEJUeG9O?=
 =?utf-8?B?RGp1MTA5bHpHZzVkeVhWc04xdmRBVEVJTzB0eURuZEl1T2pZWXNwb1VDTkhk?=
 =?utf-8?B?Ni9lZUlQcFdnSDNtRDJjTlMwak9sZlUrMWI3d2sxNXovdHZJK3lQem9zTDBo?=
 =?utf-8?B?aWowblpqVkJrS3UyL0lqSWo5SWRtZjZNWHZTS0RycjZiKzRkWDNFaHZuakt3?=
 =?utf-8?B?MmlxOWdBdXpSTTNSMnR3MUdMMlBFZVdoa3VGaW53WTcrMCt6TGFlTktFdlU4?=
 =?utf-8?B?ZkFPWDhpQ1JSdXRTbjY1bjBNL1FZb2VvMkRvVGxwYjFPeS9IdlpPY2ttTzVa?=
 =?utf-8?B?YWpueElVZDNDSHFNMWZLbkpvcmxOWGJ6bDBtSk9jdHFNbGZlMmJGb3Urb0hv?=
 =?utf-8?B?MWw2RVJLcFo3MFFWWjZTMHVDUW01M3NIYjR4aDVSdlM4T0JKUzJnOE1xRHdj?=
 =?utf-8?B?S09VaU5tUENMdXlwU3NzRlVTQlA1Nm5iK1Noayt3ODEyazdTOEV0SjJhbDFG?=
 =?utf-8?B?SHJwQzNwWkMrVUptcGxkUE5nODBqMWdxZG04aTFlTTZVQU5pcGhUaG95WXQy?=
 =?utf-8?B?RGxyeHo3ZUJ5UTZYdWlkUDUwWlVhZnplK2xQeVRzdzQ0dG80cXRNQm9YWGVS?=
 =?utf-8?Q?6PsRHt8m/i90htT8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce36084-fa88-47b1-7ea1-08da4d1e028e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2022 09:20:51.3284
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tfqdTV+eOwHFPOOV4+S0ihIxMW4HvYW6l/f/lRoAfcWwhgWRgr32SDihOA1OcXs+9aD33Dlb702TD43KWE9NIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3819
Return-Path: anuj.mittal@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FE52AF7CFB49DA4FA5E4A68A9DDC5F3A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDIyLTA2LTEzIGF0IDEwOjE0ICswMTAwLCBJYW4gSmFtaXNvbiB3cm90ZToKPiBD
b21waWxhdGlvbiB3aXRoIHJlY2VudCBnY2MgZmxhZ3MgYSBudWxsIHBvaW50ZXIgZGVyZWZlcmVu
Y2Ugd2FybmluZwo+IHdoaWNoIGlzIHByb21vdGVkIHRvIGFuIGVycm9yIGFuZCBjYXVzZXMgZmFp
bHVyZSB0byBidWlsZC4KPiAKPiBGaXhlZCBpbiB1cHN0cmVhbSBwYXRjaCBieSBNYXJrIFdpZWxh
YXJkOgo+IDNkOWYxMjg4OiBbUEFUQ0hdIGVsZmxpbnQuYzogRG9uJ3QgZGVyZWZlcmVuY2UgZGF0
YWJpdHMgaWYgYmFkCj4gVGhpcyBwYXRjaCBpcyBpbmNsdWRlZCBpbiAwLjE4NiByZWxlYXNlIGJ1
dCBub3QgaW4gMC4xODUuCj4gCj4gUGF0Y2hmaWxlIGhlcmUgaGFzIHRoZSBDaGFuZ2Vsb2cgYmxv
YiByZW1vdmVkIHRvIGFsbG93IGl0IHRvIGFwcGx5LgoKaG9uaXN0ZXIgYnJhbmNoIGlzIG5vIGxv
bmdlciBtYWludGFpbmVkLiBUaGlzIHBhZ2UgaGFzIG1vcmUgaW5mb3JtYXRpb24Kb24gc3VwcG9y
dGVkIGJyYW5jaGVzOgoKaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9SZWxlYXNl
cwoKVGhhbmtzLAoKQW51agoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBJYW4gSmFtaXNvbiA8aWFuLmRl
dkBhcmt2ZXIuY29tPgo+IC0tLQo+IMKgLi4uL2VsZnV0aWxzL2VsZnV0aWxzXzAuMTg1LmJiwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPiDCoC4uLjAwMS1kb250LWRlcmVm
ZXJlbmNlLWRhdGFiaXRzLWlmLWJhZC5wYXRjaCB8IDM5Cj4gKysrKysrKysrKysrKysrKysrKwo+
IMKgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspCj4gwqBjcmVhdGUgbW9kZSAxMDA2
NDQgbWV0YS9yZWNpcGVzLWRldnRvb2xzL2VsZnV0aWxzL2ZpbGVzLzAwMDEtZG9udC0KPiBkZXJl
ZmVyZW5jZS1kYXRhYml0cy1pZi1iYWQucGF0Y2gKPiAKPiBkaWZmIC0tZ2l0IGEvbWV0YS9yZWNp
cGVzLWRldnRvb2xzL2VsZnV0aWxzL2VsZnV0aWxzXzAuMTg1LmJiCj4gYi9tZXRhL3JlY2lwZXMt
ZGV2dG9vbHMvZWxmdXRpbHMvZWxmdXRpbHNfMC4xODUuYmIKPiBpbmRleCBmNDc2OWUzNjMyLi42
NGE1MDM4ZWQzIDEwMDY0NAo+IC0tLSBhL21ldGEvcmVjaXBlcy1kZXZ0b29scy9lbGZ1dGlscy9l
bGZ1dGlsc18wLjE4NS5iYgo+ICsrKyBiL21ldGEvcmVjaXBlcy1kZXZ0b29scy9lbGZ1dGlscy9l
bGZ1dGlsc18wLjE4NS5iYgo+IEBAIC0yMyw2ICsyMyw3IEBAIFNSQ19VUkkgPQo+ICJodHRwczov
L3NvdXJjZXdhcmUub3JnL2VsZnV0aWxzL2Z0cC8ke1BWfS8ke0JQfS50YXIuYnoywqBcCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoAo+IGZpbGU6Ly8wMDAxLXRlc3RzLU1ha2VmaWxlLmFtLWNvbXBp
bGUtdGVzdF9ubGlzdC13aXRoLXN0YW5kYXJkLUMucGF0Y2gKPiDCoFwKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgCj4gZmlsZTovLzAwMDEtZGVidWdpbmZvZC1kZWJ1Z2luZm9kLWNsaWVudC5jLWNv
cnJlY3Qtc3RyaW5nLWZvcm1hdC5wYXRjaAo+IMKgXAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZmlsZTovL2dsaWJjLTIuMzQtZml4LnBhdGNowqBcCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGZp
bGU6Ly8wMDAxLWRvbnQtZGVyZWZlcmVuY2UtZGF0YWJpdHMtaWYtYmFkLnBhdGNowqBcCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAiCj4gwqBTUkNfVVJJOmFwcGVuZDpsaWJjLW11c2wgPSAiIFwK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZpbGU6Ly8wMDAyLW11c2wtbGlicy5wYXRjaMKgXAo+
IGRpZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZWxmdXRpbHMvZmlsZXMvMDAwMS1k
b250LQo+IGRlcmVmZXJlbmNlLWRhdGFiaXRzLWlmLWJhZC5wYXRjaCBiL21ldGEvcmVjaXBlcy0K
PiBkZXZ0b29scy9lbGZ1dGlscy9maWxlcy8wMDAxLWRvbnQtZGVyZWZlcmVuY2UtZGF0YWJpdHMt
aWYtYmFkLnBhdGNoCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi5k
ODBjN2FjYWQ4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL21ldGEvcmVjaXBlcy1kZXZ0b29scy9l
bGZ1dGlscy9maWxlcy8wMDAxLWRvbnQtZGVyZWZlcmVuY2UtCj4gZGF0YWJpdHMtaWYtYmFkLnBh
dGNoCj4gQEAgLTAsMCArMSwzOSBAQAo+ICtGcm9tIDNkOWYxMjg4M2QwYzEzMWJkNGFiNjA0NWUx
ZjYwZDNmZTZkMTUwZWEgTW9uIFNlcCAxNyAwMDowMDowMAo+IDIwMDEKPiArRnJvbTogTWFyayBX
aWVsYWFyZCA8bWFya0BrbG9tcC5vcmc+Cj4gK0RhdGU6IFdlZCwgNiBPY3QgMjAyMSAyMzozNzo0
MiArMDIwMAo+ICtTdWJqZWN0OiBbUEFUQ0hdIGVsZmxpbnQuYzogRG9uJ3QgZGVyZWZlcmVuY2Ug
ZGF0YWJpdHMgaWYgYmFkCj4gKwo+ICtlbGZsaW50LmM6IEluIGZ1bmN0aW9uICdjaGVja19zZWN0
aW9ucyc6Cj4gK2VsZmxpbnQuYzo0MTA1OjQ4OiBlcnJvcjogbnVsbCBwb2ludGVyIGRlcmVmZXJl
bmNlIFstV2Vycm9yPW51bGwtCj4gZGVyZWZlcmVuY2VdCj4gKzQxMDUgfMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZHgg
PCBkYXRhYml0cy0+ZF9zaXplICYmICEKPiBiYWQ7Cj4gK8KgwqDCoMKgIHzCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfn5+fn5+fn5efn5+fn5+fgo+ICsKPiArRml4IHRoaXMgYnkgdGVzdGluZyBmb3Ig
ISBiYWQgZmlyc3QuCj4gKwo+ICtSZXBvcnRlZC1ieTogSmFuLUJlbmVkaWN0IEdsYXcgPGpiZ2xh
d0BsdWctb3dsLmRlPgo+ICtTaWduZWQtb2ZmLWJ5OiBNYXJrIFdpZWxhYXJkIDxtYXJrQGtsb21w
Lm9yZz4KPiArLS0tCj4gKwo+ICtOQjogVXBzdHJlYW0gcGF0Y2ggd2l0aCBDaGFuZ2Vsb2cgYmxv
YiByZW1vdmVkIHNpbmNlIGl0IGRvZXNuJ3QKPiBhcHBseSBjbGVhbmx5Lgo+ICvCoMKgwqAgRGlm
ZnN0YXQgYmVsb3cgaXMgdGhlIG9yaWdpbmFsLgo+ICsKPiArIHNyYy9DaGFuZ2VMb2cgfCA0ICsr
KysKPiArIHNyYy9lbGZsaW50LmMgfCAyICstCj4gKyAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ICsKPiArZGlmZiAtLWdpdCBhL3NyYy9lbGZsaW50LmMg
Yi9zcmMvZWxmbGludC5jCj4gK2luZGV4IDFjZTc1Njg0Ny4uZWY3NzI1Y2U3IDEwMDY0NAo+ICst
LS0gYS9zcmMvZWxmbGludC5jCj4gKysrKyBiL3NyYy9lbGZsaW50LmMKPiArQEAgLTQxMDIsNyAr
NDEwMiw3IEBAIHNlY3Rpb24gWyUyenVdICclcycgaGFzIHR5cGUgTk9CSVRTIGJ1dCBpcwo+IHJl
YWQgZnJvbSB0aGUgZmlsZSBpbiBzZWdtZW50IG9mIHByb2cKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiYWQgPSAoZGF0YWJpdHMgPT0gTlVM
TAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfHwgZGF0YWJpdHMtPmRfc2l6ZSAhPSBzaGRyLQo+ID5zaF9zaXplKTsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBm
b3IgKHNpemVfdCBpZHggPSAwOwo+ICstwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlkeCA8IGRhdGFiaXRzLT5kX3NpemUgJiYgISBi
YWQ7Cj4gKyvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgISBiYWQgJiYgaWR4IDwgZGF0YWJpdHMtPmRfc2l6ZTsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWR4
KyspCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGJhZCA9ICgoY2hhciAqKSBkYXRhYml0cy0+ZF9idWYpW2lkeF0KPiAhPSAwOwo+ICsg
Cj4gKy0tIAo+ICsyLjMxLjEKPiArCj4gCj4gCj4gCgo=
