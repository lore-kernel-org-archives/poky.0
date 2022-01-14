Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by mx.groups.io with SMTP id smtpd.web08.4547.1642146416678131482
 for <poky@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 23:46:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=hvjOyVSK;
 spf=pass (domain: intel.com, ip: 192.55.52.151, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642146416; x=1673682416;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=iy+2aD/88Hw2q8DWASWyXi/JgM0f5o/LxBVFhOIvBp0=;
  b=hvjOyVSKd7g8BsQKcnUoStiSP8VIwaIgZCFPJU5DbxAjx3HSBQP4Pogj
   JxB1lJRmlTqu2pcbQlFE45nvcURkyXt68yC3NjgFUScTJTduPEko2j6Jy
   tNHkZIhQXA4Q0lB1YIv5NizCegiEb358Q1iIo3E64Vro7jBhbC0AB460k
   hwLjwoq0cUP0+Ura8RHeMziNngllqRZYtqLeOkNdTwtfFA1D5R0ZnRPXw
   gP0Y2+IeCoOn9z4I4S8E9J4e0k6eEnm4ETOA5MX2GaB1k1z6YreHMXt8N
   WB+CDAoZ7TP7vtfV/2ARVg7FySDOQYDsm+fUV02OuwyaGo5vaSXAgwiBc
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224889581"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; 
   d="scan'208";a="224889581"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2022 23:46:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; 
   d="scan'208";a="491415616"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga002.jf.intel.com with ESMTP; 13 Jan 2022 23:46:39 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 23:46:39 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 23:46:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 23:46:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 23:46:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Im5oEg48Hzj69vtt4Jxlayh4OYp4Rw2flSiRah15BHo1qSwoT5r/ZqF9NDqk0pmks3b299c0UZ6Bd/dvQ84Lnc/p1Pa/6618raDPkY5oCA1U2KXmAVl6FAIcDU+5O2tZl/ZExfwUnxFQjv7g2Dw5p05j6M0j4IvdBB2j766VWQyW0g+HCj9lLAAr9iku6X5V2alV7oiBRzevAgzMsT4TG3aUYbcUXyMTUWSdUlyI/unF4Ph0LAwxpSJeEWKgjRbOJGk68d6MKsD2eNgqV1x7CI9SPXsBMypSGB0LeT43EsTnlk25XbnnDIEOjEKyRhMg/E0h2quhWpsZt9ObTqJspQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iy+2aD/88Hw2q8DWASWyXi/JgM0f5o/LxBVFhOIvBp0=;
 b=XtFlEJ1pvqEsyhv4TWTXUCwPjLUz9Fo0KT5xWDtl5yA0jMEVYpTcsxO0c0+aRxKwY4gvRTuMETtvx/5SicDC/xN81DiVwkv6Wy5AOLndVMIhUkhvYRuoji/Bf8QeYluZ1aJdzicPPARAxlnPc+M+eb9syWGx5TQDIAHJkcMEtlRv67BeOJXXwFqoM1FlujeyJPWHexTpDDbrYt2kh2VYeZB84lKfqYGzhjxYLZY/DlM+37nSWXy3JTqlzkhVq0Y/ojljuLVvMUZZkXZS+rg8JK3TILPzCnxf1D2xCM1Hq4KTZleWuE/WoHwKb7qJ8j1CvvMd8RChVwFrZAX8oGbBnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by SN6PR11MB3389.namprd11.prod.outlook.com (2603:10b6:805:c8::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Fri, 14 Jan
 2022 07:46:37 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::a8ab:1ed:c383:c477]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::a8ab:1ed:c383:c477%7]) with mapi id 15.20.4888.012; Fri, 14 Jan 2022
 07:46:37 +0000
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [hardknott][meta-yocto][PATCH 0/3] Pull request
Thread-Topic: [poky] [hardknott][meta-yocto][PATCH 0/3] Pull request
Thread-Index: AQHYAkeivRPTyMZrAE+pjIA+1Y8346xiMSaA
Date: Fri, 14 Jan 2022 07:46:36 +0000
Message-ID: <b3878745e7b2f9dc1f1b296801c66749fb2e77d4.camel@intel.com>
References: <16C768E0AB31F4DC.23342@lists.yoctoproject.org>
In-Reply-To: <16C768E0AB31F4DC.23342@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.2 (3.42.2-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80adc26f-dc1e-470e-f96b-08d9d731fe59
x-ms-traffictypediagnostic: SN6PR11MB3389:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3389DDDAE36B14CF112E5579F8549@SN6PR11MB3389.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: geEr48baiRputYtqu9YE+Y28Ma/wJSdE38+BQaIXbg+dN3GCrtwkGYlaloD/BeTzQDe2zeT2YaDSGnXP78QUgZ1UtS/I3LhnpS07qa44vBC4QyaJSqdSr5gt6YBYllwNojfR+6ncG07DMadzyAkmoo1eGZ5djjnnSprnp/fUhGZ6nUO9FfsibL7k9XBLdTwkYx7hnGysOZvDQ3KWrrh7ApYCt/k5+NJBSOAJHj8b1VKwwKj14hXgcb6j18NTSbnCi0K43viaWeyhYCRma8XDIqRViSZJ0JdEsuoKw4uh/e3vPFe+j3FXeT7LbwAzQTfkmfOvS65wZdHW7se+wdPqMmlVUHfAS8puCIi+TG1A3Tjo0JUzh1kHeRLWarXG6XM7d5a69YZ8qj0OPRZS7YIJ1MiqZ7sBoIeLD4csXzDmfZgt2d0e8GdwRr1OG1tNSsNQGQRbBQLoMS5yWiTtemtzeYAIUKN10/AqOfcIIYbqoTCg+5vJEqvzBotU9pLlhBBfLR13+/d3AUinjTEIPROd2ZO0SFlpJ37D59OPwtzwcTDpxJCaInn9FDEKhSQMMDc0pSpc/nd3+GG0Z3M9IpVbN1GspPhV+vB4bfBiMp71XPmT7inrdOV9EfwwF9t9nP9dJOSzeIItkH2Sm+qz7ubws430vuv4lXzpJkilJduu/gwo4ugaeeH7sWAd87yZt2OIcG1ppo/YKLii8HD2OlhLykhgWtZT3fkscG+zLJkpxYa6xWzzBcruvUs3kMWNSfIT8IIlr+zK8yxQCHoO5mIGEAWYNvfhQcFO7gVC/LDIcV6/p2kwjbOV2b04k6OIgSw65xZb3cFLuMNnv5G5oFV9uQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(110136005)(966005)(83380400001)(6486002)(86362001)(2906002)(5660300002)(71200400001)(508600001)(6506007)(122000001)(91956017)(66446008)(316002)(8676002)(186003)(76116006)(64756008)(8936002)(66556008)(2616005)(4744005)(66476007)(6512007)(82960400001)(26005)(36756003)(38100700002)(38070700005)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ai96anNkV1EwREJybmRaK05SL2wyZjZ5WndTOXhmL1VleENZWVYvK2tCd3NM?=
 =?utf-8?B?My9JWnc5ejBMUnM1bkZOZ1RmOWhGK1ZRS3kyWHd1cmluQjA5NkhNUWZaQWY2?=
 =?utf-8?B?cjNUM1NYcm83b1RqcGVQY245dzVHQTNUOENQTFg1VlJReHJ0cmZ4SSswMytE?=
 =?utf-8?B?YWEzdzl1Q3ZjR3dZT2F4dGt0ZDA3VkJVUS9kWnJQSEwySFpSRGJFbFNGOWxt?=
 =?utf-8?B?L2xmU1E3Y1JHL0hXUHEwcGErV0RvcnVPR3lpaytCakF2VGFiYXl4Y2VoL3Mx?=
 =?utf-8?B?UStJYnVxNkY5M2FEenBFV3RsUW5NWWZJTWVPTm1rbWxWeVloWld0RTJtWndX?=
 =?utf-8?B?OWJyYllPQmFTV3Z5M3BaKzdDeXczVGwyMHp5TTBydXhoTFJHR2JNRmxSWEhI?=
 =?utf-8?B?MDExR2tHZmVscHgwR1RZZ28zMnVLTlRQY1RIMk1pZjVFQWZZWFhwSnRqZXlh?=
 =?utf-8?B?ek5PdFBCZWgvb1hiM0JPck1Ec3JwWEFtRjBJZEt3cjVzYWRRazBhVGFvcTc4?=
 =?utf-8?B?RUQ4c0lsWVQ0STRiR0tYUVArSFFxY3Jja2NEak5qbElXdXRZdU1nN0VyaEhz?=
 =?utf-8?B?UStvbnNSbHVZY2FXTk42dHZRTk81bFAyOHhEN0NJN2g1WndvYkVNYWlSTnlq?=
 =?utf-8?B?b0RLT0NtSVY3TDZMaWJvZGJ2MlZ1Z3p4NlM2am5JMHNYV1VqUFZ6S0RsV251?=
 =?utf-8?B?LzRUNGFrNUZTRWdyanhONW03RmVJVzZVQkx4NXNzdUhMV1l4RUsxNXNNVFQ1?=
 =?utf-8?B?Y0syL2Y5ZkVrYjNmN0JEc0ttZWRjb0tZT3A4c2MyLy9nT2JmSVlVSUk2dVNV?=
 =?utf-8?B?QTFMei81RFFWUVA2VGJtVVZJdGsxTlMvYno2RWI2WE1WYU12RFQrTnlnU1RK?=
 =?utf-8?B?S0dzakFFMy9zd3JnTEU0d2dkcE1YcFhaK09uSThRWUl4VGhmOWhCUlBucDVD?=
 =?utf-8?B?bUsxZVpnaHdzbWdKKzh1V2dnR2FyTFdqUjBjR1EwOW9lZDhSL3BoV21xb0Nj?=
 =?utf-8?B?Zkt1aUpZUmZIbHhpNWtENlJYWHEyYUdHUEI5OUo2TTlLVFZFZHFCUithbzJw?=
 =?utf-8?B?b1h2cndUMEN3WVMvZDdMditCNTF0dzVmWjlsaXJoSlJDVWloUEhNd2NhSkQx?=
 =?utf-8?B?THZQd3RPRXpHMlgxamRJUDNGNW1OVGp3VnZTUW8xZnE2Sjh2Ri8xSU9aZ2Zv?=
 =?utf-8?B?ck55UFlBdnIrWi8rbGdSWmNMLzhYQkhHU2VMa2lKZmlPU3R1aU9RNVVtZjN6?=
 =?utf-8?B?LzN2SXN3Y29pd2d1YlZLNTdXWDQ2UkljYmdabUIra0szUzRYdTltZFJPK0w2?=
 =?utf-8?B?WUZCOTdHbW5JT1d3NWFSNEZ1QUxQNmhHc2RRbU52alVFWDJzdEE3NEdOaWtm?=
 =?utf-8?B?MXVrb1hyVzZRMFF1alkzcVN6M1FNVmpRdVBKcEw4WXNDZjhLcGxPSXpWSHVY?=
 =?utf-8?B?ZjMrTkNKTGsralNWL2JLNEJkV0Y5Q1hYZmxFaXRzaXdBcXJScyt3NkQ2M05p?=
 =?utf-8?B?aG1uZmRZTkVJV05ic1FEMEZ4aEFOaml5SHlKL2pibXZuQmNqQUFlVG9pajRs?=
 =?utf-8?B?emFEcDVVeUdqYWpybmdWd3gxUm53cmpZKzFaaDZ2T2RJMVpUZ0RqU1hOcEg1?=
 =?utf-8?B?T3Z1R1dLZGlCMUdEQld4TGsyYm05aVF2YWVNUkZsUmorT0UrcW5jVUlDR0lD?=
 =?utf-8?B?NkRPSVpxeTdKWEY1TGVBdWd2aVNwVU9qbmU1bXE2d2hTeHJVZVN1bDFGZmZs?=
 =?utf-8?B?TE9OOVZDcGVoSFFpc2w2aVJoSUppN0VOZ3hyZ2JLWEo2b3JLWklGVk16cTNw?=
 =?utf-8?B?YnV1YWV6QkJuVmRPK1pGZXhoMEdRSituaTJMUmxOUGt1cktoWUNsUkRSNWsx?=
 =?utf-8?B?YWFZZWgvOWMxa1lCWkl5cVg3cXVpM21pemJacTVDWmRBTjNlT05IQjl0anYr?=
 =?utf-8?B?cHZ4Q1FOZndtVDlDYXdYM1lKVnlQaFdlSnk3MTJnOU5xR1RWS0RHNlE5c3lw?=
 =?utf-8?B?Y2h4eStZZ21RbjFCeXlkT254OGhYbFBFS3UrWmdyWXZoRVUwY0RDMkRFeFpx?=
 =?utf-8?B?VFV6NWZ3c0diTGN6VHZIdXVpRGlhRDhUczdFWThBa0hZd0tRSW5WUEh4MFFv?=
 =?utf-8?B?dyttb0RsekhqKzd5VFoxbjN2TERmbENsc2hObTZvcmdWVEJaVzFpNzBSSVpD?=
 =?utf-8?Q?IIQd1ebKR463dHP0XkBSX6YE7h0UCc0XCG5xV47c/pyS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80adc26f-dc1e-470e-f96b-08d9d731fe59
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2022 07:46:36.9376
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dkhhrQrdqav+fDpQwotKNdvRnzThzxz+XPzsTSkKOv0Wmi/rCeDfq7gS91DC4jrqChjsUgxm3OSAzfm96JhyHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3389
Return-Path: anuj.mittal@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <12D14394E0089C44AA6736A05726048D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDIyLTAxLTA1IGF0IDIzOjE4ICswODAwLCBBbnVqIE1pdHRhbCB3cm90ZToNCj4g
QW51aiBNaXR0YWwgKDEpOg0KPiDCoCBwb2t5LmNvbmY6IGFkZCBmZWRvcmEgMzQgdG8gc3VwcG9y
dGVkIGRpc3Ryb3MNCj4gDQo+IFRlb2ggSmF5IFNoZW4gKDIpOg0KPiDCoCBsaW51eC15b2N0by81
LjQ6IHVwZGF0ZSBnZW5lcmljeDg2KiBtYWNoaW5lcyB0byB2NS40LjE1OA0KPiDCoCBsaW51eC15
b2N0by81LjEwOiB1cGRhdGUgZ2VuZXJpY3g4NiogbWFjaGluZXMgdG8gdjUuMTAuODINCg0KUGxl
YXNlIG1lcmdlIHRoZXNlIGNoYW5nZXMuDQoNClRoYW5rcywNCg0KQW51ag0KDQo+IA0KPiDCoG1l
dGEtcG9reS9jb25mL2Rpc3Ryby9wb2t5LmNvbmbCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArDQo+IMKgLi4uL3JlY2lwZXMta2VybmVsL2xp
bnV4L2xpbnV4LXlvY3RvXzUuMTAuYmJhcHBlbmTCoMKgwqDCoMKgwqDCoCB8IDggKysrKy0tDQo+
IC0tDQo+IMKgLi4uL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzUuNC5iYmFwcGVu
ZMKgwqDCoMKgwqDCoMKgwqAgfCA4ICsrKystLQ0KPiAtLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gDQo+IA0KPiANCj4gDQoNCg==
