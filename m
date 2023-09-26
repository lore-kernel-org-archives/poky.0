Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49B2AE7E622
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 11:21:22 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.73])
 by mx.groups.io with SMTP id smtpd.web10.16605.1695727276282308778
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 04:21:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@navimatix.de header.s=selector1 header.b=sOapsduh;
 spf=pass (domain: navimatix.de, ip: 40.107.8.73, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cool+p4MsuPGs5zPdjdFEVFVPvP7U1RkH/ZtXpmb6i7STpPbno79rimJhtJo1S4EsIZUVkhlksfiY1h4YB9HwMoberMC8LLE88eNSkr4AMYf/0aWhLM3vaXZwj0E31o+ig96o5+PZKbYEKZJBK1nfBNBjFAQ6MLU/rNo5Co4hA/vy7xNV/xNsMDYeJFaDVzsHvARi+QIbeCTb3x8zHjYx1mt5VBf+drgFEUHIdlGuNrmKXDs4uMZC70AjMKpOfEXqpm8PW1SyUBEXDDO5ehqHJ7pbcdWALMOzdhhhXUiyCtVKNYP3PkuLtZjzdUVYEXk91WXZSlZCzMKqB4Zm4lk/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZdAwdewS0a5pn1VaeuO8nPELooVzN/KS+lafjx2jDyI=;
 b=nSvGLQa4lEdZCkyJV1zjqjFDeWxVNfD57Bt9KOKjhgkCPVDJytEm5sqs9qBjolVg1VzcDoP3T9vcBDOTJ8hiU5/TPE0HyIbliJ9SAkUvgZOR7pZvDMpVJDwwYlVC8PoKh2Cltbf50D07Z5KQ2RUXtWfg+qUnrnR/NrH2wAYrzsropDF6xtV7BUDYGTFCVcimx9fyCFxtirIY9bzfmAd/AObHFlBHftmpCFySXHBSDam93Ydrw9YcT5LX/ZhaD8MswaU/X/8a0c5cgFHa2u8xIdHz1YFRr+Kf4PuOS+yLES5z4FX/KKyg07i8SupioGtNYUp9COm6xb/tpdqw9Odx6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZdAwdewS0a5pn1VaeuO8nPELooVzN/KS+lafjx2jDyI=;
 b=sOapsduhaQ2ngm1jBzKOQ02aY9sywcxHsrQaVSIsGDFi9W50+4Eoolgv25wGh+sIaRDPY4cD/ydzYPejZ23Y2GY/naFdzBwZHKljDpgeInMhHDeFHedYpacynmvW/dgFri6Bsw5LXFuQOuzkAqwwCaB/UEmraDWXqY7+plcACAc=
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26) by DB9PR01MB7418.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:21d::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.18; Tue, 26 Sep
 2023 11:21:11 +0000
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::fedc:a1fb:55e9:fb31]) by
 VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::fedc:a1fb:55e9:fb31%3]) with mapi id 15.20.6838.016; Tue, 26 Sep 2023
 11:21:10 +0000
From: =?iso-8859-1?Q?J=F6rg_Sommer?= <joerg.sommer@navimatix.de>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: menuconfig doesn't work with UBOOT_CONFIG
Thread-Topic: menuconfig doesn't work with UBOOT_CONFIG
Thread-Index: AQHZ8GrAH0nvLqvhX0Wf5XIXw9nFRw==
Date: Tue, 26 Sep 2023 11:21:10 +0000
Message-ID: 
 <VI1PR0102MB31369595C0BDC52F60C4D272FCC3A@VI1PR0102MB3136.eurprd01.prod.exchangelabs.com>
Accept-Language: en-DE, de-DE, en-US
Content-Language: aa
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR0102MB3136:EE_|DB9PR01MB7418:EE_
x-ms-office365-filtering-correlation-id: cc16a995-1005-4fed-1be1-08dbbe82afcb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TuWjIt0IZ3aLzl0R3GeRH0jWbBpUFbCkRehtdL1JUeJQt2Wpc37M56EvRohIPMA9DSMBnk9WI6aY5b3bCoRhO80iZkBZ/JAlfNDzLzcx5Wlii6pcnHHIEKOekQ/enDf32MuOx/Cy7PH+XJZ7MySUzUP8R1gHNBhKuI8Yc6zgAMbp3R7IZyfIFigTTzLggFga22G3DY5xtGxgfuzfa2PkHty2HtwbJ9mvXesuaZAg35k56kuReWzJPiaUm3DA+ktH/RtyAgT3VJeupoBzHuR0g4WLBZCCxczN2V47IkfT3aBEcm1cGamj0PqvbANLtZn08c9QEaFNsJSB8Y/zVBlvinlMT/Fpj6ee3vN68+FoP1LTonIcvvgcPn6pUOOrv0LcfM9GoDnSIADc+qziG+rMDLcjkKat2w/ZxstHOvTxvgZWlAHnLU42vkPie1/rfZPdTIaVP5LvUPkc9asor3RmcwB+bYQTYTV/TXzcXMaLltbnrpzDscR58z82Z512w7PFBVrlnxJFe/t19EVlYvvtQkF3bvkCHVoVAxCaqj9RmBPR8ufAcKv/5OCsiuDA0sjVdB+ADMqVoxK4qiNWddhk+B0Y0K4KJjeAHCHRoz74YglLVNrYO6YZ+jlMd5EZIogs
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0102MB3136.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(136003)(39840400004)(396003)(366004)(230922051799003)(451199024)(1800799009)(186009)(4744005)(55016003)(8936002)(5660300002)(8676002)(26005)(71200400001)(508600001)(91956017)(38070700005)(86362001)(76116006)(38100700002)(6916009)(122000001)(66476007)(52536014)(316002)(66446008)(66556008)(66946007)(64756008)(9686003)(2906002)(41300700001)(33656002)(7696005)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?EUiQ08jJcR4DR/wvQTDnlg/OSq96p4KkBhwo6IfK51q8mc7XJsOo1fQFmL?=
 =?iso-8859-1?Q?e4anZsj6ATaDCMhiVp4pdzTaZwZRQo5cZ/bYTnXp29Rg/+uvlPIK5F6nq7?=
 =?iso-8859-1?Q?WowpdECLKMG8PPzeuc21jace+PaNeBkkIgWIn5yCPK45a3Kz8/mYlEhs25?=
 =?iso-8859-1?Q?a5xLIxpfUPdqAqB+SDP2tOGMfEdRAJu3l7QkyAfSZ3GDADwIB2KXKUTnK1?=
 =?iso-8859-1?Q?ILwkIp3L7/UmcLZG9Zm2FDLq3ML41qbDIDqeDTQIZvqB9n06HniGIQ4/8P?=
 =?iso-8859-1?Q?C5Yt7PTgXvuz27L/do9ckQMb4yxV2/Ici/NkW1A8JdkqV4L1NxhEYzg6+E?=
 =?iso-8859-1?Q?+hTLyRLONfy0SRCxq6kG8DeOlLCtW34t0coKlGL5EJpty5yfjHqtZUWPp2?=
 =?iso-8859-1?Q?rX4P6qsc7B4tPvDsh1sIw0ez8DZcaXsWFUsoObMlc2Ho3EgKuTGPGBQxjJ?=
 =?iso-8859-1?Q?Wlj9xXqh9bfh7dQ3cC/D6JQWS4kJO7DG3zIWK2l4RoE7Pqt3sgUhHxi7a3?=
 =?iso-8859-1?Q?4yOnOu+uVSHTqIo1qbqyy9YMRW9lmEY2hjR7gYSYNNH78Ipt2P6/AkTGKd?=
 =?iso-8859-1?Q?osVdlhp2/fj+jPXu+kStzCtuhNiRAIfp8sWRIzyU5MOqc+7L6mDahaQGVD?=
 =?iso-8859-1?Q?K6dsmQm4PHKLjN9anfwj3+nMr/rYLuAHpTM8OnCtsXUR+mw8hN4dl0/S2e?=
 =?iso-8859-1?Q?pulRYnJpJBQgHBCpPAaXx4gf9kp3V9VcY4ls2+jj9kulTXnUclvuLNQqHy?=
 =?iso-8859-1?Q?yTJFgJeNY0NT74znCafAFiXLjuiLUmplQSC0K5iXSLnRORarM+KSncLp0z?=
 =?iso-8859-1?Q?kBx9YhTzgPBGD0R2fmhg6TS+9eJMPDUxmetLa2jZ8nJEAb2dOx4nOrjQ5h?=
 =?iso-8859-1?Q?VzxMGUM2eMZq1BcOEw+5XJ6YrP/um8HiDKnfeBHHCeOupFB81jAn2zCmrr?=
 =?iso-8859-1?Q?yNyB2M+L58R30zuC2Q2k8QZSmiIprJb7+AKv4JFSFHSYcoccDQwMFGayXt?=
 =?iso-8859-1?Q?xlr7mQY+U47Ts+Ej9paFF+c1DtGVQBHyWU4HHtBjbRIQfeXgiefNj8i2g6?=
 =?iso-8859-1?Q?sLJulcf2vLrMTEHaAf7RoZbPckqTX3un8ED4AubZPz2jLv/QKfaq3gM8q9?=
 =?iso-8859-1?Q?DzByv7aL60nGuldzq05Q8H1Zc69QiQswYPrLWcImxfj2v4LI9EumpPxbYZ?=
 =?iso-8859-1?Q?TEx18MPqc0gQR65mAINQpM5perJ6uTrbxnnfVkI8AQlwoK1jF98n3mNIoq?=
 =?iso-8859-1?Q?nuhaqLavockCQ+4rKbGOmZbpTj4dgIgFXhM6M1CwEaeYmWOOgAivbGZV5T?=
 =?iso-8859-1?Q?LupT29E8s0bDA64IDtNg3EKPYVA2f2rgV/kzSX6uxQOZ0JDfxbwH0Ag+ox?=
 =?iso-8859-1?Q?yNvEScFyDLb5EjIZEn7pkurtC+718kEDv9m1zO3jfniuzgzXHIRmELnz7a?=
 =?iso-8859-1?Q?ohYLzGEHz4W7v0xphsGlIPlnXt5XEkOSiUnce/2nhhpBCsWzbgrzbxw5Cj?=
 =?iso-8859-1?Q?S++AobHSfhaJjI2w23MIfJVpqjs6kC7unP9ZqZNDk21IsZjOSqgOVquMDy?=
 =?iso-8859-1?Q?bBmYo6ZjA6YSpk+DkdfmKQ30AF6PCRQAuSS6CXwOCM3dK/24PHPPQ03p9r?=
 =?iso-8859-1?Q?n1wuqHlNEe0sF0GpPhvSFlKFhpmZkc7m8A?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc16a995-1005-4fed-1be1-08dbbe82afcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2023 11:21:10.7180
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c54OVPrQLRmfS5VeMGnb65m3DsCecLqEbqUp3ylpICwqfiAbIbQnmDQ+F6FQYeQPcrUy+EtOVjBkaD0YXjeNw0Vtx4fQ25Kx6ppMwYOWvVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR01MB7418
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 26 Sep 2023 11:21:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13166

Hello,=0A=
=0A=
what's the common way to run `menuconfig` for u-boot when UBOOT_CONFIG is s=
et? When UBOOT_CONFIG is set the config is saved in a subdirectory and menu=
config and diffconfig do not work. One way would be to set KCONFIG_CONFIG_R=
OOTDIR, but should this happen in the u-boot recipe?=0A=
=0A=
=0A=
Kind regards=0A=
=0A=
J=F6rg Sommer=0A=
=0A=
--=A0=0A=
Navimatix GmbH=0A=
Gesch=E4ftsf=FChrer: Steffen Sp=E4the, Jan Rommeley=0A=
Registergericht: Amtsgericht Jena, HRB 501480=0A=

