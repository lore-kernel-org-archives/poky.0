Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 584334C800BE
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 11:32:24 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 09:32:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,316,1297065600"; d="scan'208";a="612775963"
Received: from doubt.jf.intel.com (HELO [10.7.199.155]) ([10.7.199.155])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 09:32:19 -0700
Message-ID: <4D7E4311.2040503@linux.intel.com>
Date: Mon, 14 Mar 2011 09:32:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1300081427.git.tom.zanussi@intel.com>
	<b3358d9bde3fd31dbca76323337d248dacce8c5b.1300081427.git.tom.zanussi@intel.com>
In-Reply-To: <b3358d9bde3fd31dbca76323337d248dacce8c5b.1300081427.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Mon, 14 Mar 2011 16:32:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



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
>   documentation/kernel-manual/kernel-how-to.xml |  120 +++++++++++++------------
>   1 files changed, 61 insertions(+), 59 deletions(-)
>
> diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
> index abb19f2..fdfda40 100644
> --- a/documentation/kernel-manual/kernel-how-to.xml
> +++ b/documentation/kernel-manual/kernel-how-to.xml
> @@ -425,18 +425,18 @@ repository.
>

...

>               <para>
> -                This section provides an example for creating a BSP that is based on an existing, and hopefully,
> -                similar one.
> -                Follow these steps and keep in mind your particular situation and differences:
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
> -                    You can start with something in<filename>meta/conf/machine</filename>.
> -                    Or,<filename>meta-emenlow/conf/machine</filename>  has an example in its own layer.
> +                    You can start with something in<filename>meta/conf/machine</filename>  -<filename>meta/conf/machine/atom-pc.conf</filename>  for example.  Or, you can start with a machine configuration from any of the BSP layers in the meta-intel repository at<ulink url='http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/'></ulink>, such as<filename>meta-intel/meta-emenlow/conf/machine/emenlow.conf</filename>.

I presume we're using some line length limit in our documentation?


Otherwise looks good to me.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

