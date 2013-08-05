Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1482CE003D4
	for <poky@yoctoproject.org>; Mon,  5 Aug 2013 00:10:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Aug 2013 00:10:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,816,1367996400"; d="scan'208";a="381313306"
Received: from unknown (HELO [10.255.13.223]) ([10.255.13.223])
	by fmsmga002.fm.intel.com with ESMTP; 05 Aug 2013 00:09:59 -0700
Message-ID: <1375686599.14739.69.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Qi.Chen@windriver.com
Date: Mon, 05 Aug 2013 00:09:59 -0700
In-Reply-To: <a92298098e741dc4b365d124dedfe84a8ee6e92d.1375665987.git.Qi.Chen@windriver.com>
References: <cover.1375665987.git.Qi.Chen@windriver.com>
	<a92298098e741dc4b365d124dedfe84a8ee6e92d.1375665987.git.Qi.Chen@windriver.com>
Organization: Intel
X-Mailer: Evolution 3.8.4 (3.8.4-1.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH V2 1/1] tiny-init: fix bashism
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
X-List-Received-Date: Mon, 05 Aug 2013 07:10:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-08-05 at 09:27 +0800, Qi.Chen@windriver.com wrote:
> From: Chen Qi <Qi.Chen@windriver.com>
> 
> "source" is a bashism, replace it with the posix shell compliant "."
> 
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta-yocto/recipes-core/tiny-init/files/init |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
> index 4b78f01..9140e95 100644
> --- a/meta-yocto/recipes-core/tiny-init/files/init
> +++ b/meta-yocto/recipes-core/tiny-init/files/init
> @@ -15,7 +15,7 @@ ifup lo
>  
>  # Allow for distro or local customizations
>  if [ -f /etc/rc.local ] ; then
> -	source /etc/rc.local
> +	. /etc/rc.local
>  fi
>  
>  # Become session leader and try to find a real tty (e.g. ttyS0)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



