Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91961C197A0
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 08:17:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.2703.1700122661099541704
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Nov 2023 00:17:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=BUlLtOnC;
 spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1700122660; x=1731658660;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=1j5ArlELpRjQc2k90y0bl0UMFf4eyaK5w16t8XVL7+0=;
  b=BUlLtOnCA2P8xQqO4jNvikBniXNuDr0YYA7XW2C4VdpI4eJtdJ96MwOe
   wVN3u2MdvdyBJTM03JtG9sdg2/iEq4tn59QozLzCCpMGkt2HkWILE0PJx
   XfAbE1PRJkfpBiH6ZHcieYrOlaBTs9JPesv18AtYMtfV9FuaAjwbRseAQ
   jUlzfUTNACe8IW+atkhhM7PGbACf51cVqwg+mmMBe54fjVLRt0LE5qr8H
   GqbPW8uJQQMiKEaINEPGS4X3UQyGDO6JJr2qkRmHWJBAsS9+RUFZrsIbV
   3I97wdZa7Sof+zagyv3emm4gmNrGB9Pdue5ido7GJMC6TCmapmOm6nN5R
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="389899017"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; 
   d="scan'208";a="389899017"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Nov 2023 00:17:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; 
   d="scan'208";a="6664934"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 16 Nov 2023 00:17:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:17:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 00:17:03 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 00:17:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LfAGb4ATLop+duz9x8p+4mmbpnm2zpXuUtJ4uvmoVVa11nqU+6Xy2fKUYFgnuz09yrIgaAlxrnngr6KoL+JNeFTq7QixxGccfb1FD7bKCXAvUrNMhvL7aWXy1nGuzGQCEptpLKmR4H3tIdD99QIjxWN2+fPICIABUB9xbkY/E7kAxEwcq6izv4qPe3BL6x4A6w1R/geqlww0SYu7Xy7qJvaHk3zYODkPbJ/M2LrLButBb0YOctaLNTri9quo1X+KPwg8xy9ERHsyT969NcuiMplHT0cqrZ/2QBzAYK+kJ9rfb8xjXSDb9HhhS5BA6+yA12QiwhQVVRxamPccOnG2gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1j5ArlELpRjQc2k90y0bl0UMFf4eyaK5w16t8XVL7+0=;
 b=G0sE8a07DPcOIOvjUtiB4mfHq/HFMV574/luEHgj9nPeadL7ZvE6eI93hS2GIlZKxY/rfKSkv8/iLKFmDggziKusmw+N2KqHltGnLdLmtM1AvQyp7sK062UxOYZn9sjL7PpWDxmldck/hu2MOuLrAhOHs4YmAQBCDkVybFuOgLjfdd4yBcDzgsFhOcJSDoUjq8XBEcvjj21kaIFb9lrkeETf4VQokLBJQGfTaEeNPxPSYXeEIO2TrCWToK7ujWEBnPmSZnT/MKmk2OD1biTjLfBa71RXACHM9A9tW6/6uXbhuGRrnygqrJVWOwC9VZbNAkW4rwHn0zBgtPKawU0t+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by SA1PR11MB6687.namprd11.prod.outlook.com (2603:10b6:806:25a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.18; Thu, 16 Nov
 2023 08:16:58 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::c551:a463:575d:1cad]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::c551:a463:575d:1cad%4]) with mapi id 15.20.7002.015; Thu, 16 Nov 2023
 08:16:58 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Ross Burton <ross.burton@arm.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Topic: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Index: AQHaF+VSNmYTy5JtsEqxBxIRJ8E1ULB7m1KAgAD+OVA=
Date: Thu, 16 Nov 2023 08:16:58 +0000
Message-ID: <CO1PR11MB5026A695EC1B8DA80DF192F5C4B0A@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20231115170039.486447-1-ross.burton@arm.com>
 <5CA7721D-98E6-445A-8D8E-5C298118DB03@arm.com>
In-Reply-To: <5CA7721D-98E6-445A-8D8E-5C298118DB03@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5026:EE_|SA1PR11MB6687:EE_
x-ms-office365-filtering-correlation-id: a2b0710f-4df0-4670-606b-08dbe67c676d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dpEhOXNhndw6lS8Yk45O5uUUqu1K23wNjrIyHI2lWGs99/MAauh5QRH5T4LfsaVYrsCXNP3hbu/F5ODOUXlcoHuV7H5FrHCjfsi+Vkce4jnnGnUV5TGACZZ6Y01suZ3CmvSftY9W6k2OhdyvkrJ0ebnooOQniqVbxjsuAR9qL6Xz4oiJdctw0lZnRoeh3nrsLGE1Ao9X7WoGLQbzMrWmfLNwo7sfJTaYJpHY/WP4WFyuurZQjBrjtzaI0jffpOWtTWZ3Q471jylSRM+4UYv9tK9UDalH7EPh8aMCKY3Bi58ynMfFp5wW2mxq/vG95PSmbsR+HHDk9sFRcfBiPBxgimVYBfb361saJgjkN2SNlgk/AQd7QpCJ7A7bPb/pHo+W5ojCp4QbMtAOQS0UZH653EAS5+ZEsy0ipzQ3iXSzG7jIUSHTKMfGGT6xDkPggN3qhPYqYQsdtM01LXS7LyBuAGWZia9h/YVc60FmoR01NFI9JLQ3YxvApwtgXxtWP8Jplz1M/kyyen/qQ98PfSFVZ2I10I7M7tm5wtIWPrLfj2MJoVyntxSSD5KXBaM7Mrf4cl+R6UFmKJIJo5/LSe6OW+gUr7uBsrDw031YjVN1yjp6VFQDZ4yPpZOrRVJc8+C6
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(366004)(376002)(346002)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2906002)(52536014)(8936002)(8676002)(55016003)(478600001)(33656002)(86362001)(5660300002)(76116006)(316002)(110136005)(66446008)(66946007)(64756008)(66476007)(66556008)(53546011)(82960400001)(122000001)(38070700009)(38100700002)(71200400001)(83380400001)(6506007)(9686003)(41300700001)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Sm1XOTJ4L1Q1UjFiOWlESTQyQ1QyZkFwTG14bE1sMmpmWEMzYlZ6QmVVZk9X?=
 =?utf-8?B?ZDRZYXE3Wm5mVHdJdnlVMGRVdTlvTkg0QVhTTUdQbk1LUmIxRmhMUllPZ21w?=
 =?utf-8?B?MVFPbEp5Y1RDY2x4enNaN3IzMGk2UWs1ZW5wL1RpYnRjL0l6WmsvVG5LVms4?=
 =?utf-8?B?b2JRVC83dWdxZ0VRY2ZvbjVGcjVGVmNBUmM4U2pzaS9mNWJXWjJUTC8yaUFZ?=
 =?utf-8?B?eVE3UFFlcElQanpPNno3WEgyUEhINllVYnE1ZVFHckhaOUprVW5UYWlMZ3Ux?=
 =?utf-8?B?Nkg3RjJKb0dqYk5BY2lwbGxEeWJZQkhwQktLdkd3TEpDRWY1NFkrYUVXOGRQ?=
 =?utf-8?B?aGJPY2JBbTlTMCt1RnlGU214Rkw4VWowSDJudTByTEdsM3cyYlVkbkkyMmYy?=
 =?utf-8?B?OVhSRmgvUVNzdXgrSmU1QTJRemNPcWUzOWV3bGFlQ1JJekY3MkdVUUh4dk5o?=
 =?utf-8?B?YjZYZUJoRG9kK1ZvaDZJTHQxMVF0TStPakMyL0JYaUZhMUdnVk5zVXpSQ3lV?=
 =?utf-8?B?L09pQkVVdVlWWTdnZ0tXZFVxQmFqWjZiN3grZ29ieFBRd1NQOW1rWUl3Sklr?=
 =?utf-8?B?dHIrUUJhZFBESUlHK3cwdmRsc1YweFNxQTZrdUhJTmdJT0VHZlFIWVE0NEhi?=
 =?utf-8?B?bi9BS3FpcXIxaFdGdU04RlNrdUwzSUd1Z3ZPamtuQm81TEFTa3kzNGVacXpo?=
 =?utf-8?B?VEVXT09oTHhiM2QxT1lLdHBpRlhQTGJwOTZnYUMybzFSb2N3ZXNLMzh2MjMr?=
 =?utf-8?B?YUNkb1FGU0dzazJ3NUswSnFVU2RWTHphL0JseGk1REdSZzdXTWlJemEwYW9z?=
 =?utf-8?B?NVFIaUFxNjh3RmhNeTlaT3QzeWlLSW4wOEMwdWJQdkxyZkwwUHY2SzczSFNn?=
 =?utf-8?B?NXVHdWFQODB5WUlBdm5hRENGQk50UktmajBjUTFscUNRVy9XUG1sTUs2VW9G?=
 =?utf-8?B?MG8ycnV6ZFUxa1Z2YTV3Y1VlMjB2L3pNM2JBNHBOdXI4QWJ1YnVFZzRaVFla?=
 =?utf-8?B?TVZsK2xuT3lSRVZIN2cvREVDMWs5bjlrT3FaUThJbDZxUzAvZ2Y3N1dqR3hB?=
 =?utf-8?B?cUJaejVlQ2RqYlRpN29YcUY0aDdzSytoOFZoTjRPR0tlc1JUMEx1RUJJbkl4?=
 =?utf-8?B?djR4a3JyYnI4eVlkU0YzYnBrTWNZMEpEcVkyV1gzZ1VpclBMcFRVNDNmcVF3?=
 =?utf-8?B?c0xOM2dReHlHREFZQ1cwYjdUWHVHUzhkM091ajhrOWFVbEdxWVVEY1ZqQ1p4?=
 =?utf-8?B?M3E4U1pNK0FONkZFNERoOHdydGpQcVA0d29WL0hIZ29uc2MyeEJuR3ZhN0N5?=
 =?utf-8?B?MndVWVB6WmR1azZXNG9MUDd1N21EUDNvQ1k4cG5pb2RhN0dubHFjaUR1OGVB?=
 =?utf-8?B?Y2xpeUhyQzJxbFozaDhuY3dCdUJVWEVUbUsxVWJxTzhLQ040RmhnN0svWXpu?=
 =?utf-8?B?dWtaaWN5UFQ2U3I0MUZyNkcyMlUzdWZsUjRvWU12b1FQSjZZZWZZemU1Rkc4?=
 =?utf-8?B?VGZFS2RSTDh6dnFjU0F5VS9DTG5BdjNtVFlRZzRhV3FJd1dtbjhCd1VoVTE3?=
 =?utf-8?B?WVhPb1hlck54K1JQYTZvQ0FTcHhHcUV6ZkdnUlB4MWhHN0JyZnZyRm1hWXBB?=
 =?utf-8?B?dW9wOGp4eXlDR3ZUalFjNWNZQ3AzNDFYREVCK3pLc3UyZkJGWDB4TXZ1K1Ju?=
 =?utf-8?B?OFM3MGFpYkVaMXBxREc0bUV6a0F0RkR6M0NtdVpDWjczTVRCWm9lRjhvcFc5?=
 =?utf-8?B?UlgzaSt1TWIxOG5tVGdKQVVEdUlUdHIyUFFMVjRQaW5ZVTA4Nno5UUx3TTV0?=
 =?utf-8?B?ejFQRktoemtndVk3a21rMWtSdm1ZeGFmMEYza0E1NXpZK1NaYnQyVHFnZ1Bn?=
 =?utf-8?B?MnhCZ25UbFJkcGJMa05nOWFZNUxxclZjUm9wYjl3UEszemd4NGNXakFaMTRo?=
 =?utf-8?B?bDF0NWhlaUFFVGNRQlhyeWsrSVRXZ0VUYVI1c1RIQWxoT0ZOVGhXRUppRnp1?=
 =?utf-8?B?MkdKRmFrU0t4N2NORVZiZFg0eWJtVzVJcmJjSGwyZ2l6SXpEYzNnTWZUcjJE?=
 =?utf-8?B?NkV1Zy9BR3NuOUo3R0dQZnY4REJZaHY0NFcwMHZzWXNqUlhOY050R1EvN0tP?=
 =?utf-8?B?bFZ3Y1E0NTJPdUxvclBTK0VrZkZmaS9WWlFBbnJYWG0rNmJxcXBrclZWZHZ0?=
 =?utf-8?B?clhpTXdnb0doODZ6V2RrTG9wVGVsS1E5K1d3OUtaWXpEd2FzY0dRdFIvYmx0?=
 =?utf-8?B?aXlnTVlOVXY0MG1IS2QzaVViZWlnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2b0710f-4df0-4670-606b-08dbe67c676d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 08:16:58.8390
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vz2+vvsoQbFAGqpx4rMrR8PftLttFXQpXJmsQjXWm0B7aljLflQ07bJsIfhxPr2sBT/6lqZWtIF79SwugKkKR6yCuRc33D7kQNGS6QvYOJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6687
X-OriginatorOrg: intel.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Nov 2023 08:17:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13205

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFJv
c3MgQnVydG9uDQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAxNiwgMjAyMyAxOjAzIEFNDQo+
IFRvOiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFtwb2t5XSBb
UEFUQ0hdIGdlbmVyaWN4ODYqOiB1c2UgY29tbW9uIG1rZWZpZGlzay53a3MuaW4NCj4gDQo+IFRo
aXMgZGVwZW5kcyBvbiAiW09FLWNvcmVdIFtQQVRDSF0gY2FubmVkLXdrcy9ta2VmaWRpc2sud2tz
OiBnZW5lcmFsaXNlDQo+IHdpYyBpbWFnZeKAnS4NCj4gDQo+IFRlc3RpbmcgYnkgc29tZW9uZSB3
aG8gYWN0dWFsbHkgaGFzIGFuIHg4NiBib2FyZCBhbmQgdXNlcyBnZW5lcmljeDg2LTY0DQo+IHdv
dWxkIGJlIG11Y2ggYXBwcmVjaWF0ZWQuICBJdCBzaG91bGQganVzdCBib290IGFzIHVzdWFsLg0K
VGhleSBsb29rIGdvb2QgdG8gdXMgYW5kIGFyZSBib290aW5nIGZpbmUuDQoNClJlZ2FyZHMsDQpO
YXZlZW4NCg0KDQo+IA0KPiBDaGVlcnMsDQo+IFJvc3MNCj4gDQo+ID4gT24gMTUgTm92IDIwMjMs
IGF0IDE3OjAwLCBSb3NzIEJ1cnRvbiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA8cm9z
cy5idXJ0b249YXJtLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gPg0KPiA+
IEZyb206IFJvc3MgQnVydG9uIDxyb3NzLmJ1cnRvbkBhcm0uY29tPg0KPiA+DQo+ID4gVGhlcmUn
cyBubyByZWFsIG5lZWQgdG8gdXNlIGEgZ2VuZXJpY3g4Niotc3BlY2lmaWMgd2ljIGZpbGUsIHVz
ZSB0aGUNCj4gPiBjb21tb24gbWtlZmlkaXNrLndrcy5pbiBpbnN0ZWFkLg0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogUm9zcyBCdXJ0b24gPHJvc3MuYnVydG9uQGFybS5jb20+DQo+ID4gLS0tDQo+
ID4gbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2luY2x1ZGUvZ2VuZXJpY3g4Ni1jb21tb24u
aW5jIHwgNCArLS0tDQo+ID4gbWV0YS15b2N0by1ic3Avd2ljL2dlbmVyaWN4ODYud2tzLmluICAg
ICAgICAgICAgICAgICAgICAgIHwgNyAtLS0tLS0tDQo+ID4gMiBmaWxlcyBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMTAgZGVsZXRpb25zKC0pIGRlbGV0ZSBtb2RlIDEwMDY0NA0KPiA+IG1ldGEt
eW9jdG8tYnNwL3dpYy9nZW5lcmljeDg2Lndrcy5pbg0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL21l
dGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9pbmNsdWRlL2dlbmVyaWN4ODYtY29tbW9uLmluYw0K
PiA+IGIvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2luY2x1ZGUvZ2VuZXJpY3g4Ni1jb21t
b24uaW5jDQo+ID4gaW5kZXggZTNiYWRlYmY4NmQuLmUwY2I3MTU3MTM1IDEwMDY0NA0KPiA+IC0t
LSBhL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9pbmNsdWRlL2dlbmVyaWN4ODYtY29tbW9u
LmluYw0KPiA+ICsrKyBiL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9pbmNsdWRlL2dlbmVy
aWN4ODYtY29tbW9uLmluYw0KPiA+IEBAIC0yMSw3ICsyMSw1IEBAIEdMSUJDX0FERE9OUyA9ICJu
cHRsIg0KPiA+IEVYVFJBX09FQ09ORjphcHBlbmQ6cG4tbWF0Y2hib3gtcGFuZWwtMiA9ICIgLS13
aXRoLWJhdHRlcnk9YWNwaSINCj4gPg0KPiA+IElNQUdFX0ZTVFlQRVMgKz0gIndpYyB3aWMuYm1h
cCINCj4gPiAtV0tTX0ZJTEUgPz0gImdlbmVyaWN4ODYud2tzLmluIg0KPiA+ICtXS1NfRklMRSA/
PSAibWtlZmlkaXNrLndrcy5pbiINCj4gPiBFRklfUFJPVklERVIgPz89ICJncnViLWVmaSINCj4g
PiAtZG9faW1hZ2Vfd2ljW2RlcGVuZHNdICs9ICJncHRmZGlzay1uYXRpdmU6ZG9fcG9wdWxhdGVf
c3lzcm9vdCINCj4gPiAtZG9faW1hZ2Vfd2ljW3JlY3JkZXB0YXNrXSArPSAiZG9fYm9vdGltZyIN
Cj4gPiBkaWZmIC0tZ2l0IGEvbWV0YS15b2N0by1ic3Avd2ljL2dlbmVyaWN4ODYud2tzLmluDQo+
ID4gYi9tZXRhLXlvY3RvLWJzcC93aWMvZ2VuZXJpY3g4Ni53a3MuaW4NCj4gPiBkZWxldGVkIGZp
bGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCA3YzA5YWQwMGExYy4uMDAwMDAwMDAwMDANCj4gPiAt
LS0gYS9tZXRhLXlvY3RvLWJzcC93aWMvZ2VuZXJpY3g4Ni53a3MuaW4NCj4gPiArKysgL2Rldi9u
dWxsDQo+ID4gQEAgLTEsNyArMCwwIEBADQo+ID4gLSMgc2hvcnQtZGVzY3JpcHRpb246IENyZWF0
ZSBhbiBFRkkgZGlzayBpbWFnZSBmb3IgZ2VuZXJpY3g4NiogLSMNCj4gPiBsb25nLWRlc2NyaXB0
aW9uOiBDcmVhdGVzIGEgcGFydGl0aW9uZWQgRUZJIGRpc2sgaW1hZ2UgZm9yIGdlbmVyaWN4ODYq
DQo+ID4gbWFjaGluZXMgLXBhcnQgL2Jvb3QgLS1zb3VyY2UgYm9vdGltZy1lZmkNCj4gPiAtLXNv
dXJjZXBhcmFtcz0ibG9hZGVyPSR7RUZJX1BST1ZJREVSfSIgLS1vbmRpc2sgc2RhIC0tbGFiZWwg
bXNkb3MNCj4gPiAtLWFjdGl2ZSAtLWFsaWduIDEwMjQgLXBhcnQgLyAtLXNvdXJjZSByb290ZnMg
LS1vbmRpc2sgc2RhDQo+ID4gLS1mc3R5cGU9ZXh0NCAtLWxhYmVsIHBsYXRmb3JtIC0tYWxpZ24g
MTAyNCAtLXVzZS11dWlkIC1wYXJ0IHN3YXANCj4gPiAtLW9uZGlzayBzZGEgLS1zaXplIDQ0IC0t
bGFiZWwgc3dhcDEgLS1mc3R5cGU9c3dhcA0KPiA+IC0NCj4gPiAtYm9vdGxvYWRlciAtLXB0YWJs
ZSBncHQgLS10aW1lb3V0PTUgLS1hcHBlbmQ9InJvb3Rmc3R5cGU9ZXh0NA0KPiBjb25zb2xlPXR0
eVMwLDExNTIwMCBjb25zb2xlPXR0eTAiDQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gPg0KPiA+DQo+
ID4NCj4gPg0KDQo=

