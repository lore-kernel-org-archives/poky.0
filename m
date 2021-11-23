Received: from mx07-0018b601.pphosted.com (mx07-0018b601.pphosted.com [185.132.180.32])
 by mx.groups.io with SMTP id smtpd.web08.29.1637710539097412942
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 15:35:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@myidemia.onmicrosoft.com header.s=selector1-myidemia-onmicrosoft-com header.b=f+geumL4;
 spf=pass (domain: idemia.com, ip: 185.132.180.32, mailfrom: fabien.micaelli@idemia.com)
Received: from pps.filterd (m0136515.ppops.net [127.0.0.1])
	by mx08-0018b601.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1ANCudWm002861
	for <poky@lists.yoctoproject.org>; Tue, 23 Nov 2021 23:35:36 GMT
Received: from eur02-am5-obe.outbound.protection.outlook.com (mail-am5eur02lp2055.outbound.protection.outlook.com [104.47.4.55])
	by mx08-0018b601.pphosted.com (PPS) with ESMTPS id 3cgckeunrg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <poky@lists.yoctoproject.org>; Tue, 23 Nov 2021 23:35:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fA0vl15qVL9Wox9Z2gVgQGJTAT3BBezaWtClC8MvmfRmjaJNHiHeBqgI3AdFoMOJD666wlWIYVB+DEJVSKk9BcEfyXCSxn0udulcEV+otrit35/d2QTG0quKGQABYjI/YcfLcdy/4Zvrl/Q8m+1ThobP8E7eSSYwERgwaByIsum2AaaNLygVo2M/eGmB7pkXbsJxZCXxlqC9L+spKlbccrta3zSIzhhc/PqW8YFHsW1WKQwQqVPcYfPrHTIsz83fh1AvcjlTuegf88y31Y1ZVGaNWxN7Mv71n3/9GVK4maJ5tmw61DkLgUieJTFrFQF2Kc5FjeckyhoD4l5qaa3syQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YtnS0iuW1apHUEa7Xn7sm3mXCAYVtjUEBbjILd/ODtI=;
 b=egKFyje4JFhcotGy8x+DdwQvlnUU3VLie1DJhi/PGjb/vK+bOv33JPzqUULYQqcz5PdU0utF8vOqqb+STh8tEg4uVoQCbs29ea+wEtQywHXtEmOHXFvhYBY+9NqbYERKxNo+tHOAErvH1ka+na4gmY9YGnJze8g1gKmSz4+YdU7SKVlNvj+EfMEPNRiYiE9LaKH746fxMH8xbkNLxkV2+IOFJo7jgOstKt6p+ZQdfQ90ncNaU2JdEBx5eWOxM0miSaxNEfrkMKDCuyPEXkslK3BHxQv/N5kkOykGz/w2aiFlE8nkzj/lvXCFdC/QcehhRl7JktDYoE1zft/h75SZfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=idemia.com; dmarc=pass action=none header.from=idemia.com;
 dkim=pass header.d=idemia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=myidemia.onmicrosoft.com; s=selector1-myidemia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YtnS0iuW1apHUEa7Xn7sm3mXCAYVtjUEBbjILd/ODtI=;
 b=f+geumL43fGDtjVs+Ypz6kVoB+oFnHAS4IDZfDo0u9CJ9FoDyxYGiy6AYbHnL2vuIfiEkVxOOtMFVCtplBtDA8wwGXNXZuMfNo9s5fS3toGhSOb+nWVBOwsQUDzWSO6D7vX/G4Tf6qBAz5/bt1JUot5wcuhWzWCdRQygz5Ur1is=
Received: from PR3P189MB0907.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:46::21)
 by PR3P189MB1129.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:4b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22; Tue, 23 Nov
 2021 23:35:32 +0000
Received: from PR3P189MB0907.EURP189.PROD.OUTLOOK.COM
 ([fe80::35f4:cab6:ba97:e1d9]) by PR3P189MB0907.EURP189.PROD.OUTLOOK.COM
 ([fe80::35f4:cab6:ba97:e1d9%4]) with mapi id 15.20.4713.026; Tue, 23 Nov 2021
 23:35:32 +0000
From: "MICAELLI Fabien" <fabien.micaelli@idemia.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: [PULL][devtool] Fix devtool finish when multiple path in FILESEXTRAPATHS:prepend
Thread-Topic: [PULL][devtool] Fix devtool finish when multiple path in
 FILESEXTRAPATHS:prepend
Thread-Index: AdfgwoOE+QjGqGunRMKMCU23xiDyMQ==
Date: Tue, 23 Nov 2021 23:35:32 +0000
Message-ID: 
 <PR3P189MB09072C157E0E543CBFD13C689B609@PR3P189MB0907.EURP189.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_Enabled=True;
 MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_SiteId=7694d41c-5504-43d9-9e40-cb254ad755ec;
 MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_Owner=g288593@mph.morpho.com;
 MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_SetDate=2021-11-23T23:33:28.2697184Z;
 MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_Name=Public;
 MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_ActionId=64e85650-302b-438f-97bd-44cfe46d1814;
 MSIP_Label_431684b1-a5da-4051-9fb4-5631703e02d5_Extended_MSFT_Method=Manual
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6e337ec-112d-4717-0c3c-08d9aed9f11f
x-ms-traffictypediagnostic: PR3P189MB1129:
x-microsoft-antispam-prvs: 
 <PR3P189MB1129D980DAF6CD4E71EAD9D29B609@PR3P189MB1129.EURP189.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Lf39s1C6y+T+hyJEXbIE85tK12fpHGcWxv0O52yscJpgrXyDCXgZE5iaI+sh/qBN8Mj/8QIw+9UaKTrpgxzSaWrEN+NkeSA1kXiQjZxvnhiMpiTfu4E1m8rR6WHXNuzD5boAJQ6YHBWXkmKhxrEfJdoREnLgnfkdCqHjffXMLkBk6q3Y+i5CA6bXbfP60AErYTa96s4qwkQR5H9KxO5qAT5QQzc+Q2ddVftsgdUzGhcXV375efxfcgzTvuuYINKTFsmAh5C/xGH2eT/cPKP2oAwb1d7JWm6Ayrr0QHDXLnoIVOyUponWYNQPi8qvFBlv4Mc8wBlEfs8XIxljv1wbsAHjnoGEdj27YH2uV8HmRjWMTWvHWv2nSwdePAEC24224dPnYSzU9fsV0lZ1YhZ9I3TvRbzA7g+Vt2S6KX8da9p6j9LMZCJ3uuu/u7FKbohXZhcOoY2gXR40RejuQUPdc3lqCmyHNLPcacqdBzMN05SONyn4L/+tZ1yDJEG2SYre2UlMN3uFnokJVv4DjrKC9wA3KJdRpp9mRvW5ayu+8b8+nuGVa7/hS1AWAFI0N6EvyV4LcuGRX8rp/6bGSwAItrUZ1V46oQ58D4JDkBdUIiYJpTApuj8twrJUUK33npITm3rUKRnBfQR1DnT6NOJMDV0+2ew8MIltLe4Is94kt/WCr01HB2EJ41Si9VQu1nZvoBPxtQx9reqgldBIzJCEUZiF7Gszl8NCeSGj7abERST5KArSwS09s/V0U3Gnsb0H
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P189MB0907.EURP189.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(55236004)(6506007)(316002)(71200400001)(122000001)(26005)(186003)(508600001)(52536014)(7696005)(55016003)(38100700002)(8676002)(2906002)(9686003)(66946007)(64756008)(8936002)(66476007)(66556008)(66446008)(83380400001)(4001150100001)(33656002)(5660300002)(38070700005)(86362001)(76116006)(6916009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?9ahkQ0AOWsTtYfA2sVwaaRuBG4JN8VMB8NuOIakUXRNwKl3JT7zcfct3Fk?=
 =?iso-8859-1?Q?VlYpyY+gwTzjnvUUYr8pzXgmSY/O/LhhoW9ia+uZ6Gm6Ni/+feipqVkptZ?=
 =?iso-8859-1?Q?uUh8TBX00HTwKaiDeEi4B0bVeC72qUV8lvqB964eY4T4hJkrkFwISJLDUl?=
 =?iso-8859-1?Q?LKJSH1Ca/mT2Rd+qR9Zz8PtOZjNKCNs51Yblqj3sBjoAYS+q3iCTK627JZ?=
 =?iso-8859-1?Q?duY5LV9nQCoBalOTpmkd8WK8Ou1GUnDPwQPuAyTpdoiHoNy6hH0VM/3r2w?=
 =?iso-8859-1?Q?YgQGjnQzp6WByk1u3QehRu02Z3TjzLjgAr/fSUjc4oCNRbfQgoNOqe6ITa?=
 =?iso-8859-1?Q?PnIlfibX5jTK/GgNodaOtWEqoLIWmpghGB+/83yKmNURfv5yw7NfTykoGW?=
 =?iso-8859-1?Q?fhYoULYJjp4Io4mSBGKy24gmwhvwNE+4K5w/pDSaolRU0Pa+Xr1m613Hmz?=
 =?iso-8859-1?Q?ePwnFixuvNIj/uxgdfVb0/enJGngUWjW9bQxVr40kU/P7wYzAr1u5VjEXS?=
 =?iso-8859-1?Q?6O0l5XfQFfNC5ejrFXayZlnYc9KzAhLE6ci0G3JrKHiyV+lh9SqO1psH6m?=
 =?iso-8859-1?Q?1w50ouZ7KSYUCxKRrRgJAhsM9yuGXRgvTdd5kJ/zVkmgF4AN10tnoTkmeB?=
 =?iso-8859-1?Q?Jvdxe0iCP8SWeHGw6is+8AeqMjYkbE7tosXMI4RXUvB9/KJ7uJnHXgQx44?=
 =?iso-8859-1?Q?KDQ7t9XkGDYeJpOrv2nDgXxI5Qq+T/LuRLykMBf+ift1qf/ZiE27fYG3mP?=
 =?iso-8859-1?Q?UCNOSZb9MSq9w3DsF3A9taT9YFDMAmraMlOpyL3PVB3D0Eg5mmKZ0P7LWV?=
 =?iso-8859-1?Q?4CbYZ8E6/UnaBWzAc1P8Fhh+cUDOwFmCalsI9KaB2LBzsAIvkUQ2EAhnjV?=
 =?iso-8859-1?Q?xYy2hhiRzWsdecKwKQjsO0U41Pq9riyVTSByK2X1DpoKJTuKfI+FUBKOkb?=
 =?iso-8859-1?Q?t03UO7LkqpUrD7b2CM1z+M914O8Mhb4nHgDm8Q16aVwOZGVa6w6XnLmZZD?=
 =?iso-8859-1?Q?eWd0LKr3HWklw/dEKr4AZFPBpXX9C7AMUhxQ3ckrUcYnKjvMIdzuixuhcy?=
 =?iso-8859-1?Q?5ociDAlCVujAph6Fyht7SP8H0Gcbksp4+gEb0+0su6SwXQGF6L7SfYI6U+?=
 =?iso-8859-1?Q?uoHf6InpOUa0fhNLyG+hS7LDTvqIBZZSFnvck8gnc0K2IYkHtYMMucwmiU?=
 =?iso-8859-1?Q?taCQS8Ndyy0Mk95xf+SLIDBQPJTdk61b8T6doiQEEhvLLtVNzTLDsNI2ep?=
 =?iso-8859-1?Q?FjtAy4AzJHTa9wJO5SPnT/n1gHgLmQkmxPYuX8T5paC6/2z9eoloJ/Vjsa?=
 =?iso-8859-1?Q?nWIgXwP+6I5RkbBQNvGXmsp8bkV1tGWeFwrI2aFS1ilQNj3Wkp4qa2vHpt?=
 =?iso-8859-1?Q?GymnVfze0JZw+a+VMoZZjJSzIiP9VtWP+w9dS8x8YbwEaUVJ77RU0KsFyt?=
 =?iso-8859-1?Q?+4FtUoDN3ZvyQ1ZH35q1EyEHXsvJuScWOlOXeEC20W7IJ+EfmQxX75aNmJ?=
 =?iso-8859-1?Q?ZJnlHlCsmFf16fB5p/NtJBnYTwNlyMmejIAoe/O3Arv/8kagN+bjQDTdgA?=
 =?iso-8859-1?Q?n4++0rzb6z20wT0eEDjDZ2jYaISks9vlEfU/L2ebEINgZRX58o8rm0Lfb4?=
 =?iso-8859-1?Q?5vqFbX6szdOtUNpwwv7CDjO7snoccSKBLce8JlJCxhxkpng800b4we3eYe?=
 =?iso-8859-1?Q?6nj1xU+bbjxzeAB2bXg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: idemia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P189MB0907.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f6e337ec-112d-4717-0c3c-08d9aed9f11f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2021 23:35:32.5667
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7694d41c-5504-43d9-9e40-cb254ad755ec
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: We3/xhNb+v7b8rtT8d3HXgqWZbvpy6TEUuNPE3DqRcmlEws5r8Bv608yzi2uMkWaAHNM8mQS/hRudiH+RxNCtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P189MB1129
X-Proofpoint-ORIG-GUID: pK2xrOlJut1UIIyCenE87tz2cZ-CmeEq
X-Proofpoint-GUID: pK2xrOlJut1UIIyCenE87tz2cZ-CmeEq
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10177 signatures=668683
X-Proofpoint-Spam-Details: rule=outbound_idemia_notspam policy=outbound_idemia score=0 mlxscore=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 mlxlogscore=999
 impostorscore=0 phishscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111230115
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

Here is a little contribution to devtool finish.

Issue :
When FILESEXTRAPATHS:prepend contains many folders, then devtool finish
creates a patch folder which name is concatenation of all folders names,
and build fails.
Suggestion is to only consider FILESEXTRAPATHS:prepend first folder
for storing devtool generated patches.

Example :

Create following file :
name : meta-yocto-bsp/recipes-devtools/bison/bison_%.bbappend
content : FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:my_other_directory=
:"

use "devtool modify bison-native"
commit some changes in bison source code
use "devtool finish bison-native ../meta-yocto-bsp"

expected :
NOTE: Copying 0001-toto.patch to [...]/recipes-devtools/bison/bison-native/=
0001-toto.patch

issue :
NOTE: Copying 0001-toto.patch to [...]/recipes-devtools/bison/bison-native:=
my_other_directory/0001-toto.patch
Building bison-native fails since patch isn't found.


The following changes since commit 0140ac5b689faf8ac0a253f6a7ed57437909056c=
:

=A0 glibc-version.inc: remove branch=3D from GLIBC_GIT_URI (2021-11-11 22:2=
6:46 +0000)

are available in the Git repository at:

=A0 git://push.yoctoproject.org/poky-contrib fabien/devtool-filesextrapath-=
fix

Fabien Micaelli (1):
=A0 devtool: Fix devtool finish when multiple path in
=A0=A0=A0 FILESEXTRAPATHS:prepend

meta/lib/oe/recipeutils.py | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

--=20
2.25.1


