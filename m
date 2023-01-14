Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.117246.1673707580431461243
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Jan 2023 06:46:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TlBgxoIM;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=037887763c=kexin.hao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30EEi7UM030325;
	Sat, 14 Jan 2023 14:46:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=date : from : to :
 cc : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=PPS06212021;
 bh=ogTDyD3a7WOffwZx0/TxC3QTreLdmBBy7tAWdUKrUR4=;
 b=TlBgxoIMNN7uMUV6M+mBkYZuISf9VWlQgps+W/TwEgrg8j6S8HvbjQEYIPPGKPWTAXqF
 qEcz3ntYi9WDSm9Dh83R6/fSeu4wFoopOXKUomdEfnR3qHjt04nAVxXX4xH6orYI0g6f
 mG13VQb6b0O7mqNgmDTi0eEnjgqiKn7UOknoKSvt4NohjU8czlNv6jRrhQFX+zwsrdsP
 KMLYfoaiW/KoyViEggL9MgY0GzwTbrbi/+FKD7ZL0mtWTfTxSMbKcArpBTPwC8xMkEcY
 sCO3seSaRefgQMVVt8bkbIXD+BWQwTDiwTTiyM8fGd8YGKMXvUwBrS7LzY6fSuSvUFGk Lw== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3n3kc88fk3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 14 Jan 2023 14:46:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j/w7fSJ+Iso5Q4BnqmsOHGJ7vxOlTqYtMdrKuSJVfxm+TDIXjBXO2jUwvASTFnQ9UQRgQOWppXYhs+uEmo41QStgsvHqo+1vUduX39txPU141ZyyCfBPSlMWagL89Url7Q4FSFDc8Z3TSO9T+GGD9ZFTkWAWKl/KvxOCydIUrR9rAqtmro3Z3Kd/dY6dSjuxAMYN4vj38VWC6wPpYbPxDd4uKnBauKrZAw/8BoYfMaRXQhur+6ea0vIeqb+PB9N0+S6rJul+IUcZYth1H9nUOevt7YPHQJVUqn4Qx5Sb3eAGo8K9Et0iAImioMcBoSzu198lYIgeeZTg+VSA04d4YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ogTDyD3a7WOffwZx0/TxC3QTreLdmBBy7tAWdUKrUR4=;
 b=AUYGrLWXGltPbHMH/kYUqMCj6WwIbzfoW7X5bGHb3zDdV0CsSs7lv18J/3prWbMC7PtbG/ruUW1CYeJ/009fcZOxusclFwAoMOF3y9uQ1YS7Pp93MkKDnGle8R/nHWKHPlvHTmScxwY1X+HgB4nrH9mgBstcl+b56MPz61MuWWpsePY/Xc1T53Rc/X+KOX03Z1sMdtLP4VDsUxR/7j05lecKF6nNh54NQ6kVBOjvY04lAACmRySbSeFf0hPps4BEZnZLOciXChDUPH/4IIfRdMtWdn29zor8Km6e/9jjZ+jUw3UbEikS7vifPaZVlKAKUtTLWQhnQ4Np80kpwUGaKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by DS0PR11MB7384.namprd11.prod.outlook.com (2603:10b6:8:134::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Sat, 14 Jan
 2023 14:46:13 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::6d0f:5f38:58c7:297a]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::6d0f:5f38:58c7:297a%5]) with mapi id 15.20.5986.018; Sat, 14 Jan 2023
 14:46:12 +0000
Date: Sat, 14 Jan 2023 22:46:07 +0800
From: "Kevin Hao" <kexin.hao@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, poky@lists.yoctoproject.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] meta-yocto-bsp: Update the default kernel to 6.1
Message-ID: <Y8LAL21LjZGEk5ii@pek-khao-d2>
References: <20230112113153.2639207-1-kexin.hao@windriver.com>
 <CADkTA4M2nFS0v3+qB1uW6ueQDeCzO8PPJ2RM1cm=Sm4_Jgr4Pg@mail.gmail.com>
 <ad7fbb932e7032df977927908f4e4ed90d071260.camel@linuxfoundation.org>
In-Reply-To: <ad7fbb932e7032df977927908f4e4ed90d071260.camel@linuxfoundation.org>
X-ClientProxiedBy: SJ0PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::12) To SA1PR11MB5899.namprd11.prod.outlook.com
 (2603:10b6:806:22a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5899:EE_|DS0PR11MB7384:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aaa8433-effb-4c12-5986-08daf63e14ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4F8mr/b5nRr6pFLlh7qMaGPlkNxw5yE/8ySWC52GgpP8R6tL25K+w4+V1THfTj1idR8fY9EXXN4SwmqMxu8FcJIIHjUixvNdIeQJGv82r9Emx3zvQiJzRLN0Lh9NMfTgsMXCovmMYN3Qix2WqRpZgl0wlxHrzOZGyn1B8d5EC8fvIPdBMuLSOzXzl7I7PGK5Rr/54K+ex9/LDR7qLZgHkmHK+2JI2d+x2dpHQtfZbUFvKAWgkpbTRbO5vbNavmlr6k18rlOiUexZ56zsrcK1OzNBKInTZNFXPkjrDsTE6HWwlBe7ahb4/nsR1cUmfL+LokFhjMRZSPYBkJWRtga8vtqxiOlGbk2afJDIm1Mr/61st4grnJZPUyDzTIxmioGnksDAuw5N9KjJjKcc0XtB0UNoaUUN4rq8BlP7HiG7hiwY1/z7lhJapCpCFapBNGMGs2Y3ml0Q5p+lPOvS674sP5ji40zl5r1nuJ1ofHMBzAlkqqUukM3fEivGTc9vrNwS+G4n2YocIS9Z6rIebMB0yb33HK28X8JTDllHomxROI2CVoWXIQxsZ2DmUkhsloQkMYuTiFW+bBuCJ+e8Ay7rj0Cufb7L7aGTt9xIEfw9VgZH67eatIImdmC7h3MVsotltIISW5FEEluKo11tlj8PqbzuX6E92a9vLj3DdDi3nvn7n+Ah/3nPtNUYb3K5z657+2S1973N6/sFPFYX9m7aWk2tcyo6wUP53OKTMoSn9cE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(7916004)(4636009)(39850400004)(346002)(366004)(136003)(376002)(396003)(451199015)(8676002)(6916009)(4326008)(54906003)(316002)(38100700002)(33716001)(66476007)(66556008)(66946007)(5660300002)(21480400003)(6506007)(44144004)(41300700001)(8936002)(2906002)(6666004)(186003)(966005)(15650500001)(83380400001)(6486002)(478600001)(6512007)(86362001)(26005)(9686003)(2700100001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?i6ctCbX0samFryYVJYF+MQVoxjsh/gOUYLAlm8pca/fDfCQ0ujOcfZt2AVYS?=
 =?us-ascii?Q?1rOX7J2yKJrQ4DAV/C3rPWNUHv+jnu9VR26CEvVx9HlQIaSu0xW8UpwigHb+?=
 =?us-ascii?Q?bF+DkK58zPvjE4we1RGnKZglo+eRNAufSfnDaYyg2pKovR3ul+cA/BiTcTVL?=
 =?us-ascii?Q?YuA/BEdQJPQvvl0lcRkbFn041/P7gQNPCkyd6wRvLO6K87oUriar7X5gyyTR?=
 =?us-ascii?Q?ZenDMedCbH+0UNqLThbG+5C4N450MDy+C9ZNoGu2hacjCJj1m+BXJQRZ5n6E?=
 =?us-ascii?Q?sHp2Yhdg4nt0LERHmbITOOMP0NL8x9iqC6Nvu/UBtxWpAgDdC6b4cVCPTRUo?=
 =?us-ascii?Q?RQ97jrqg8+Uwv77R4pZMLRdNN6FotnJjIFDoCDzplz1t4A0hnKjyfhGwfYDZ?=
 =?us-ascii?Q?a+/v2RrurDF1K56+sOA+I6J/uNcmuH07OMoLAEMmn/hIUd5aY32a75J6YUrG?=
 =?us-ascii?Q?Ak/R+rfJYwdgvXxy+EwV+s0r1m0HfEUFTFJZFIivkTkhD8ZzPWBaFRFMMVsQ?=
 =?us-ascii?Q?MDq5x3MQBtW2lhOqTmY6/NutL/KLgV3BGh5KfJjmCIfWjiwgITplrZ544M+i?=
 =?us-ascii?Q?8S13nCxh2CUjIy1qGuLac/h4HQiSmgpNA7hzjagKcjLy118lunui+PUrqw3W?=
 =?us-ascii?Q?DuHEfkXWY2sH2eO9Sj2KUfce2Xaz16z1MTjibWwqAwpcEtHt/pFk+sjSsWii?=
 =?us-ascii?Q?pY17xWe/XlfkFNxW8KbO3AkVT3mjlhprk+Q4aNAuP7aix5E1D/Z3x2XqidFk?=
 =?us-ascii?Q?txQrLqM2BzehkVlSJBtYjXH0cm+lYmVz8xWPwwP13dfZuqGpej+3KW118kbd?=
 =?us-ascii?Q?XQSKrPao4HBUsS9knHwhXIFo+cdSJYBhoCYDBwgKP02kD8rHFAOILVr/HhUN?=
 =?us-ascii?Q?LeycXHOeud6y65CgGf8WsoxV757Oo762rjDv+6cmZd5sVf0qJxXVruNelaqQ?=
 =?us-ascii?Q?Ldt3b++tuz8Mo00EpJKxD1FRBs5y4b2bZbOUQTMdRns8GA8mxoppTUhyaLeP?=
 =?us-ascii?Q?u9g3mXoX4ObFLLf6kxccWAJuH/p18t5eO+JkJS15b3zNfROt8MzP/wHzqqbG?=
 =?us-ascii?Q?kUsrSMrTJPs+J27CNQcL/4NwhfM6v/a+spxNGvANlXZiruOLGUrSiW834sBD?=
 =?us-ascii?Q?iJYwgLTgolbbijrTESIJYdYLxpTTwq2P8CTtddWba2LEg3/aOOnJsvspjlQ7?=
 =?us-ascii?Q?Aa+4DNqfHehBOBNEEYRvija3LTbaaJmDCL0ouW6adiwhe5m7JyIuSwwIzeZV?=
 =?us-ascii?Q?NRZK5hQBFOwRcWDCkyKXQYigNgv254gJwm2M83C6K/52L+yVOc7eD17f9pkF?=
 =?us-ascii?Q?WC0Xr05FatRLPisXDxdB7tWqpNoe8PB6sGJPLUpIsdwejGH7Znf9dd46iLBh?=
 =?us-ascii?Q?liZjBJckZeLshllWtIRgalQK2lLPoroneZK/Y1bWqCIi1yIAt9ZV4Vhnj+tx?=
 =?us-ascii?Q?aLdKIU7mV5pGQSgCkdl9bLFKc7mSNRba7tKMiZhCFTc6sbG2CdidcP9GMxek?=
 =?us-ascii?Q?zo+bfaQXdoVTjhDg2Y5fnlS1IJCZjTsacFbjQi6rksYb3E2AQfBolJO+i/ar?=
 =?us-ascii?Q?JedT5qHS2gN4rbO8DOsH7YikrWHOzaNkyJ4iRrNSTqHex2CRhswlKSxpjrjE?=
 =?us-ascii?Q?Ag=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aaa8433-effb-4c12-5986-08daf63e14ec
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2023 14:46:12.7972
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Sp2ebCWMa4Jzewavm/bQLeOOEfLV/8mbPiftVXhvgn7wSmuMZAwwIs7ZSCjRLtXws0y4bKb4UX9KzV8YrrpRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7384
X-Proofpoint-GUID: qp5qMQnqKh0xvRAcyx9xf8qHpcg5VQC6
X-Proofpoint-ORIG-GUID: qp5qMQnqKh0xvRAcyx9xf8qHpcg5VQC6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-14_05,2023-01-13_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 clxscore=1011 adultscore=0 malwarescore=0 impostorscore=0 mlxlogscore=986
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2301140106
X-Groupsio-MsgNum: 12998
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mgeCuvWAxzbna7dn"
Content-Disposition: inline

--mgeCuvWAxzbna7dn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 14, 2023 at 02:08:28PM +0000, Richard Purdie wrote:
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the sender an=
d know the content is safe.
>=20
> On Thu, 2023-01-12 at 09:14 -0500, Bruce Ashfield wrote:
> > Thanks Kevin,
> >
> > This looks good to me.
> >
> > I'll start the removal of 5.19 shortly (once this merges).
>=20
> Thanks for the update!
>=20
> This did merge but afterwards, a warning seems to have cropped up:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/62/builds/6530
>=20
> WARNING: linux-yocto-6.1.3+gitAUTOINC+c56c1ed8bd_872afe79c5-r0 do_kernel_=
configcheck: [kernel config]: This BSP contains fragments with warnings:
> [INFO]: the following symbols were not found in the active configuration:
>      - CONFIG_OCTEON_USB

This is a known issue. The fix has already been merged into yocto-kernel-ca=
che and the
warning will disappear after Bruce bump the SRCREV_meta.

Thanks,
Kevin

--mgeCuvWAxzbna7dn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAmPCwC8ACgkQk1jtMN6u
sXH7+Af/RWwnpkbMsBHlqRsNqWyEDBBPKboTjsYDAufgMqJbg9b7eS777gzDY4hA
UfZOQ5+8/vODCPDhtJSB5rsiDi2B2SJkCZo335xBpQBmrv7+nSm/2fNKlCv5QIzO
8z7mhWJIIb8eataM2hKs9EbTzs0xh3Yo1UnevBH3F1O70VUW3DHEPHZBrbEbkaf1
HFGTmp6nqtj5D1WUKTyVmdjStCoNSv2RECcF1ydUEWTkZYSv4BGkUxiBCsmpYlNN
AHPEqRlzYh21gFr1O+XMCvttjB1aGvR16tKo9jqlReg3dsfAZKVfU29CixpP/nJP
Mc+aeB8V50twhA3WUT3xMydFPq3+Ew==
=6U6E
-----END PGP SIGNATURE-----

--mgeCuvWAxzbna7dn--
