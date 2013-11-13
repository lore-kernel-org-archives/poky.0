Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D93B9E0178C
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 11:34:05 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Nov 2013 11:30:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="408318636"
Received: from unknown (HELO [10.255.15.60]) ([10.255.15.60])
	by orsmga001.jf.intel.com with ESMTP; 13 Nov 2013 11:34:04 -0800
Message-ID: <1384371244.24747.41.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bastien JAUNY <bastien.jauny@gmail.com>
Date: Wed, 13 Nov 2013 13:34:04 -0600
In-Reply-To: <1384370474.4683.8.camel@rivendell>
References: <1384370474.4683.8.camel@rivendell>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [patch] yocto-bsp: Add missing format specifier in bblayers error message
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
X-List-Received-Date: Wed, 13 Nov 2013 19:34:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-11-13 at 20:21 +0100, Bastien JAUNY wrote:
> If the build environment is misconfigured (e.g. a bad path
> for a layer in bblayers.conf) the yocto-bsp script crashes with a
> standard python error, not very explicit.  This fixes the problem.
> 
>  Signed-off-by: Bastien JAUNY <bastien.jauny@gmail.com>
> 

Acked-by: Tom Zanussi <tom.zanussi@linux.intel.com>

> ---
>  scripts/lib/bsp/kernel.py |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
> index 5696ca7..ba68b60 100644
> --- a/scripts/lib/bsp/kernel.py
> +++ b/scripts/lib/bsp/kernel.py
> @@ -62,7 +62,7 @@ def find_bblayers():
>              break
>  
>      if not bblayers:
> -        print "Couldn't find BBLAYERS in 'bitbake -e' output, exiting."
> % \
> +        print "Couldn't find BBLAYERS in %s output, exiting." % \
>              bitbake_env_cmd
>          sys.exit(1)
>  



