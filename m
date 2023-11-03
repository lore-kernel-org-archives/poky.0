Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EFCC4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 05:40:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web10.30737.1698990032244901851
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 22:40:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=Hpp6s1GU;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698990032; x=1730526032;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=RGfGc74ekCZIWmsicl4p5u5Kfs86gRCNGNdIoFjS0E0=;
  b=Hpp6s1GUnP4p23Pg8QjqfpzUsFNwFKT3qpnFyqIhv279+4uEw5RZ8dwJ
   SCxbicdWvOfvh+VlkrbCdbF9t6casihCIMQj10PspivHhIkFEQjfOMl7B
   LYEMB+/mMtkA3bPcKBDCz39EfEHQybJqanIcqSmGuE+dFpTG7DlM5yify
   p4l+jJ5VFdQKwtsK4BP/7CXBn23VXJkOYkFDc7rJZEnIqR2yAh1quIP+a
   Jsf38nDC+PIKXBaBOJBXbz21v2JVpuBBP2dgkf5F/of5XnyBTEsPhFD2j
   gY+p6cz1F8+c581SS8Z4As4lHdyoO/lu1IB2Quft27rlQSBurJAic+fWB
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="419991114"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="419991114"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2023 22:40:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="9261194"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 02 Nov 2023 22:40:32 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 22:40:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 22:40:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 22:40:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DpkeRmEJFGA+F8+My8B1MAH6Z84jSZ20ndQaf3iaAxbUxWznyXl+xuF9m1n4IJibo952Vz4acljuY9dOz22bobGAdh1FqLp/8NOHulD4nXlLw3KmixdvDxLuWW6U6TnCVu6GauRMq+k4tSNka/9lFz1Sq+1PNQLq6SHCfZ+OdLWylFXKtKqDdMpsgtWjjaYaWXM9LkEjqEmZP4hvwczhAFAOSJKnyPL3s4VtNaS6zZTws7Te5uCfm8s0FGBRdUFDYNT6hnJoEMtZSGVtfieWM5DHm38HhRI8W5wfz/JW4cYpaTzpPnihvfu67qaD0nR7OVE8WTnXL4umWscn0NP60A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RGfGc74ekCZIWmsicl4p5u5Kfs86gRCNGNdIoFjS0E0=;
 b=DgOq0JPstVfHY1TNYr9JoXoEWpzH6PyrLQFcYn75pcpPT0uV8lvLzCQMcehrueiAgHg01GP71dylRieK/c2ppdh3K/6jfrM1Ziz4vnDpdqjJH1A7CH2UdKsdGVLv9VKnUkIYBh3RgqDU7eQEauy6XBzSz/T8o1F/FIuTbKFztb2hODUHNoIVJbqKmj5ng+nNnQxAoxmGUrvmFkJ463hF4FCdlgcC+BuEmLDKtYomxfd6i9Z1weQ7SNxqTJU9h5w3bTYSlBdiRZfYjzCaYrh02Yc/PbBQtIQQGBY8CNQ4zWNqohAedU9aBoHrCm+knisFcJU1Vw0IoyNNt4Y+vt1QzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by CH0PR11MB5329.namprd11.prod.outlook.com (2603:10b6:610:bc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 05:40:29 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::1fb7:4c3f:3dd2:a698]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::1fb7:4c3f:3dd2:a698%7]) with mapi id 15.20.6954.019; Fri, 3 Nov 2023
 05:40:28 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "michael.opdenacker@bootlin.com" <michael.opdenacker@bootlin.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [meta-yocto-bsp][PATCH] machine: drop obsolete
 SERIAL_CONSOLES_CHECK
Thread-Topic: [poky] [meta-yocto-bsp][PATCH] machine: drop obsolete
 SERIAL_CONSOLES_CHECK
Thread-Index: AQHaDZCTOvWWgOTQZ0uTra34kLmC5bBoEYEg
Date: Fri, 3 Nov 2023 05:40:28 +0000
Message-ID: <CH3PR11MB809328EC8407D2CBB9BF0220B9A5A@CH3PR11MB8093.namprd11.prod.outlook.com>
References: <20231102103648.3681280-1-chee.yang.lee@intel.com>
 <e5c935f3-e4fe-4c6a-a290-8c81450652e5@bootlin.com>
In-Reply-To: <e5c935f3-e4fe-4c6a-a290-8c81450652e5@bootlin.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|CH0PR11MB5329:EE_
x-ms-office365-filtering-correlation-id: 938bdc3d-9e49-4347-f799-08dbdc2f6304
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1d52CXGr9VdgyIUvDGF3jhO7ycKGQNUeUWRXfn+8KvZuJxhUpN+CRGmATJgDeCTDl3bbhKsB7Mqg/Z2HblBELqFOIP8i0EjUWnV/CZAa+TYllFXhvIqqaeN547qYKs9MsV6JW3iA2ihLnb/8eQXacHUy+bBgBiArdXLpNj5A6Cvtj7uK0OcH56nYqtPoGYr2OEImD/Na/xQDU1pdq9x81pf/kYOJyMHLyOIi84jP9csoMv6r2t8SDBTmRtyfkIsh8J/3mrKIKWztMjnvMFPJ3E3p24KpOfE32Vu6YeTv7U7wedDpum3dwJCl6dReaN7Rn+DgzFaZ57H1sJs2TkX0awwhtmJfE8l7Gq7e7HzcRRMwdP/aiSybHTx9dpVAu2kkXYjWOGa2KKCs5PH1s+CD2q7jx3iQonlg7r/JO8wogJ95vjiGojSOTzj7XcjtDV6nMSYjzDDYlf/Cu8veutKXt95Fpj6zqNr9yazcEdoEHi94bu+wg2m6aX3PBkRVH/bNDqTP2ZUVw85igxd4gZIBXMJndfbcignkQje/W4apc1l7IUfJ+dLEUTIKGFoN/ZYFXgPqOKeVyoXufYGkTYhoDA+l/50PfRuuGYTtsdRpfo4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(39860400002)(136003)(396003)(376002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(55016003)(83380400001)(53546011)(38100700002)(122000001)(71200400001)(4326008)(86362001)(966005)(82960400001)(8676002)(8936002)(2906002)(33656002)(41300700001)(52536014)(6506007)(66556008)(7696005)(9686003)(5660300002)(316002)(66946007)(66446008)(478600001)(64756008)(6916009)(66476007)(76116006)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFpreVN3cCtFWm15cTF2c2RrNHNmNUIzNmxGUDBWaHBna1MxaDdhVExrVDE2?=
 =?utf-8?B?T1owaEgzNFR5c0VaS0pCa3pxUTBTUGRUUXVYaFlOZC9hbXdFZWRQQWRWbU9D?=
 =?utf-8?B?UjVXa2E2OFVyejJxWjA2QlUycFl5T2hPNk16U1g2WG5WUUJlUERqT29UQzV1?=
 =?utf-8?B?Z05iR0krMDh4c1B0UEorZ3BPUkVMYzJUQ0lNdGNwanNJbklvcU8xYTNJcWZH?=
 =?utf-8?B?S0pac3RUWTdBSkdIaHhUZXp1L3NMNWtVU3Byd2FvSG1YbnhvaHp5b29uTGhh?=
 =?utf-8?B?Y0hpU0xYNitCWXJINTU3dnQ4R2ZPSW9IRmpEVDhDQWRPdTM0SjBiQWxzWDMr?=
 =?utf-8?B?a2NjSzJEUEtaVEJjcTl1Y2VlN0UzMS90Snd6d2NSTXZBb2lMWkNyblljV2Ni?=
 =?utf-8?B?MnEycGRWenlWWTZ6d1Mra3BVdy9YU0xhb1VxcDEzYmhUVmtyblBPU1VzNDRq?=
 =?utf-8?B?SDgzcHNqM0hVcUJRTVEzOEpkcWRSTk9tN1NEWWZSTk5MZ29ud01RN2h1Tm1G?=
 =?utf-8?B?bDFGUGtHS2tBU1g3OXdXNlNDZnl6SUU4aGYvd0VjMnRQVFIxRTdhTmd4akdy?=
 =?utf-8?B?ZWFIeGYvNzhJR2drTXJNd1hwbU45dEhkSDN2dTEyUUdSeWpTRFVaVFJldkNR?=
 =?utf-8?B?Vi9DQVM1b0ZuMFR0TUJGeWRuTUoxaHpNa1A3eUtHdkV5YzczMGx1Ymg1MFY0?=
 =?utf-8?B?cUxxbTRGb2ExTnNLeXB2WXJCVENJVGFwQWhiTm9GTzVmamQyelBRdTdLMEhF?=
 =?utf-8?B?OW0wbXRVNG4vd2FyV1RuZHMxZDMxU3JTME5sc256VTM1T0ZrUWdDMDdaOTRS?=
 =?utf-8?B?WGxMdXAzaWhCM3FLcFJxL0t3RmFVQVJDQ2d6Ly9vdmFaWkwwVVdjSzZjbFpF?=
 =?utf-8?B?T1ZqdUxlRUdBNVZIQ01JQ3dZdHZIb1V1bVZpdFh5Tmhyd0xKK0RwYnE2VmNK?=
 =?utf-8?B?TEFvRlZrSVJZRW92THBrOGFucTJVaUh2a1A2NmdMb2xFNXJNS0lleFg4MXRk?=
 =?utf-8?B?NlJFVDJjU2h1cFlDQWp2bGpjUDVobFZXM3BXT2R5ME1UVmVsbEtHLzhEKzJq?=
 =?utf-8?B?dmFCaDdUdGFTZEsvaHhpNFRacFhEd2FMRnZVNHROS25Hc1lmdUJNck1zSnMr?=
 =?utf-8?B?ZGVxbVd0ZjN4QUtpSTJnM2xveGFFSDVwNXhLaVZnMW43T1hwMHcvN3MzcjR1?=
 =?utf-8?B?N1N5d1JoY1BiMWxLeXBDeVV3dEIyWG82ZHZRQ2diYzhGTFMzeWdFYk5ndXJN?=
 =?utf-8?B?MitMNm1zK0pRYW4xSlUxQlJBVWFDekozd1lNaDNJZjZERjlCakQyUm9Yb3cz?=
 =?utf-8?B?N3pYdWw4S052cncrZ0hBYUdiN1p0QXZNYWVreTNKTzd5TlNGS0tLbjNVS0hh?=
 =?utf-8?B?NzRtREdWanJOdzF3dHB2OFBYdlk3TWJrcXVGRk9WR0VFMGRBVFY1QXRCUkhC?=
 =?utf-8?B?RXhoTzJJdno0VjVqdVVTdXdKcjdUcHlMSW5uc1ZsbGRSVndrYVhJcTZKT3FT?=
 =?utf-8?B?eE9NZmlES2xtTFF1M1ArMUwranIrTCtVeE5Zb24wbTVUcUN5M1RvekJkNkZO?=
 =?utf-8?B?eG1MTkZySEUzRXZucUwvcW5ZQ0pGZFEzZDZwdnk3eld3WWhCUng0VTlSU1Ir?=
 =?utf-8?B?L2VZUGV4a1NxVUcrMW02OHJUbHJvNVVsc0NaZ0hQeW83dFBXUmplM3FQRzRs?=
 =?utf-8?B?cndETU9JdUVtcCttR3RIQkxvblhQTmEzMVZ5Q2lvOU1UN1FBRllxV3hxTXNJ?=
 =?utf-8?B?SmQ5MVhqSENodVpIQktMaXc2dlJzQmpDOFhzTURoeGlRZGtGeXdtTHB4NlNt?=
 =?utf-8?B?eEpWK0RFUTJIQ0hsZHVpRkRsb3pCYzNreHc5TldudDRzQ3RHMkNUVTI2b1RL?=
 =?utf-8?B?Ynp2THNPblNnaHhsNklzYjA1eEl0OXJlQ1d6emJaSDVTeWhOOEx6SU5USzBu?=
 =?utf-8?B?bDhmZE8wMzVYZXEvcGRlTkJsZ3Z1N2ZCWjZyTWxWczJROUtMd2FwY2JnLzNX?=
 =?utf-8?B?cVFxQktUR1hYeW02RE1yK1RaUHFETk82eHBiZXptcjZlTE96b1R2c3c4RlIw?=
 =?utf-8?B?K2c3Zm54TFVScDZyTGw4elhPbGMzaDJweEhpeUY0dGdjdlluWlhUQWNEQ3Z4?=
 =?utf-8?B?NllmazlNVjBGc2ZmUE9vaWZ6b3lNWEFoSmZaVkt0WXhhbWxxaHpRZDBHb2tJ?=
 =?utf-8?Q?zRDgfRpUjHDhIayZacvMOrp/u7tx17UhYtFGbpM8v1JZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 938bdc3d-9e49-4347-f799-08dbdc2f6304
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 05:40:28.5377
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L36aSWOkJQEvGtPoDd+MzWO3VusO2RABW74kyW5ArmGQC7PEH9GbUct7wV55UKbYqZRhe9HnwFs0dHSzjAc/ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5329
X-OriginatorOrg: intel.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Nov 2023 05:40:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13196

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHBva3lAbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8cG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2YNCj4g
TWljaGFlbCBPcGRlbmFja2VyIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFNlbnQ6IFRo
dXJzZGF5LCBOb3ZlbWJlciAyLCAyMDIzIDk6MjkgUE0NCj4gVG86IExlZSwgQ2hlZSBZYW5nIDxj
aGVlLnlhbmcubGVlQGludGVsLmNvbT4NCj4gQ2M6IHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KPiBTdWJqZWN0OiBSZTogW3Bva3ldIFttZXRhLXlvY3RvLWJzcF1bUEFUQ0hdIG1hY2hpbmU6
IGRyb3Agb2Jzb2xldGUNCj4gU0VSSUFMX0NPTlNPTEVTX0NIRUNLDQo+IA0KPiBIaSBMZWUsDQo+
IA0KPiBPbiAwMi4xMS4yMyBhdCAxMTozNiwgTGVlIENoZWUgWWFuZyB3cm90ZToNCj4gPiBGcm9t
OiBMZWUgQ2hlZSBZYW5nIDxjaGVlLnlhbmcubGVlQGludGVsLmNvbT4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IExlZSBDaGVlIFlhbmcgPGNoZWUueWFuZy5sZWVAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICAgbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUteW9jdG8uY29u
ZiB8IDEgLQ0KPiA+ICAgbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2dlbmVyaWN4ODYtNjQu
Y29uZiAgICB8IDEgLQ0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9iZWFnbGVib25l
LXlvY3RvLmNvbmYgYi9tZXRhLQ0KPiB5b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUt
eW9jdG8uY29uZg0KPiA+IGluZGV4IDhiNjdjZWZlZjcuLjlmMzg5NzExYjMgMTAwNjQ0DQo+ID4g
LS0tIGEvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUteW9jdG8uY29uZg0K
PiA+ICsrKyBiL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9iZWFnbGVib25lLXlvY3RvLmNv
bmYNCj4gPiBAQCAtMTgsNyArMTgsNiBAQCBNQUNISU5FX0VTU0VOVElBTF9FWFRSQV9SREVQRU5E
UyArPSAia2VybmVsLQ0KPiBpbWFnZSBrZXJuZWwtZGV2aWNldHJlZSINCj4gPiAgIGRvX2ltYWdl
X3dpY1tkZXBlbmRzXSArPSAibXRvb2xzLW5hdGl2ZTpkb19wb3B1bGF0ZV9zeXNyb290IGRvc2Zz
dG9vbHMtDQo+IG5hdGl2ZTpkb19wb3B1bGF0ZV9zeXNyb290IHZpcnR1YWwvYm9vdGxvYWRlcjpk
b19kZXBsb3kiDQo+ID4NCj4gPiAgIFNFUklBTF9DT05TT0xFUyA/PSAiMTE1MjAwO3R0eVMwIDEx
NTIwMDt0dHlPMCAxMTUyMDA7dHR5QU1BMCINCj4gPiAtU0VSSUFMX0NPTlNPTEVTX0NIRUNLID0g
IiR7U0VSSUFMX0NPTlNPTEVTfSINCj4gPg0KPiA+ICAgUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1
YWwva2VybmVsID89ICJsaW51eC15b2N0byINCj4gPiAgIFBSRUZFUlJFRF9WRVJTSU9OX2xpbnV4
LXlvY3RvID89ICI2LjElIg0KPiA+IGRpZmYgLS1naXQgYS9tZXRhLXlvY3RvLWJzcC9jb25mL21h
Y2hpbmUvZ2VuZXJpY3g4Ni02NC5jb25mIGIvbWV0YS15b2N0by0NCj4gYnNwL2NvbmYvbWFjaGlu
ZS9nZW5lcmljeDg2LTY0LmNvbmYNCj4gPiBpbmRleCAxNDkxM2VhMWYxLi5mMTlhMWMxNTI3IDEw
MDY0NA0KPiA+IC0tLSBhL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9nZW5lcmljeDg2LTY0
LmNvbmYNCj4gPiArKysgYi9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvZ2VuZXJpY3g4Ni02
NC5jb25mDQo+ID4gQEAgLTYsNiArNiw1IEBAIERFRkFVTFRUVU5FID89ICJjb3JlMi02NCINCj4g
PiAgIHJlcXVpcmUgY29uZi9tYWNoaW5lL2luY2x1ZGUveDg2L3R1bmUtY29yZTIuaW5jDQo+ID4g
ICByZXF1aXJlIGNvbmYvbWFjaGluZS9pbmNsdWRlL2dlbmVyaWN4ODYtY29tbW9uLmluYw0KPiA+
DQo+ID4gLVNFUklBTF9DT05TT0xFU19DSEVDSyA9ICJ0dHlTMCINCj4gPiAgICNGb3IgcnVucWVt
dQ0KPiA+ICAgUUJfU1lTVEVNX05BTUUgPSAicWVtdS1zeXN0ZW0teDg2XzY0Ig0KPiANCj4gDQo+
IE1hbnkgdGhhbmtzIGZvciB0aGlzIGNoYW5nZSAobm93IGluIG1hc3RlcikuDQo+IFdoYXQgYWJv
dXQgYW5vdGhlciBwYXRjaCB0byByZW1vdmUgaXQgZnJvbSBtZXRhL2NvbmYvZG9jdW1lbnRhdGlv
bi5jb25mIHRvbz9bXSANCg0KSSBtaXNzZWQgdGhpcy4gV2lsbCBzZW5kIHNlcGFyYXRlIHBhdGNo
IHRvIE9lLWNvcmUgbWFpbGluZyBsaXN0Lg0KDQo+IFRoYW5rcyBhZ2Fpbg0KPiBNaWNoYWVsLg0K
PiANCj4gLS0NCj4gTWljaGFlbCBPcGRlbmFja2VyLCBCb290bGluDQo+IEVtYmVkZGVkIExpbnV4
IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcNCj4gaHR0cHM6Ly9ib290bGluLmNvbQ0KDQo=

