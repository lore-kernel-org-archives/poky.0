Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web10.4533.1643943573635898496
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 18:59:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=oHEdHYsk;
 spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643943573; x=1675479573;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=cb0QWMrepRJL2UM9tO97zfVAsLDUWwhIP3tqpx2RyEA=;
  b=oHEdHYskZUWYZeUzjHZ5WufH1iSy7yEs1Sydpgb0HcnaOU3kzr4TZGK6
   vy2uSaYg15BoFDKPbSrOotuOF/vL1rhgs3TDEXBKlsFKRLUuKekNhuaQm
   jSmAyHU+wDIbSfWGXi5cluuXS5+UWsu5RJucvzo+UAhBTayvEN98EGkQV
   r07Slns4kz5jd81TI6FQa8x8yzuWGMcqX1eibC9AmqtMD74pJ+rMZkxd1
   gnKHLpbHZGrWNBZ7gR0ZiiC7Af6MN+K3LeC1uGF6pDJrkD4fszp26TLLZ
   7/U/zP9z4FjWbYCwIGtU0PiVXA+VZ9NAJZzOBbqeWAQn9E9dIN+KRPII0
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="245892793"
X-IronPort-AV: E=Sophos;i="5.88,341,1635231600"; 
   d="scan'208";a="245892793"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2022 18:59:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,341,1635231600"; 
   d="scan'208";a="676987723"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2022 18:59:32 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 18:59:32 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 18:59:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 3 Feb 2022 18:59:31 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 3 Feb 2022 18:59:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lIgdp47rQLjnoJbEYmTtj4NdKS55310xHXlkOD/FjhHjTlfzWSE2MYfkrDXWlXiZOWNsGHLdAt3Q3JWYTQ1TxEsHlNkCHJPeqR2hu4SgxD16WFom3a2uWsKzGx8Jj8qe/mqbgT8213FtvdjbUiJxVCai8eheiJp3yiZeuuwqL93YCwFYj3BcEGUqGvd6ryRGP4+lglK9ejPlhZm0iaelRaheTb/wkVINz+mWkTfTDZWUg6D6/fzjHl+oB22EdVwJyQT8F8mMb63FB7IOaE1Ex1NzNsO2TmieNjHVE1paizq0cl4Xn8hFHS4cJKSgvibkpPOUQjxOqFpp+5JEOZFhsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cb0QWMrepRJL2UM9tO97zfVAsLDUWwhIP3tqpx2RyEA=;
 b=oZri+jEMbdd/WF3PSpYuOdsyGdauKGgWtwZHUvyhAdyWcMi8aVIAJ11uiZAlASFo177hlZ4HHhUI43Zh461RhVoo+ENsvaCh1Yonw4C23MPYgqALoneqAhq98+bO/OsLmeQN/cThcTlwWLMTemRYV5DupITxbZOiBVRghf99FXQsVPPNzK7Do61w8lMw2++SX9wmKPQpqXXTbDvne6vHFncfwgfuoMWlRu/rubrxkviqySGsdc5I/199f+aTFwtxjbdxWWppUo5ahW/s7H+6mvHduQ7l7+dpZk6KCefMLhQ94LxLlHpeKw3uMs2E8mSmHeRX/bcyhqIRRUe83TD8Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by BN6PR11MB1731.namprd11.prod.outlook.com (2603:10b6:404:ff::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.20; Fri, 4 Feb
 2022 02:59:29 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::a8ab:1ed:c383:c477]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::a8ab:1ed:c383:c477%7]) with mapi id 15.20.4930.022; Fri, 4 Feb 2022
 02:59:29 +0000
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [meta-yocto][hardknott][PATCH] poky.conf: add debian11 to supported distros
Thread-Topic: [poky] [meta-yocto][hardknott][PATCH] poky.conf: add debian11 to
 supported distros
Thread-Index: AQHYFFAieDBdzPKL60mB2NIimR5EpayCvdGA
Date: Fri, 4 Feb 2022 02:59:29 +0000
Message-ID: <1283f610bb140c055f5bf260012a8655b48aaf47.camel@intel.com>
References: <16CE74402323B8A5.17092@lists.yoctoproject.org>
In-Reply-To: <16CE74402323B8A5.17092@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.3 (3.42.3-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe2cb952-ea52-4fdf-8d36-08d9e78a5c9e
x-ms-traffictypediagnostic: BN6PR11MB1731:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1731AB34C169138E74FA3E7DF8299@BN6PR11MB1731.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xtdsp9aJeAOYMPvkOmrwkev1XGuNc2NTppx1yD0+2tP2aNt5HhvXqsBCvYeCxd4KW3TaAfMmULo63n5+l6ZO5NCACSIEH8qnhbK1xA7U9wkctwGsy3kMklGr/DoctuKNX+jO3u1yk666NeAdb89yFR2rij+EgmmxEkQz2b2QWlbCeYlnxC3OUEhDySs1KUS7vZHKoRFhPkJRPNozU+pVktPCm/5hhqNqXaqWzeyykWCPBxuacipBZyiub9M5SVwSOhGxcHxsX7vb7lfjRlA2arIOmwbuPiMlDy6tysQNUCICGNXc026AWpyyCmxuzfO7vTbqt+4ZLuENvGrBIdfGfECLTu76UJCQ9mfdm4TvO8tbEqUabQHCHsi247E8OldzWdvgHslnQFPGGA9IF/Xgj+0sJdI6rlU3y7R6nl9g+DJ1zMFGTEqXAJLQ78tvW0WE6N+FDSOnofPa8PoxELUXalscIGyPhgiIbQZK1TzGHUx+3zc5+rt38AlTZRV0CPmYyCR/oXvVXwRXy0eZ6FoDh0qr9t6t6uQGh+kI/35EHRJ+VWqxVF4i4N/ZwLTg59vjSLJDsRyRXus/kVS68xUJ3epJB+6OfoG70vJzvEdyiuqkzUKLcPo7rSwM5JG9sV+YuBX2mqs3fDdxj6Wo2xAp4eRI0bliKTsE7ZyTXxK7SowjeNM5L8cczSnFMFuoWLLYlyAtALJXZCqJBxRQjNgMnw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(4744005)(36756003)(6506007)(66946007)(38100700002)(66556008)(6486002)(6512007)(64756008)(66476007)(316002)(66446008)(2906002)(38070700005)(508600001)(110136005)(5660300002)(8936002)(82960400001)(26005)(186003)(76116006)(91956017)(86362001)(122000001)(8676002)(71200400001)(2616005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WitVWWo1WEZYV0tqOGhjeEFMbERlSW9uU3pkRFNQODZlRUl1bTVsSEIrV2Yw?=
 =?utf-8?B?cHA2V3VDK0lCSFZaNk5UWkIyS2RNd25lYlZNNjRLSnRiZnpTR2l3aW9XbWxW?=
 =?utf-8?B?YVVNQlo0LzE4ZXlFSVJEMnFlbHdDS0Z6SkR4SFE0WlhYT2paWVlvVlBPaUc2?=
 =?utf-8?B?Mms0aENLbEdRWGJQTWRmNTF4WjEyZk5RWkI3YmJDL2hUWmtRMitQNTJFK3Jp?=
 =?utf-8?B?WUdiL1NKNjZBdU4xb0xoaXdnbExodkZSODJhT3R6bnBQSzcyTTU0YWpMck55?=
 =?utf-8?B?NzAvUmVQNVBRZkZQSW5vQVFMMXpDM04vc2dtSVRpd1hrTlVZMG9SUWg3VDd2?=
 =?utf-8?B?d3BoTTlaaFJGWXgxa1JscVg5NU1kK1d5WlF1Y3pUYUNCRXhjYmdFLzd1QnY5?=
 =?utf-8?B?RHNydmFiSUt0WDg2SDEwVzBoM0VocWRaUm03dGUrODFhOGYrV2FWQUFzdHdM?=
 =?utf-8?B?M0dWMjh1VUw5MEFiSDZjNy9wenBhUVFzVzVqZjBPQjcyQTJTbjRPdGZDWjFN?=
 =?utf-8?B?U21NNGdTY1IyenFxUG1scEU4bmROVXdDNDNXREJ0NGVjNmc2NTB0WU0zY1dT?=
 =?utf-8?B?MTBqZjdFc1duN1JkR05lLy9tc3JHS2lKeGxqejFkbVg2aEE1NDJYSDA0Z0pL?=
 =?utf-8?B?SFRyT0JKdHIzOG9GSFhWMXE4dWVPR212VUlZMVBBNjVmQjd3U0tSeU1OMDQy?=
 =?utf-8?B?ZTlRVTNzalBGMmJCSVlVQjFhcFN4SlAzNkY1VXV3RDdLd1hXRjdkTlhnY0Yv?=
 =?utf-8?B?NCtIT1EvR3AxY2FYRktocHVCOTVuQVZpMGhhdzRjMWN0SkZkZ2IvRTJLUWpC?=
 =?utf-8?B?c0c5T1FtbktFMURYVTR0ZWJaZktIODE1Tm8wSW5HaFBCWXBhTTllWDB4bDF2?=
 =?utf-8?B?RmI1cnBLYUdWUU1YZ1Voalc1ZHc2NnVYRVFhVVk4eTdXK1lwNVlGUzUxM2ZE?=
 =?utf-8?B?NDY0dW55SEMrdk5RcDRhN2d3YXdOVjJEeGhqQzdzaUFQMFpURUkvSEs1Y1JX?=
 =?utf-8?B?QWY4ODF0VUlJUXpDYmgyVnZTYklzNFJidlhvMEVZeksrL1dibytkMzRoTGhm?=
 =?utf-8?B?YktQaU1vVWNoNnh6UXpUT0s2NkgzOWE0a3dXRUxxZnVzQ3R0djRGN2tnSHpz?=
 =?utf-8?B?eHcrZlFHalZOdVdqRTBkNEFXNWpyUWVJTmhyckxzM0FXbjBXeWx1MFJqbEN4?=
 =?utf-8?B?OWM0cExHY25YVk11bERkcmYrWWZFVG5DdWlhcU5ZUXZ2TXhDQmlsOHRZSFB0?=
 =?utf-8?B?Zy9lVUhUNzMrRnFicFZ1ZGVKajA1OWYzaHgxRWI0QlpyT0pUTkdFMkM3MWFw?=
 =?utf-8?B?akVSakxEdjdMRWN6V0cybzJEaTZRN2lBcEtvaXpiTjNmZWZ1MVVVK3NCMGo4?=
 =?utf-8?B?cjhXM2pmSmFJL2JJY2xyYTFlRCsyZGdXNGF4cWR0STdqbkdNcWZyNTNBV0lK?=
 =?utf-8?B?MjFKcjNsVUNGZVZCeUJGMFVtVDFTaEdkWFlEbGhNRWVYaEFFWGR2dkd3VDJu?=
 =?utf-8?B?RVdwZXFybkNkNlNERWRqdkpUd3JIZExUMDZNOTlGN0JFbWorKzJ2UmRkME1p?=
 =?utf-8?B?TGRpUE5RdTlsVytVWnpwRjg3a3FJc3NwQUFabVliVEg4d1RIazc4VHdEN3d3?=
 =?utf-8?B?Umx4Uy9wK3QycFpWcUp6SjJZTlFkOS8wQlUxSDF5cWJsaFRBeDdGdGJKWDlk?=
 =?utf-8?B?ZlR1LzhONHJVQi9CQzJaL1I3NHFsRUpPaE15YmNvVk9XNW1jNS83T0xoRDNU?=
 =?utf-8?B?cW1sdDFLZnlSWUJMd2RmQy9UYldrU0E0MVFZMmRiai9sSC92SnFEemova1Nq?=
 =?utf-8?B?bVhBK3lzeU5od1RNb1VWd0o0bldaU2k4b2R1eklaVXRLQjZFNHpoeEhyd1Zx?=
 =?utf-8?B?MytJRnpHNVpOeWZzVVlUM1VOdG90TnFqTWRkZEtkV096T3ZDbnByRmRaeDdE?=
 =?utf-8?B?TUYwQlJpWlJGekIrR0laZjdiblRqT2llRm52T0RFVzBqSnJ5ckltdXZ4UzNt?=
 =?utf-8?B?K29RaHNnOUU5T1NrZnd6SXY5dk5LZDVCZ2xkRk5lMDBlWnM0bkxhckI3OUtU?=
 =?utf-8?B?SlFEVkt3eURUTnJ6VU9rUzJ4VlFYb3lJdmFJM1JYTmphWUowVTF5ZVlxcmtW?=
 =?utf-8?B?bVJ4QlBKRXE2UGk2eUw3ejhOeTQ1azRFSnRoTlBsdG5VbFNDb3Bibk9QQWFo?=
 =?utf-8?Q?3TiHoqr5wUvkK3nMIUI8YZ5F0B8tuPD2evV2ucxKtSMv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe2cb952-ea52-4fdf-8d36-08d9e78a5c9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 02:59:29.3709
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9Px4QUb6eA9LmpbQa5nk8Kh5g96by/Pklmfkh3ScR5IioX4XtDCWK7ThZIV82QQM6m6oUpaRCEc4t7pcXQWNPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1731
Return-Path: anuj.mittal@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <08F277A3D9C83C4C8B1BC0DC064AF085@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDIyLTAxLTI4IGF0IDIyOjA1ICswODAwLCBBbnVqIE1pdHRhbCB3cm90ZToKPiBT
aWduZWQtb2ZmLWJ5OiBBbnVqIE1pdHRhbCA8YW51ai5taXR0YWxAaW50ZWwuY29tPgo+IC0tLQo+
IMKgbWV0YS1wb2t5L2NvbmYvZGlzdHJvL3Bva3kuY29uZiB8IDEgKwo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL21ldGEtcG9reS9jb25mL2Rpc3Ry
by9wb2t5LmNvbmYgYi9tZXRhLQo+IHBva3kvY29uZi9kaXN0cm8vcG9reS5jb25mCj4gaW5kZXgg
MWI0Mzg5Zi4uZDEyOTA4YyAxMDA2NDQKPiAtLS0gYS9tZXRhLXBva3kvY29uZi9kaXN0cm8vcG9r
eS5jb25mCj4gKysrIGIvbWV0YS1wb2t5L2NvbmYvZGlzdHJvL3Bva3kuY29uZgo+IEBAIC01NSw2
ICs1NSw3IEBAIFNBTklUWV9URVNURURfRElTVFJPUyA/PSAiIFwKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZGViaWFuLTggXG4gXAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZWJpYW4t
OSBcbiBcCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRlYmlhbi0xMCBcbiBcCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZGViaWFuLTExIFxuIFwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgb3BlbnN1c2VsZWFwLTE1LjEgXG4gXAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcGVu
c3VzZWxlYXAtMTUuMiBcbiBcCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIKClBsZWFzZSBt
ZXJnZSB0aGlzIGNoYW5nZS4KClRoYW5rcywKCkFudWoK
