Return-Path: <yogesh.tyagi@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A1CCFA05
	for <webhook@archiver.kernel.org>; Thu,  6 Nov 2025 16:04:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.891.1762445087227351969
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Nov 2025 08:04:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=iIMB0YKC;
 spf=pass (domain: intel.com, ip: 192.198.163.8, mailfrom: yogesh.tyagi@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1762445087; x=1793981087;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=FeA2IP8EuYdn4/7oXYvwdJAFtyhLUoxknPTt4jfMdIk=;
  b=iIMB0YKChqs/vceOFcW4nk7BZ5gPcizcC1C0olG/NOnW4lqLqfFZhUb3
   jsK6t90L6EkKflq3GqhZe8hqOPakNKqBUyQ4Ib5F+lNZI+Q2EYeRd2LYA
   Zoytcd1j6v5FOYaQH3hpzn5L5Qtn85yMjQ5bZBbCsH9BZxEO489+/JqgJ
   9ZMpG7b5tGIRpiPLjZb/yvuVE3oYEHjb+FJK3e63kVIyUjuSerwyZxkwJ
   Mzz/0h9I1YXrlnhuKDR49InlFABhFkCp8WsJ0KjoWHU5LCcyulmRQ7PeK
   8zWg2d42h8ECr866SRXybTJVXcFe3p1BgrDgahbPHemFXahSDEoO8nW91
   A==;
X-CSE-ConnectionGUID: J9EjyMMtQQGGTgdMupktGQ==
X-CSE-MsgGUID: cVTmQqt4T56erwxqn+Vyqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="82215326"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; 
   d="scan'208";a="82215326"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2025 08:04:45 -0800
X-CSE-ConnectionGUID: +07wozoYTBiZ30fbqlF/tg==
X-CSE-MsgGUID: iaw0YvcfR9mQPZatjSkFVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; 
   d="scan'208";a="192962799"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Nov 2025 08:04:46 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 08:04:44 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 08:04:44 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 08:04:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qSvlRXqAbE4GhURNY/b1kKmuX+T1I0RP02YEsiY9oHLxP60GUu6C4hXGSlwX6FQghahaaUWk+wuJtUMKrgZJruMsSNkIsfdtFckYuqNufCnMhjGq6DlPf4/6kzirdK3O1PDyqbgJyaeuR9ciM4Jm+YhXcQIQG4ODEOm18MMIMHZ26RAsf+EwdtvMvrPWb96rIv/7EB4E+Hild0rrZWwKY9q4aL7yPRGMe0S+2I0hjnnxWijVDhwh++o1j79LB7tcrclUzA4BHMbQBlVOI97wedYSJ/uCRoZ9OaU8qWq9jYDVh7f3JVQl03NY4b4RDTn0QbGyw7hwHZv3vFwg4Ypyrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FeA2IP8EuYdn4/7oXYvwdJAFtyhLUoxknPTt4jfMdIk=;
 b=gHQgZbZgUJtgwv/0o+ofPHGHpPBWEmqPY9r/QU7/S1i+Kqug8eKRUQNyjdEBQqsm35IiYBqdcx9M3HWXKIs2jKZI9VlW2fFih2VlZXF+0VGFazXyeM6uiYFvtIRjIWmqFs6P5p4YhRIcJ/4Xh52AnjuD4ZY6jwfpWCL5CwwrRouol4+tAXwzUdRqtEzgAE/EVBI+w2xggdPvlzUV2NfNfU2OCpmPNFDIXl/ce+cAbH2Oazey1p+WDkrhyelnqodyqXO7gHyRff0O57EVjT8vXZ2xdLMqy1uKfmU47q/prqMX/+XPOcnk4W4nK/zKVTWhRnJA8pD78PuAraUo3BJFog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8987.namprd11.prod.outlook.com (2603:10b6:208:574::18)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 16:04:42 +0000
Received: from IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::c011:ff94:944e:f96e]) by IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::c011:ff94:944e:f96e%6]) with mapi id 15.20.9298.006; Thu, 6 Nov 2025
 16:04:42 +0000
From: "Tyagi, Yogesh" <yogesh.tyagi@intel.com>
To: "davepregan@gmail.com" <davepregan@gmail.com>
CC: "peter.marko@siemens.com" <peter.marko@siemens.com>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] Problem building poky
Thread-Topic: [poky] Problem building poky
Thread-Index: AQHcTw8NHH+T+iJC0Uevyi9a4RARmrTlha0AgABJ4rA=
Date: Thu, 6 Nov 2025 16:04:41 +0000
Message-ID: <IA3PR11MB8987CD1BE4FBDEE6FD120D068CC2A@IA3PR11MB8987.namprd11.prod.outlook.com>
References: <CAHzZjuM04xDPTVo2u4p4wDv+HEAzGSd4mp0gNSoLU_QrO6AYfw@mail.gmail.com>
 <AS1PR10MB56976B057310779DF98EA661FDC2A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB56976B057310779DF98EA661FDC2A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=f536e330-c05f-4a22-b725-d1dff5be478e;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-11-06T11:34:26Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8987:EE_|SA2PR11MB4988:EE_
x-ms-office365-filtering-correlation-id: 56c7d7dc-7a63-488f-2543-08de1d4e3237
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|7053199007;
x-microsoft-antispam-message-info: =?utf-8?B?ZlB0VlpsTjdLbDJVMEE1cnM0UUVydktpWDlSUWlXOGdDQm5lNWw0bWVTMGc5?=
 =?utf-8?B?ZjNNMElLNDU3VmxTWVRBVk9FUUlqTVoxQXJ4Qk1kSWVzN2k3LzJDcGdKalli?=
 =?utf-8?B?VU1xMCs4dEQwcVQ4UE0xbS9iUHBrN1ppcFgrdm5lTUc2bWFVS09hUFJBU0J6?=
 =?utf-8?B?NWZORGp5OU40YTE4WjRwZjZvRGdpTVNTRVgzWFhJRDhva2xUcE1kV2FLRE8w?=
 =?utf-8?B?SUMzckgwa0hDV2ViMmJWZzFvMDlQZXRNZlFrV1lQRXlzRWJsaVpZQ0pCY3Yv?=
 =?utf-8?B?dS9rZzYrdm9GaTdpNjF6NTZ3dTBzT3JWMVF3SjlOM3ZPRHdQWUVqT1dka2I4?=
 =?utf-8?B?YWJQVmsxdXRQWUZKNVBHWjRpYmtrK3B0TzczYnJMS0d4S09uZVE1dXNCWVdH?=
 =?utf-8?B?azNTOUZVMUVEdE4zdlhwL0FyRzczQlpNcnJNSFlQZHJBVnZpeHBHck9Ib3dp?=
 =?utf-8?B?REtubDJMWUlRcGExbGY2c21WdTVHaHhCK05qb0Q3cUExTG5YWFlJSjh1YXRH?=
 =?utf-8?B?bDc5VWZZcGQweHRqV2NhSDZaNE1ScWJRMkY2Tis1Wjc0L0VoNEU4Z2lXRHpG?=
 =?utf-8?B?Y0JHWk5pNWNTM24yZGhlMXVPL3lvTW9SbUlHYmhZa2tCZ3dMUEx3NFp0Mk9Y?=
 =?utf-8?B?TDR1R0V5THp5aDR1a3NUbHZlRmlBWGJUL0xGSlNPSjVIbDVlM3dYbzdYclND?=
 =?utf-8?B?c3VYMVdxY0krY3ZkUWdaa3d2azRqMHkxUzRmNEpkRzFmMCtmaHZJaWtjdm5j?=
 =?utf-8?B?ME5rL2xMb2ZJVU00T3RQUXdUMjBUZzhlVzJSeDNKb0toaklTd0JTVFIyWXRW?=
 =?utf-8?B?TWxjNk1QWi9zaEh1T0k5WG1mbDRSVzdveWpDaG9McHZpVUcyKzJjZWJtYXhs?=
 =?utf-8?B?Ty94UittZFUzbzQvTTZVNDZoOGoxY3E1dmNMWnd2REdDV3dta1JxWm1TZWNX?=
 =?utf-8?B?VjNzMll2c3U0UXhmNGNIdlp6ancvWmZiOWc3bVdkODVSQzUvYms2TFRCRUxK?=
 =?utf-8?B?TXhvUjNLSm0xZmxrcFVUcVB1RzNzTk9zbEtTbzluWjAwUkN2NEgwcURwNWVh?=
 =?utf-8?B?VUFWM1ZQcUFlTm85QlFOdkV4NUxDNE5adEhudWl4N0dXMW1vWEM1QllpdUov?=
 =?utf-8?B?MWhGbWkyd015K0p0cVhQUUMwQ0pteFdGaFB4VmNBcllWekdGU0F0eHNPdXAy?=
 =?utf-8?B?SW9zQ1g5ZE9TMEYzRGNSb2VSZkxFQURSQWxIVFA3SVlxQTlsL2JqUW1jYjZr?=
 =?utf-8?B?UnVEWnFOdU1qTFZHTDNIalc5R3dmcmdQbDZuRVJxdkQ3UG95OWZSU0J6TU5h?=
 =?utf-8?B?bGxLek93Ly9ZU2VGVGJnWkJvWFZGaWxrakNJM2cydUlKYXUvVXpCQkNUNksz?=
 =?utf-8?B?b092S2dYZmJ5WlRHckRpUjl3NVF1azF0ek9xRTNyYWlTRk9XWnRRR3JRV1dM?=
 =?utf-8?B?anVBZDRTUG4xcUFycmpzY095N1Z2ZVFsaldMb3dXbkZkMUViRlpNTWJBekF6?=
 =?utf-8?B?SGxodU1YVGUwclFGSTZJVGJpUmVYSnBNZFcvZ3JORzdGRyt2OWpiT2JPdHIv?=
 =?utf-8?B?WENvOFhSQVYvUDlBNWpPWVVFMGFrSWJGV3lVUEtYK090OU1xaVpybGdJbnBW?=
 =?utf-8?B?ZHZOcFZDZVdIVDgwZEpzcHYyNFlyN1JrWW4xUTNGL0RWR01ENnpNWmVhSzgr?=
 =?utf-8?B?MEdFWE4rMVdQblNVcXpoMVZhYzN4eUNjTVJmTldWTTcvVVJvdHVvNGNrTEJv?=
 =?utf-8?B?aExxVlI3UHBZUHBWdXRNWkZHelVXTVBwaTNJWnJMdGhsZDdYbnZyempOQ1dh?=
 =?utf-8?B?eUtlOFJmY1BGRzVCS2l1aVVBUlZmZWlEdW9qMWk0aktrOWVpWlg5SHlIcTdX?=
 =?utf-8?B?ZFFKd0x0NlRrZWFoaEZWWmZTS2NIWGVicmoxa1lmMCsycE4yam8rejBIeFdz?=
 =?utf-8?B?L0wwclpaajZiK1hjb3JiQmIxZDhsQUkwMXFwQnhIVktWakFmK2dBZmpzNWVw?=
 =?utf-8?B?M25WZjdMYzZZbFQ2Zk1BcHFJYWhLSWE2eGVXVGJyMXNQR1hhMW0waExpOHRo?=
 =?utf-8?Q?VohITI?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA3PR11MB8987.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGJLdzNvZklwUzJuMHlnVFAyMDNCZUlvZ2VpdGRqN2lubXc3NldTREFIL1RW?=
 =?utf-8?B?SDA1d2tydWt3cDJvem5pWFVXZFBIRGIxUDJsdFM3ZlNaY1ZTcmljVGt0cVBw?=
 =?utf-8?B?TnpxZ25VSHo2ckx2MkVmMHpDWDlFWWdDNEN2QnRZMHlwMkpVSHhzc1FTRVBx?=
 =?utf-8?B?Nkc0WERFQm5zL09SUTBwNVhMK1FTTlcwRGlpcldFTWdNMTBHc0JTQjY2QS81?=
 =?utf-8?B?YmUvWTFXT09KdnJGcXVvSG9WWXJaMnBKQVhIejdLV1ozc2JhWTB4NVIydXpR?=
 =?utf-8?B?dzZpU1Q1a0JkWXlTNGpCc09NWlNHRldqOSswS0Z0dGVxM1BnVmQ5UjY3Mllr?=
 =?utf-8?B?KzJlR2xhT2dyY05DQi9pSTN2UllVT0VpYVhnSm14c2pGdm1TQTlGUm56Vlo1?=
 =?utf-8?B?V3JFZ3hBdk44cW1BdUlxNE5TTGRCRElxTXM1ZjJKaVJFM3Z6MXp0WWNuczZj?=
 =?utf-8?B?L0NZRWdweGRCZzRjUkV2WGlvNXVUc0VqbXlXdFJ5VGZwaGljUS8yV1pVWFF6?=
 =?utf-8?B?MnRtWk9OamMzeUMrVTFjMEM5UmRyV0xDdkg5WHMxcDNRS1ZiYmZYblNjREo1?=
 =?utf-8?B?YUpic0tvVGdxRW5PanpDVGQ2aURoQ25PekY2VFZVN1luM1B3aGxWL1QvcHBa?=
 =?utf-8?B?bVdKVGh4SThrWHJhZklGTUxvcFVXNzFZMm9SRGJweWlwVDVZNVJ6b0NjbXpC?=
 =?utf-8?B?cHFNa1Z4eks3dnRyUUtJajVMSVF5WGxobVZjUCtzRWF4RHhORWtKaTRWNkdZ?=
 =?utf-8?B?NlFlQ2twR3JLMzU4WEhUc0NJWXJ5NnNSWFExOEZYYTBmRWFvWlZHYzZ2b0E4?=
 =?utf-8?B?U2c0aklJVGhuaVJMZE8vUlJBbktPNWVaT0FSL0M3Q0cwb3krM0RubXNtY2hq?=
 =?utf-8?B?TFRXdmhhN1YzREZXTm9EN3BaZ2hqWHpscWR6eWZxdVZLZW1GSXA3a2RpVGgy?=
 =?utf-8?B?a1lKQzl2UFJFWWJrWW8rOXR1em43eUgxalZOUmo2UFZxOWFQZDdoN1ZTd2xU?=
 =?utf-8?B?YnMzaFpHU0hZcnRBejUveXRIQWZtNktwOUpzZkp1SXc0N2xyQStjdWIwL2Iw?=
 =?utf-8?B?TDVocE11Y1dSNlZXWDJGc2xzZkRTZ25oZmx5S0NsZ0I2Ymhlc0tTRWZPL1Ri?=
 =?utf-8?B?UzE2dzhhRVkrYkFpa0dENWNiTHpFUkdQQVFxbDFKcGhFODhXbktpRVlkUWJx?=
 =?utf-8?B?ejY0YmpyaFFXeHM5NzZKcUdyeGcveGtacEcxMkYrZDgwd1RybjdqZ0lDUzBv?=
 =?utf-8?B?WkRrT1dpMWUwdlBKMXdrRkhrNVpSSnBjbGR1d0orTVJrSjZPeFNFbW43b0JN?=
 =?utf-8?B?UldrV0xKelArODJXTHFOeHhnaExZVSs1YktIdWJ4eVZaUU1DdSsyb3ZUeEQ4?=
 =?utf-8?B?Y21TUzJrdWlqUmlra2ZRd2V1VjVzTkpqT2hCVkN0Wkw2STNSeW0zbTRlRmsw?=
 =?utf-8?B?dVROY05SbWhSckU1SzlSZERhbFdhcEo4UWhiOXdGaGErK291UmdWMTBlcU0w?=
 =?utf-8?B?V3c0L1NucDRDYk5JRHp2eU1uNkdJUXUwWkYxRDk5L3pYM2RleWpybW9WU2Y4?=
 =?utf-8?B?UDRiTU1BemVzZ1h3VWFaVzA5WWw0S1VtdVlEb3k3dmwwZEVnLzRvLzlGL2Y4?=
 =?utf-8?B?NE9nb0JYTk5aVE1xVzYyWGJmUGt3SWZLU2pEN3F1c0phVVdwcWdjbzlQUytZ?=
 =?utf-8?B?aExmRXRjSlprZVBoeWRkSHhYS0F1NnY5dWlRaGlzdTBVNXVObWp6QmdabnRW?=
 =?utf-8?B?MzFGYzJjNjAybEJNamNlSVdqMXAxSW5YNXJOSDFjMzF1OUswQTgyblMzcGtY?=
 =?utf-8?B?YWtucThQUEp6ZFROeGw1YnNQTjZ4VDZpVzB6U1JBZldCdmU2djRCREsxNytN?=
 =?utf-8?B?bks3Y0VVYzZiMW9kaDNnVmpJKzdJQ255Rnh4Zng2WEEyRmI2YkdLcUM5YVpV?=
 =?utf-8?B?WlBRaGxuZ2FSNVFuY2QzcFdBTnpuMTRmZWp3bEJ2QzdvSFhLYmRHOVk5bFp4?=
 =?utf-8?B?TWpldEZMSHNWZHYzUytHTG42UFJlQXdzNjExOXhhM0hSUWhkTUJXZWZ1QVRK?=
 =?utf-8?B?aGsrTFlRdVpJRVQrVUFsYi9rdmpJMisrQmJqeXZBZTg5TU1ReU1lSHV5dG9X?=
 =?utf-8?Q?2ZL2bYWxgiqkbKwLVRlCQAfj5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56c7d7dc-7a63-488f-2543-08de1d4e3237
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 16:04:42.0046
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QeobObCmlE/FcGUgJOcMj+f6cCPMoH57USID+jTDGG4mvzgDs4tIrkHRDqx1H0gqt+QRv+0r/YRFjpfpo+1n6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
X-OriginatorOrg: intel.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Nov 2025 16:04:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13781

QWxzbyB5b3UgY2FuIGxpbWl0IHRoZSBwYXJhbGxlbCBidWlsZHMgYXMgcGVyIHRoZSByZXNvdXJj
ZXMgYXZhaWxhYmxlIG9uIHlvdXIgc3lzdGVtIGUuZy4NCg0KQkJfTlVNQkVSX1RIUkVBRFMgPSAi
NCINClBBUkFMTEVMX01BS0UgPSAiLWogNCINCg0KVGhhbmtzLA0KWW9nZXNoDQoNCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogcG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
IDxwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZg0KPiBPZiBQZXRlciBNYXJr
byB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIg
NiwgMjAyNSA1OjA5IFBNDQo+IFRvOiBkYXZlcHJlZ2FuQGdtYWlsLmNvbTsgcG9reUBsaXN0cy55
b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbcG9reV0gUHJvYmxlbSBidWlsZGluZyBw
b2t5DQo+IA0KPiBNb3N0IHByb2JhYmx5IHlvdSBQQyBydW4gb3V0IG9mIG1lbW9yeSwgc29tZSBl
c3NlbnRpYWwgcHJvY2VzcyBnb3Qga2lsbGVkDQo+IGFuZCB5b3VyIG9iamVjdCBmaWxlcyBhcmUg
aW5jb21wbGV0ZS9jb3JydXB0ZWQuDQo+IEknZCBzdWdnZXN0IGxvb2tpbmcgYXQgeW91ciBDUFUg
Y291bnQgdnMgYXZhaWxhYmxlIFJBTSBhbmQgdHdlYWtpbmcgdGhlDQo+IGNvbmN1cnJlbmN5IHNl
dHRpbmdzLg0KPiBJJ2QgcmVjb21tZW5kIHRvIGhhdmUgYXQgbGVhc3QgMkdCIFJBTSBmb3IgZWFj
aCBhdmFpbGFibGUgQ1BVIHlvdSBnaXZlIHRvDQo+IHRoZSBidWlsZC4NCj4gDQo+IFRoZW4geW91
IHNob3VsZCBkZWxldGUgdGhlIGJ1aWxkIGRpcmVjdG9yeSAoYXMgaXQgY29udGFpbnMgY29ycnVw
dGVkIGZpbGVzKSBhbmQNCj4gcnVuIHRoZSBidWlsZCBhZ2Fpbi4NCj4gDQo+IFBldGVyDQo+IA0K
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogcG9reUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uDQo+ID4gQmVoYWxm
IE9mIERhdmlkIFJlZ2FuIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+ID4gU2VudDogVGh1
cnNkYXksIE5vdmVtYmVyIDYsIDIwMjUgMTI6MTgNCj4gPiBUbzogcG9reUBsaXN0cy55b2N0b3By
b2plY3Qub3JnDQo+ID4gU3ViamVjdDogW3Bva3ldIFByb2JsZW0gYnVpbGRpbmcgcG9reQ0KPiA+
DQo+ID4gSGkNCj4gPiBJIGFtIGNvbXBsZXRlbHkgbmV3IHRvIGxpbnV4IGFuZCBzbyB3aWxsIG1h
a2Ugcm9va2llIG1pc3Rha2VzLiBBcG9sb2dpZXMNCj4gZm9yIHRoYXQuDQo+ID4gSSBoYXZlIHNl
dCB1cCBteSBwYyBhcyBhIGR1YWwgYm9vdCBhbmQgYW0gcnVubmluZyB1YnVudXR1IDI0LjA0LjMu
DQo+ID4NCj4gPiBEdWUgdG8gbGltaXRlZCBoYXJkIGRpc2sgc2l6ZSBJIGhhdmUgY29ubmVjdGVk
IGFuIGV4dGVybmFsIGRyaXZlIHdoaWNoDQo+ID4gaGFzIGJlZW4gZm9ybWF0dGVkIGFzIGV4dDQg
YW5kIGhhdmUgaW5zdGFsbGVkIHBva3kgb24gaXQuDQo+ID4NCj4gPiBJIGhhdmUgZm9sbG93ZWQg
dGhlIFF1aWNrIEJ1aWxkIGluc3RydWN0aW9ucyBmb3IgcG9reSBvbiBzY2FydGhnYXANCj4gPiBi
cmFuY2ggdXNpbmcgYml0YmFrZSBjb3JlLWltYWdlLXNhdG8gdG8gYnVpbGQNCj4gPg0KPiA+IEFm
dGVyIGEgd2hpbGUgaXQgZXJyb3JzLiBIZXJlIGFyZSB0aGUgbGFzdCBmZXcgbGluZXMgb2YgdGhl
IGxvZy4gVGhlcmUNCj4gPiBhcmUgcXVpdGUgYSBmZXcgdW5kZWZpbmVkIHJlZmVyZW5jZXMgcmVw
b3J0ZWQuDQo+ID4NCj4gPg0KPiAvbWVkaWEvPG1lPi9saW51eF9leHRkc2svZHJfZXh0L3lvY3Rv
X2J1aWxkL3Bva3kvYnVpbGQvdG1wL2hvc3R0b29scy9sZDoNCj4gPg0KPiAvbWVkaWEvPG1lPi9s
aW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzYN
Cj4gNA0KPiA+IC0NCj4gPiBsaW51eC9weXRob24zLW5hdGl2ZS8zLjEyLjEyL2J1aWxkLy4uL1B5
dGhvbi0NCj4gPiAzLjEyLjEyL01vZHVsZXMvcHdkbW9kdWxlLmM6MTc1OigudGV4dCsweDRiMCk6
IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8NCj4gPiBgUHlFdmFsX1Jlc3RvcmVUaHJlYWQnDQo+ID4N
Cj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxk
L3RtcC9ob3N0dG9vbHMvbGQ6DQo+ID4NCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4
dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82DQo+IDQNCj4gPiAtDQo+ID4g
bGludXgvcHl0aG9uMy1uYXRpdmUvMy4xMi4xMi9idWlsZC8uLi9QeXRob24tDQo+ID4gMy4xMi4x
Mi9Nb2R1bGVzL3B3ZG1vZHVsZS5jOjE3NTooLnRleHQrMHg1NmEpOiB1bmRlZmluZWQgcmVmZXJl
bmNlIHRvDQo+ID4gYFB5RXZhbF9SZXN0b3JlVGhyZWFkJw0KPiA+DQo+IC9tZWRpYS88bWU+L2xp
bnV4X2V4dGRzay9kcl9leHQveW9jdG9fYnVpbGQvcG9reS9idWlsZC90bXAvaG9zdHRvb2xzL2xk
Og0KPiA+IE1vZHVsZXMvcHdkbW9kdWxlLm86IGluIGZ1bmN0aW9uIGBwd2RfZ2V0cHduYW1faW1w
bCc6DQo+ID4NCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9w
b2t5L2J1aWxkL3RtcC93b3JrL3g4Nl82DQo+IDQNCj4gPiAtDQo+ID4gbGludXgvcHl0aG9uMy1u
YXRpdmUvMy4xMi4xMi9idWlsZC8uLi9QeXRob24tDQo+ID4gMy4xMi4xMi9Nb2R1bGVzL3B3ZG1v
ZHVsZS5jOjIxOTooLnRleHQrMHg1Y2QpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvDQo+ID4gYFB5
VW5pY29kZV9FbmNvZGVGU0RlZmF1bHQnDQo+ID4NCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNr
L2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC9ob3N0dG9vbHMvbGQ6DQo+ID4NCj4g
L21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3Rt
cC93b3JrL3g4Nl82DQo+IDQNCj4gPiAtDQo+ID4gbGludXgvcHl0aG9uMy1uYXRpdmUvMy4xMi4x
Mi9idWlsZC8uLi9QeXRob24tDQo+ID4gMy4xMi4xMi9Nb2R1bGVzL3B3ZG1vZHVsZS5jOjIzMDoo
LnRleHQrMHg1ZjYpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvDQo+ID4gYFB5RXZhbF9TYXZlVGhy
ZWFkJw0KPiA+DQo+IC9tZWRpYS88bWU+L2xpbnV4X2V4dGRzay9kcl9leHQveW9jdG9fYnVpbGQv
cG9reS9idWlsZC90bXAvaG9zdHRvb2xzL2xkOg0KPiA+DQo+IC9tZWRpYS88bWU+L2xpbnV4X2V4
dGRzay9kcl9leHQveW9jdG9fYnVpbGQvcG9reS9idWlsZC90bXAvd29yay94ODZfNg0KPiA0DQo+
ID4gLQ0KPiA+IGxpbnV4L3B5dGhvbjMtbmF0aXZlLzMuMTIuMTIvYnVpbGQvLi4vUHl0aG9uLQ0K
PiA+IDMuMTIuMTIvTW9kdWxlcy9wd2Rtb2R1bGUuYzoyNTg6KC50ZXh0KzB4Njg3KTogdW5kZWZp
bmVkIHJlZmVyZW5jZSB0bw0KPiA+IGBQeUV2YWxfUmVzdG9yZVRocmVhZCcNCj4gPg0KPiAvbWVk
aWEvPG1lPi9saW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1aWxkL3Bva3kvYnVpbGQvdG1wL2hv
c3R0b29scy9sZDoNCj4gPiBNb2R1bGVzL3B3ZG1vZHVsZS5vOiBpbiBmdW5jdGlvbiBgcHdkX2dl
dHB3bmFtJzoNCj4gPg0KPiAvbWVkaWEvPG1lPi9saW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1
aWxkL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzYNCj4gNA0KPiA+IC0NCj4gPiBsaW51eC9weXRo
b24zLW5hdGl2ZS8zLjEyLjEyL2J1aWxkLy4uL1B5dGhvbi0NCj4gPiAzLjEyLjEyL01vZHVsZXMv
Y2xpbmljL3B3ZG1vZHVsZS5jLmg6NDM6KC50ZXh0KzB4NzFjKTogdW5kZWZpbmVkDQo+ID4gcmVm
ZXJlbmNlIHRvIGBfUHlBcmdfQmFkQXJndW1lbnQnDQo+ID4NCj4gL21lZGlhLzxtZT4vbGludXhf
ZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC9ob3N0dG9vbHMvbGQ6DQo+
ID4gTW9kdWxlcy9wd2Rtb2R1bGUubzogaW4gZnVuY3Rpb24gYHB3ZF9nZXRwd25hbV9pbXBsJzoN
Cj4gPg0KPiAvbWVkaWEvPG1lPi9saW51eF9leHRkc2svZHJfZXh0L3lvY3RvX2J1aWxkL3Bva3kv
YnVpbGQvdG1wL3dvcmsveDg2XzYNCj4gNA0KPiA+IC0NCj4gPiBsaW51eC9weXRob24zLW5hdGl2
ZS8zLjEyLjEyL2J1aWxkLy4uL1B5dGhvbi0NCj4gPiAzLjEyLjEyL01vZHVsZXMvcHdkbW9kdWxl
LmM6MjU4OigudGV4dCsweDc1MSk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8NCj4gPiBgUHlFdmFs
X1Jlc3RvcmVUaHJlYWQnDQo+ID4NCj4gL21lZGlhLzxtZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95
b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC9ob3N0dG9vbHMvbGQ6DQo+ID4NCj4gL21lZGlhLzxt
ZT4vbGludXhfZXh0ZHNrL2RyX2V4dC95b2N0b19idWlsZC9wb2t5L2J1aWxkL3RtcC93b3JrL3g4
Nl82DQo+IDQNCj4gPiAtDQo+ID4gbGludXgvcHl0aG9uMy1uYXRpdmUvMy4xMi4xMi9idWlsZC8u
Li9QeXRob24tDQo+ID4gMy4xMi4xMi9Nb2R1bGVzL3B3ZG1vZHVsZS5jOjI1ODooLnRleHQrMHg3
YTIpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvDQo+ID4gYFB5RXZhbF9SZXN0b3JlVGhyZWFkJw0K
PiA+IGNvbGxlY3QyOiBlcnJvcjogbGQgcmV0dXJuZWQgMSBleGl0IHN0YXR1cw0KPiA+IG1ha2U6
ICoqKiBbTWFrZWZpbGU6MTMxNjogUHJvZ3JhbXMvX2ZyZWV6ZV9tb2R1bGVdIEVycm9yIDENCj4g
PiBFUlJPUjogb2VfcnVubWFrZSBmYWlsZWQNCj4gPiBXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9t
IGEgc2hlbGwgY29tbWFuZC4NCj4gPg0KPiA+IEkgd291bGQgaGF2ZSBleHBlY3RlZCB0aGlzIHRv
IGJ1aWxkIHdpdGhvdXQgYW55IGVycm9ycyBhcyBJIGhhdmUgbm90DQo+ID4gbW9kaWZpZWQgYW55
dGhpbmcuIFBhcnQgd2F5IHRocm91Z2ggdGhlIGJ1aWxkIG15IHNlc3Npb24gYmVjYW1lDQo+ID4g
dW5yZXNwb25zaXZlIChtb3VzZSBub3QgbW92aW5nIC0gSSB3YXMgdXNpbmcgaXQgdG8ga2VlcCB0
aGUgdGVybWluYWwNCj4gPiBhbGl2ZSkgYW5kIHRoZSB0ZXJtaW5hbCBzdG9wcGVkIGFuZCByZXR1
cm5lZCBtZSB0byB0aGUgZGVza3RvcC4NCj4gPg0KPiA+IENvdWxkIHNvbWVib2R5IGFkdmlzZSBv
biBob3cgdGhpcyBjYW4gYmUgcmVzb2x2ZWQuDQo+ID4NCj4gPiBLaW5kIHJlZ2FyZHMNCj4gPiBE
YXZlIFJlZ2FuDQo=

