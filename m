Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8B164C80337
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 09:25:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Apr 2011 07:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,287,1301900400"; d="scan'208";a="427796009"
Received: from unknown (HELO [10.255.13.12]) ([10.255.13.12])
	by azsmga001.ch.intel.com with ESMTP; 29 Apr 2011 07:24:59 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 29 Apr 2011 07:24:53 -0700
In-Reply-To: <4DBA5E83.4050704@windriver.com>
References: <4DBA5E83.4050704@windriver.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1304087099.2023.1.camel@scimitar>
Mime-Version: 1.0
Subject: Re: bitbake gs failed
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
X-List-Received-Date: Fri, 29 Apr 2011 14:25:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-04-29 at 14:45 +0800, Kang Kai wrote:
> Hi Saul,
> 
> When I import gs (ghostscript) from oe, I copy the whole directory of gs 
> from oe and put it at meta/recipes-extend/gs.  When run 'bitbake gs', 
> the bitbake comlains:
> 
> ERROR: Nothing PROVIDES 'gs'
> ERROR: Command execution failed: Traceback (most recent call last):
>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 102, in 
> runAsyncCommand
>      commandmethod(self.cmds_async, self, options)
>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/command.py", line 200, in 
> buildTargets
>      command.cooker.buildTargets(pkgs_to_build, task)
>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/cooker.py", line 827, in 
> buildTargets
>      taskdata.add_provider(localdata, self.status, k)
>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 353, in 
> add_provider
>      self.add_provider_internal(cfgData, dataCache, item)
>    File "/mnt/sda8/poky-neil/bitbake/lib/bb/taskdata.py", line 373, in 
> add_provider_internal
>      raise bb.providers.NoProvider(item)
> NoProvider: gs
> 
> The bb file is in attachment.
> Would you like to help me to check it?
> Thank you!
> Kai

This means the dependency chain for gs is broken, when pulling a recipe
from somewhere else you need to ensure all of its dependencies are
present too:

DEPENDS = "jpeg zlib fontconfig cups gs-tools-native"

I don't think we have cups or gs-tools-native in oe-core?

Regards,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


