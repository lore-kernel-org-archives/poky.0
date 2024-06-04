Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF61C27C50
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 13:20:51 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.21200.1717507244241111134
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 06:20:44 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=6885081379=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4543fd0W005114;
	Tue, 4 Jun 2024 13:20:43 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3yfruxb0hk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Jun 2024 13:20:42 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lSHk+76BD/lCC1nxSyz8qFLxrL9I7VErc0hdfWy1cRl0AS9OiKR5+jboylusy/PEPBYhiGCsaFvi3k5iyMCrWSeD0VJh+OYos5rIdlJx5yrqTX4QqjfOK8gMjyEd0Jz+Cm0GIYmND2diIG90I1ltaCPo5PkIpeWbJOtqAeuIGq/FEQ0wytBUdq4wPbzyj+r6PygCGNTb3cDPNU3IvSJhbUJEbidiRI9R0Bnh+jJVj4H2hCAktwPgmygXgjOZb20R4RloPcjmJ6WGgssp7WVwcikhlu94/NkRJq/Hhncu5lE6Pvivw2vB8JpZLmw8jm8/Rxia5UQsl/QI+JW6bHkJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sMJdw9kZUJO5yty66gZG71N3u+WaO8N/pVpbpxIE+uI=;
 b=CUqDvulc0A5lDI4/mkghVH3hco+fIxuXFsSE3URkRxVtBwDN8D2A2J3BNI8yyyxsctUSLe065ikqzZoPHJtzhXM1copgE7bGpkdLdoEnJEgiAwV7lqFTAqn3q2HlniCu1EcGVyDkPfoljVje80JDvKvoS+wcgaZLMvjaPKy3bjdxDPfb47j9P32zt52yB0bLM6GUixN0n1mKl5lqrmYZlSHL2wYIrTuC8sNNWlF9NDutohXgecNizT+OsgTVIQG8kf9/iiyJzJtuQpJD3Rn/vRVVpyAc6Fkim2PrFueUInwAbBryXWcXz9BVUYO0nlW+V3v+iza8bH7+2u01fsTm1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Tue, 4 Jun
 2024 13:20:40 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%4]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 13:20:40 +0000
From: "Chen, Qi" <Qi.Chen@windriver.com>
To: "Enrique.Herrera@swisslog-healthcare.com"
	<Enrique.Herrera@swisslog-healthcare.com>,
        "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: RE: Host PC Image - MACHINE genericx86-64 - Unit Testing/TDD with
 Target Application using the Yocto SDK (krikstone)
Thread-Topic: Host PC Image - MACHINE genericx86-64 - Unit Testing/TDD with
 Target Application using the Yocto SDK (krikstone)
Thread-Index: AQHatnrEfInhVrzqt0Cci2VHqBTwxrG3lJmA
Date: Tue, 4 Jun 2024 13:20:40 +0000
Message-ID: 
 <CO6PR11MB5602101481B97B07999164CCEDF82@CO6PR11MB5602.namprd11.prod.outlook.com>
References: 
 <AS1P250MB06557FACA8CD7E1BFE0F9052BCF82@AS1P250MB0655.EURP250.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AS1P250MB06557FACA8CD7E1BFE0F9052BCF82@AS1P250MB0655.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_Enabled=True;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_SiteId=cb7220b2-13d6-4f28-a895-fe9733df80d1;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_SetDate=2024-06-04T12:59:21.867Z;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_Name=Internal;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_ContentBits=0;MSIP_Label_8fd32bf5-e138-4f6f-b31b-ef3c618f8048_Method=Standard;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5602:EE_|PH8PR11MB6611:EE_
x-ms-office365-filtering-correlation-id: 891e5716-5c22-4a6a-92f3-08dc84992134
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?2RyZ7Uj2hnwZDNQUOieTJF3wW5Lpl2G+9CTUxmBD9VjDcswWqJpbSkaE1orZ?=
 =?us-ascii?Q?etjLdTGeygoCQ5/O83k76jALMSSLzEpD7KVPA4gwgndiHqieN18hKB/WUpcu?=
 =?us-ascii?Q?duWUnodaWkB222wzx0hYKjXMjajo1f6uidVCHC8TfekWyUEAgu+wb6E79Ukk?=
 =?us-ascii?Q?Jipje+BZDuZGHm+HwHvvTs200GBzW/sT1T7SQLXpOF7hAvLLabe8153msKvF?=
 =?us-ascii?Q?aVckCnrZPrfB/m8zKwtkKdLU9BpYR9DaBhDePSp15k3u5JXaGwNmiYAbjDlX?=
 =?us-ascii?Q?NL/vDPcyvENq9C11sGm0TT6O5YZY18QUQYGJWxrDlfNYxwssBt8ppXxTDKUi?=
 =?us-ascii?Q?l94gU8+8pksFTuGHdL5RvGe2c6nQGy3L0Dd/18D54Zm3RXDfcuOF7ZW0gxQq?=
 =?us-ascii?Q?CY70ndZWx/5xhUZ1FT3IsPFYjtgpmB7m0+E+yuxTMnqlpmDExXmmwb5jE1B9?=
 =?us-ascii?Q?0l7GnmZVkYI6Pl8Zn0HCctW5MIjjH+FcvovCTDuHITgqzFW8MdcDrf72tc/D?=
 =?us-ascii?Q?hsS9iCf2NgdcMdImwGMJTEnHTgPCGGQ5/45dGnLbVNaA7pTLbnDcNPM2kUaY?=
 =?us-ascii?Q?OiZ2bctxrv+Q7/uoImlAklaaevHVY/NgnnRIdHDQlCx50kYvFb0TLxEWfxk8?=
 =?us-ascii?Q?N4RVa1P8mrttSW1jB/D0AyNQp97z2nb5v+zZl8nTNWxTp3OmsjZcNZTCQrIh?=
 =?us-ascii?Q?p6oFWU1yqtDLp2ybDUdx4Rs5dJSf+5oV6YhY6lf9EUOC0gWswmjqtF2/11No?=
 =?us-ascii?Q?4MaQhj8t0jiRjMUo/wtA7xWvNiqMIeImyUgSb//3S7dd/47OuNYGElDXfLZg?=
 =?us-ascii?Q?czEeJsCpIuQNAbVkoB2yTOGSb9LRQFrdFTSaV9u/1PF3pzvbD94ULlwKr37t?=
 =?us-ascii?Q?HMKo/uB5IMb98ki8VGFtMkmUHmg2ORaKFau6z2JdaGLSmFNumANx/+Cd1fL4?=
 =?us-ascii?Q?CLGGa56sZ+ZOgvV4tDolHR0QdBHa1YXNsiwvTjte4bVxT0gp7f6klxuiSTQD?=
 =?us-ascii?Q?E8sCPRyUtg3xydmBzJkQKmmLL1BEXnlGDT0VfRLEk80DyhkM4rZ84ypkFqgA?=
 =?us-ascii?Q?S6898aBnhOYhK3L5fY+bRWy7lTrR9ANxySVxK4wKh69ns818++jZKPdu4eYU?=
 =?us-ascii?Q?FP7/35J/gxvvnuzdK7zO5ASHtnQm0FOMXBdAeNsjgi0isY+Qci/BDpso8GQ6?=
 =?us-ascii?Q?wv229y6mK61DbAB10EHo7qiObAeuNUx7334cOZk8I27Vz5ozySsypSaSFcL6?=
 =?us-ascii?Q?k0xU1MrAixl5Ft2h8hiworyUTwshOn/kGIBCltM1ab+xMvL1V06Mvbv2OI3a?=
 =?us-ascii?Q?xT6vdXcuUTt74b703QZaRPD3?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?sN+lKTOzscuoVJJdXV94+hK1YBiQ9flvTr7EBU1azJc226nnljX4OX0T+kON?=
 =?us-ascii?Q?Y2iSaAcguhpLoB00gr+cxrwwhhPCGocW66WxUH7vlvMTIgeOHap3go3nrh9y?=
 =?us-ascii?Q?FKhxxJ9a9Yfk0ZtGfrkZA6Uh4Eb6vmgsjyzybpQ0CrQQvwO2zLtPn+oysyif?=
 =?us-ascii?Q?b0Ly1/ZxpOg96ihDtNPZOOl8mGWkoz7ITgazFFSPBYvv9pENrAJNUfOuJfzP?=
 =?us-ascii?Q?LywI755tjjRT6sI2NqTRrMRpi/0Yz8e87Xy4NiKrTBAkDwkwqtrCI46ZTLk7?=
 =?us-ascii?Q?U2eK/4ObvtvgpMGp8q6QFIF41ng+rIt2RDWAJMjLxyTlwnfGyUGTGFM18483?=
 =?us-ascii?Q?xZkuOKhWZnYqG9IixfaZ5s2Pq/zbMqaf0hkMJ/waueMAiRAJJjxISrc9te8i?=
 =?us-ascii?Q?SUgBVheeRwMzUwWhL0KMAz0fvw7J+pipbuTpkgxfRzDHgZl66q3Sm0rqdv/T?=
 =?us-ascii?Q?xdXu0SQksxY67b4I9a/pkALLL0ViWFfbr/QAw0s1Wf2s4CEjtgbpEZWNYkhg?=
 =?us-ascii?Q?KCd2SPQquYVFHPjgrGTzYz+wE417Uk6ujKjRnMl8BfQ2G9Q7ym/UNxJ5yTce?=
 =?us-ascii?Q?vwHE1DeKj9XmLNyWaCKJr4of1UAYMmh4qgMvxff4TF/SezeBOTkcKC8/wbRY?=
 =?us-ascii?Q?Hb3B4ibeUzPPCM2fKeUOoGpKIgWEP36a7cXP1LRQKBNDxYj55dWwCKiz6d16?=
 =?us-ascii?Q?79mtNLJkq2f/5zobzAKvKO6IybBn7pWuQa50/t5AxM/aLi5TL+q8L4Iu/ssh?=
 =?us-ascii?Q?rRVFrm93DDlYrIje0CYp4ZdCIqI/OB9q8fe5w94hkqFraqkd6Lqa3K6+QXe9?=
 =?us-ascii?Q?0QXS2rWMZ3ataGrWg2v6OoCfTksmR+46NmGXUTX8KOc7tY4afPOQLYDx3FMR?=
 =?us-ascii?Q?sCTDqZrM/rufbwxzRmJ/u8F5zezVYYoA1VnmXxQNDtvmMyvhXxvPsOBa/V88?=
 =?us-ascii?Q?jz9W5uUQXx8DZwVAn7qe4v8yjojr/sVBV5l0gomgrOScsQHnrR27wM41RM0U?=
 =?us-ascii?Q?HgNOJSiklw5Jj2czyJLLenAEX8tP+PWYxwAMUkoxcFjmOXJneWqiyIajuE4m?=
 =?us-ascii?Q?mRNf9grPssq283DcI1MxMhHqqe7xM4dquVaRk1qH4mloqXQyNPfkwubeeeRd?=
 =?us-ascii?Q?0KnVi8gwXIv9yzmx/pFB4oc2B+1lLEzxEgKZhyXUAP+Ss3OEFyCoK/w46b2o?=
 =?us-ascii?Q?9yj3UOaQGO+oweNECjC+eoWJt+pJIQB/rmJjXx0P4ZCNftpp41oP8B8jjjMq?=
 =?us-ascii?Q?mqT5dL2JZn77et+m74I+4kJtbbStVstQUYy2/WqUT9cikOw6bQSoG3wv8Olp?=
 =?us-ascii?Q?CACGB4H/i+6jQMoQXrTfArbaSUxlY+8ISFGrqDtB2nxTn2ZuFjLpq/Bz9ZM0?=
 =?us-ascii?Q?TpMUQeMe1wxNrZUhYw8dUkDp9ER+zQA/QDVTb8TVTqiZOckelxbb1SGigdBF?=
 =?us-ascii?Q?rW4tBpgLwRFyqH8KMhCRf24OYxmE5boL35RRKvf1ojfR+ivmpJJPC3Eg1aH6?=
 =?us-ascii?Q?G0ZHvgPVD4FHxKY1PUFkgnBc6JWRAy7O+Lne2+Xybf1P1i3gaIDq6ARu/Qcl?=
 =?us-ascii?Q?U06/IV0kY+g4rdcBdcTVIcomCl6GPHeMbPEFO9Vi?=
Content-Type: multipart/related;
	boundary="_004_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_";
	type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 891e5716-5c22-4a6a-92f3-08dc84992134
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 13:20:40.1219
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YO/XJIIG2jFYkurLGiSVVPuvo6esSosHUWegS20DwBPGBNvyDpaxf/ZT2KAwL/8KLJ2yKbs3TM6OCDehChTg8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
X-Proofpoint-ORIG-GUID: hXupU5GYxfuoER38JPVUPBl38UoKfoUq
X-Proofpoint-GUID: hXupU5GYxfuoER38JPVUPBl38UoKfoUq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-06-04_05,2024-05-30_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 bulkscore=0 spamscore=0 mlxscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.21.0-2405170001 definitions=main-2406040106
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Jun 2024 13:20:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13366

--_004_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_
Content-Type: multipart/alternative;
	boundary="_000_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_"

--_000_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

IMHO, instead of trying to doing native build inside SDK, which I don't thi=
nk is ever supported, it's easier to:

  1.  Start the target (maybe via qemu kvm)
  2.  Write a wrapper script which uses scp & ssh to copy and execute binar=
ies. E.g., copy_and_exec.sh <dir_to_copy> <cmd_to_execute_on_taregt>
And what you do is basically 'make DESTDIR=3Dsomepath install' and then 'co=
py_and_exec somepath somecmd'.

Regards,
Qi

From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf O=
f Enrique.Herrera via lists.yoctoproject.org
Sent: Tuesday, June 4, 2024 8:59 PM
To: poky@lists.yoctoproject.org
Subject: [poky] Host PC Image - MACHINE genericx86-64 - Unit Testing/TDD wi=
th Target Application using the Yocto SDK (krikstone)


The following blog post link fully describes my current situation.
 Exploring Approaches for Unit Testing with the Yocto SDK - Page Fault Blog=
<https://pagefault.blog/2023/05/16/exploring-approaches-for-unit-testing-wi=
th-the-yocto-sdk/> (https://pagefault.blog/2023/05/16/exploring-approaches-=
for-unit-testing-with-the-yocto-sdk/)
I made a CMake project that included the Google Test framework. My intentio=
n was to implement TDD, test-driven development. The process of TDD for emb=
edded development is not straightforward. Every time you want to run a test=
, it takes time to deploy test case binaries to the target. For efficient T=
DD workflow, developers would need immediate feedback from executing the te=
st cases. Running the test case binaries locally on the developer's host ma=
chine would be necessary. The SDK that was created based on YOCTO image rec=
ipes is intended to build target binaries. Natively building targeted appli=
cation libraries in the SDK is possible. However. The build environment set=
up can be a mess. I know I couldn't get it to work.
I followed the recommended solution for the 'Page Fault Blog' post. Basical=
ly, set MACHINE configuration variable to "genericax86-64". The libraries t=
hat were generated in SDK for your PC will match those in your target image=
.  Despite my efforts, the binaries I built using this SDK did not function=
 properly.

[Image removed by sender. r/yocto -  Unit Testing/TDD with Target Applicati=
on using the Yocto SDK]<https://preview.redd.it/unit-testing-tdd-with-targe=
t-application-using-the-yocto-sdk-v0-jvsedi5ope4d1.png?width=3D594&format=
=3Dpng&auto=3Dwebp&s=3D65b80e3becb3defeda4eda4e6cada09147ad2802>
When I tried to run the binary, I get "No such file or directory".
I found a Stack Overflow<https://stackoverflow.com/questions/46787700/contr=
olling-architecture-in-resulting-rpms> post about issues building generic x=
86_64 targets, by setting DEFAULTTUNE:genericx86-64 ?=3D "x86-64" .  Still,=
 i get the same result.
 I cannot be the only one who tried test driven development with YOCTO proj=
ect..



Enrique Herrera
Sr. Software Engineer

Embedded Software & Firmware Technical Lead


Internal

--_000_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:435638075;
	mso-list-type:hybrid;
	mso-list-template-ids:-588449264 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1856964621;
	mso-list-type:hybrid;
	mso-list-template-ids:-327411136 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">IMHO, instead of tr=
ying to doing native build inside SDK, which I don&#8217;t think is ever su=
pported, it&#8217;s easier to:<o:p></o:p></span></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo2"><span style=3D"font-size:11.0pt">Start the target (maybe via qemu kvm=
)<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left=
:0in;mso-list:l0 level1 lfo2"><span style=3D"font-size:11.0pt">Write a wrap=
per script which uses scp &amp; ssh to copy and execute binaries. E.g., cop=
y_and_exec.sh &lt;dir_to_copy&gt; &lt;cmd_to_execute_on_taregt&gt;<o:p></o:=
p></span></li></ol>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">And what you do is =
basically &#8216;make DESTDIR=3Dsomepath install&#8217; and then &#8216;cop=
y_and_exec somepath somecmd&#8217;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Qi<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> poky@lists.yoctoproject.org &l=
t;poky@lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Enrique.Herrera via lists.yoctoproject.org<br>
<b>Sent:</b> Tuesday, June 4, 2024 8:59 PM<br>
<b>To:</b> poky@lists.yoctoproject.org<br>
<b>Subject:</b> [poky] Host PC Image - MACHINE genericx86-64 - Unit Testing=
/TDD with Target Application using the Yocto SDK (krikstone)<o:p></o:p></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black">The fol=
lowing blog post link fully describes my current situation.&nbsp;<o:p></o:p=
></span></p>
<div style=3D"margin-top:12.0pt;margin-bottom:1rem">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black">&nbsp;<=
a href=3D"https://pagefault.blog/2023/05/16/exploring-approaches-for-unit-t=
esting-with-the-yocto-sdk/" target=3D"_blank"><span style=3D"text-decoratio=
n:none">Exploring Approaches for Unit Testing with
 the Yocto SDK &#8211; Page Fault Blog</span></a>&nbsp;(<a href=3D"https://=
pagefault.blog/2023/05/16/exploring-approaches-for-unit-testing-with-the-yo=
cto-sdk/">https://pagefault.blog/2023/05/16/exploring-approaches-for-unit-t=
esting-with-the-yocto-sdk/</a>)<o:p></o:p></span></p>
</div>
<div style=3D"margin-top:12.0pt;margin-bottom:1rem">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black">I made =
a CMake project that included the Google Test framework. My intention was t=
o implement TDD, test-driven development. The process of TDD for embedded d=
evelopment is not straightforward. Every
 time you want to run a test, it takes time to deploy test case binaries to=
 the target. For efficient TDD workflow, developers would need immediate fe=
edback from executing the test cases. Running the test case binaries locall=
y on the developer's host machine
 would be necessary. The SDK that was created based on YOCTO image recipes =
is intended to build target binaries. Natively building targeted applicatio=
n libraries in the SDK is possible. However. The build environment setup ca=
n be a mess. I know I couldn't get
 it to work.<o:p></o:p></span></p>
</div>
<div style=3D"margin-top:12.0pt;margin-bottom:1rem">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black">I follo=
wed the recommended solution for the 'Page Fault Blog' post. Basically, set=
 MACHINE configuration variable to &quot;genericax86-64&quot;. The librarie=
s that were generated in SDK for your PC will
 match those in your target image. &nbsp;Despite my efforts, the binaries I=
 built using this SDK did not function properly.<o:p></o:p></span></p>
</div>
<div style=3D"margin-top:12.0pt;margin-bottom:1rem">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black"><br>
</span><a href=3D"https://preview.redd.it/unit-testing-tdd-with-target-appl=
ication-using-the-yocto-sdk-v0-jvsedi5ope4d1.png?width=3D594&amp;format=3Dp=
ng&amp;auto=3Dwebp&amp;s=3D65b80e3becb3defeda4eda4e6cada09147ad2802" title=
=3D"&quot;Image from r/yocto -  Unit Testing/TDD with Target Application us=
ing the Yocto SDK&quot; t "><span style=3D"font-size:11.0pt;border:solid wi=
ndowtext 1.0pt;padding:0in;text-decoration:none"><img border=3D"0" width=3D=
"594" height=3D"226" style=3D"width:6.1875in;height:2.3541in" id=3D"image_0=
" src=3D"cid:~WRD0001.jpg" alt=3D"Image removed by sender. r/yocto -  Unit =
Testing/TDD with Target Application using the Yocto SDK"></span></a><span s=
tyle=3D"font-size:11.0pt;color:black"><o:p></o:p></span></p>
</div>
<div style=3D"margin-top:12.0pt;margin-bottom:1rem">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black">When I =
tried to run the binary, I get &quot;No such file or directory&quot;.<o:p><=
/o:p></span></p>
</div>
<div style=3D"margin-top:12.0pt;margin-bottom:1rem">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black">I found=
 a <a href=3D"https://stackoverflow.com/questions/46787700/controlling-arch=
itecture-in-resulting-rpms" target=3D"_blank">
<span style=3D"text-decoration:none">Stack Overflow</span></a>&nbsp;post ab=
out issues building generic x86_64 targets, by setting DEFAULTTUNE:genericx=
86-64 ?=3D &quot;x86-64&quot;&nbsp;.&nbsp; Still, i get the same result.&nb=
sp;<o:p></o:p></span></p>
</div>
<div style=3D"margin-top:12.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:black">&nbsp;I=
 cannot be the only one who tried test driven development with YOCTO projec=
t..<o:p></o:p></span></p>
</div>
<div id=3D"Signature">
<p><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">&nbsp;</span><o:p></o:p></p>
<p style=3D"line-height:14.0pt"><b><span style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">Enrique Herrera</span></b><span style=3D"=
font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><br>
Sr. Software Engineer</span><o:p></o:p></p>
<p style=3D"line-height:14.0pt"><span style=3D"font-size:10.0pt;font-family=
:&quot;Arial&quot;,sans-serif">Embedded Software &amp; Firmware Technical L=
ead</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p align=3D"center" style=3D"margin:5.0pt;text-align:center"><span style=3D=
"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
nternal<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_--

--_004_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_
Content-Type: image/jpeg; name="~WRD0001.jpg"
Content-Description: ~WRD0001.jpg
Content-Disposition: inline; filename="~WRD0001.jpg"; size=823;
	creation-date="Tue, 04 Jun 2024 13:11:59 GMT";
	modification-date="Tue, 04 Jun 2024 13:20:39 GMT"
Content-ID: <~WRD0001.jpg>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0a
HBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIy
MjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAGQDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iii
gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKA
CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAK
KKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo
ooAKKKKACiiigAooooAKKKKACiiigD//2Q==

--_004_CO6PR11MB5602101481B97B07999164CCEDF82CO6PR11MB5602namp_--

