Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 038B5C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 03:36:55 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.4727.1715830603658847398
 for <poky@lists.yoctoproject.org>;
 Wed, 15 May 2024 20:36:43 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=58662b499b=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44G3UTui007029;
	Wed, 15 May 2024 20:36:43 -0700
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3y23xym1uk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 May 2024 20:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AyUjVyGFGVynUnmOFazke9f7ZnUXW/XXRvBKwydAqu+Cl9+sDfueSUI+WRpvr8MgRZHQrcs8MlDG58hbxuCTmJ2qK7WVueMGvs9u39ZgI3TdjXPwx7dIcFJVrxiG39NosSDfpPwarld08P649xbN5nGJGct5mHb0HOsSxQWqKDcn94HGpZ5EnKBXCMlHBmMQAkx2YUp+r7I4FrFpPsxuK+V9s6pU9rv+VFGosiP4mr9Xt94BQfyNEVyvehYSFgYIxXxL1YwaH+PyarTR0Dfa7kYei2lVoS43lDLcd7MHSuNWdNj3536pghVnYSMlpo2eqitKkCC6kXLnCoucKYkevg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bR3NC4C2PsOKvsKZ6k0lwXsU+Ehr70xHk6oXDQlrI/g=;
 b=ZDBIIHsPjUbXg5aY/M/rRYYnSZps9Viibwbamwq4pb+ZR5ojUdADPz2APnDN89K6BLPsv15zhq9ah6dacC6bJUB+NAT8SP+Km84NaJTwF9JFy00FiyyE9Q4QASrQBR9X7/y0loRQ79ptQKJW/8te3x8BYg6HBXW19bFP8pxicv/WPSAnW4l/hD87HDCN5+sZq85le+Aufqka1FdbDxz2B6znOTDtV6khjsw8qGXwf9itoCUw5JYSgtE4veV96k+VkO1FiW4nwvvfULKxMkp34tmbfKzAT0Gp2CluZ4anfY/xzjDsmdtiSGP3i5m64mRxIzbEIv7rrOj2A+UKy+6VxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SN7PR11MB6656.namprd11.prod.outlook.com (2603:10b6:806:26e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Thu, 16 May
 2024 03:36:39 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%6]) with mapi id 15.20.7544.052; Thu, 16 May 2024
 03:36:39 +0000
From: "Chen, Qi" <Qi.Chen@windriver.com>
To: "nicolas.wirth@speedgoat.ch" <nicolas.wirth@speedgoat.ch>,
        "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] Running chroot-like command in Yocto #yocto
Thread-Topic: [poky] Running chroot-like command in Yocto #yocto
Thread-Index: AQHapsFng1ODeRjqB06l4JiCpf5Me7GYNsoAgAAEDoCAABXrAIAADdAAgADVeDA=
Date: Thu, 16 May 2024 03:36:39 +0000
Message-ID: 
 <CO6PR11MB560246500A31280B432B45F5EDED2@CO6PR11MB5602.namprd11.prod.outlook.com>
References: <EFDF2248-3DF0-4B41-B58D-B9437E75645D@arm.com>
 <19808.1715784120309934958@lists.yoctoproject.org>
In-Reply-To: <19808.1715784120309934958@lists.yoctoproject.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5602:EE_|SN7PR11MB6656:EE_
x-ms-office365-filtering-correlation-id: 47a5ceb1-d639-4a0b-e1bc-08dc755965ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?ni8zMmimurPo+9gYl28Ys2RnI3npg+3xGypoeLQI6CwtxDADF6KflGIvQffk?=
 =?us-ascii?Q?Vs9oti2tOS810bro+qzYGYynyBHnBjR8VFU6fTuC1Be44WeSzsk4LuOR2vr8?=
 =?us-ascii?Q?vdQYClimyDQbxMm4Vkr8uxCNpGP/vFXdAoPuUVCTo50BUJjZGkQTj3ENMxPt?=
 =?us-ascii?Q?CUDxS5dqndJ0Dwy5o/OJXnXMxYkftozzYvj6358AehcWkzvmK3qeKvJT+k74?=
 =?us-ascii?Q?R5CAZp0awb7Wv/x0GkwaFIaI4tNHXajz0Uk27xXmAHjdUq8MQPUq1F2FioUA?=
 =?us-ascii?Q?ZZ9n5zXss/jkzBWIzFFsJ6RbqL1WpknvZDHKdEaDHmqXSfnNRZXopq+pRa2e?=
 =?us-ascii?Q?h7FPIuyAUxwhxfEfXU2ctr3dXVh30uvhlS9SFrIWQ38G0tiwBJsLq5VvIPKu?=
 =?us-ascii?Q?KnX6i1FmffyofUB9wsOGjnK331Lz+/xcgxn+uh1huJURwZBXsKjk9axLHIni?=
 =?us-ascii?Q?iXUXMetTmnH6lUjmbt6n8/y6t49Z5qt1SLrcumEthSLVkj7PwWXU0wO+ppdv?=
 =?us-ascii?Q?kuxIShJ3Gi51dT+q6jGXCh7wGhQaL1Xim1iDjHgZ9lRJlz49he38x5uq6qYZ?=
 =?us-ascii?Q?wBsEdU2b6NmC3qCrsIgk3n3ZAICiQ4ExmCzH4cQhDmxwukQHOZHpum+oBdpW?=
 =?us-ascii?Q?F8YDSyVk3UrXX+IT/Ty6HbVjOlZOcQawo6DVReEVqZhjO0f6VAuXleFZFJB3?=
 =?us-ascii?Q?jn2b1q0zKzbFFR1HGhMm6lxcmrm/Mentc8ILXb2lVe2Zd++1SDe0DO3jvneI?=
 =?us-ascii?Q?KQt0YpWMYfWTkV5DscFKEVOtQ6OxI2iuvMpPRBXGuy++sv0hsFxj4G8u9LRh?=
 =?us-ascii?Q?vw5ckMX2Q6cv6EkcoTsAF+AggoGxeBOxlrGdqMUT9r5NTLhYNQN232Iy08Qe?=
 =?us-ascii?Q?o/B4qOX2XwF2HP+pO5FBrcL/f2Y5khu/ZOOlCMGAstiiTzH1RavsohFBdSmf?=
 =?us-ascii?Q?8FoRKWuORZndQ+hy4ATJ+M9U2124B0g8AO4UGcRZ5CYCdivlRH6Tpb3nkeVD?=
 =?us-ascii?Q?9elUo9wELRRzpxsWNdYjlY3hiq/h4fG7pjYABXC1qsB9mYLb+hElWr7TTW4x?=
 =?us-ascii?Q?rQZ6bCQPa6slG0fIdvGkGuv5aj4Q8bnje/NeaLSbKxCDqZ2Jkdv3hD4arN5s?=
 =?us-ascii?Q?XStH2ct2VR+M02vpeIrwstBVr1hzUEEahtG5jw3ZUmg98em0xvidtJWue46U?=
 =?us-ascii?Q?bfnIgdn8EjGeNfYg+ixY2fOEab+p69TkZ+8wEN2j9/3usi8lqQfZThlXQKwK?=
 =?us-ascii?Q?HWsgiPUdqfnHYHv1ynl+MD0jRgbYd9HGa/wLXdRtgsX62m9NBR5rRsIM4dbW?=
 =?us-ascii?Q?BI/vPVSAG4KNU5C4bSuhwGsc+TNgZn3rkyW3CxN6N5wZSA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?plBhKmz/OMTsPxVl8OaizhzkPEFnFyCtLW4CQCs6uh3PNOe1Tk7g9FIc2Y2N?=
 =?us-ascii?Q?GTsM+7oUxj/vzdtZ2eorzaFOZ2w5i0wALJe5NuYi3Fb3wmC5ROqHKZpIb5H+?=
 =?us-ascii?Q?FFaOXvO5fVSOHkT8rtoYBC+EMDfugu9JUm/3Fhr3u8k29FsPTArzCQJeYwdc?=
 =?us-ascii?Q?jO3/S1c3yDVTCb+IxZcZ1YLGKF8V/InnFKA5VQ3M5Jl4Z0nWkIqT4S4nLUT4?=
 =?us-ascii?Q?Owpr7tMoowtekGTJbxAmnPX1mQ0/v/tldWn3lmE18EuU6Or51WMDCzK/inhw?=
 =?us-ascii?Q?KA4s6MHuS7vD78UdNEdiwZ2/Siy9qozHZCJqVVLmeM+tvfZukmxHZakW+nYk?=
 =?us-ascii?Q?H8pA4DUb5e6VrD1ZjBf3VJRjQUArmqLbTT5uou4oDpYArz1HCYliGdP5ZIQf?=
 =?us-ascii?Q?OogwvlqVYNZDY78dSKyvW/+jCkIt3MHgUVFTU1TwN0wdSBV6Xu5+NeD5W0Xl?=
 =?us-ascii?Q?OR9M/MH/f5so2hep14mZpNP8z/QazHmRcvHZ0zwoX6NWIuAKuZNYhVYSsKek?=
 =?us-ascii?Q?589UgIA60G+oHlkLi3I0bV/cODtOA3ZtYYaHh4uvnrOferxnGiJ9v33pZKtu?=
 =?us-ascii?Q?+aGUkUKBXQ4jTJs7L1ALkrZT57vA/us5Raj6W1RnPtTwodY/8GDopM3eJKQ9?=
 =?us-ascii?Q?jTpSORxIb4trzaPnYIKb+9IXvJh21QxkHgE6gzFcvLifGrRtzlgBK1ghvBYW?=
 =?us-ascii?Q?fRB9/qAc3gDuP+vYXmLrQfX36qCpLvPEA/PTAgYiBuTbUmOIsmtR7yQ2RRw/?=
 =?us-ascii?Q?jQzIuWwj2fhxhDwxp6WvTQGLBqvxgh2rFYlpeTwOTNCpo64IOS7SPwSbRhEf?=
 =?us-ascii?Q?hyaevlELvahU0d9krElrwhivMa78qw3RbYzAY4dpSwVEdwuUY6vaV0vJvcdC?=
 =?us-ascii?Q?SMvRwC+GG5N7Mkepfhz8GVmOW43Gx9Ky8HW8t99vsBkTIVhsiya0thrU8HMr?=
 =?us-ascii?Q?dbvJ9qI19seH22sui+SVof4xQpuUc7LAb4en9cg5K8wQnp8+GkV3GqIWmzDP?=
 =?us-ascii?Q?1ljkA1xN2gBakyf46RTJBTtqraVZpO2WwW64bF7SSCUFUWBrdQmnzaw9AjEN?=
 =?us-ascii?Q?vtvvNZBCKNBKWOxEuqPHOA1Bc/+4JBZZNhU+vzULU97wrqV6Ltd6jYHynEpC?=
 =?us-ascii?Q?wJxwIz525gjGWxkhV7YRwjOjOKOb3dU1BKEe/8dAmNlYkC9meD1kdKhslUgc?=
 =?us-ascii?Q?QUa0yqX8OAeEoLWqw9GrT7YzvO7XU8vuRme1AZm05gEUTOdDH9bj6ln2OTNe?=
 =?us-ascii?Q?ZcCvkfyDRwcUTlcvZ9Zluj1YTMC/2o1hWh/9aEy610ijbAm69H++FlJZaGZz?=
 =?us-ascii?Q?frkTFatrVP3MwQVwsyO6+gJdvQhTNqnpRXhAQZX0zBfX9zucP09NkDS/eDaI?=
 =?us-ascii?Q?KPUTPG5hhHVmjH8RIxs1VvqFgeDIXKpwiunBb5fa88KI/+8XzlJ0WaTYiBSZ?=
 =?us-ascii?Q?X10nyuLtGimaDmRX8HjAqc7hhqr/slCRY+sPIMY3xGZCxUYzABKUjPOvxEJQ?=
 =?us-ascii?Q?uSxUZJhTPU6JSODL70NY6tThe7V3/wH1KPb6oOEG9k/CbCWf6oSeItNVDX5Q?=
 =?us-ascii?Q?zeH7p96ATm7UyK0BCDMutAYKi4YpTPjc3jwLE3Jg?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR11MB560246500A31280B432B45F5EDED2CO6PR11MB5602namp_"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47a5ceb1-d639-4a0b-e1bc-08dc755965ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2024 03:36:39.7733
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YWdbmt7fkQgzk+pSaxXonWB4zvCJiie1SfKGmPeKuXDFBPr1xo/X49rUKGrhn0f7aN6zA6BSnI8bpkrlML2j4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6656
X-Proofpoint-GUID: 5rFsaFrwDwFigAfeXg8Er_a8X1GZEHwK
X-Proofpoint-ORIG-GUID: 5rFsaFrwDwFigAfeXg8Er_a8X1GZEHwK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-16_01,2024-05-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1011 bulkscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2405010000
 definitions=main-2405160023
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 May 2024 03:36:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13355

--_000_CO6PR11MB560246500A31280B432B45F5EDED2CO6PR11MB5602namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I haven't tried, but you can test with the following approach:

  1.  Setup nopasswd sudo
  2.  In you custom command, disable pseudo (export PSEUDO_UNLOAD=3D1)
  3.  Run 'sudo chroot ...'
  4.  You may also need to enable the 'network' flag for do_rootfs/do_image=
_xxx task (whichever task your command is run in) to avoid namespace messin=
g things up. E.g., do_rootfs['network'] =3D 1

Anyway, if you can find a way to adjust syslinux class to add extra functio=
nality to it, that would be best.

Regards,
Qi

From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf O=
f Nicolas Wirth via lists.yoctoproject.org
Sent: Wednesday, May 15, 2024 10:42 PM
To: poky@lists.yoctoproject.org
Subject: Re: [poky] Running chroot-like command in Yocto #yocto

That's not entirely true. The syslinux class does indeed a lot of this, I w=
as able to experiment with this using the live hddimage. However, this mech=
anism ends up creating 2 different partitions, one containing the bootloade=
r, and one containing the rootfs. I would like to have them in the same par=
tition. I was able to find how to do it by scripting, but it's outside of t=
he build environment. My script looks like this:

loop_dev=3D$(losetup --find --partscan --show "my-image-genericx86-64.wic")

if [[ -z "$loop_dev" ]]; then

    echo "Failed to set up loop device!"

    exit 1

fi



if [[ "$arch" =3D=3D "amd64" ]]; then

    echo "Setting up Extlinux"

    mount_dir=3D$(mktemp --directory)

    mount ${loop_dev}p1 ${mount_dir}

    extlinux --install ${mount_dir}/boot/syslinux

    umount ${loop_dev}p1

fi


--_000_CO6PR11MB560246500A31280B432B45F5EDED2CO6PR11MB5602namp_
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
<style><!--
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
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
	{mso-list-id:242102870;
	mso-list-template-ids:-1881604818;}
@list l1
	{mso-list-id:1252201327;
	mso-list-type:hybrid;
	mso-list-template-ids:581189030 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
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
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I haven&#8217;t tri=
ed, but you can test with the following approach:<o:p></o:p></span></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo3"><span style=3D"font-size:11.0pt">Setup nopasswd sudo<o:p></o:p></span=
></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 l=
evel1 lfo3"><span style=3D"font-size:11.0pt">In you custom command, disable=
 pseudo (export PSEUDO_UNLOAD=3D1)<o:p></o:p></span></li><li class=3D"MsoLi=
stParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo3"><span style=
=3D"font-size:11.0pt">Run &#8216;sudo chroot &#8230;&#8217;<o:p></o:p></spa=
n></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 =
level1 lfo3"><span style=3D"font-size:11.0pt">You may also need to enable t=
he &#8216;network&#8217; flag for do_rootfs/do_image_xxx task (whichever ta=
sk your command is run in) to avoid namespace messing things
 up. E.g., do_rootfs[&#8216;network&#8217;] =3D 1<o:p></o:p></span></li></o=
l>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Anyway, if you can =
find a way to adjust syslinux class to add extra functionality to it, that =
would be best.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Regards,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Qi<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> poky@lists.yoctoproject.org &l=
t;poky@lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Nicolas Wirth via lists.yoctoproject.org<br>
<b>Sent:</b> Wednesday, May 15, 2024 10:42 PM<br>
<b>To:</b> poky@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [poky] Running chroot-like command in Yocto #yocto<o:p>=
</o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">That's not entirely true. The syslinux class does in=
deed a lot of this, I was able to experiment with this using the live hddim=
age. However, this mechanism ends up creating 2 different partitions, one c=
ontaining the bootloader, and one
 containing the rootfs. I would like to have them in the same partition. I =
was able to find how to do it by scripting, but it's outside of the build e=
nvironment. My script looks like this:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A3E9D">loop_de=
v</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777"=
>=3D$(</span><b><span style=3D"font-size:10.5pt;font-family:Consolas;color:=
#AA3731">losetup</span></b><span style=3D"font-size:10.5pt;font-family:Cons=
olas;color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#9C5D27">=
--find</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#33=
3333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#9C5D27">=
--partscan</span><span style=3D"font-size:10.5pt;font-family:Consolas;color=
:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#9C5D27">=
--show</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#33=
3333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
&quot;</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#44=
8C27">my-image-genericx86-64.wic</span><span style=3D"font-size:10.5pt;font=
-family:Consolas;color:#777777">&quot;)</span><span style=3D"font-size:10.5=
pt;font-family:Consolas;color:#333333"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#4B69C6">if</spa=
n><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
[[</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333=
">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
-z</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333=
">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
&quot;</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A=
3E9D">$loop_dev</span><span style=3D"font-size:10.5pt;font-family:Consolas;=
color:#777777">&quot;</span><span style=3D"font-size:10.5pt;font-family:Con=
solas;color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
]];</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#33333=
3">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#4B69C6">=
then</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#3333=
33"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">&nbsp; =
&nbsp;
</span><b><span style=3D"font-size:10.5pt;font-family:Consolas;color:#AA373=
1">echo</span></b><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
&quot;</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#44=
8C27">Failed to set up loop device!</span><span style=3D"font-size:10.5pt;f=
ont-family:Consolas;color:#777777">&quot;</span><span style=3D"font-size:10=
.5pt;font-family:Consolas;color:#333333"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">&nbsp; =
&nbsp;
</span><b><span style=3D"font-size:10.5pt;font-family:Consolas;color:#AA373=
1">exit</span></b><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#9C5D27">=
1</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"=
><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#4B69C6">fi</spa=
n><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>=
</o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><br>
<br>
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#4B69C6">if</spa=
n><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
[[</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333=
">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
&quot;</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A=
3E9D">$arch</span><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#777777">&quot;</span><span style=3D"font-size:10.5pt;font-family:Consola=
s;color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
=3D=3D</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#33=
3333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
&quot;</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#44=
8C27">amd64</span><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#777777">&quot;</span><span style=3D"font-size:10.5pt;font-family:Consola=
s;color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
]];</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#33333=
3">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#4B69C6">=
then</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#3333=
33"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">&nbsp; =
&nbsp;
</span><b><span style=3D"font-size:10.5pt;font-family:Consolas;color:#AA373=
1">echo</span></b><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
&quot;</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#44=
8C27">Setting up Extlinux</span><span style=3D"font-size:10.5pt;font-family=
:Consolas;color:#777777">&quot;</span><span style=3D"font-size:10.5pt;font-=
family:Consolas;color:#333333"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">&nbsp; =
&nbsp;
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A3E9D">=
mount_dir</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:=
#777777">=3D$(</span><b><span style=3D"font-size:10.5pt;font-family:Consola=
s;color:#AA3731">mktemp</span></b><span style=3D"font-size:10.5pt;font-fami=
ly:Consolas;color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#9C5D27">=
--directory</span><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#777777">)</span><span style=3D"font-size:10.5pt;font-family:Consolas;col=
or:#333333"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">&nbsp; =
&nbsp;
</span><b><span style=3D"font-size:10.5pt;font-family:Consolas;color:#AA373=
1">mount</span></b><span style=3D"font-size:10.5pt;font-family:Consolas;col=
or:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
${</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A3E9D=
">loop_dev</span><span style=3D"font-size:10.5pt;font-family:Consolas;color=
:#777777">}</span><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#448C27">p1</span><span style=3D"font-size:10.5pt;font-family:Consolas;co=
lor:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
${</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A3E9D=
">mount_dir</span><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#777777">}</span><span style=3D"font-size:10.5pt;font-family:Consolas;col=
or:#333333"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">&nbsp; =
&nbsp;
</span><b><span style=3D"font-size:10.5pt;font-family:Consolas;color:#AA373=
1">extlinux</span></b><span style=3D"font-size:10.5pt;font-family:Consolas;=
color:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#9C5D27">=
--install</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:=
#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
${</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A3E9D=
">mount_dir</span><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#777777">}</span><span style=3D"font-size:10.5pt;font-family:Consolas;col=
or:#448C27">/boot/syslinux</span><span style=3D"font-size:10.5pt;font-famil=
y:Consolas;color:#333333"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333">&nbsp; =
&nbsp;
</span><b><span style=3D"font-size:10.5pt;font-family:Consolas;color:#AA373=
1">umount</span></b><span style=3D"font-size:10.5pt;font-family:Consolas;co=
lor:#333333">
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#777777">=
${</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:#7A3E9D=
">loop_dev</span><span style=3D"font-size:10.5pt;font-family:Consolas;color=
:#777777">}</span><span style=3D"font-size:10.5pt;font-family:Consolas;colo=
r:#448C27">p1</span><span style=3D"font-size:10.5pt;font-family:Consolas;co=
lor:#333333"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#4B69C6">fi</spa=
n><span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>=
</o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt;background:whitesmoke">=
<span style=3D"font-size:10.5pt;font-family:Consolas;color:#333333"><o:p>&n=
bsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_CO6PR11MB560246500A31280B432B45F5EDED2CO6PR11MB5602namp_--

