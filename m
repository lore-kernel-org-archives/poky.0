Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.26020.1661215929385051307
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 17:52:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Gc39RrsO;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=5234fd7dec=kexin.hao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27N0q3wN007625;
	Tue, 23 Aug 2022 00:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=date : from : to :
 cc : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=PPS06212021;
 bh=JFE82zKkv1tfvYmg91t3yI8Q/G+deHCo2wzmXOY0URw=;
 b=Gc39RrsONMh+2f8BimNBPqHdfLkKOqgHFFPdcVY/QvShcBMDIbOH8Tnjxjr0Bp6M/67e
 adSF5QJyTS6UneMhFz7c159qEjcweeO2oeIEbmvqSC/kVwCyBpd1s5zdXLT1mro3DBBe
 vrJZQf2nyz+QBalmyEqBZOV7z914aE7f61ZUkcLz/it6NBauidQGbrBKnUaADc2IQMaZ
 qaDk3ZyZ4ogtrNoKdw2gMj7KMO4zkSKiKl2Oq3B/VvaDsamLougsD+ddYw4IHuMyXQW8
 eld3YUIWb26wELuFaYyxSP/BdQ6finsaZnEdQQIaftOi/RUY7nv4q07W09XGG4Uvmgaz ew== 
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2045.outbound.protection.outlook.com [104.47.51.45])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j2w13adp6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 23 Aug 2022 00:52:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eyh1wybdnYGZPey0RgaQjL0Iqn4LzWYzNjmxTwvZHg9J3Fkj4DVy/xJBaM2sX1BioBMKDEsl0sgp9peqXHWz2V7i5IOcbvsVDIb7iK3nNbTaAmyK0+g7i/oUFNZANvOX88z5TzWzUzMy7aRAfhbNbdO0Pk1i5RHwrXt1p7PUpodsBShS5PE6fm/CGjkBWyy+UgaA1horcbbeYTITeiDmViQVBdQBh2K7dVhey8QRzsppDJUvWdv9NNXbQ6/YWDGaqKssCRNSf8I6/aMbgmCaTH6njlx+FB/bOnQ19nQsrKPOotowH4i4zSFiTzp7aUzS0C7ODo/kE17xqLdplM7Oig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JFE82zKkv1tfvYmg91t3yI8Q/G+deHCo2wzmXOY0URw=;
 b=dZvMq/ILwvXZTXzCWORgO7Q6sNOiOdyDDH1uNWULLJQzihWkXeVZw2frQ2tUCPorSb4GqXxA0Vk8DNQiAOuhnSbFcK0hfDnrJ5+S8UTwKu75f2AbrLRAW2A5SM3hvZWGGVUYNwudJw7M9ickN9kcGIhjEb3aMTHgl3W/YMRyOYcAE4uzU7rpaXvFh+4E4prhdRQxZQE8E8YpvI98NzwZJO1C6IDCMqGetwl8dYonbvHkmHJQAaMN4z2NWo37wioi3YBp2E/XXeHPhm2GDdCnEmsnebOWeMoYmCaljGWa66m1VqvVmWLsNYteZYBeTDsnQ2KZG2lYP8Hnoc1gv7Z11w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by DM5PR1101MB2139.namprd11.prod.outlook.com (2603:10b6:4:56::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Tue, 23 Aug
 2022 00:51:57 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::b110:7e21:a561:e119]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::b110:7e21:a561:e119%5]) with mapi id 15.20.5546.018; Tue, 23 Aug 2022
 00:51:57 +0000
Date: Tue, 23 Aug 2022 08:51:50 +0800
From: "Kevin Hao" <kexin.hao@windriver.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: poky@lists.yoctoproject.org,
        Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/2] meta-yocto-bsp: Bump the kernel to v5.15.60
Message-ID: <YwQkpsKT8plbHG1x@pek-khao-d2>
References: <20220821091446.2932085-1-kexin.hao@windriver.com>
 <20220822174513.1b8bf5c3@booty>
In-Reply-To: <20220822174513.1b8bf5c3@booty>
X-ClientProxiedBy: YQBPR0101CA0264.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:68::11) To SA1PR11MB5899.namprd11.prod.outlook.com
 (2603:10b6:806:22a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7c397e5f-2d52-41cb-4b4f-08da84a1ae30
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2139:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	A+cglt52UtDC+T9Ol/SNy/ao/NeID01QS9XmcntJgb/TMsFiSA/VebvHkdq+qAI3W2M/gYxkLt9GSMsbyptTo7tyP7MAvyumzZEW103pBhNPLCrQd9oR4hw+dxro1xVsbXtDxjh5FdrLlNsXeLggbznvyjsjor6cLd7khlGG6iUXcMz6fOPiiGlloY7U/9RM3TjKEg4Qh21ItDlQ4xwqVFSoGC0efPVvMirF7wPrSXchMK3Waslavdg4rLoriwPBr5oARy9L4hUE6ESJvvu6xZogC+wOUv868q0A53ki+HpUoOV6LkHzSfZULjoKJ39dUG6h0nFzRoInRJ4CgI0YyLJqmeyTwXoPYwO9mKjptK0BXzyXJhpU6hrlz3MeLbsZyjeSZwWnWvHBROnrfF1PevAP592QfOh7QjeDxvWSIbGhXFw8a1r1/Azo4KikMu8VSMKao9KfMrfK2lvrKOj5pXgdrVhTUlTl4RnZVPou9B8UqTPU+akGlHkc7V6DI9R8e38Z5I4Wcj1WpykGt8EcQNStLq4TRJVqukkInje19hMA1/W/QJ2dKzdGGprKyI0+r9RXjOwKcxZM1Nj2g75FCJuRkSG382wZkJCwInfZVjqVuD7cxt/NuKgDD/6H374rW9wHFCVeUbxHTWmZYF/F8Axii3v1NygA2N1vFm/Lx2g+eNJBOCquVC1igVyHBSoAoyGnBgq4M4zh4nh6f34kPe+IU4VihMWY56B4SwEZd6pzPwassgLeti59SEGX6ys2cYlPHiqzc0uhhrLgOI2bSZPsJy9i/LqZWKeAnofhucP4lyCRnNl7gq+ARz55RBXP
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(366004)(396003)(136003)(346002)(39850400004)(376002)(21480400003)(186003)(38100700002)(83380400001)(86362001)(966005)(316002)(478600001)(6916009)(8676002)(4326008)(41300700001)(66556008)(66476007)(66946007)(2906002)(9686003)(8936002)(6666004)(6506007)(6486002)(6512007)(5660300002)(33716001)(44144004)(26005)(2700100001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?1v5CivVHhwJYJSB43/AHHzmVjkUKEZzoTrwKHAhWsEFs9aIj+fTZ4xPRpD+J?=
 =?us-ascii?Q?HvtvzL1GtIvGKjQ7K1k5/yejtOalcBKjyKCEcJhysPKVyzUzW0C48w5iB3KC?=
 =?us-ascii?Q?bmyZMuDU2dwxERCBoDHQogJQNiI6yPjW+GekFsfs5EWAfTSDB0oFj2y2NrEP?=
 =?us-ascii?Q?7dExTtfP1T8ug0kDc78ZSmM+mulkVhFmZ4hM5riv4h6zN4PZlyy38puFHoec?=
 =?us-ascii?Q?I3MVf+lbzl3XM9vE91xMy5154/W349+kksVGyOnA2tU4Ef6M1IcXXTruF+3U?=
 =?us-ascii?Q?iLwOWhrObo06o+EStNMwaX/dznE3f7uYSKJhwwoOK3qtCu1Ug4QD+Urqw7Tk?=
 =?us-ascii?Q?1FEpitp3kkKPom3fZ7aaJlJVNwPyo1gSkd+lLzGIht7Oe+f6mZZuUDKrpqn/?=
 =?us-ascii?Q?deYgxqOxQj2QX8DKRtxE+pZC2ufGTULPGIbybcyk3JFl5GzCyIiZSNMbsBA5?=
 =?us-ascii?Q?QUzr2k/4CHPqq24C8UFEH/xc9yzCWWScgT2oD8s4AyIslXXxNaQHm/NVkY3D?=
 =?us-ascii?Q?OvEwLHuabFwiusfzgj7m3roXzZyThCkYWzrf/XfPy2X1bCyqC06OvF25Ou1j?=
 =?us-ascii?Q?jR5Afs0uxldficKod/qGdWOKhzU/F/fgMEVCHFK/ypOdiUVMQmX5S7WNpBXf?=
 =?us-ascii?Q?6AkZ4TMSNc74hTEaVF7dy5FKtEADV6qX8pN+fImb4hkypYZ4Xl0kJfA8ev9s?=
 =?us-ascii?Q?46+z57uWU/f1pmiaL5CPXHYU1Ni3yNRL2/f9IFBRUKKf5lrGZVMW6HwwdRI4?=
 =?us-ascii?Q?mhxcAA2sRU45cxZbf/tO6PdYbCp3ajUGfZH5+44qAT97nYt1eju0Q3jb2i7T?=
 =?us-ascii?Q?a4/d6NdBYta4anvIF2M7b4kwdZqKwp9ePOagZLUsZd9So3BN9cj0cIf1AzPx?=
 =?us-ascii?Q?5r2WJ7XHuFaawMajfXha9ycYHdlBw6rvYJsUwjRG+GBEXskQSg03+oT0KF1y?=
 =?us-ascii?Q?HO05BQTA90rTjhms47iFtwFxHFn9qXQ5q4NrEiPLDEJSNYlc9dx5OWsdc/x2?=
 =?us-ascii?Q?RDf+90tURESM2vTSWrLx05rWadPgoVKwMOLZhBsJCkbRaZuQ8gBpdyQKug2V?=
 =?us-ascii?Q?VxdB+NT8XagkswsKwLrjwOeibbEGNumjGhYWE0YX/vwx42dr+Ht654LlShwu?=
 =?us-ascii?Q?3/g2S2MC0pBAm8fojnvonjZRyKeZQv4r6e9MY+DOf+KvonQ0gkEDKMhEqP15?=
 =?us-ascii?Q?ucyz9pzYVpr7FoKrgQHy+gStTlzbOy43j6ik44GONUyggd+4Em7oILXmtb5w?=
 =?us-ascii?Q?N9tvum9a569P6clgFjwyLANH6i9exhbqr1t4NOHXQ7K1M2KKYHa6VI7out6w?=
 =?us-ascii?Q?blsPbEwIO3Pb3+fC7I+cHx1ladPw9mwc8v+oNoTUZucKq7GlmzkH7fUUA9Lm?=
 =?us-ascii?Q?DssFY73hJwBm7UtZEL4/wN+LSh9gAsZ9EQFUKgar2Ak6Fl8eAUTyMRQ0QhOB?=
 =?us-ascii?Q?1/O9THi3+7Wq0aHrsoH82fCMIEgEG73NIdCX0JAQLnzpR9bcEjo1uzuNpeUa?=
 =?us-ascii?Q?jFf9nAE7OrT4S8L6tz6uHnHZdxTRZ1zEbAKCsSOkKUVhpFwY16DVDpN55wq0?=
 =?us-ascii?Q?CkOWihq7ur+dzWTitSViwhtr9H5XMO3VqfnB/MMJbOx1uqGTDhE6Ul9aulCp?=
 =?us-ascii?Q?0A=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c397e5f-2d52-41cb-4b4f-08da84a1ae30
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 00:51:57.6944
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5eh4el05JI2sb2XI5P8P8Ff/YkeqL60dNXNalFjyNUypQPRGv53vjqlLy9//PsULsO7rGeRCB0XOWL0KUwSroQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2139
X-Proofpoint-ORIG-GUID: hzLb4oEo-pXKXQZGRcwGCDjE0GRECHHx
X-Proofpoint-GUID: hzLb4oEo-pXKXQZGRcwGCDjE0GRECHHx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-22_15,2022-08-22_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 impostorscore=0 bulkscore=0 clxscore=1011 mlxscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208230001
X-Groupsio-MsgNum: 12866
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/mO2N4Qz2yjguB4/"
Content-Disposition: inline

--/mO2N4Qz2yjguB4/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 22, 2022 at 05:45:13PM +0200, Luca Ceresoli wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
>=20
> Hello Kevin,
>=20
> On Sun, 21 Aug 2022 17:14:45 +0800
> "Kevin Hao" <kexin.hao@windriver.com> wrote:
>=20
> > Update the v5.15 kernel to the latest stable version for all machines.
> >
> > Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
>=20
> Testing with this patch applied triggers this warning when building for
> beaglebone:
>=20
>   WARNING: linux-yocto-5.19.1+gitAUTOINC+89fdc2046b_06993dc6c9-r0 do_kern=
el_configcheck: [kernel config]: specified values did not make it into the =
kernel's final configuration:
>=20
>     [NOTE]: 'CONFIG_OMAP_32K_TIMER' last val (y) and .config val (n) do n=
ot match

The fix for this has already been merged into yocto-kernel-cache [1], and t=
his warning
would disappear once Bruce bump the SRCREV_meta.

[1] https://git.yoctoproject.org/yocto-kernel-cache/commit/?h=3Dyocto-5.19&=
id=3D3abac8166b2d0e273c226e1d71f678ae4da6fe37

Thanks,
Kevin

>=20
> Log:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/65/builds/5781/st=
eps/11/logs/stdio
>=20
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

--/mO2N4Qz2yjguB4/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAmMEJKYACgkQk1jtMN6u
sXHOMggAldKqg/f3OMDVRk7cAA0DENJD/wUJxsQ3w6Asqqi0V6aCsBr0ziXzh9Pr
IQzrwRin+USkHLQTfprJmUao67dBEDWLY9HCw+05kGk9UE+pljPh8PowZ9elE5vb
8+QlMtcLsNrciXDrasuG0aAP9AsaGwV8KHGB+04VL8B2+lHaAxGjMq+y1aEVlrG8
CLp8MH34JnS7hIXOFHWGxQa0rPa8w5fpHZYOPpXtA3TKtgen7Ymo5M0mjt671/3T
0UgZkFM0onkjTkTwYuGUqofyAhAOSog4+F3PyUxctAvMUzYchDV6kZr04jrjt2oV
MVrmUYpjJYjqnfeDIbfOlgeq10zxvQ==
=z6s8
-----END PGP SIGNATURE-----

--/mO2N4Qz2yjguB4/--
