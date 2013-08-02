Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53540E013EC
	for <poky@yoctoproject.org>; Fri,  2 Aug 2013 07:05:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Aug 2013 07:05:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,801,1367996400"; d="scan'208";a="380211372"
Received: from unknown (HELO [10.255.14.162]) ([10.255.14.162])
	by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2013 07:05:45 -0700
Message-ID: <1375452334.978.2.camel@dvhart-mobl1.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Qi.Chen@windriver.com
In-Reply-To: <0ee3aefc08bd6bcddd7132c00ecf3b3ec8ea654b.1375430111.git.Qi.Chen@windriver.com>
References: <cover.1375430111.git.Qi.Chen@windriver.com>
	<0ee3aefc08bd6bcddd7132c00ecf3b3ec8ea654b.1375430111.git.Qi.Chen@windriver.com>
Organization: Intel
Date: Fri, 02 Aug 2013 07:05:34 -0700
Mime-Version: 1.0
X-Mailer: Evolution 3.8.4 (3.8.4-1.fc19) 
Cc: poky@yoctoproject.org, Zhangle.Yang@windriver.com
Subject: Re: [PATCH 1/1] tiny-init: fix bashism
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
X-List-Received-Date: Fri, 02 Aug 2013 14:05:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-08-02 at 15:56 +0800, Qi.Chen@windriver.com wrote:
> From: Chen Qi <Qi.Chen@windriver.com>

I understand this is a simple fix, but please provide a commit log. In
this case, something like the following would suffice:

"source" is a bashism, replace it with the posix shell compliant "."

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



