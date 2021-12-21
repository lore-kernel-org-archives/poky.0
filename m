Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.683.1640050152527718313
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Dec 2021 17:29:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=h0cPPm0y;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7989ed88cd=kexin.hao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1BL1TAWn007161;
	Tue, 21 Dec 2021 01:29:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=date : from : to :
 cc : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=PPS06212021;
 bh=DFThY9pypLwldxmy8kCBwvnpqWyfac4FN7qQ+c7Ny/8=;
 b=h0cPPm0yQVrMRB8Pje2IBl5vSpl2fbrnVJOZ+M2tMUQD9/mWZI019d9NaMK5VKD820hW
 8slhsElB+J6kOadqN8pU1cLYoS5rV+wiIZI9gwMxF68rws7icc6LsEZbNEahLTiP4XgY
 /hH+beOhy2X3Mw8dakG6vrPjEqk4vo+OAxG/EUO1D8Lz9YeXKqpaT4JNvu5rDddEBFwY
 jBRxrEGven1BklVUE94rkrkfj43RzmN5b4eNHMK85GGR4vZVDEKKegUZYeopHd5Y6bof
 B02LElHmbh9eQz+soHPOdT5oYt2+TYfSAq/f7lLM1Hw7AsuISHfSNcXegjZRoF1LT9AK Vw== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2106.outbound.protection.outlook.com [104.47.70.106])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d2gb2rvfj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Dec 2021 01:29:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUXi/N645x3xoGnTfyiwG2wYkl+w/G+Ptxskk1EFl+5WEwrOQktaZoPxQppiosBj77IfZ8v7cAFwDHAuILNte90ef+Gc8kuJIDPdrMEahqqSd/U/qWh1zRYBl9scOYCCko5T699F5T7NLr7O7e5DMbgTR/vmoYpL2lBA+J13FQgBtVNdfpDDPYPMbJ8ljNUpdBpGdQyBf8khboYrzI+N1VuAP5ZJjgD3ycsqpwgmnuM3A8KFj3S7xYtw/rPgCIn77qk6u0u0b+NCranu8CUgBH4Ma6xKZOFQWxQ1GOb71JCf4KRf64GEyI56NxrrBGG4/2Dsbbh4hPSF+X+vM4zR4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DFThY9pypLwldxmy8kCBwvnpqWyfac4FN7qQ+c7Ny/8=;
 b=Sx9WGZL9rXAYMUUV8dqIH5c2HtGitrBgiTSBhyUzRy9KBHM/CZraNZrTbzQPW+enojVmRXfSYWw7Wu2dI7/kC7hyt4Oz9tJVKx8x7tKGwJ4Mubm4ihKOPumgHL1F2JVyKUmUFxXAVpyF1qfMH/onNx56WAQEV4XJT2J2sU2VtH8+9eFpNXb86pTR5xsVLo/apcyRUMQ8okGiq1eCrMa01iv1wCsZsPqqRIViSWQhfu4VgSC++ibm1N5xR5Lkl2k8Bb0qabgYfWXQbxlio+E15V2wqqOXd5hmJppZRezU2bebnxqPmbGaRA2tRKE1+ngc6MK/bJNeXsBhEG06v4SURA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by SN6PR11MB3245.namprd11.prod.outlook.com (2603:10b6:805:be::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Tue, 21 Dec
 2021 01:29:07 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::75f6:fec6:8c13:2cff]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::75f6:fec6:8c13:2cff%5]) with mapi id 15.20.4778.016; Tue, 21 Dec 2021
 01:29:07 +0000
Date: Tue, 21 Dec 2021 09:28:59 +0800
From: "Kevin Hao" <kexin.hao@windriver.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH] meta-yocto-bsp: Introduce the v5.15 bbappend
Message-ID: <YcEt21DUeGUajmfC@pek-khao-d2>
References: <20211116001033.463741-1-kexin.hao@windriver.com>
In-Reply-To: <20211116001033.463741-1-kexin.hao@windriver.com>
X-ClientProxiedBy: BY3PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::20) To SA1PR11MB5899.namprd11.prod.outlook.com
 (2603:10b6:806:22a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8dd4334c-a218-42de-692f-08d9c42147e2
X-MS-TrafficTypeDiagnostic: SN6PR11MB3245:EE_
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB3245D027E1442D74291B0F6CE27C9@SN6PR11MB3245.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:883;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Zjjkw7gBSDvqrskczZlQWZgPkfcnelbDHOU4wSlGBgIRXkIln49T71zxD9LcJoMu1sXdDOfWRs1BHbOOwUsOYMYawzZY1afATOTxEyiTKjr/1mtJ8s3QD/vHkm0r9pBo8zwsdEQIGz63/tFsNBHzvpLL7VJYp5oWCtOz7xqxd04YEy+sxHcONsl1uyIR/SoTvuPLaURKbjKmSk14wBt7hjNQYBp2SIteCU2xPSyEMa8GUHDMxqZJTmMD7XBG+n9NvkJO2GmeE7M4SJMvZNscVkx5n7Th+ASLiQsNf6UljQaeTckyeaE3wMaJKXaQzesBpoxHuGflNLL0Bdo/bKNNbQS4CZdDNqOzHQ9NR+ucWlXhO6LRDkBwH2wuwFDDhmpDeQ+c3a0dcWBSWaqzIq9+4bEghfMQwDwbE33Afjo/2PXjrXtXi0EWLOnQ/O8+EW2uG6CpIan8ETkERfNozmd0kEcBlahZkoqethKAOu2a1nI9rvsq/05SStEdSPNXFtAqEl12YZ1IhiRnb1eFsBRaVFVL8GG/ELvxj4B9udIncxzSpInffsEu7kzqcQWiyMAlYqvVviiS1DdUVffCpokIxMgSZkznTy23X5lLypcwZ4Sg6uXJ1oZWRnoFPUmFDy58zTM3MiM7vsceAfiPLqE9pROGEWyM8wOWT/nuQy9cZdDvmr99i1nO5SrRNdsKGFjgu3pZUtk3/N7TMAyaggZ1UjgbhBF091R8DPTZ5MwnIzk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(366004)(6506007)(508600001)(44144004)(54906003)(38350700002)(21480400003)(26005)(316002)(6512007)(4326008)(186003)(2906002)(9686003)(6666004)(86362001)(38100700002)(66476007)(6486002)(66946007)(33716001)(66556008)(8936002)(5660300002)(8676002)(6916009)(52116002)(2700100001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?V5pZSAykjV1me996B5bXVgzqRsPIj2QAULo6xVqVY5iSvLta9HgD97uBOJ5u?=
 =?us-ascii?Q?mSpON2vgalre+58rCs7I3pHrBzpz6MTPLt3TZrsUrFFjlW/ibYtJxuPTg/6z?=
 =?us-ascii?Q?ey9XQ98DC+DC2JneiKBnx1Lr8XkuufLwdVsmVL6KNt+pOKyatYVWEI082FU5?=
 =?us-ascii?Q?N4yKma6zvN5EKX73GxjZN6BhTYetUoQnFzHtZ0SZINShAmLmRKCRdyqwmBgq?=
 =?us-ascii?Q?2EY7ctNUOArwwjm7VSp61ABCJVbl+RH6vfvSwakUy4gpqshxGJ/OfTHCz4yT?=
 =?us-ascii?Q?im8HB8SZNHj9mEO2Ew4oUi6QPXZgkAe2ZVJzQF9xmOoMAV1tt17v0Zo3VlnH?=
 =?us-ascii?Q?QOmBmKJuuZjEV/ulnzENCsFLR6bdoPB/mmItzT/0bB8wFYdCyl1IHq4qFZRC?=
 =?us-ascii?Q?QtmYzlZGM8HIhTyzP+YtaPc5B56Cws0JA++YElMW2bciSP4CfAAVvCXwQ44Y?=
 =?us-ascii?Q?FZAhOe0PADfKLLxQwWMVQBrzyNpZpyp/fLZl9kCcfpqS5vtzBLf1zgPP+E9Y?=
 =?us-ascii?Q?7uQ8gkobCnNnRtIEteF4+1CLPK6J4z2vX9SYYa1WWRYi/OJEQj2d0J1hWrFD?=
 =?us-ascii?Q?01FuyjpGiqnYbXmWav4Tu6+FA9vApmuZyVTPIwnBQcNBKPB8Merd2Jx/AFEC?=
 =?us-ascii?Q?vSO2Kraa0lm4PIELD+oJeS9IQMplmk1cEEIaW7bLfAcyXMsuLmTJBdKcaEe5?=
 =?us-ascii?Q?df4YCsVMSl+R//t7tZ1flygt4OElNVaMIv2wXTKEuTeUdjRVh9eXPV7gffua?=
 =?us-ascii?Q?MppsdDNaVnDYHenofN6eoQpADcv2tcTWd20sJ8DCrShcPZrzOvyAjxz+uQXE?=
 =?us-ascii?Q?a9BG1YI3KEXHDHcdQa9GLNuizSY52BTpB6X1l+gRLO8eKiyoWGV449Vy2jpw?=
 =?us-ascii?Q?Mrqtr1eUA2iv9FrrE9D9kCD1qmVoDyHm8c7a8GuML99pAquHxykHcE4/5Plv?=
 =?us-ascii?Q?chwXwuz94Zgm0eRrhLIQPHSbQqx+j/w7XfMyuy2hivP0AAUSk0QkHOCAFU+s?=
 =?us-ascii?Q?u0XqmKSj54tfqzUM2Su5kDe7Yi/6fCHLI7Pox85I3HkugPJ6tsvMYetINe+6?=
 =?us-ascii?Q?7gLXGkDDXeRr771mkPZ1Yg75a52N1VizzxhFd+dt2/g0ObdAfZ5oZvo9e+S+?=
 =?us-ascii?Q?NopA/4YiFpDKMKnKwV9Oy7tDtOmU+Sw/adHym4Gtb6ImY/X2DmQEwk5e7sEB?=
 =?us-ascii?Q?8SezxWdg+Q2SVzT1u2rmnIJEySL6HZnX/vTyPuxD2G+zuyXQjKPpOZ3/crdj?=
 =?us-ascii?Q?QzgYm7/g4ilDWRNyytTCMhWYKvATJRM8wcTY6MW2XA/VUcaETv4QanrZuTtm?=
 =?us-ascii?Q?PIkI6OlPvppV+YPCuU20rVTIrQwhU7BOuFGQHPqLFjw8PJd5UrFSffq0PT75?=
 =?us-ascii?Q?EEsnPNaFT4nyJX8XO3qKHNPReTfZVWirWywpS38zJGDo3as2JJ6aQQ08FGFm?=
 =?us-ascii?Q?9xEPKbvulpEm6wuC8CkOohdY+ed5O5Ac8QnrDKoY+Pe1eJeLBPTVDIbyxCFO?=
 =?us-ascii?Q?+jbSegKZgaPx5z5F+gETUQEXsXIfhtQNKf6acgNY9c5gdpbv6C7DyEUQfE1J?=
 =?us-ascii?Q?SN/MtuAObBeMLNjaEIpLVHOo5RENxD+eZ3E4EiH/Hyc0qvNWfKYhCkTTfqfw?=
 =?us-ascii?Q?zac5FYEw3mwGKpFZQAjrRSg=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dd4334c-a218-42de-692f-08d9c42147e2
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2021 01:29:07.1589
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ynGqmcEXHdPk8NWWUXMhcP1F63EhVcrIxn1ddvIdaKKqo6UR83Bm499geNCcYJ5YXSm6Ij3TXxUkLSrOoUaApg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3245
X-Proofpoint-ORIG-GUID: CTqtyNRjWroK2orw-UBoBbcP0rdG0azF
X-Proofpoint-GUID: CTqtyNRjWroK2orw-UBoBbcP0rdG0azF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-20_11,2021-12-20_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0 mlxlogscore=633
 impostorscore=0 mlxscore=0 malwarescore=0 spamscore=0 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112210003
X-Groupsio-MsgNum: 12642
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0fguMAYBOF3siNiZ"
Content-Disposition: inline

--0fguMAYBOF3siNiZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 16, 2021 at 08:10:33AM +0800, Kevin Hao wrote:
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../linux/linux-yocto_5.15.bbappend           | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.=
bbappend

Hi Richard,

Did you miss this patch or have any concerns about it? I don't see it in
either master-next or master branches.

Thanks,
Kevin

>=20
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> new file mode 100644
> index 000000000000..ea36a2b09625
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> @@ -0,0 +1,23 @@
> +KBRANCH:genericx86  =3D "v5.15/standard/base"
> +KBRANCH:genericx86-64  =3D "v5.15/standard/base"
> +KBRANCH:edgerouter =3D "v5.15/standard/edgerouter"
> +KBRANCH:beaglebone-yocto =3D "v5.15/standard/beaglebone"
> +
> +KMACHINE:genericx86 ?=3D "common-pc"
> +KMACHINE:genericx86-64 ?=3D "common-pc-64"
> +KMACHINE:beaglebone-yocto ?=3D "beaglebone"
> +
> +SRCREV_machine:genericx86 ?=3D "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> +SRCREV_machine:genericx86-64 ?=3D "5a8ec126c297dd9e410eb23685003f670f8f3=
d57"
> +SRCREV_machine:edgerouter ?=3D "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> +SRCREV_machine:beaglebone-yocto ?=3D "5a8ec126c297dd9e410eb23685003f670f=
8f3d57"
> +
> +COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
> +COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
> +COMPATIBLE_MACHINE:edgerouter =3D "edgerouter"
> +COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
> +
> +LINUX_VERSION:genericx86 =3D "5.15.1"
> +LINUX_VERSION:genericx86-64 =3D "5.15.1"
> +LINUX_VERSION:edgerouter =3D "5.15.1"
> +LINUX_VERSION:beaglebone-yocto =3D "5.15.1"
> --=20
> 2.31.1
>=20

--0fguMAYBOF3siNiZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAmHBLdsACgkQk1jtMN6u
sXG5swgAlNvRxosL7T5g97klCieYn5oR+f2dmFilXY3Gm8EfCWAgfj2d1KJv9m4s
IK5r6E503wqVozRsxqg00oWpup5HQoOEvsdCkU54KyPpO2AfFI4Noivsk2rCODd9
fqXrE26kMg4pGQxL2nt12Jw+cwXF2xLfOaiyTlP9s+FRxFgsUe0+ewnVXXE0BE/i
Ayo2XWoCIxj04Yt9nNOxgpvDkpfIHYiAT7dxWioVMpc2xgKpdUpSTK1grr+zVbwI
rHlm89tN9R4ukA3mewQQZkq6pjXCDvAA8/cyAVTzuNMx84g3BFiYJpOeSwD+OlRa
jD3/DojgW3P7PzLyjc5xza6MZp36dQ==
=AEpr
-----END PGP SIGNATURE-----

--0fguMAYBOF3siNiZ--
