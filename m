Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web12.1347.1642559850659000724
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 18:37:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=etY+mwYt;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642559850; x=1674095850;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=a0h2qbeSgsUAaS5Gk3HHctFc2++77JAr8abbXp5ZnFk=;
  b=etY+mwYtutVRRSCLmVH9O0+PHIioaZSAVh6ff97AUomEeSs80ZGYzb7K
   4PYtHuR82MoQU4T6CJyFHtki39sXLe0966tAj+38Fx5NDQ6E0wQFJhi77
   AQdaIv5FKNN56ws6QHb0sxc9jr9bmCx9+rLXoDbYDNsELOY4ZwHdh0eBr
   eKq9iFvFJK4fXYfVjOzxQ1xG1my1l9VQUfFPTvXqQov/5kSNxEzgf47pp
   1KwlDrv5VmDks6mA+gjRkp+IUNMb0/kcYdu6X8ZMQTk60lepb7pAvBits
   pixp0ytdppC+3JwMaQiLn4Ug83ZWsy0u+BwoSI9XSM9UwY6CHdq7LgymZ
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="269354158"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; 
   d="scan'208";a="269354158"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2022 18:37:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; 
   d="scan'208";a="764794636"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by fmsmga006.fm.intel.com with ESMTP; 18 Jan 2022 18:37:29 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 18:37:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 18 Jan 2022 18:37:29 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 18 Jan 2022 18:37:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OG81r01ZQnbWQ2vFxgcruuAsxCf+WSCzhCU49F2HY2SQe5AiUoeUVPMoI7ap7XUkMutvx1gEF7U+gP5Djn2iew4t9VXJ1Ea9PLQc3/enleuUCTWpAoufloaKEd8aedOTkj3Qdpjl+yi87h2cgbNo1TBUjpvca9HcdSwdxXX+kyf/L/9YtWQX0D6oGYYq9DzoXJohdE6c6V/mhmnNIJwq44xlY/z+X7kxUOJzcidLTmW93ptm2cbhZbPR/FuPK5baOSpWXlsKM80K22C4TjgHXfnqrz6EOTd6KkWUKqkLzXHHQ/mYGWCFYSWCfAjsHhh826lm8+a/x8iSWcppQBpDSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0h2qbeSgsUAaS5Gk3HHctFc2++77JAr8abbXp5ZnFk=;
 b=PFE16gvtUUDbZo0D4jAQlM2lBeHc8m1ydK8LFkCmz3x3GxDcpUNSsbU8oVW7vwzwfW+VFAIKK7pRT7PWxQtez13NQXzLHbbYO4wY5xuX/iJVfUAji8BjrUVI2FIlGHZhbrBfypSwg7KiA+cpeZZHOQUaQtlX459yrwW58VJTeZjVnzwSg1wsbzQ+BKaNdHmMWgjMKDE/mtbktuSt/e+xVKbaXPBKPZzCuEoUkPBuMgZZmdHiC6EFa+2eNWDlb3vWclLvB4L9AJajQ/PNIt2hbmmWWcTAFtZDXBcsR+2ESby3mpJiuFPymkHZrVH9UQsAQsc/cZ3PUk4IEtPVdVyxVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by SJ0PR11MB5088.namprd11.prod.outlook.com (2603:10b6:a03:2df::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.10; Wed, 19 Jan
 2022 02:37:27 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::a8ab:1ed:c383:c477]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::a8ab:1ed:c383:c477%7]) with mapi id 15.20.4888.014; Wed, 19 Jan 2022
 02:37:27 +0000
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [honister][meta-yocto][PATCH 0/2] Patch review
Thread-Topic: [poky] [honister][meta-yocto][PATCH 0/2] Patch review
Thread-Index: AQHYBe+L1RwXXHFuNESUE0iYZZZzraxprx4A
Date: Wed, 19 Jan 2022 02:37:27 +0000
Message-ID: <0e28fe08d847e374301b188f2fa321a11a651e7f.camel@intel.com>
References: <16C8D67F0D89F2F0.27414@lists.yoctoproject.org>
In-Reply-To: <16C8D67F0D89F2F0.27414@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.2 (3.42.2-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20ead9c8-ad62-4264-0aff-08d9daf4a22b
x-ms-traffictypediagnostic: SJ0PR11MB5088:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB5088B17B4D7132710A7661A3F8599@SJ0PR11MB5088.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tEGSMEulQzr+M9M9yF8ujqWo3wEdq0RFeR1An7kR223JYd2tEaqLdFCh9WLVSX3iUPvnk4DCuoarmqqigIIXrms/4ZGf/epQ6gxTr9iB8wRbpytFoK3AaIwLlGMA4eY59ZuzVvp9sLqMEYfU7hnZAL+0TRZCG4fLeo01MnQXoGIYwAH+UCL1AF6xMivaye1i4ZQQlZqkrskP/7yHiDXtg2ugFy96dgjmXucTCVCqIAVGbsvVL0TpViRW4QtoBinI8zRpnfCqIcL7xnJ1IMb48D0YIgR/NRpmrdujeSIUINjR8+l37fBByPx7XJxle/cs/ODWSqMHHR1cERoUofMveGvxiNF7MXLPYn8vw0mtd2yv+2srEeDP5NLYSZqJCVo3F0K1o0wGH+VSrXoISkWIe78u9397cCt8+i/T37m4eutzseOBjDIoxolv0CQorEJ5cltJz41iQ+2NCB8drG2buhJmk40z1N+/b04FrHz+rV5tp2tRaV5EAKFdyWUxL58oi+hqC0RT1YxHDzK/JErZSpksG1qYeArorgYIf+cQ5OJJShybx0/NyZwHREMhIRGZhSkMNXDI/oRaZ8dDg7hI3NOUKV9FxABsOjtwlnPBbal1xit54YhG0SetvyxIwFuS/NtmeCx7+Mdmw2aA0z+ukd0LMLarRbNLx6yCzU5M07m0Mvyk7oDWsh0MebmeLW5YohiBQcdPvW2yG9df1gDelA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(26005)(64756008)(66556008)(66446008)(91956017)(8936002)(36756003)(82960400001)(76116006)(83380400001)(38070700005)(186003)(66476007)(66946007)(71200400001)(86362001)(316002)(2906002)(6512007)(5660300002)(4744005)(110136005)(6506007)(38100700002)(2616005)(508600001)(122000001)(6486002)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmtsMTQ1d096NlVRb1o0T01qeXlidk9pMzc4V1dRQWlQcG56bDJBRjNWOEpS?=
 =?utf-8?B?MFkzNmdHYXM1OFNvYUVLemk0S3gzNkpVdjJuekhzOW90amlINzQzbkdmZExC?=
 =?utf-8?B?NkQ0Z1RNa0xWQnkwY0FIQXp4UzYyL05kNXY5bGhJc1pObURvamFjak1uUE1D?=
 =?utf-8?B?WEd3d2xjUG84WWo1Y0ZtZ2FDVVlLcWRUbkZoVmh1dHNRUlN0SUM5TitiNkND?=
 =?utf-8?B?WHRFejlBSEwrTWVmRTZKYjJiN25PQjJCazlpRllaT1JqOXdPdGdsWmpFbThX?=
 =?utf-8?B?d0xLUjVNVjhrVG1NVkRPL1lMZ0UyZ1VlRTN6MmFwRXVEQ2x6LzZpaXdHU1ow?=
 =?utf-8?B?NVNKZGVBeHJCTXAwSXFiUUcrN0VEMlMzL1lGb25vZ2xxWHE3MENlTzdNZklL?=
 =?utf-8?B?TGVoS0FBWHhJc0hhdHR4R2QvQ0MvdlZNaEwrNzdmMnlZZUhFMjVJTXJtaXA5?=
 =?utf-8?B?c2lBQTl2MlNXNnk0eHNLMml2UXYxV0ZJTVI3Zm43QnMrVmFOR1VldTZvaHAy?=
 =?utf-8?B?dTZyQXp6WmVjYk9zdE1QN3pUZEFZNjh4NzZSbjZkRjBCWTFodEJ4ejV6OTFh?=
 =?utf-8?B?WHBoOFQxRHZheWt3V0lHdUVpZEFqQ2FRS0ovTThpR1Y5SWNScWVCS0NPdkEz?=
 =?utf-8?B?azlrYzA4OGNUUFA5YXdVOGlTY1Q4TzFhQXp5WXhGalFhNnZBdHZBT2RTL0Na?=
 =?utf-8?B?bVUvTmgwOEtMS3M4NjcwS21mQjZFaFZUbTJ1WjZBcXZIV2F2ek1BUFlDUjkv?=
 =?utf-8?B?Q1BFQklnNitpWHBhME9JY1gyc0dLRmNCVGw2TUhiLzBXai9mQk1zM25RY25w?=
 =?utf-8?B?R0c2Q2VUWWszZmsxbmNPYVlNeFdBakJpSXFBbklJQmpvUmhVM3VHUWlMMzdG?=
 =?utf-8?B?SXdUMy9nK2p5K0JMS1JIeWx2cFBjandNVXJHaVdOL1VyL0ZLZjBYc1dFUDZD?=
 =?utf-8?B?OGZrb3RjaE05QUEyVlE5RlMyeStjYjk5VkdHZTZjVkIzc1RmTFZOdGh4OEN2?=
 =?utf-8?B?T3VTVXI3YXZveW1oUm9FVTBEUWRNd3B5cnllQVU0YWxQa2QzNkFUZ0JHdzk4?=
 =?utf-8?B?NVI2S2RhWWVLMTNiY295SERlSXZlTHc5T3IxL3F4SzdQQndoT1VqeGNzcGxB?=
 =?utf-8?B?Z0Z2Ny9pOTk4WXB1QXZMSGlvS3ZkTExQc2lHUFdGcUhYS1cydUVpOEF5eW9W?=
 =?utf-8?B?RDYzWml3ZFNCR2ZvOWNpUVErVXhwYXdGeE5MNkVhWHpKU1BQc2lGd0srRDVz?=
 =?utf-8?B?Yk9WQWM4bDc3dHNiRjBlNjBzN1ViTHVZdS84eUZFaTBzS3lYY1M5L2d3UnV0?=
 =?utf-8?B?Y2ZJa3dOSVNQdThpNjcwOHlPaW1EemJpdlZmRHR2czJCaGZ6UEQwbUpPNWlH?=
 =?utf-8?B?ZnIyVExYSktEelJpYkp3SlRtd1RqaGZJWkZobTR1UGRNbnZxS2RkOUNJbHdq?=
 =?utf-8?B?dFVMNjFDV2g4eWVzb25HUnA3SzYyajhhZGRreUJvZnpodk8vWjJ0ZzZHNm13?=
 =?utf-8?B?T3ZINC9oMHNiVzJQRitFZFVtZWxjcXhQRlVnL3JOWkJDSkx4cUgzaHMvUVFT?=
 =?utf-8?B?d2lnd3k5N2NDQXN6akkreUxvcjdXUEVBbzdaUktVTHN4NWdENC9tNXRMS1d1?=
 =?utf-8?B?bUUyZjN1TnloSXVKYzcvUTUveUJNMzMrcFZSSUkvRTlWR2U2MnNjUyt6K20y?=
 =?utf-8?B?elMyM3cvN1cvcUFGcmRMdmd5Nkp1ZFc3UFQvSDhXM0NpSUY0Nkovak1vMXdm?=
 =?utf-8?B?enNMdHI2c1NTZVRvUnRKWlNEM2xEVEY2OGYwem04dEtBUGVObWRQTzl1eVUx?=
 =?utf-8?B?aGZ3V3NsZzIvRFluTUN6ZnJrWU51bG4weWtoYXY2S3BCWkNxcGlseTdFcmcw?=
 =?utf-8?B?SU1md1RicDdtcUMyRHlzaHR0R2JKalVaNi80QjlaTVNzbmFrYVE4MkZFSE5V?=
 =?utf-8?B?bGkxWHFJMUV0YUtqWkIvc1o2OFJPbml4azRjSVZVWDlibmpkUWRwMklkZnI5?=
 =?utf-8?B?dUduSjB3YVVFU29wUzNrd3RpNmRodE45VEh3d2RCaGNUcjgxRWVNeUpqL3Rk?=
 =?utf-8?B?L2E2Ym5KeWVCQ1c2R25JQ1JFR2R3ZXFzY3ZuRE9QTkZITGlMUEpXb203K1Nu?=
 =?utf-8?B?Ni9UclRBRVlIbUxwMS9jZEYyZWlGbzc1c0ZjTWJCWkhaekJ2RWNCNWhqbTlq?=
 =?utf-8?Q?nvS+ypcjnth7GqhcSgbnXWP8QBJARR90eOVm2hrRPdXt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ead9c8-ad62-4264-0aff-08d9daf4a22b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2022 02:37:27.6471
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qrUbvDzGi4zn4ssrA4SFFmnWIfPuNc83GQlHw4ZwFETzMWAkp0SIRIb3zCpCY2k12iWF7RCE7gHcoQ0p99MSCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5088
Return-Path: anuj.mittal@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <6F29C3D9353C9845AA1AA5DD9CB4E46C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDIyLTAxLTEwIGF0IDE0OjU4ICswODAwLCBBbnVqIE1pdHRhbCB3cm90ZToNCj4g
VGVvaCBKYXkgU2hlbiAoMik6DQo+IMKgIGxpbnV4LXlvY3RvLzUuMTA6IHVwZGF0ZSBnZW5lcmlj
eDg2KiBtYWNoaW5lcyB0byB2NS4xMC44Nw0KPiDCoCBsaW51eC15b2N0by81LjE0OiB1cGRhdGUg
Z2VuZXJpY3g4NiogbWFjaGluZXMgdG8gdjUuMTQuMjENCj4gDQo+IMKgLi4uL3JlY2lwZXMta2Vy
bmVsL2xpbnV4L2xpbnV4LXlvY3RvXzUuMTAuYmJhcHBlbmTCoMKgwqDCoMKgwqDCoCB8IDggKysr
Ky0tDQo+IC0tDQo+IMKgLi4uL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzUuMTQu
YmJhcHBlbmTCoMKgwqDCoMKgwqDCoCB8IDggKysrKy0tDQo+IC0tDQo+IMKgMiBmaWxlcyBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQoNClBsZWFzZSBtZXJnZSB0aGVz
ZSBjaGFuZ2VzLg0KDQpUaGFua3MsDQoNCkFudWoNCg==
