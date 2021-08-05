Received: from EUR03-VE1-obe.outbound.protection.outlook.com (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.139])
 by mx.groups.io with SMTP id smtpd.web11.8375.1628168942034211949
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 06:09:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@se.com header.s=selector2 header.b=KYLKpJkW;
 spf=pass (domain: se.com, ip: 40.107.5.139, mailfrom: milan.stevanovic@se.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XN20lzDqPjl3gqPZRID6XN+OdArDhnEZwfWhovKmoK0E1NkOXjcV9pzqrXBTn/6XlBW3tF+Yq7+3TIq09Y1fdsEZ2Owfpk/kFu1VJw2kTfcX5lkVIiQ/TDDVaBm4CY43x4CluFlt+pMaKUGWnk4Tt7oWBArihzTtTGchL7qHStmCscfYQfwCKPBong83svJbkd/zyIeG0vfMHx54lSbfApfHx6vlmKns71vghC4D+uZVryITwU5QF8LgpigHksrDMYCCxQ+FKTEmiOqs5vf5a6ej6oZGuYjaGiVWYf9mmXiQ7HzfhmkTCqrNwG+VjENgrI9hM2j09au3IQKGKuYgXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8icLB8sL1ty+lZDzjynX6B9CoUMXB+Rg5JDfziqPUXk=;
 b=e/S1MEEAzqZJxUyLk2VNKKlw0pJz3q9ACsM/TNKt4kpHz8zg0h3sPFpE8v3Tnr3RVPqO2mTbCQoehUM/2urKTlcO//7bfPIYiKCiC+KiUJMsKP5zSwODMMbTPk8qF19QjlfYkpPt8H991paj8ttwopgFcQRlcwmRB59926EThWSiNdB5+FpjE915Js+gVz/bjvt3hsRi9clBJ5EQCH/J7pxldjdwp5ByAWL2LSZ6NFYvSk/MxZkleQgPXxKZqWi7DWvDblTPOIb5QdC724nh0MobRo4C3WiNITQLfD/6jPWI4V/lLn9xHcyoEUmD2P1rMA3rG6JDKK0VdvsN9Pstlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=se.com; dmarc=pass action=none header.from=se.com; dkim=pass
 header.d=se.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=se.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8icLB8sL1ty+lZDzjynX6B9CoUMXB+Rg5JDfziqPUXk=;
 b=KYLKpJkWHOg7YShZyuX0NNxiuCPB2itnVWWmrajzeQcVryBBBcnQ1nm0dGd1nz+kD+MsFRL88q8zxLowy+geayp+l24NV7gSVZvfLPd5Y7b5yoV9AzAI7iRaNPF0W33iLA2mDzlFCGnrmNtwFzYHgiMHetwLmFjV93ON04xtfyLo8pjvW34W7SVmQ/VW1kreI+Y/AYsqlpHCBFzC1CDUsVopPg3uP/nLeMR6UACJRwo5znVp2t9DMbMC3Fz6/+quWTOnOl3egi8RbKihH9GqS9Tk3WTo2aom7dsPakrHUAOru+Izl1MoUU6YlBZgyysRhjyL1spZ0NtLNSj4LYPzvA==
Received: from AM0PR04MB4804.eurprd04.prod.outlook.com (2603:10a6:208:c8::29)
 by AM0PR04MB6356.eurprd04.prod.outlook.com (2603:10a6:208:17a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.25; Thu, 5 Aug
 2021 13:08:58 +0000
Received: from AM0PR04MB4804.eurprd04.prod.outlook.com
 ([fe80::fd72:c112:d837:15c3]) by AM0PR04MB4804.eurprd04.prod.outlook.com
 ([fe80::fd72:c112:d837:15c3%4]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 13:08:58 +0000
From: "Milan STEVANOVIC" <milan.stevanovic@se.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Backport to dunfell question
Thread-Topic: Backport to dunfell question
Thread-Index: AdeJ+wxzo6vldZaOSJuB4VOuf6HDhA==
Date: Thu, 5 Aug 2021 13:08:58 +0000
Message-ID: 
 <AM0PR04MB4804A80F5E94384602603C60E2F29@AM0PR04MB4804.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_23f93e5f-d3c2-49a7-ba94-15405423c204_Enabled=true;
 MSIP_Label_23f93e5f-d3c2-49a7-ba94-15405423c204_SetDate=2021-08-05T13:08:57Z;
 MSIP_Label_23f93e5f-d3c2-49a7-ba94-15405423c204_Method=Standard;
 MSIP_Label_23f93e5f-d3c2-49a7-ba94-15405423c204_Name=SE Internal;
 MSIP_Label_23f93e5f-d3c2-49a7-ba94-15405423c204_SiteId=6e51e1ad-c54b-4b39-b598-0ffe9ae68fef;
 MSIP_Label_23f93e5f-d3c2-49a7-ba94-15405423c204_ActionId=14f44c61-04cc-4513-87d5-7ad6108073a6;
 MSIP_Label_23f93e5f-d3c2-49a7-ba94-15405423c204_ContentBits=2
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=se.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ff68c6f-7ba5-477c-818d-08d958122fd4
x-ms-traffictypediagnostic: AM0PR04MB6356:
x-microsoft-antispam-prvs: 
 <AM0PR04MB6356D1E145D5DBA7EB501186E2F29@AM0PR04MB6356.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wUN5nXr5KruHo+iRo2QoHYT86YKFvmV/umei16dpsJrUUzXZMROkc1C3tquRUX9BzDWZxOqosoKv72ovSJRoeDlz4RWq7Zq1PsAcHzAw94rKGibCgacY7s3HOiF+tPeHT7Z4KqL+hEh0AALK0NDyQGpjKy+V/8mY8lZk/q/x6uC0Lv5aLBhkP9cbj3sbbL4ZzQRjV/fCBvlz+8SRZ6tObKz9QdcH7zVZGa2+oJ9OpczKEaxzC3Gka1wgJahH8cEbKJjd09voUnxgt5+skuXlvmUD5U3VLSJFLJsNKrrZbqFuhe0nqzHtky/Z75ty7VB/ivUPsSHEnG7MtJkYVaTIaM+FawTVYTBRxv8aL4j+BrlK+1yvVPmhMGgIBGykIiJp6O3FruG2pVXzqJUQux2SiwoXSu+ApngKm+eei5xGTiHN7b79KD3ONckkIMRhw/GPTbA8hI1PWxD9x/X69yN7aNwjQkuCTJ6UHcaD7GzeGO0hkmbtBvcYdFbsYHIJNb4Q4rODAWe/+Qq0zM6Cglea4UF4Id/w41Uxa4d8f6nS1Y7aiq6x/4ZOUIkmKOosau+vvTNbU/xNVdqxQQdv28/z00+6iNsR7M/q2WTkEJeI/feUgWePtVcQOLEYoLHvZH2XEe1uLGET14sT9+alEaKZNLxjL86n47ShgfNDrHaTZMxpZcfL5fd4HtEHoxh9sZLBfGyeMa0mXUZwVOuIOOItEn6diOvAIqCwd6ZhviyDLJ/1L1vjzoYZArS2nnWmT2rNa7ey6o3lfpS7MsFPWCufpLMcO1Mb4zB2dQ0fVkV5hA15S+cNQS+sJyItjCsSJ2OFtvrfMYiYRP4EHy0A8yiwjw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4804.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(376002)(39860400002)(346002)(366004)(38100700002)(122000001)(6916009)(33656002)(8676002)(55016002)(19627405001)(478600001)(66946007)(2906002)(5660300002)(166002)(7696005)(66476007)(66556008)(64756008)(66446008)(26005)(71200400001)(8936002)(9686003)(76116006)(52536014)(4744005)(55236004)(86362001)(38070700005)(6506007)(3480700007)(186003)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?MvsJrP5Od0mwZ7sRfbd6VnxCFjGu3961durBC1ndJjZJClcpWgF6SkKPqCLt?=
 =?us-ascii?Q?u10BtS+CU1XRXed9sD/0BNYCWzXSu29vBf5FidlLuTfVWfJURKkHeIP/++Qw?=
 =?us-ascii?Q?Y/HW6kxbRZ5b997bA0EHIS9TqkA/rTAy74Mb3c0BQK3QV6sftNpkOitVepGx?=
 =?us-ascii?Q?kvo9HawjHbY2xtVmVeRVwJORSdhxdeew6xkyyFtsDyutotwY3GYeGB7hpLBG?=
 =?us-ascii?Q?yFZOq+1Xfvr9oy9fD5gc+4XjlboFuUtRTP1ng+7vPofBAdLHKkgmr0+nCubr?=
 =?us-ascii?Q?7rDdnBbzzb/Ds+UNXvclrCn7HQC5GSMNmokIMv2AB7xRHGkxnTVk1EXhky1X?=
 =?us-ascii?Q?gKkmevAD+o7vbqF1UF9clrZy67hCB4P7At9cpgbaimHBt/OdF9NVSK1CNCGp?=
 =?us-ascii?Q?oAI4lGVoE26E4/9lucslxBmRf0NahZiT+MVRhLA4VYCNu7pq8NG1s71Azy+3?=
 =?us-ascii?Q?3jpzA+B6q1V7lFmBcEJEBWrB1ANf2mydpXge2EjT/1RYLj/tXaeYPhhPNZuh?=
 =?us-ascii?Q?0ztIeLoa7Jr6JcoRsh4uUcgZrUg/dwfenmkUrw9t6sSSwBtlmLhzZmSaJSr+?=
 =?us-ascii?Q?1KjZTFUzM9p4LLFhTNRZ1EFpsI4+2A9oMdhXENTAZ+xxwxKKVhQvt+RoEgOr?=
 =?us-ascii?Q?DMt9GzEO/adQPw1EG9HezH4t10ouJSt5H07PGR750ZBQlkBIGj9RLIL6z7Z9?=
 =?us-ascii?Q?e2x1x02LdaWoJbzJV+TL31zQDllD3xneOA8snIqK67WCPpu9wX39oqHoFtLf?=
 =?us-ascii?Q?CEO76TAXBX6xmr7AKKKAJAx2VPdG7PGJEBIUaJD/CgVSmkYo/knMGjtuSQtm?=
 =?us-ascii?Q?/m/GS49vNVEz+vVQm18SUypbdem+pJ4NB8hm3GHjgZYR3ay5CmD24ZK0M2Bh?=
 =?us-ascii?Q?2FVh1lovq/K/t8aEKBoTpPpvghBjLtkCIaZHBKTH7cAtw8GG7r3qpiFgUFhp?=
 =?us-ascii?Q?RwZFitwOHimoVofMcOrGQJ5IXcoAjcB8CSKkjCrRxToagCQSO4j7WfbZRRWL?=
 =?us-ascii?Q?3h3eh0+fwhBBvBf6trkyUqNc1dbTqcWsEQZA7zzS962t//JpKcw3RjY5NcZV?=
 =?us-ascii?Q?02aANYLMXDGwvsmvaYNMmDEMVaYWNHbWf4rjtzI5qI2PmcbKWvahh8qV1ik+?=
 =?us-ascii?Q?F/VUeDPPGFRxFgTgHZQouKESIsKEjDF/9oSE1C+8UekzMzPZuixZl2ZX73D/?=
 =?us-ascii?Q?dMBDNCJAmdNVmYzXEJob7K33hgGBjA3tp9saBa5dx4irauYmJzH0oqVWebbo?=
 =?us-ascii?Q?mLCpC6Gevhqn7+LCPGYGHsDqfiGaOeonfOwxwgCttfEIrOpOmaLSJkeTzntv?=
 =?us-ascii?Q?j9hJAavm6T7lrgW47jMJvUy+?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: se.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4804.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff68c6f-7ba5-477c-818d-08d958122fd4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 13:08:58.3468
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e51e1ad-c54b-4b39-b598-0ffe9ae68fef
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d108aAvQBWe0hdZx/xow9yBm4ByZbHids+sVnC2+lvcWnFTXFIMpbVCePOrTzsOAEpzkGTO/9xN9rvAvT0vemg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6356
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AM0PR04MB4804A80F5E94384602603C60E2F29AM0PR04MB4804eurp_"

--_000_AM0PR04MB4804A80F5E94384602603C60E2F29AM0PR04MB4804eurp_
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I hope this isn't inappropriate for the list Current poky dunfell LTS is u=
sing systemd stable version 244.5.

In same time, master is on 249.1 and hardknott on 247.6

Is there a some plan to backport one of these two versions=C2=A0 of system=
d to dunfell ?

We can create patch for backport to dunfell if this kind of version change=
 is acceptable by dunfell LTS rules.

Thanks a lot

Milan

--_000_AM0PR04MB4804A80F5E94384602603C60E2F29AM0PR04MB4804eurp_
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Hi all,</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">I hope this isn't inappropr=
iate for the list Current poky dunfell LTS is using systemd stable version =
244.5.</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">In same time, master is on =
249.1 and hardknott on 247.6</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Is there a some plan to bac=
kport one of these two versions&nbsp; of systemd to dunfell ?</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">We can create patch for bac=
kport to dunfell if this kind of version change is acceptable by dunfell LT=
S rules.</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Thanks a lot</span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Milan</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
</div>

--_000_AM0PR04MB4804A80F5E94384602603C60E2F29AM0PR04MB4804eurp_--
