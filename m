Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web10.22876.1662368588162523921
 for <poky@lists.yoctoproject.org>;
 Mon, 05 Sep 2022 02:03:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=Fqnf52M1;
 spf=permerror, err=too many SPF records (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1662368588; x=1693904588;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=JHr+MfDTIp83CzCDJjT9gH1tiIv2i1n1zY48zxd1tfE=;
  b=Fqnf52M1nK9/Vu+v9mBTB+Dw0b/5QHx3QmzWIS5WaU2ArINm44Xc9VjT
   PKB+A7GedtEZ4u1FToZOD5UuNk/JZGzlsvcAsf4kfgdVElfZvAMjLzjf6
   IlTfTUUL1H556bdpdZ/2nTivFdZ7L3NONKi8n1ZxfBs3RBH1MFp4ZM7Pk
   Y1nX21ztgvtw9YDotyF4oosWmqihtHDg9vpJMEUoaA0uYn7/ptSLZ1RMI
   lqSmGdgNVdU9sk0Xd8FXKozsFvWUHTFC7JZr5TC12RZuEGnB/02IFJbMs
   jIiKQDrPPvWi4s1o+Zu57PcjbW/ZF83+S07nXasLbj28e6CImka235Rcg
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="297132139"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; 
   d="scan'208";a="297132139"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2022 02:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; 
   d="scan'208";a="564684902"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga003.jf.intel.com with ESMTP; 05 Sep 2022 02:03:07 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 5 Sep 2022 02:03:07 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 5 Sep 2022 02:03:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 5 Sep 2022 02:03:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 5 Sep 2022 02:03:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JFpHPebSRG4qiRUsxjSdzJJaTqVuLK2Ed4RvK5qtIxO6vtwy/6bNMYg5a8GUE5U+C9QEU/ez9SteTgO/bSXen33W3RpAw3lw6MWl6HFUrSvar0h9fkxJRkC9Ep8C1CF9G2HLAshDNdFKB8A2qZ+DupBsREWf3jWmzN7J7XOIodLB5LTTWp6Clihf6LLYGMg55EluTHa2kPNvkEwrZeqTMGUlwiDh4KnkDZM8ygIPE6ok0zLwFp6f9zC+q3wQbRkp/9bY8wUm/v2BiTUMu/isYtr4/fxsCEfz/ED23n2m1FQEEwCkA1bDwbV3Xm1/CamEyjzjDIkblxPZjPjmqMFPig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHr+MfDTIp83CzCDJjT9gH1tiIv2i1n1zY48zxd1tfE=;
 b=NZkcZNFVFQjKcYu7vTulBl7LXUIP+VvwK0UFU8IttecfhaU7HmoJE54YF5ic2xqgXGPcleks/7uQ2ZSyNPF401K2YPKlhqHVSWfqiqsPmrQCpki0CA7QOGld2KeTtO+sqvbu/XIcDC5YGKBe3lkts/cUit4OlFkxZllRr6haRai535+MnTJOk1vTHiZlQlttmVbrROSCkoKQ2wTaoVLQQZAFMHuIuROAtg10ExEFXciwrmBJUpYCCkMYMG43jory7kaTxmm/H3DfQ2VHkeVsHwMkXmkwCQSXmFkt9wC95VvD5bzvEI8NXPdpNAGo3R7I7IytVlXZ6C9tVO6Qc8ghUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by DM5PR11MB2060.namprd11.prod.outlook.com (2603:10b6:3:13::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 5 Sep
 2022 09:03:04 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::e0fc:ba75:95c6:50bb]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::e0fc:ba75:95c6:50bb%6]) with mapi id 15.20.5588.018; Mon, 5 Sep 2022
 09:03:04 +0000
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "steve@sakoman.com" <steve@sakoman.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: Re: [poky] [meta-yocto][master][kirkstone][PATCH] poky.conf: add ubuntu-22.04 to tested distros
Thread-Topic: [poky] [meta-yocto][master][kirkstone][PATCH] poky.conf: add
 ubuntu-22.04 to tested distros
Thread-Index: AQHYsJXYgt8SokbbGkOARGWkBzPS4a3Qq3CA
Date: Mon, 5 Sep 2022 09:03:04 +0000
Message-ID: <0f6b522f173e36ce48d7c6a941794b7da133029d.camel@intel.com>
References: <170B7F7B378D7825.6839@lists.yoctoproject.org>
In-Reply-To: <170B7F7B378D7825.6839@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d4970f3-14b6-40c7-932c-08da8f1d7149
x-ms-traffictypediagnostic: DM5PR11MB2060:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sabqk1HCcrfTGJXh8qmgjncUc19GUPnJ6i4jL9VevC+5LGkabycwTxNo287/jIZzXeXeopI9wGaseZi+0F4/ak2T9h2m4EsSMMGk7+tnkMHiedmEPLoY2CQD4iACLj0xb8WLfS5O5Mt8U3pU9/93tNVBg0ANv928rctxstCFcmyzTBxg1UXZzHPqnNYvI683/kRgDzgTMDy/qC0xcwEakkA2WJ39wVxfzU7C/668f+5ahfdcvR8pP1yVs1XrCbWsVjzkdTc4qwPLNvtxZtuXDdLHKL2hrEXN9cvv+HGF9h5Y2RWshvzRtayn4O0xQUSy1GnUq/cI8f8T9H5wMM4Fq5TvB9FjQES5OX1ywzPFh+SkOoMOcU0c3ppUuIxFaN9Wlpum2pkWkBPN+I6+sbjaw8GihL6OG4lQvON/VVD5EiiJiZDBSl8+iobWEWJD59d6k7cNd3yFRN2sEsE56SgHfHzM9srJKEsNoDBDiM4O9dbJbvtkEE+3Cbt36q67pdWjXCSJSZXmMV7w+WBDgJb4IDUqIXAq3Xh/XX6Q5reGf9eEsmHh0D2KbOolziSGgnEr9ATnrGTgqNG0qJaFX0/wO+333co9RVr60Byg1JugzakEh9pSw6u4WtaFQbbgpJGQQr3dl0VwHq5uBNK96TVsGvbQhLaRq5Duty4Kwa5sv2dSNL6ymF0RypTQqmg1Ffm6rReCiApceRHQIqLun7SOrHRq9Z6xN5Rq8jKzj2asglcnZ1sSYpXm2hGonKn80hNpJMGxb6j1jPTuChoeHsOWkg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(136003)(346002)(376002)(396003)(39860400002)(6506007)(82960400001)(38070700005)(38100700002)(122000001)(66446008)(64756008)(8676002)(66556008)(66946007)(91956017)(316002)(66476007)(76116006)(110136005)(5660300002)(8936002)(4744005)(26005)(6512007)(2616005)(71200400001)(478600001)(6486002)(186003)(41300700001)(2906002)(36756003)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WG5BNEF4WlBMQ2F3UjRPZXpYY3E1NkpsblFkWTJ5K1AyaEx1Q1Y0eGZ5OE1w?=
 =?utf-8?B?b3Y3TzBXcUpiUG9xRUZWRWNrUTBmVVdieXNudC9JV1dSNTFYZ2hHMVhxUXU0?=
 =?utf-8?B?OSttc01NR3dCSmFWK1Y0YUt4VE9nYUgyNVZyQmlUMU9MNWpKeGFOSFFsaUUr?=
 =?utf-8?B?cU54YVZrbUgxeGNCbDlhbXFJVzIrU2ZHeVdzTkJ1ajM0TWc5aFM2Z1RvQ0th?=
 =?utf-8?B?TTRXKzMxTjlhQ2Nka081c01GQnBRWjZBQVBVNDVJSndSZnFndGk0UFMzYUw4?=
 =?utf-8?B?MzM3OXlDK1czWm5OQXNKeDBKQlZSTFZ5b3VCcjNRbDU5OHA2WDFCNnI4Um1q?=
 =?utf-8?B?MkJVeTdraWYyUXIzUlRoQW1LblF1Qng1dFFRSGhMWEdOeGpjd1lZZmdndlhG?=
 =?utf-8?B?R3hucmNvSFk1RkloRHgySkxDNzJMejQ2eklKMlZ4eEl2UEFkQXN3a0d3T3ZI?=
 =?utf-8?B?NXF0K1VLdjl3UmZ6d0tvc2NLcVExbThtc3VLTEkvNURrdEEva1ZEVFY3NUdv?=
 =?utf-8?B?YVZvTXVoeHA5ajR2R2dGaU5waGdvMXdBcTZxNi85MFRWVitBcGFzN2ZrK0lL?=
 =?utf-8?B?VW1NTFJmT3VUcGNTaDl3bUx4cTUrUmVPbFpvRzgxN3FqOFZXSlZVZGlDcy8r?=
 =?utf-8?B?cExlT3Y1S29ML2dyRXJocGZwYTVsZUl2SnJUN1VUMmpva3lmYmJncGtqTFpM?=
 =?utf-8?B?a1FjdGN0YzBHNXpyMXMvVmRoS2J3NmZnYnJTNW1FUUFoQ2hRY1Ixc1hhRkJj?=
 =?utf-8?B?OUpjMWJleUJpOGdxaXcxMzYxTzZVTGxMWHk3MkpwVmFWb2RjUC9WMEFJMGts?=
 =?utf-8?B?a3grcFMzdWxLZ3RuSUZYWnM1TjRndmtVc0V2WnhzMGZxQzNKRngyVW44TE5i?=
 =?utf-8?B?bmZoSE9iN1RCcmdKSjhmTHJ5ZEtyeWdZVGx5ODZDWVVzK1ZvdCtIeUtnVUxV?=
 =?utf-8?B?V1ROcWpwQzFYaDN2cG5oZDAzNEFLais5MWFvbFNaZTNGNEhNNmdUc1Zia2Q2?=
 =?utf-8?B?VXNmakt2QWVPWVYxbUFkaGF5MmVvU2ZrL0NwM1d3U0RRT2VZTmZaTGQxTlVQ?=
 =?utf-8?B?RGxtQ1UyZVd3em95T3lORkRrSXdDWFpCaURMYTE3SlkrS3l3dXNUelNVdVV6?=
 =?utf-8?B?QXo5ZGpXNzFPNlBudktoaVcwaEUwSXdBU1lDRTM1QmRNYktWS3lhMFlKN2dF?=
 =?utf-8?B?VUVBRkhnOW9MOXV5Tm5hSHJ6YllzN2dDRTFDUFZUdGk4eW5TQlV1RlRGMmIy?=
 =?utf-8?B?YndLbkJOQzBmL3gzRDhEKy9nbWRMUnlEc3IxSmtmME53bkIxYmdkMWlYNXhT?=
 =?utf-8?B?aG5kTjh0ZndUQkc3bVVwMitNUGJXUjkyUmhKTUF6U2EyamhaUWxVNVRzL3h1?=
 =?utf-8?B?eVZNNGpBaTNuM2dHYTNpblR2TS9JallaTjlDNlFWNVRzYXBrZWhIQUZpNmtM?=
 =?utf-8?B?MldtNkFTZUdqeUl4QWpoRTBXV20ydjBvUXlVM0l6cWJBMzNVN1RTUTgyQTF6?=
 =?utf-8?B?QTRQMTk5SDZ2b0dCMXVOZEFUNC94UStMQ00xZkhadnFUamZnd25EbjA4OUgv?=
 =?utf-8?B?WVczbXRudWZSeDZaSkd4WnNkSnJSQjkxcGJ1dnkwSk95ZFAwc0VWRmZCWC9S?=
 =?utf-8?B?Nk5rU3RDcHd2dE1oR1hIY2FhZ3MwOCtVTkc5Mk5xWnRlY2Y3V2xqNDBXdWpy?=
 =?utf-8?B?aXZZVjF2ekpWNEg2NmpYK3BuRVA5djAvektValBJU0IzaE1VbDBRaHVZZmw5?=
 =?utf-8?B?VW9CNERDVzhVb1krK01IWDl3VWpLYk9DamVZZnM3MEJlYUV0TmZ5L0I3NWxL?=
 =?utf-8?B?T3YzVzVpd3FudEUrcTY2OE1jY1VOcVNkdnJHSlMvenI4VlZ3YzBPd3JPZjZ5?=
 =?utf-8?B?dmxPTmdSdkpSR2s4Y254WjhJcXBqaVFxSjViTmNmdCs1dUQ4RW5BMWZUMmNE?=
 =?utf-8?B?SVJINGJETndKM080Y29CSHNYY21QQnRmSmU2WE1PVU9ySHJxMy9jZHVJdzU5?=
 =?utf-8?B?SEV0elNKRnBac2xXNTBYRlRndDhmTm9sT1pZdGpZdlBzNUJqRFRDbjdHYmxL?=
 =?utf-8?B?a0thYytDM25xZ2NvbzUxT1NOdC9sbHRqenVYVktUR2FaK1d0WlFTTzYzdW9Y?=
 =?utf-8?B?ZkMrZzJ1RFpTQ0ZWdTdUSWNaM2psREMwSlc5ekI1RHNVSGdnZ3FBOUM1MWFX?=
 =?utf-8?B?MlE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d4970f3-14b6-40c7-932c-08da8f1d7149
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2022 09:03:04.3348
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JXY7WOWzx43/ZML8oWEIsejuAwLeAEuUNbqjqPizfRoAnllY/JImR/I2SQFNzYRp1KUEwd5C3Eu3mnQPT+51wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2060
Return-Path: anuj.mittal@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A08AE7E89A46FE45AFFA732B5156F404@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgU3RldmUsDQoNCk9uIE1vbiwgMjAyMi0wOC0xNSBhdCAxODo1NyArMDgwMCwgQW51aiBNaXR0
YWwgd3JvdGU6DQo+IFNpZ25lZC1vZmYtYnk6IEFudWogTWl0dGFsIDxhbnVqLm1pdHRhbEBpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoG1ldGEtcG9reS9jb25mL2Rpc3Ryby9wb2t5LmNvbmYgfCAxICsN
Cj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQgYS9t
ZXRhLXBva3kvY29uZi9kaXN0cm8vcG9reS5jb25mIGIvbWV0YS0NCj4gcG9reS9jb25mL2Rpc3Ry
by9wb2t5LmNvbmYNCj4gaW5kZXggNzY5YjY5Yy4uODU2Yzg4NSAxMDA2NDQNCj4gLS0tIGEvbWV0
YS1wb2t5L2NvbmYvZGlzdHJvL3Bva3kuY29uZg0KPiArKysgYi9tZXRhLXBva3kvY29uZi9kaXN0
cm8vcG9reS5jb25mDQo+IEBAIC0zOCw2ICszOCw3IEBAIFNBTklUWV9URVNURURfRElTVFJPUyA/
PSAiIFwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVidW50dS0xOC4wNCBcbiBcDQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1YnVudHUtMjAuMDQgXG4gXA0KPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdWJ1bnR1LTIxLjEwIFxuIFwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dWJ1bnR1LTIyLjA0IFxuIFwNCg0KQ2FuIHRoaXMgcGxlYXNlIHBpY2sgdGhpcyBmb3Iga2lya3N0
b25lPw0KDQpUaGFua3MsDQoNCkFudWoNCg==
