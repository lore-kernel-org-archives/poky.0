Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 490BB4C800B6
	for <poky@yoctoproject.org>; Thu, 26 May 2011 05:27:27 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4QAROJv012243;
	Thu, 26 May 2011 11:27:24 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11310-08; Thu, 26 May 2011 11:27:20 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4QARHP1012233
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 26 May 2011 11:27:17 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ke Liping <liping.ke@intel.com>
In-Reply-To: <d43679c93e42683ef1e3d636fe9bacc7304d415e.1306376361.git.liping.ke@intel.com>
References: <cover.1306376361.git.liping.ke@intel.com>
	<d43679c93e42683ef1e3d636fe9bacc7304d415e.1306376361.git.liping.ke@intel.com>
Date: Thu, 26 May 2011 11:27:14 +0100
Message-ID: <1306405634.27470.111.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/4][Image Creator]Introduce new param caches_array into Cache impl.
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
X-List-Received-Date: Thu, 26 May 2011 10:27:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Liping,

This looks good, just a couple more minor tweaks:

On Thu, 2011-05-26 at 10:53 +0800, Ke Liping wrote:
> diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
> index a1cd4d7..0dc895a 100644
> --- a/bitbake/lib/bb/cooker.py
> +++ b/bitbake/lib/bb/cooker.py
> @@ -72,6 +72,43 @@ class BBCooker:
>  
>          self.configuration = configuration
>  
> +        self.caches_array = []
> +        # Currently, only Image Creator hob ui needs extra cache.
> +        # So, we save Extra Cache class name and container file
> +        # information into a extraCaches field in hob UI.  
> +        # In future, having a registration mechanism for extra cache
> +        # fields in cache_extra is a better solution. Also, we may
> +        # need to consider adding a user-hidden parameter 'CacheRequest'
> +        # for bitbake command line. It will be filled by those sub
> +        # command who need to have extra cache support.
> +        caches_name_array = ['bb.cache:CoreRecipeInfo']
> +        if configuration.ui:
> +            try:
> +                module = __import__('bb.ui', fromlist=[configuration.ui])
> +                name_array = (getattr(module, configuration.ui)).extraCaches
> +                for recipeInfoName in name_array:
> +                    caches_name_array.append(recipeInfoName)
> +            except ImportError, exc:
> +                # bb.ui.XXX is not defined and imported. It's an error!
> +                logger.critical("Unable to import '%s' interface from bb.ui: %s" % (configuration.ui, exc))
> +                sys.exit("FATAL: Failed to import '%s' interface." % configuration.ui)
> +            except AttributeError:
> +                # This is not an error. If the field is not defined in the ui,
> +                # this interface might need no extra cache fields, so
> +                # just skip this error!
> +                logger.info("UI '%s' does not require extra cache!" % (configuration.ui))

This should be logger.debug as we don't need to show this to the user in
general.

Whilst this code block is better than what we had previously, I think
bin/bitbake should pass some kind of information into cooker about the
required caches rather than cooker poking around the ui variables. We
can leave that as is for now but its a cleanup we should really do when
we get time. There are various UI startup issues we should probably
address at the same time.

> +        # At least CoreRecipeInfo will be loaded, so caches_array will never be empty!
> +        # This is the entry point, no further check needed!
> +        for var in caches_name_array:
> +            try:
> +                module_name, cache_name = var.split(':')
> +                module = __import__(module_name, fromlist=(cache_name,))
> +                self.caches_array.append(getattr(module, cache_name)) 
> +            except ImportError, exc:
> +                logger.critical("Unable to import extra RecipeInfo '%s' from bb.extra_cache: %s" % (cache_name, exc))

We should use module_name instead of bb.extra_cache here :)

I'm really happy with these changes in general though, looks good!

Cheers,

Richard




