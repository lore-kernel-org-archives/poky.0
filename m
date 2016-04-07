Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 250C8E00C75; Thu,  7 Apr 2016 13:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B9BE00C37
	for <poky@yoctoproject.org>; Thu,  7 Apr 2016 13:02:34 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 07 Apr 2016 13:02:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,449,1455004800"; d="scan'208";a="950382771"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by orsmga002.jf.intel.com with ESMTP; 07 Apr 2016 13:02:32 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 7 Apr 2016 13:02:29 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.39]) by
	fmsmsx123.amr.corp.intel.com ([10.18.125.38]) with mapi id
	14.03.0248.002; Thu, 7 Apr 2016 13:02:29 -0700
From: "Ibarra Lopez, Humberto" <humberto.ibarra.lopez@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] [jethro] yocto-bsp: Set correct default branches and
	branches base for i386, qemu and x86_64 archs
Thread-Index: AQHRiswsYXgHzAXpk02yQm7f4KrnkZ9++pDw
Date: Thu, 7 Apr 2016 20:02:28 +0000
Message-ID: <F187383F84EB304A88D055C3049588791BB5C49F@FMSMSX106.amr.corp.intel.com>
References: <1459402989-1526-1-git-send-email-humberto.ibarra.lopez@intel.com>
In-Reply-To: <1459402989-1526-1-git-send-email-humberto.ibarra.lopez@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGQyMjMzZjktMjI2NS00OTE2LTg2OGQtNjc1ZmUzNzU5YmJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IjlEU0hxbkFkZjg1UFZUUzR1SUtlRmwzRnpFVFwvc1FidFwvK2ZvNXJJOXYxWT0ifQ==
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [PATCH] [jethro] yocto-bsp: Set correct default branches and branches base for i386, qemu and x86_64 archs
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
X-List-Received-Date: Thu, 07 Apr 2016 20:02:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Forgot to copy Robert Yang .

> -----Original Message-----
> From: Ibarra Lopez, Humberto
> Sent: Wednesday, March 30, 2016 11:43 PM
> To: poky@yoctoproject.org
> Cc: sgw@linux.intel.com; tom.zanussi@linux.intel.com;
> leonardo.sandoval.gonzalez@linux.intel.com; Ibarra Lopez, Humberto
> <humberto.ibarra.lopez@intel.com>
> Subject: [PATCH] [jethro] yocto-bsp: Set correct default branches and
> branches base for i386, qemu and x86_64 archs
>=20
> Kernel recipes for linux-yocto_4.1 have outdated branches as default,
> making it impossible to find the right branch if the user picks the defau=
lt
> value.
> The branches_base property uses these outdated branches also.
>=20
> This updates standard/common-pc and standard/common-pc-64 branches to
> standard/base
>=20
> The fix was tested using 'yocto-bsp create' with each one of the followin=
g
> archs:
>=20
> -i386
> -x86_64
> -qemu (i386 and x86_64)
>=20
> After the layer was created, it was added to local.conf and the MACHINE w=
as
> set accordingly.
>=20
> 'bitbake linux-yocto' ran successfully with each configuration tested.
>=20
> [YOCTO #9160]
>=20
> Signed-off-by: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
> ---
>  .../arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 4 ++=
--
>  .../arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend       | 8 ++=
++--
> --
>  .../arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 8 ++=
++--
> --
>  .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 4 ++=
--
>  4 files changed, 12 insertions(+), 12 deletions(-)
>=20
> diff --git a/scripts/lib/bsp/substrate/target/arch/i386/recipes-
> kernel/linux/linux-yocto_4.1.bbappend
> b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/linux-
> yocto_4.1.bbappend
> index 761b9c6..aecdff0 100644
> --- a/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/lin=
ux-
> yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/i386/recipes-kernel/linux/li
> +++ nux-yocto_4.1.bbappend
> @@ -8,10 +8,10 @@ COMPATIBLE_MACHINE_{{=3Dmachine}} =3D "{{=3Dmachine}}"
>  {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you
> need a new machine branch for this BSP (the alternative is to re-use an
> existing branch)? [y/n]" default:"y" }}
>=20
>  {{ if need_new_kbranch =3D=3D "y": }}
> -{{ input type:"choicelist" name:"new_kbranch"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/base" }}
> +{{ input type:"choicelist" name:"new_kbranch"
> +gen:"bsp.kernel.all_branches" branches_base:"standard:standard"
> +prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n": }}
> -{{ input type:"choicelist" name:"existing_kbranch"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/base" }}
> +{{ input type:"choicelist" name:"existing_kbranch"
> +gen:"bsp.kernel.all_branches" branches_base:"standard:standard"
> +prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n": }}
>  KBRANCH_{{=3Dmachine}}  =3D "{{=3Dexisting_kbranch}}"
> diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-
> kernel/linux/linux-yocto-dev.bbappend
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-
> yocto-dev.bbappend
> index 3555285..7e3ce5b 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/lin=
ux-
> yocto-dev.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/li
> +++ nux-yocto-dev.bbappend
> @@ -19,16 +19,16 @@ COMPATIBLE_MACHINE_{{=3Dmachine}} =3D
> "{{=3Dmachine}}"
>  {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc"
> gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/qemuppc" }}
>=20
>  {{ if need_new_kbranch =3D=3D "y" and qemuarch =3D=3D "i386": }} -{{ inp=
ut
> type:"choicelist" name:"new_kbranch" nameappend:"i386"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/common-pc" }}
> +{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386"
> +gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n" and qemuarch =3D=3D "i386": }} -{{ inp=
ut
> type:"choicelist" name:"existing_kbranch" nameappend:"i386"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/common-pc" }}
> +{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386"
> +gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "y" and qemuarch =3D=3D "x86_64": }} -{{ i=
nput
> type:"choicelist" name:"new_kbranch" nameappend:"x86_64"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on=
:"
> default:"standard/common-pc-64/base" }}
> +{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64"
> +gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n" and qemuarch =3D=3D "x86_64": }} -{{ i=
nput
> type:"choicelist" name:"existing_kbranch" nameappend:"x86_64"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on=
:"
> default:"standard/common-pc-64/base" }}
> +{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64"
> +gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "y" and qemuarch =3D=3D "mips": }}  {{ inp=
ut
> type:"choicelist" name:"new_kbranch" nameappend:"mips"
> gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/base" }} diff --git
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-
> yocto_4.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-
> kernel/linux/linux-yocto_4.1.bbappend
> index 82bb970..fce67b4 100644
> --- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/lin=
ux-
> yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/li
> +++ nux-yocto_4.1.bbappend
> @@ -19,16 +19,16 @@ COMPATIBLE_MACHINE_{{=3Dmachine}} =3D
> "{{=3Dmachine}}"
>  {{ input type:"choicelist" name:"existing_kbranch" nameappend:"powerpc"
> gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/qemuppc" }}
>=20
>  {{ if need_new_kbranch =3D=3D "y" and qemuarch =3D=3D "i386": }} -{{ inp=
ut
> type:"choicelist" name:"new_kbranch" nameappend:"i386"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/common-pc" }}
> +{{ input type:"choicelist" name:"new_kbranch" nameappend:"i386"
> +gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n" and qemuarch =3D=3D "i386": }} -{{ inp=
ut
> type:"choicelist" name:"existing_kbranch" nameappend:"i386"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc" prio:"20" msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/common-pc" }}
> +{{ input type:"choicelist" name:"existing_kbranch" nameappend:"i386"
> +gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "y" and qemuarch =3D=3D "x86_64": }} -{{ i=
nput
> type:"choicelist" name:"new_kbranch" nameappend:"x86_64"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on=
:"
> default:"standard/common-pc-64/base" }}
> +{{ input type:"choicelist" name:"new_kbranch" nameappend:"x86_64"
> +gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n" and qemuarch =3D=3D "x86_64": }} -{{ i=
nput
> type:"choicelist" name:"existing_kbranch" nameappend:"x86_64"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc-64"  prio:"20" msg:"Please choose a machine branch to base this BSP on=
:"
> default:"standard/common-pc-64/base" }}
> +{{ input type:"choicelist" name:"existing_kbranch" nameappend:"x86_64"
> +gen:"bsp.kernel.all_branches" branches_base:"standard"  prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n" and qemuarch =3D=3D "mips": }}  {{ inp=
ut
> type:"choicelist" name:"existing_kbranch" nameappend:"mips"
> gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> msg:"Please choose a machine branch to base this BSP on:"
> default:"standard/mti-malta32" }} diff --git
> a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux=
-
> yocto_4.1.bbappend
> b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/linux=
-
> yocto_4.1.bbappend
> index 8d0bc97..1e99a04 100644
> --- a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-
> kernel/linux/linux-yocto_4.1.bbappend
> +++ b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/
> +++ linux-yocto_4.1.bbappend
> @@ -8,10 +8,10 @@ COMPATIBLE_MACHINE_{{=3Dmachine}} =3D "{{=3Dmachine}}"
>  {{ input type:"boolean" name:"need_new_kbranch" prio:"20" msg:"Do you
> need a new machine branch for this BSP (the alternative is to re-use an
> existing branch)? [y/n]" default:"y" }}
>=20
>  {{ if need_new_kbranch =3D=3D "y": }}
> -{{ input type:"choicelist" name:"new_kbranch"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:=
"
> default:"standard/common-pc-64/base" }}
> +{{ input type:"choicelist" name:"new_kbranch"
> +gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n": }}
> -{{ input type:"choicelist" name:"existing_kbranch"
> gen:"bsp.kernel.all_branches" branches_base:"standard:standard/common-
> pc-64" prio:"20" msg:"Please choose a machine branch to base this BSP on:=
"
> default:"standard/common-pc-64/base" }}
> +{{ input type:"choicelist" name:"existing_kbranch"
> +gen:"bsp.kernel.all_branches" branches_base:"standard" prio:"20"
> +msg:"Please choose a machine branch to base this BSP on:"
> +default:"standard/base" }}
>=20
>  {{ if need_new_kbranch =3D=3D "n": }}
>  KBRANCH_{{=3Dmachine}}  =3D "{{=3Dexisting_kbranch}}"
> --
> 2.1.4


