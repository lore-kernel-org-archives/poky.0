Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 970A74C800BE
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 11:52:01 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2011 09:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="897111375"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2011 09:51:58 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Mon, 14 Mar 2011 09:51:51 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, "Zanussi, Tom"
	<tom.zanussi@intel.com>
Date: Mon, 14 Mar 2011 09:51:48 -0700
Thread-Topic: [poky] [PATCH 2/2] documentation: Kernel Manual fixes
Thread-Index: AcviZXREpeEwIvXaSkWEA8cjOkElfAAAptxQ
Message-ID: <DE8BA75F34A0404282AC5E15F691BC762763AB84@orsmsx504.amr.corp.intel.com>
References: <cover.1300081427.git.tom.zanussi@intel.com>
	<b3358d9bde3fd31dbca76323337d248dacce8c5b.1300081427.git.tom.zanussi@intel.com>
	<4D7E4311.2040503@linux.intel.com>
In-Reply-To: <4D7E4311.2040503@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] documentation: Kernel Manual fixes
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Mar 2011 16:52:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

True on the contractions... not good to use those.

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Darren Hart
Sent: Monday, March 14, 2011 9:32 AM
To: Zanussi, Tom
Cc: poky@yoctoproject.org
Subject: Re: [poky] [PATCH 2/2] documentation: Kernel Manual fixes



On 03/13/2011 10:50 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>

Thanks Tom, you beat me to it.

> Upgraded to reflect 1.0 usage rather than 0.90 usage, and some other
> clarifications and minor changes.

Only one minor nitpic below:

>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   documentation/kernel-manual/kernel-how-to.xml |  120 +++++++++++++-----=
-------
>   1 files changed, 61 insertions(+), 59 deletions(-)
>
> diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentatio=
n/kernel-manual/kernel-how-to.xml
> index abb19f2..fdfda40 100644
> --- a/documentation/kernel-manual/kernel-how-to.xml
> +++ b/documentation/kernel-manual/kernel-how-to.xml
> @@ -425,18 +425,18 @@ repository.
>

...

>               <para>
> -                This section provides an example for creating a BSP that=
 is based on an existing, and hopefully,
> -                similar one.
> -                Follow these steps and keep in mind your particular situ=
ation and differences:
> +                This section provides an example for creating a BSP
> +                that is based on an existing, and hopefully, similar
> +                one.  It assumes you'll be using a local kernel

We should void using contractions in formal documentation

s/you'll/you will/

> +                repository and will be pointing the kernel recipe at
> +                that.  Follow these steps and keep in mind your
> +                particular situation and differences:
>
>               <orderedlist>
>                   <listitem><para>
> @@ -1016,16 +1019,10 @@ That's it. Configure and build.
>                   </para>
>
>                   <para>
> -                    You can start with something in<filename>meta/conf/m=
achine</filename>.
> -                    Or,<filename>meta-emenlow/conf/machine</filename>  h=
as an example in its own layer.
> +                    You can start with something in<filename>meta/conf/m=
achine</filename>  -<filename>meta/conf/machine/atom-pc.conf</filename>  fo=
r example.  Or, you can start with a machine configuration from any of the =
BSP layers in the meta-intel repository at<ulink url=3D'http://git.pokylinu=
x.org/cgit/cgit.cgi/meta-intel/'></ulink>, such as<filename>meta-intel/meta=
-emenlow/conf/machine/emenlow.conf</filename>.

I presume we're using some line length limit in our documentation?


Otherwise looks good to me.

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

