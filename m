Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6587E00C75; Thu,  7 Apr 2016 13:03:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D89E00C37
	for <poky@yoctoproject.org>; Thu,  7 Apr 2016 13:03:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 07 Apr 2016 13:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,449,1455004800"; d="scan'208";a="950383548"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by orsmga002.jf.intel.com with ESMTP; 07 Apr 2016 13:03:48 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.39]) by
	fmsmsx104.amr.corp.intel.com ([169.254.3.58]) with mapi id
	14.03.0248.002; Thu, 7 Apr 2016 13:03:46 -0700
From: "Ibarra Lopez, Humberto" <humberto.ibarra.lopez@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] [jethro] yocto-bsp: fix default kernel for x86_64 arch
Thread-Index: AQHRj1XN1st9w4vL4kCBsBxgmv2GQp9+8jYg
Date: Thu, 7 Apr 2016 20:03:45 +0000
Message-ID: <F187383F84EB304A88D055C3049588791BB5C4AF@FMSMSX106.amr.corp.intel.com>
References: <1459901898-1272-1-git-send-email-humberto.ibarra.lopez@intel.com>
In-Reply-To: <1459901898-1272-1-git-send-email-humberto.ibarra.lopez@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDhmNDg5MmUtNjBhZC00YmM2LTk2MTYtZjNiMDlkZGE5ZWQ1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6ImM5cU44bTBvTnM2dklIbWRlZTZrMStpbFdSVTh1TmhoTUVzNGxHdDFoekk9In0=
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [PATCH] [jethro] yocto-bsp: fix default kernel for x86_64 arch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Apr 2016 20:03:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Forgot to copy Robert Yang.

> -----Original Message-----
> From: Ibarra Lopez, Humberto
> Sent: Tuesday, April 5, 2016 7:18 PM
> To: poky@yoctoproject.org
> Cc: Ibarra Lopez, Humberto <humberto.ibarra.lopez@intel.com>
> Subject: [PATCH] [jethro] yocto-bsp: fix default kernel for x86_64 arch
>=20
> When using x86_64 arch in yocto-bsp the script suggests
> 4.1 as the default kernel version; however, as soon as the default is pic=
ked
> the script continues processing with
> 3.19 kernel.
>=20
> This changes the default kernel version to 4.1, which is the right value =
and
> matches the script's message.
>=20
> [Yocto #9353]
>=20
> Signed-off-by: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
> ---
>  .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall       =
| 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-
> kernel/linux/kernel-list.noinstall
> b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/kerne=
l-
> list.noinstall
> index dbbe934..7676ca8 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-
> kernel/linux/kernel-list.noinstall
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/
> +++ kernel-list.noinstall
> @@ -2,4 +2,4 @@
>  {{ input type:"boolean" name:"use_default_kernel" prio:"10" msg:"Would
> you like to use the default (4.1) kernel? (y/n)" default:"y"}}
>=20
>  {{ if kernel_choice !=3D "custom" and use_default_kernel =3D=3D "n": }} =
-{{ input
> type:"choicelist" name:"kernel_choice" gen:"bsp.kernel.kernels" prio:"10"
> msg:"Please choose the kernel to use in this BSP:" default:"linux-
> yocto_3.19"}}
> +{{ input type:"choicelist" name:"kernel_choice"
> +gen:"bsp.kernel.kernels" prio:"10" msg:"Please choose the kernel to use
> +in this BSP:" default:"linux-yocto_4.1"}}
> --
> 2.1.4


