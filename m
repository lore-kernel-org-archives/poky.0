Return-Path: <Karim.harouat@ekinops.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DF87D232E8
	for <webhook@archiver.kernel.org>; Fri,  9 Jan 2026 06:56:06 +0000 (UTC)
Received: from MRZP264CU002.outbound.protection.outlook.com (MRZP264CU002.outbound.protection.outlook.com [52.101.165.97])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.5327.1767941760196917867
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Jan 2026 22:56:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ekinops.com header.s=selector2 header.b=oqYQH8mG;
 spf=pass (domain: ekinops.com, ip: 52.101.165.97, mailfrom: karim.harouat@ekinops.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KYhShY3JcMnfOFAb1Y5NZIG66STEhdZByqaU2jHUtFJkJ2bIxJ0UEFJGjF901ULjmQuqYCNbqUhKFHpKw/RzkStxWLRcnJLdR3Ap6KcqvQD2YbtKn1ENK1KSYiTiC+jQfxwNyTOKuWKnzVsy6wxEJ/TTbxRMhAaR0f7jsn89olXBRVa88ODsRVlzu10ugR3d8O28xyaMB1s2rp5n4anLicOj5wGyJ9IcT/VqYDDKKIlOZt9ebdkrW9ZLxmfD2DbvmrGlqv9ovw7a++SLcuIvaoxCgCIGGpsqGjHBQqqmI0c/eIKlYXvrVxSC0+Qy/Bt21ApdcSahb4GK3LvDHP5bvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zfDtpABKbDBo0YO1qT+ZFJPM7WSzJqNbkM4b2BbqNrE=;
 b=HIt5YryUlHvIGaFrMyHWOuarAkd1XvDy58kyfUuZDM6S3903m6zgzSs3TpAIijOnqHN4L1753RShM/mcljqL/bnvJcCKn0d14TEmRHiIf/WyN0XqVLXXDc9fA1T3IwCt1MbXwM0GunCEuVKyTs/IsmsKjHTDuSv1/22/6fRyuo1D2H8gnPR2YwzCdN6xdRY/rETjxkxPZSsXAj7xwmNHQyvT5ERy0PX0alsqegBCsuG9AMSzNt4RTs3JIIG3gTMP4b684RBcUpimFQDUwA3K3rS+HEmC5JUMrKwfV3tLfS3kqIezGGQ0eVSyA8/sQVlwgK9OW9SPscXrG1vQR+JR0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ekinops.com; dmarc=pass action=none header.from=ekinops.com;
 dkim=pass header.d=ekinops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ekinops.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zfDtpABKbDBo0YO1qT+ZFJPM7WSzJqNbkM4b2BbqNrE=;
 b=oqYQH8mGN6HnCKfUZwVQDdoEcUSJ6VQgKGLIcSJDxj/QKQkSi5UempE5ROAPL04GjYPNdOfSYIyfRYTjp+97mkuv2ujQqkj6r41z2/O+I62L6kxGAbsE8vZxoEIiFA9wgVEBqcP4CWLR+eO8aBMlL/TaplNrCK/LMCv6ujpVJpY=
Received: from PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:55a::24)
 by PR1P264MB2127.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1b1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 06:55:55 +0000
Received: from PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9a1f:7b40:9db4:2f99]) by PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM
 ([fe80::9a1f:7b40:9db4:2f99%4]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 06:55:55 +0000
From: Karim Harouat <karim.harouat@ekinops.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Fw: Patch submission
Thread-Topic: Patch submission
Thread-Index: AdyA1Z3hE4G70gLjSOisEepf9r7HzwAX0d/q
Date: Fri, 9 Jan 2026 06:55:55 +0000
Message-ID: 
 <PA0P264MB683409224C7BAAD3FBF9A635F682A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
References: 
 <PA0P264MB68344306E6037E3237A1681CF685A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PA0P264MB68344306E6037E3237A1681CF685A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ekinops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA0P264MB6834:EE_|PR1P264MB2127:EE_
x-ms-office365-filtering-correlation-id: 0367039b-4304-469a-82ee-08de4f4c22d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|376014|1800799024|7053199007|13003099007|4053099003|4013099003|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?fvzDPMY8yIQrxEK9StEUETSfzKAuIcOdhAUjfjT2XX6+u6AfiLhOooX0dY?=
 =?iso-8859-1?Q?fIsZwCo1PTPTcOyyOJLsKMliEv31AMpr2BMmbbv9b+GlMPetM+XhVv4uw+?=
 =?iso-8859-1?Q?mEzaXsnKf7BaqQSirk8ozmc7jwve3EsK0cLeU13HqGr1KRXSoXN1li6ya7?=
 =?iso-8859-1?Q?TtjGs5DBxOvulPRHKO1ZbdC36SjLnpvp089a576mQY8xgOyrVgJbr4woOC?=
 =?iso-8859-1?Q?p1NNb9AFGnepXYGAh3STjeNBHMnhvjw9PduXA//p+wcIVEjSFz6hvhh1uk?=
 =?iso-8859-1?Q?mBP0sUP5c2T04Liybcjd+jvlcA4fDfOeyLz4/HWpPejwA35XPKb41qk1m0?=
 =?iso-8859-1?Q?sajttEThL6SoBynHTcPuNUjvLP/K9nEfMAZe0JwZxSzHvcPu33hsa+USM8?=
 =?iso-8859-1?Q?YZRfQZvtjaBBSNn0fADRoNm+wVKe20qCYJryVA8CZY7h7xumzrdjyGH8Rc?=
 =?iso-8859-1?Q?JHt1a1LkDjGHMDzxmMiUaMRa3psoxUIMCUx5QcMxMJWEP7WbH1miKFtf3t?=
 =?iso-8859-1?Q?ni4BbUpsycgDgUF6HT3wUioRCDn0WIrahHkV+I9KDg8yBar0I+JktI4+wu?=
 =?iso-8859-1?Q?IBGrTIXXJxKTHTe1jvLgKuwuJjhWRuzWL9Xw+FBD30fhZlSD1ifw78HLK1?=
 =?iso-8859-1?Q?HJUvfIC9owdJT51RPrrH2Ubr231i8DoqeU8hx+qvyh/kzIG4BXhZyPJQ+Q?=
 =?iso-8859-1?Q?5bGG5SX4wFMONxm/frKqD9KJuf4UwphT7WulsCBUc9t/ha59sOtHWYPXe8?=
 =?iso-8859-1?Q?5dkCa/SpsL2atQxIJ6MmR8UyS4GoUyVplpqHplG+vmyibD1TdZ5pSy8Eyv?=
 =?iso-8859-1?Q?KVbk6RmPIaDaZJMj+LPOOvF/kqYKjKU8/6Sns7E5qWHzR8NvuitCaY8gVC?=
 =?iso-8859-1?Q?fLX+Yur3WPEnEKEgjnYkh1j6MHmW0Sd6ZIYxM+No1M486aR6GvAeye6D0O?=
 =?iso-8859-1?Q?xXB7Hm9uRf4k909jTuBc8ooBSeybtWfYmtwadkuSbPPA86G2e0W7WbAeCW?=
 =?iso-8859-1?Q?wYxgoR5gL0rLlttMJ1JcqS9XLorhWyjp+a5/4cap7ZhQc4qYhFMLZMw4F5?=
 =?iso-8859-1?Q?0U9RM0dfZNyVXz4khW0KrnPVLkmSvxW9pPgIfy2mzvkM6Qisv1ErBY/bkX?=
 =?iso-8859-1?Q?9ypWl0+Ql7Fs30tGra/HFtugPkaBhYqQ4dfZzPXPRGiFlEBN5iTJJZRgT+?=
 =?iso-8859-1?Q?G00+djHr/yrN3OHL+LbxSWP8kJiUveNQS6hUgHjEHCcGApD5Kx5nLTMhgo?=
 =?iso-8859-1?Q?vkSMmV0OPJlkfA9epfdGwGYdZPZvv6Ne+dJPt/WUjbUQb7kcrDm/PH6VLj?=
 =?iso-8859-1?Q?9OfZt9TeFMsNaPG12Wjm8HOq7kFJCuQVs6UwoYZw9s5EgMw2I0pP/iNIAR?=
 =?iso-8859-1?Q?jUlfJg5HWElmffcAuPaEAkMXwEuRlwqhPwoR0oLMsgwwae88QGrMmyYJik?=
 =?iso-8859-1?Q?SFmRd6PUMfvls5R1r8OagCM054EJgrO4BKjWhgusXhkCB/fYvkr3AgjvCr?=
 =?iso-8859-1?Q?/KvMa9nbrn2NGYNl7mz8eNaJ2vqpZUQ78OugiTM7rUvA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(13003099007)(4053099003)(4013099003)(8096899003)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?tcLZtX95VeF+zo4NZBP1j75d1gyxfZEmLNEuBSd1P5OOkZtjjvGxgpgaTX?=
 =?iso-8859-1?Q?jPcEdOXqHBHnPFOkMpkgIqeyNIDWg2KkNFVGbGiYwj7DplqRZZ7SVAv/X/?=
 =?iso-8859-1?Q?qOd46UzbHCxFwcYtIJeNnzWFAjsmnZOooTBO02aCX5nNQTO5/oFArYsQwK?=
 =?iso-8859-1?Q?0xqEBdf7i/FNHZTljPfepPHehUQLfpJjOBYrURmZjjO5b6xSfOHicJR60f?=
 =?iso-8859-1?Q?5+NF4zJLU9xnZapjVWCbfhrsOnrxoQI7E+mL9udJllAHBJ5rYi+it47Wpq?=
 =?iso-8859-1?Q?Rt9PqCRap/wSlxYS2osBig85TAiRCOVPVxis13OLsIBaZ4AasuGP2Wu2T7?=
 =?iso-8859-1?Q?mUnpOLsgM4jnvMAHhohRJXQ13KuoNrMcE4d//rVxBuBucNUP1mt6OcWHFg?=
 =?iso-8859-1?Q?KenyN047oqJN/WpxAYJ6vys3rTbq/968lND0vSHU5cU5dFwtlsNN29qWXf?=
 =?iso-8859-1?Q?vt61WoB5g+enqQoQxH6JtgUcWMR0E2PszxRO3lI4F/RYq36lUlxiVIUARc?=
 =?iso-8859-1?Q?cliqi/R5nGTr78Wu/JdA9mWWVA+apINPKaRGA+l/m2yWqW3JtgJtvObSgi?=
 =?iso-8859-1?Q?/A22+B8e9wK0C+dhVmA2sZbozUWRYXU89qQK+ApRps8o0+fYYZDKQEs/Cf?=
 =?iso-8859-1?Q?iQWKWqtKCzwl37CZxtGv6vlf6W5Av8WinFPNCs6jwUWLRccVJJVyMSF+Eg?=
 =?iso-8859-1?Q?o6/GLEHrg5+9f+gY7RiTKKT/Ar6qNBNr0LM4p3w8jWpOqbKwuIevyep9sK?=
 =?iso-8859-1?Q?etWaqmuGB7y6c4h1aKcbFhS2iCt/L5EwLz0GpPrz0TL3UfLvvVLsWxzo3R?=
 =?iso-8859-1?Q?p3JWfoREKAmLJO9pCA3B5SdTQ9LW/6abqVCCvrGI25Jd8osIDjxfDtiGKy?=
 =?iso-8859-1?Q?oNcUN1un7cutR0OQ0S7ZCGCc4IVQ6S1SXCqmf7VBl+q/JkqcrOAGKtNa+x?=
 =?iso-8859-1?Q?0mC2v9crnahbREbl2YxMJhdjKClsUPUQ6lPYnwnUKONN4tpClvRzNDes+e?=
 =?iso-8859-1?Q?VHLxtc6W12j8aEd4e+1U2ZD0uEfINYVA8RTCmgRJ148UqcWn1/XwJob/Ej?=
 =?iso-8859-1?Q?8HWlVO0Y0lRL1InlMsgboRoE3QwiZlmY6ymhoocl/Hv30qpgbBgFydaxBD?=
 =?iso-8859-1?Q?7XfzTN1OVBstBfXGffVxvSETV34J0ss4i8h6Zz2WfTk+qKf3HVW1jzzFVV?=
 =?iso-8859-1?Q?eZ/AQf0MPncEatj7895JiEna8dovAmLMhnO5yiw13mK7AXKzO6yAENpOwI?=
 =?iso-8859-1?Q?Be1RD8p4rXCBd5ll8Sxv2BwC7Cq1WPeanlNmMnMdBE+woeNbJbYFNtIJHF?=
 =?iso-8859-1?Q?xFygmz60sKldhDmss/BmZTy4+GbkqLtFTFpl/p9rp9CowxiW60Nc5AkcAR?=
 =?iso-8859-1?Q?wkScjzYmiDzFmXkECFnJIks+esz6Y1mRHmxHJzG2+Z4Vfq3S4VC/FNw3ic?=
 =?iso-8859-1?Q?YFDb31/O4bcyfJHvVrIGtBGA+W8/AAaRD4tez5LnTqefpX+ajUBko0B1jd?=
 =?iso-8859-1?Q?oAgZMOJ3MpJPiMCGQXp1aoG9ngL1h4PvaSBMYm/2SZw9hEzxBWFjJrSHeJ?=
 =?iso-8859-1?Q?BqdckC/rFYlIHjVZNGWktyoplB9dcIugh3Go5/P/95F6Sk+nwlBXGqtO4U?=
 =?iso-8859-1?Q?Ta3h+RKCHrIB/JHRd64Y8QI1OYLVVA7OvzPR93dJnAww+fnfblrTVKPCli?=
 =?iso-8859-1?Q?eCMNqrub7h1k4eMdgulLjsaIjqLg/oyxTrtBaz+HfKKeuWppogGkOxUuOZ?=
 =?iso-8859-1?Q?+bSvlRE6EdJIUiJ8kT+7tCiXCTPbWop0NJX3rlwUb6yhtPVciUCSFecbk9?=
 =?iso-8859-1?Q?cV8CaksBHw=3D=3D?=
Content-Type: multipart/mixed;
	boundary="_004_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_"
MIME-Version: 1.0
X-OriginatorOrg: ekinops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0367039b-4304-469a-82ee-08de4f4c22d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 06:55:55.3408
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f57b78a6-c654-4771-a72f-837275f46179
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qB/3XBueJE1xPawxw8Vz2sj0S8sZGC0uw7CazMGYrGsqm3zA9LP2vWlDiy4gv/rB0V+VCVrFu2TKOBmOeFGY/PzpE2l/bgqkN6f3bpFZaWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB2127
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 06:56:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13817

--_004_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_
Content-Type: multipart/alternative;
	boundary="_000_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_"

--_000_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hello
I'm resending the email.

________________________________
From: Karim Harouat
Sent: Thursday, January 8, 2026 8:34 PM
To: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org>
Subject: Patch submission


Hello



Happy new year



I am suggesting a patch to apply to lighttpd which is present in 1.4.80.



Thank you





Karim Harouat
Senior R&D Engineer
karim.harouat@ekinops.com<mailto:karim.harouat@ekinops.com> | www.ekinops.c=
om<https://www.ekinops.com/>
Phone:



This email may contain material and data that are confidential. Any review =
or forwarding without express permission is strictly prohibited. If you are=
 not the intended recipient, please delete all copies.



--_000_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div><br>
</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;">Hello</div>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
;">I'm resending the email.</div>
<div></div>
<br>
<hr tabindex=3D"-1" style=3D"display:inline-block;width:98%">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><font color=3D"#000000" style=3D"font=
-size: 11pt;" face=3D"Calibri, sans-serif" data-ogsc=3D""><b>From:</b> Kari=
m Harouat<br>
<b>Sent:</b> Thursday, January 8, 2026 8:34 PM<br>
<b>To:</b> poky@lists.yoctoproject.org &lt;poky@lists.yoctoproject.org&gt;<=
br>
<b>Subject:</b> Patch submission</font>
<div>&nbsp;</div>
</div>
<div style=3D"word-wrap:break-word" lang=3D"EN-US">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
Hello</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
Happy new year</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
I am suggesting a patch to apply to lighttpd which is present in 1.4.80.</p=
>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
Thank you</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
&nbsp;</p>
<table style=3D"width:360.0pt" width=3D"480" cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" class=3D"x_MsoNormalTable">
<tbody>
<tr>
<td style=3D"width:250.5pt; padding:0cm 0cm 15.0pt 0cm" valign=3D"top" widt=
h=3D"334">
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
<b><span style=3D"font-size: 10pt; font-family: &quot;Arial&quot;, sans-ser=
if; color: rgb(51, 94, 121);">Karim Harouat</span></b><span style=3D"font-s=
ize: 10pt; font-family: &quot;Arial&quot;, sans-serif; color: rgb(51, 94, 1=
21);"><br>
</span><span style=3D"font-size: 10pt; font-family: &quot;Arial&quot;, sans=
-serif; color: rgb(51, 94, 121);">Senior R&amp;D Engineer</span><span style=
=3D"font-size: 10pt; font-family: &quot;Arial&quot;, sans-serif; color: rgb=
(51, 94, 121);"><br>
<a href=3D"mailto:karim.harouat@ekinops.com" target=3D"_blank"><span style=
=3D"color: rgb(51, 94, 121);">karim.harouat@ekinops.com</span></a></span><s=
pan style=3D"font-size: 10pt; font-family: &quot;Arial&quot;, sans-serif; c=
olor: rgb(51, 94, 121);">&nbsp;|&nbsp;</span><span style=3D"font-size: 10pt=
; font-family: &quot;Arial&quot;, sans-serif; color: rgb(0, 105, 180);"><a =
data-auth=3D"NotApplicable" href=3D"https://www.ekinops.com/" target=3D"_bl=
ank"><span style=3D"color: rgb(51, 94, 121);">www.ekinops.com</span></a></s=
pan><span style=3D"font-size: 10pt; font-family: &quot;Arial&quot;, sans-se=
rif; color: rgb(51, 94, 121);">&nbsp;</span><span style=3D"font-size: 10pt;=
 font-family: &quot;Arial&quot;, sans-serif; color: rgb(61, 60, 63);"><br>
</span><span style=3D"font-size: 10pt; font-family: &quot;Arial&quot;, sans=
-serif; color: rgb(51, 94, 121);">Phone:&nbsp;</span><span style=3D"font-si=
ze: 10pt; font-family: &quot;Arial&quot;, sans-serif; color: rgb(51, 94, 12=
1);">
</span><span style=3D"font-size: 10pt; font-family: &quot;Arial&quot;, sans=
-serif; color: rgb(61, 60, 63);"><br>
<br>
<br>
<span style=3D""></span></span></p>
</td>
</tr>
<tr>
<td style=3D"width:360.0pt; padding:0cm 0cm 15.0pt 0cm" valign=3D"top" widt=
h=3D"480"></td>
</tr>
<tr>
<td style=3D"width:360.0pt; padding:0cm 0cm 0cm 0cm" valign=3D"top" width=
=3D"480">
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
<span style=3D"font-size: 8pt; font-family: &quot;Arial&quot;, sans-serif;"=
>This email may contain material and data that are confidential. Any review=
 or forwarding without express permission is strictly prohibited. If you ar=
e not the intended recipient, please delete
 all copies.&nbsp;</span><span style=3D"font-size: 8pt; font-family: &quot;=
Arial&quot;, sans-serif;"></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"x_MsoNormal" style=3D"margin: 0cm; font-size: 12pt; font-family=
: &quot;Aptos&quot;, sans-serif;">
&nbsp;</p>
</div>
</div>
</body>
</html>

--_000_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_--

--_004_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_
Content-Type: application/octet-stream;
	name="0001-lighttpd-apply-patch-CVE-2025-8671.patch"
Content-Description: 0001-lighttpd-apply-patch-CVE-2025-8671.patch
Content-Disposition: attachment;
	filename="0001-lighttpd-apply-patch-CVE-2025-8671.patch"; size=11052;
	creation-date="Thu, 08 Jan 2026 19:31:57 GMT";
	modification-date="Fri, 09 Jan 2026 06:55:10 GMT"
Content-Transfer-Encoding: base64

RnJvbSBmNjQ0NGY4MGM5NjY4MTc3ODM4NDdhM2U4MzNkZmI1ZDRkZDhmZTRlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBLYXJpbSBIYXJvdWF0IDxrYXJpbS5oYXJvdWF0QGVraW5vcHMu
Y29tPgpEYXRlOiBUaHUsIDggSmFuIDIwMjYgMjA6MDQ6MjYgKzAxMDAKU3ViamVjdDogW1BBVENI
XSBsaWdodHRwZDogYXBwbHkgcGF0Y2ggQ1ZFLTIwMjUtODY3MQoKRml4ZXM6IENWRS0yMDI1LTg2
NzEKCkZyb20gR2xlbm4gU3RyYXVzcyA8Z3N0cmF1c3NAZ2x1ZWxvZ2ljLmNvbT4KCkNWRTogQ1ZF
LTIwMjUtODY3MQoKTGlnaHR0cGQgaXMgcHJvbmUgdG8gYSBkZW5pYWwgb2Ygc2VydmljZSAoRG9T
KSB2dWxuZXJhYmlsaXR5IGluIHRoZSBIVFRQLzIgcHJvdG9jb2wgZHViYmVkCidNYWRlWW91UmVz
ZXQnCgphcHBseWluZyBjb21taXQKaHR0cHM6Ly9naXQubGlnaHR0cGQubmV0L2xpZ2h0dHBkL2xp
Z2h0dHBkMS40L2NvbW1pdC84NDQyY2E0YzY5OTU2NmNkZDczNjllMDk2OTA5MjZmNDAzYjU0ZmM5
CgpTaWduZWQtb2ZmLWJ5OiBLYXJpbSBIYXJvdWF0IDxrYXJpbS5oYXJvdWF0QGVraW5vcHMuY29t
PgotLS0KIC4uLi9saWdodHRwZC9saWdodHRwZC9DVkUtMjAyNS04NjcxLnBhdGNoICAgICB8IDE4
MSArKysrKysrKysrKysrKysrKysKIC4uLi9saWdodHRwZC9saWdodHRwZF8xLjQuNzQuYmIgICAg
ICAgICAgICAgICB8ICAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDE4MiBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgbWV0YS9yZWNpcGVzLWV4dGVuZGVkL2xpZ2h0dHBkL2xpZ2h0dHBk
L0NWRS0yMDI1LTg2NzEucGF0Y2gKCmRpZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQv
bGlnaHR0cGQvbGlnaHR0cGQvQ1ZFLTIwMjUtODY3MS5wYXRjaCBiL21ldGEvcmVjaXBlcy1leHRl
bmRlZC9saWdodHRwZC9saWdodHRwZC9DVkUtMjAyNS04NjcxLnBhdGNoCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAuLmEzMDRkOTFmZjEKLS0tIC9kZXYvbnVsbAorKysgYi9t
ZXRhL3JlY2lwZXMtZXh0ZW5kZWQvbGlnaHR0cGQvbGlnaHR0cGQvQ1ZFLTIwMjUtODY3MS5wYXRj
aApAQCAtMCwwICsxLDE4MSBAQAorRnJvbSA4NDQyY2E0YzY5OTU2NmNkZDczNjllMDk2OTA5MjZm
NDAzYjU0ZmM5IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQorRnJvbTogR2xlbm4gU3RyYXVzcyA8
Z3N0cmF1c3NAZ2x1ZWxvZ2ljLmNvbT4KK0RhdGU6IFdlZCwgMTMgQXVnIDIwMjUgMDg6NTI6MTUg
LTA0MDAKK1N1YmplY3Q6IFtQQVRDSF0gW2gyXSBhdHRlbXB0IHRvIGRldGVjdCBIVFRQLzIgTWFk
ZVlvdVJlc2V0IERvUworCithdHRlbXB0IHRvIGRldGVjdCBIVFRQLzIgTWFkZVlvdVJlc2V0IERv
UyBhdHRhY2sgVlUjNzY3NTA2IENWRS0yMDI1LTg2NzEKKworVXBzdHJlYW0tU3RhdHVzOiBCYWNr
cG9ydAorCit4LXJlZjoKKyAgaHR0cHM6Ly9rYi5jZXJ0Lm9yZy92dWxzL2lkLzc2NzUwNgorICBo
dHRwczovL3d3dy5jdmUub3JnL0NWRVJlY29yZD9pZD1DVkUtMjAyNS04NjcxCistLS0KKyBzcmMv
aDIuYyB8IDEwNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrLS0tCisgc3JjL2gyLmggfCAgIDEgKworIDIgZmlsZXMgY2hhbmdlZCwgMTAzIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCisKK2RpZmYgLS1naXQgYS9zcmMvaDIuYyBiL3NyYy9o
Mi5jCitpbmRleCA3OTI2YTVlOS4uYjQyOTk0NTMgMTAwNjQ0CistLS0gYS9zcmMvaDIuYworKysr
IGIvc3JjL2gyLmMKK0BAIC0zNDksNiArMzQ5LDExIEBAIGgyX3NlbmRfcnN0X3N0cmVhbV9zdGF0
ZSAocmVxdWVzdF9zdCAqIGNvbnN0IHIsIGgyY29uICogY29uc3QgaDJjKQorIH0KKyAKKyAKKytf
X2F0dHJpYnV0ZV9jb2xkX18KKytzdGF0aWMgdm9pZAorK2gyX3NlbmRfZ29hd2F5X2UgKGNvbm5l
Y3Rpb24gKiBjb25zdCBjb24sIGNvbnN0IHJlcXVlc3RfaDJlcnJvcl90IGUpOworKworKworIF9f
YXR0cmlidXRlX2NvbGRfXworIHN0YXRpYyB2b2lkCisgaDJfc2VuZF9yc3Rfc3RyZWFtIChyZXF1
ZXN0X3N0ICogY29uc3QgciwgY29ubmVjdGlvbiAqIGNvbnN0IGNvbiwgY29uc3QgcmVxdWVzdF9o
MmVycm9yX3QgZSkKK0BAIC0zNTYsNiArMzYxLDk3IEBAIGgyX3NlbmRfcnN0X3N0cmVhbSAocmVx
dWVzdF9zdCAqIGNvbnN0IHIsIGNvbm5lY3Rpb24gKiBjb25zdCBjb24sIGNvbnN0IHJlcXVlc3Rf
CisgICAgIC8qKHNldCByLT54LmgyLnN0YXRlPUgyX1NUQVRFX0NMT1NFRCkqLworICAgICBoMl9z
ZW5kX3JzdF9zdHJlYW1fc3RhdGUociwgKGgyY29uICopY29uLT5oeCk7CisgICAgIGgyX3NlbmRf
cnN0X3N0cmVhbV9pZChyLT54LmgyLmlkLCBjb24sIGUpOworKworKyAgICAvKiBhdHRlbXB0IHRv
IGRldGVjdCBIVFRQLzIgTWFkZVlvdVJlc2V0IERvUyBhdHRhY2sgVlUjNzY3NTA2IENWRS0yMDI1
LTg2NzEKKysgICAgICogaGV1cmlzdGljIHRvIGRldGVjdCBleGNlc3NpdmUgZXJyIHNlbnQgYnkg
Y2xpZW50IHRvIGNhdXNlIHJlc2V0IGJ5IHNlcnZlcgorKyAgICAgKiBJZ25vcmUgSDJfRV9OT19F
UlJPUiBhbmQgSDJfRV9JTlRFUk5BTF9FUlJPUi4KKysgICAgICogICBXZXJlIEgyX0VfSU5URVJO
QUxfRVJST1IgdG8gYmUgaW5jbHVkZWQsIHRoZXJlIG1pZ2h0IGJlIGZhbHNlIHBvc2l0aXZlcwor
KyAgICAgKiAgIChub3QgYXR0YWNrcykgaW4gdGhlIGNvdW50LiAgSWdub3JpbmcgSDJfRV9JTlRF
Uk5BTF9FUlJPUiBoZXJlIGRvZXMgbm90CisrICAgICAqICAgY291bnQgKnJlc3BvbnNlKiBoZWFk
ZXJzIHRvbyBsb25nLCBidXQgdGhhdCBpcyBub3QgYSBjbGllbnQgZXJyb3IuCisrICAgICAqIEln
bm9yZSBIMl9FX1JFRlVTRURfU1RSRUFNLCB3aGljaCBpcyBjb3VudGVkIHNlcGFyYXRlbHksIGVs
c2V3aGVyZSwKKysgICAgICogICBidXQgbm90IGxpc3RlZCBpbiBjb25kaXRpb25hbCBiZWxvdyBz
aW5jZSBIMl9FX1JFRlVTRURfU1RSRUFNIGlzIHNlbnQKKysgICAgICogICBkaXJlY3RseSB2aWEg
aDJfc2VuZF9yc3Rfc3RyZWFtX2lkKCksIG5vdCBoMl9zZW5kX3JzdF9zdHJlYW0oKQorKyAgICAg
KiBJbmNsdWRlIGFsbCBvdGhlciBlcnJvcnMsIHRob3VnaCBzb21lIGFyZSBtb3JlIHByZXZhbGVu
dCB0aGFuIG90aGVyczoKKysgICAgICogICBIMl9FX1BST1RPQ09MX0VSUk9SLCBIMl9FX0ZMT1df
Q09OVFJPTF9FUlJPUiwgSDJfRV9TVFJFQU1fQ0xPU0VELAorKyAgICAgKiAgIEgyX0VfRlJBTUVf
U0laRV9FUlJPUiwgSDJfRV9DT01QUkVTU0lPTl9FUlJPUiwgLi4uCisrICAgICAqIE1hbnkgc3Vj
aCBlcnJvcnMgYXJlIHNlbnQgd2l0aCBHT0FXQVksIHNvIG5vdCBhcyByZWxldmFudCB0byBjb3Vu
dCBoZXJlLgorKyAgICAgKiBJZiByLT54LmgyLnN0YXRlIGlzIG5vdCBIMl9TVEFURV9DTE9TRUQs
IGluY2x1ZGUgSDJfRV9TVFJFQU1fQ0xPU0VEIGhlcmUuCisrICAgICAqCisrICAgICAqIEVycm9y
cyBmb3IgdW5yZWNvZ25pemVkIChub3QgY3VycmVudGx5IGFjdGl2ZSkgc3RyZWFtIGlkIGFyZSBu
b3QgY291bnRlZAorKyAgICAgKiBoZXJlLCBidXQgYWxzbyBkbyBub3QgYWZmZWN0IHBvdGVudGlh
bGx5IGluLXByb2dyZXNzIHN0cmVhbXMgd2hpY2ggYXJlCisrICAgICAqIGNvbnN1bWluZyByZXNv
dXJjZXMgaW4gbGlnaHR0cGQgYW5kL29yIGJhY2tlbmRzLCBlLmcuIGlmIHJlcXVlc3QgaGVhZGVy
cworKyAgICAgKiBhcmUgbm90IHlldCBjb21wbGV0ZSwgYSBiYWNrZW5kIHRvIGhhbmRsZSByZXF1
ZXN0IGhhcyBub3QgYmVlbiBzdGFydGVkLgorKyAgICAgKgorKyAgICAgKiBTaW1pbGFyIHRvIGgy
X3JlY3ZfcnN0X3N0cmVhbSgpIGZvciBIVFRQLzIgUmFwaWQgUmVzZXQgYXR0YWNrLAorKyAgICAg
KiBzZW5kIEdPQVdBWSB3aXRoIEgyX0VfTk9fRVJST1IgaWYgY291bnQgZXhjZWVkcyB0aGUgcG9s
aWN5IGxpbWl0IHNpbmNlIGlmCisrICAgICAqIHBlZXIgaXMgdHJpZ2dlcmluZyBzZXJ2ZXIgdG8g
c2VuZCBSU1RfU1RSRUFNLCB0aGUgcGVlciBpcyBtaXNiZWhhdmluZywKKysgICAgICogd2hldGhl
ciBvciBub3QgaXQgaXMgbXVsdGlwbGV4aW5nIHJlcXVlc3RzIGZyb20gZGlmZmVyZW50IGNsaWVu
dHMsIGJ1dCBhCisrICAgICAqIG5haXZlIHBlZXIgbXVsdGlwbGV4aW5nIHJlcXVlc3RzIGZyb20g
ZGlmZmVyZW50IGNsaWVudHMgY291bGQgcmVzdWx0IGluCisrICAgICAqIG1vcmUgcmVzZXQgKGZh
aWxlZCkgc3RyZWFtcyBvZiB2YWxpZCBzdHJlYW1zIGlmIG9uZSBjbGllbnQgY291bGQgdHJpZ2dl
cgorKyAgICAgKiB0b28gbWFueSByZXNldHMgc2VudCBieSBzZXJ2ZXIgb24gYSBzaW5nbGUgbXVs
dGlwbGV4ZWQgY29ubmVjdGlvbiwgYW5kCisrICAgICAqIHNlcnZlciByZXNldHMgYWxsIHN0cmVh
bXMgYW5kIHNlbmRzIEdPQVdBWSB3LyBlcnJvciAobm90IEgyX0VfTk9fRVJST1IpLgorKyAgICAg
KiBsb2cgd2F0Y2hlcnMgc3VjaCBhcyBmYWlsMmJhbiBjb3VsZCB3YXRjaCBmb3IgZXJyb3IgbG9n
IHRyYWNlIGluZGljYXRpbmcKKysgICAgICogZGV0ZWN0aW9uIG9mIHRoaXMgYXR0YWNrLCBhbmQg
Y291bGQgcmVzcG9uZCBhY2NvcmRpbmdseSwgYWNyb3NzIG11bHRpcGxlCisrICAgICAqIHNlcnZl
cnMuICBJbiBsaWdodHRwZCwgYSBjbGllbnQgY291bGQgdHJpZ2dlciBzZXJ2ZXItc2VudCByZXNl
dCBzdHJlYW0gdy8KKysgICAgICogZS5nLiBtaXNtYXRjaCBiZXR3ZWVuIHJlY2VpdmVkIGRhdGEg
YW5kIENvbnRlbnQtTGVuZ3RoLCB3aGVuIHByb3ZpZGVkLgorKyAgICAgKi8KKysgICAgaWYgKGUg
IT0gSDJfRV9OT19FUlJPUiAmJiBlICE9IEgyX0VfSU5URVJOQUxfRVJST1IpIHsKKysgICAgICAg
IC8qIHNpbXVsYXRlIHJlY2VpdmluZyBUQ1AgRklOIGZyb20gY2xpZW50IHRvIHRyaWdnZXIgaW1t
aW5lbnQgc2h1dGRvd24oKQorKyAgICAgICAgICogb24gc29ja2V0IGNvbm5lY3Rpb24gdG8gYmFj
a2VuZCwgaW5kaWNhdGluZyByZXF1ZXN0IHRlcm1pbmF0ZWQuCisrICAgICAgICAgKiBOb3RlOiBt
b2RfY2dpIG11c3QgYmUgY29uZmlndXJlZCBmb3IgdGhpcyB0byBoYXZlIGFueSBlZmZlY3QsCisr
ICAgICAgICAgKiAgIGUuZy4gY2dpLmxpbWl0cyArPSAoInRjcC1maW4tcHJvcGFnYXRlIiA9PiAi
U0lHVEVSTSIpCisrICAgICAgICAgKiBSZWdhcmRsZXNzIG9mIHdoZXRoZXIgb3Igbm90IHRoaXMg
b3B0aW1pemF0aW9uIGlzIHBlcmZvcm1lZCwKKysgICAgICAgICAqIGxpZ2h0dHBkIHdpbGwgc2No
ZWR1bGUgY2xvc2UoKSBvbiBiYWNrZW5kIHNvY2tldCAob3IgQ0dJIHBpcGUpCisrICAgICAgICAg
KiBhbmQgd2lsbCBjbG9zZSgpIGJhY2tlbmQgc29ja2V0IChvciBraWxsIENHSSkgdXBvbiBuZXh0
IHBvbGwgY3ljbGUgKi8KKysgICAgICAgIC8qci0+Y29uZi5zdHJlYW1fcmVxdWVzdF9ib2R5IHw9
IEZERVZFTlRfU1RSRUFNX1JFUVVFU1RfVENQX0ZJTjsqLworKyAgICAgICAgaWYgKHItPmhhbmRs
ZXJfbW9kdWxlKQorKyAgICAgICAgICAgIGpvYmxpc3RfYXBwZW5kKGNvbik7ICAvKihjYXVzZSBz
aG9ydCBwb2xsIGZvciBuZXh0IHBvbGwgY3ljbGUpKi8KKysKKysgICAgICAgIC8qIGluY3JlbWVu
dCBoMmMtPm5fc2VuZF9yc3Rfc3RyZWFtX2VyciBhbmQgY2hlY2sgZm9yIHBvbGljeSB2aW9sYXRp
b24KKysgICAgICAgICAqCisrICAgICAgICAgKiB0aW1lIHN0ZXAgaW50ZXJ2YWwgY3VycmVudGx5
IDIgc2VjczogKGxvZ19tb25vdG9uaWNfc2VjcyA+PiAxKQorKyAgICAgICAgICogc3RvcmUgdGlt
ZSBiaXRzIGluIHVwcGVyIG5pYmJsZSBvZiBoMmMtPm5fc2VuZF9yc3Rfc3RyZWFtX2VycgorKyAg
ICAgICAgICogICAoMzItc2Vjb25kIHRpbWUgc2xpY2U6ICgobG9nX21vbm90b25pY19zZWNzID4+
IDEpICYgMHhGKSkKKysgICAgICAgICAqIHRpbWVfYml0cyBhcmUgb25seSA0IGJpdHMsIHNvIHJl
cGVhdGVkIHRpbWVfYml0cyBjb3VsZCBjYXVzZSBmYWxzZQorKyAgICAgICAgICogICBwb3NpdGl2
ZSBhbmQgbm90IGRlY2F5IHRoZSBjb3VudGVyLCBidXQgd2VsbC1iZWhhdmVkIHBlZXJzIHNob3Vs
ZAorKyAgICAgICAgICogICBub3QgdHJpZ2dlciAqYW55KiBSU1RfU1RSRUFNLCBzbyB0cmlwcGlu
ZyB0aGUgcG9saWN5IHNvb25lciBpcyBvay4KKysgICAgICAgICAqICAgKHJhdGhlciB0aGFuIHBv
dGVudGlhbGx5IG1pc3NpbmcgcG9saWN5IHZpb2xhdGlvbiAoZmFsc2UgbmVnYXRpdmUpKQorKyAg
ICAgICAgICogZGVjYXkgY291bnRlciAoZGl2aWRlIGJ5IDIgKD4+IDEpKSB3aGVuIHRpbWUgc3Rl
cCBpbnRlcnZhbCBjaGFuZ2VzCisrICAgICAgICAgKiAgIChhbnkgdGltZSBpbnRlcnZhbCBjaGFu
Z2U7IG5vdCBzaGlmdGluZyBieSAoY3VyX2JpdHMgLSB0aW1lX2JpdHMpKQorKyAgICAgICAgICog
Y291bnRlciBpcyA0IGJpdHMsIHNvIG1heCBpcyAxNSAoMHhGKSB1bmxlc3MgYml0IG1hc2tzIGFy
ZSBhZGp1c3RlZAorKyAgICAgICAgICoKKysgICAgICAgICAqIFhYWDogc2VydmVyIHRyaWdnZXJl
ZCB0byBzZW5kIFJTVF9TVFJFQU0gdy8gZXJyb3IgaXMgdW5leHBlY3RlZAorKyAgICAgICAgICog
ICAgICBBIHN0cmljdGVyIGltcGxlbWVudGF0aW9uIG1pZ2h0IHNlbmQgR09BV0FZIEgyX0VfTk9f
RVJST1IKKysgICAgICAgICAqICAgICAgdXBvbiBmaXJzdCBvY2N1cnJlbmNlLgorKyAgICAgICAg
ICovCisrICAgICAgICBoMmNvbiAqIGNvbnN0IGgyYyA9IChoMmNvbiAqKWNvbi0+aHg7CisrICAg
ICAgICB1aW50OF90IGN1cl9iaXRzID0gKGxvZ19tb25vdG9uaWNfc2VjcyA+PiAxKSAmIDB4RjsK
KysgICAgICAgIHVpbnQ4X3QgdGltZV9iaXRzID0gaDJjLT5uX3NlbmRfcnN0X3N0cmVhbV9lcnIg
Pj4gNDsKKysgICAgICAgIGlmIChjdXJfYml0cyAhPSB0aW1lX2JpdHMpCisrICAgICAgICAgICAg
aDJjLT5uX3NlbmRfcnN0X3N0cmVhbV9lcnIgPQorKyAgICAgICAgICAgICAgKGN1cl9iaXRzIDw8
IDQpIHwgKChoMmMtPm5fc2VuZF9yc3Rfc3RyZWFtX2VyciAmIDB4RikgPj4gMSk7CisrICAgICAg
ICBpZiAoIWgyYy0+c2VudF9nb2F3YXkgJiYgKCsraDJjLT5uX3NlbmRfcnN0X3N0cmVhbV9lcnIg
JiAweEYpID4gNCkgeworKyAgICAgICAgICAgIGxvZ19lcnJvcihOVUxMLCBfX0ZJTEVfXywgX19M
SU5FX18sCisrICAgICAgICAgICAgICAiaDI6ICVzIHRyaWdnZXJlZCB0b28gbWFueSBSU1RfU1RS
RUFNIHRvbyBxdWlja2x5ICh4YWRkcjolcykiLAorKyAgICAgICAgICAgICAgY29uLT5yZXF1ZXN0
LmRzdF9hZGRyX2J1Zi0+cHRyLCByLT5kc3RfYWRkcl9idWYtPnB0cik7CisrICAgICAgICAgICAg
aDJfc2VuZF9nb2F3YXlfZShjb24sIEgyX0VfTk9fRVJST1IpOworKyAgICAgICAgICAgIC8qIGgy
X3NlbmRfZ29hd2F5X2Ugdy8gSDJfRV9QUk9UT0NPTF9FUlJPUiBvciBIMl9FX0VOSEFOQ0VfWU9V
Ul9DQUxNCisrICAgICAgICAgICAgICogd291bGQgY2F1c2Ugb3RoZXIgcmVxdWVzdCBzdHJlYW1z
IHRvIGJlIHJlc2V0IChhbmQgd291bGQgaGF2ZSB0bworKyAgICAgICAgICAgICAqIGNoZWNrIGgy
Yy0+c2VuZF9nb2F3YXkgPD0gMCBhYm92ZSBpbnN0ZWFkIG9mICFoMmMtPnNlbnRfZ29hd2F5KSov
CisrICAgICAgICB9CisrICAgIH0KKyt9CisrCisrCisrX19hdHRyaWJ1dGVfY29sZF9fCisrX19h
dHRyaWJ1dGVfbm9pbmxpbmVfXworK3N0YXRpYyB2b2lkCisraDJfc2VuZF9yc3Rfc3RyZWFtX2Ns
b3NlZCAocmVxdWVzdF9zdCAqIGNvbnN0IHIsIGNvbm5lY3Rpb24gKiBjb25zdCBjb24pCisrewor
KyAgICBpZiAoci0+eC5oMi5zdGF0ZSA9PSBIMl9TVEFURV9DTE9TRUQpIC8qYWxyZWFkeSBjbG9z
ZWQ7IHJzdF9zdHJlYW1faWQgb25seSovCisrICAgICAgICBoMl9zZW5kX3JzdF9zdHJlYW1faWQo
ci0+eC5oMi5pZCwgY29uLCBIMl9FX1NUUkVBTV9DTE9TRUQpOworKyAgICBlbHNlIC8qKHItPngu
aDIuc3RhdGUgPT0gSDJfU1RBVEVfSEFMRl9DTE9TRURfUkVNT1RFKSovCisrICAgICAgICBoMl9z
ZW5kX3JzdF9zdHJlYW0ociwgY29uLCBIMl9FX1NUUkVBTV9DTE9TRUQpOworIH0KKyAKKyAKK0BA
IC01OTMsNiArNjg5LDggQEAgaDJfcmVjdl9yc3Rfc3RyZWFtIChjb25uZWN0aW9uICogY29uc3Qg
Y29uLCBjb25zdCB1aW50OF90ICogY29uc3QgcywgY29uc3QgdWludDMKKyAgICAgICAgIC8qIFhY
WDogPyBhZGQgZGVidWcgdHJhY2UgaW5jbHVkaW5nIGVycm9yIGNvZGUgZnJvbSBSU1RfU1RSRUFN
ID8gKi8KKyAgICAgICAgIHItPnN0YXRlID0gQ09OX1NUQVRFX0VSUk9SOworICAgICAgICAgci0+
eC5oMi5zdGF0ZSA9IEgyX1NUQVRFX0NMT1NFRDsKKysgICAgICAgIGlmIChyLT5oYW5kbGVyX21v
ZHVsZSkKKysgICAgICAgICAgICBqb2JsaXN0X2FwcGVuZChjb24pOyAgLyooY2F1c2Ugc2hvcnQg
cG9sbCBmb3IgbmV4dCBwb2xsIGN5Y2xlKSovCisgCisgICAgICAgICAvKiBhdHRlbXB0IHRvIGRl
dGVjdCBIVFRQLzIgcmFwaWQgcmVzZXQgYXR0YWNrIChDVkUtMjAyMy00NDQ4NykKKyAgICAgICAg
ICAqIFNlbmQgR09BV0FZIGlmIDE3IG9yIG1vcmUgcmVxdWVzdHMgaW4gcmVjZW50IGJhdGNoIG9m
IHVwIHRvIDMyCitAQCAtNjA4LDggKzcwNiw4IEBAIGgyX3JlY3ZfcnN0X3N0cmVhbSAoY29ubmVj
dGlvbiAqIGNvbnN0IGNvbiwgY29uc3QgdWludDhfdCAqIGNvbnN0IHMsIGNvbnN0IHVpbnQzCisg
ICAgICAgICAgICAgICAoaDJjLT5uX3JlY3ZfcnN0X3N0cmVhbSA+PiA0KSArIChoMmMtPm5fcmVj
dl9yc3Rfc3RyZWFtICYgMHhmKTsKKyAgICAgICAgICAgICBpZiAobl9yZWN2X3JzdF9zdHJlYW0g
PiAxNikgeworICAgICAgICAgICAgICAgICBsb2dfZXJyb3IoTlVMTCwgX19GSUxFX18sIF9fTElO
RV9fLAorLSAgICAgICAgICAgICAgICAgICJoMjogJXMgc2VudCB0b28gbWFueSBSU1RfU1RSRUFN
IHRvbyBxdWlja2x5IiwKKy0gICAgICAgICAgICAgICAgICBjb24tPnJlcXVlc3QuZHN0X2FkZHJf
YnVmLT5wdHIpOworKyAgICAgICAgICAgICAgICAgICJoMjogJXMgc2VudCB0b28gbWFueSBSU1Rf
U1RSRUFNIHRvbyBxdWlja2x5ICh4YWRkcjolcykiLAorKyAgICAgICAgICAgICAgICAgIGNvbi0+
cmVxdWVzdC5kc3RfYWRkcl9idWYtPnB0ciwgci0+ZHN0X2FkZHJfYnVmLT5wdHIpOworICAgICAg
ICAgICAgICAgICBoMl9zZW5kX2dvYXdheV9lKGNvbiwgSDJfRV9OT19FUlJPUik7CisgICAgICAg
ICAgICAgfQorICAgICAgICAgfQorQEAgLTExMzcsNyArMTIzNSw3IEBAIGgyX3JlY3ZfZGF0YSAo
Y29ubmVjdGlvbiAqIGNvbnN0IGNvbiwgY29uc3QgdWludDhfdCAqIGNvbnN0IHMsIGNvbnN0IHVp
bnQzMl90IGxlCisgCisgICAgIGlmIChyLT54LmgyLnN0YXRlID09IEgyX1NUQVRFX0NMT1NFRAor
ICAgICAgICAgfHwgci0+eC5oMi5zdGF0ZSA9PSBIMl9TVEFURV9IQUxGX0NMT1NFRF9SRU1PVEUp
IHsKKy0gICAgICAgIGgyX3NlbmRfcnN0X3N0cmVhbV9pZChpZCwgY29uLCBIMl9FX1NUUkVBTV9D
TE9TRUQpOworKyAgICAgICAgaDJfc2VuZF9yc3Rfc3RyZWFtX2Nsb3NlZChyLCBjb24pOyAvKiBI
Ml9FX1NUUkVBTV9DTE9TRUQgKi8KKyAgICAgICAgIGNodW5rcXVldWVfbWFya193cml0dGVuKGNx
LCA5K2xlbik7CisgICAgICAgICBoMl9zZW5kX3dpbmRvd191cGRhdGVfdW5pdChjb24sIGgyciwg
bGVuKTsgLyooaDJyLT54LmgyLnJ3aW4pKi8KKyAgICAgICAgIHJldHVybiAxOworQEAgLTE1MTUs
NyArMTYxMyw3IEBAIGgyX3JlY3ZfdHJhaWxlcnNfciAoY29ubmVjdGlvbiAqIGNvbnN0IGNvbiwg
aDJjb24gKiBjb25zdCBoMmMsIGNvbnN0IHVpbnQzMl90IGlkCisgICAgIH0KKyAgICAgaWYgKHIt
PnguaDIuc3RhdGUgIT0gSDJfU1RBVEVfT1BFTgorICAgICAgICAgJiYgci0+eC5oMi5zdGF0ZSAh
PSBIMl9TVEFURV9IQUxGX0NMT1NFRF9MT0NBTCkgeworLSAgICAgICAgaDJfc2VuZF9yc3Rfc3Ry
ZWFtKHIsIGNvbiwgSDJfRV9TVFJFQU1fQ0xPU0VEKTsKKysgICAgICAgIGgyX3NlbmRfcnN0X3N0
cmVhbV9jbG9zZWQociwgY29uKTsgLyogSDJfRV9TVFJFQU1fQ0xPU0VEICovCisgICAgICAgICBy
ZXR1cm4gTlVMTDsKKyAgICAgfQorICAgICAvKiBSRkMgNzU0MCBpcyBub3QgZXhwbGljaXQgaW4g
cmVzdHJpY3RpbmcgSEVBREVSUyAodHJhaWxlcnMpIGZvbGxvd2luZworZGlmZiAtLWdpdCBhL3Ny
Yy9oMi5oIGIvc3JjL2gyLmgKK2luZGV4IDIxMTJjNjM3Li41MzU0MWZlNSAxMDA2NDQKKy0tLSBh
L3NyYy9oMi5oCisrKysgYi9zcmMvaDIuaAorQEAgLTkxLDYgKzkxLDcgQEAgc3RydWN0IGgyY29u
IHsKKyAgICAgdWludDhfdCBuX3JlZnVzZWRfc3RyZWFtOworICAgICB1aW50OF90IG5fZGlzY2Fy
ZGVkX2hlYWRlcnM7CisgICAgIHVpbnQ4X3Qgbl9yZWN2X3JzdF9zdHJlYW07CisrICAgIHVpbnQ4
X3Qgbl9zZW5kX3JzdF9zdHJlYW1fZXJyOworIH07CisgdHlwZWRlZiBzdHJ1Y3QgaDJjb24gaDJj
b247CisgCmRpZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvbGlnaHR0cGQvbGlnaHR0
cGRfMS40Ljc0LmJiIGIvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL2xpZ2h0dHBkL2xpZ2h0dHBkXzEu
NC43NC5iYgppbmRleCA3NDYwZDNkNzE2Li5lZjYwMDJkMDMxIDEwMDY0NAotLS0gYS9tZXRhL3Jl
Y2lwZXMtZXh0ZW5kZWQvbGlnaHR0cGQvbGlnaHR0cGRfMS40Ljc0LmJiCisrKyBiL21ldGEvcmVj
aXBlcy1leHRlbmRlZC9saWdodHRwZC9saWdodHRwZF8xLjQuNzQuYmIKQEAgLTE0LDYgKzE0LDcg
QEAgU1JDX1VSSSA9ICJodHRwOi8vZG93bmxvYWQubGlnaHR0cGQubmV0L2xpZ2h0dHBkL3JlbGVh
c2VzLTEuNC54L2xpZ2h0dHBkLSR7UFZ9LnQKICAgICAgICAgICAgZmlsZTovL2luZGV4Lmh0bWwu
bGlnaHR0cGQgXAogICAgICAgICAgICBmaWxlOi8vbGlnaHR0cGQuY29uZiBcCiAgICAgICAgICAg
IGZpbGU6Ly9saWdodHRwZCBcCisgICAgICAgICAgIGZpbGU6Ly9DVkUtMjAyNS04NjcxLnBhdGNo
IFwKICAgICAgICAgICAgIgogCiBTUkNfVVJJW3NoYTI1NnN1bV0gPSAiNWMwODczNmU4MzA4OGY3
ZTAxOTc5NzE1OWYzMDZlODhlYzcyOWFiZTk3NmRjOThmYjNiZWQ3MWI5ZDNlNTNiNSIK

--_004_PA0P264MB683409224C7BAAD3FBF9A635F682APA0P264MB6834FRAP_--

