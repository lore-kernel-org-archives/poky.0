Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2720E004D1
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 10:08:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Sep 2011 10:08:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,468,1312182000"; d="scan'208";a="72889949"
Received: from unknown (HELO [10.255.15.62]) ([10.255.15.62])
	by fmsmga002.fm.intel.com with ESMTP; 30 Sep 2011 10:08:02 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 30 Sep 2011 10:07:57 -0700
In-Reply-To: <CAFt-coyH+xTzgY03s-oVAeY55zVRhKaMKAJSqqCCuibnTS+Avg@mail.gmail.com>
References: <CAFt-coyH+xTzgY03s-oVAeY55zVRhKaMKAJSqqCCuibnTS+Avg@mail.gmail.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1317402482.11645.10.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Error while pulling XBMC package.
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
X-List-Received-Date: Fri, 30 Sep 2011 17:08:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-30 at 12:51 +0530, v sailaja wrote:
> Hi,
> 
> I'm trying to pull the package XBMC 10.05 which depends on
> libsdl_mixer and its there in the meta/recipe as libsdl. Another
> dependency libsdl_image also present in libsdl is getting pulled 
> easily but while building for libsdl_mixer with the recipe
> libsdl-mixer_1.2.11.bb i'm getting the 
> error as below:
> ERROR: Nothing PROVIDES 'libsdl_mixer'
> ERROR: Command execution failed: Traceback (most recent call last):
>   File "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/ lib/bb/command.py", line 102, in runAsyncCommand
> 
>     commandmethod(self.cmds_async,
>  self, options)
>   File "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/ lib/bb/command.py", line 200, in buildTargets
>     command.cooker.buildTargets( pkgs_to_build, task)
>   File "/home/sct/logi/gigabyte/poky_
>  gigabyte_16Sep2011/bitbake/ lib/bb/cooker.py", line 826, in buildTargets
>     taskdata.add_provider( localdata, self.status, k)
>   File
>  "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/ lib/bb/taskdata.py", line 353, in add_provider
> 
>     self.add_provider_internal( cfgData, dataCache, item)
>   File "/home/sct/logi/gigabyte/poky_ gigabyte_16Sep2011/bitbake/ lib/bb/taskdata.py", line 373, in add_provider_internal
>     raise bb.providers.NoProvider(item)
> 
> NoProvider: libsdl_mixer
> 
> 
> I'm building the poky for "Fishriver" machine . My host machine is "
> Ubuntu 10.10, 64 bit ".
> Can someone help me out of this problem ? 

BitBake doesn't think it can build libsdl_mixer for your target. Is the
recipe restricted by COMPATIBLE_MACHINE, COMPATIBLE_HOST, or similar
mechanism?

You're probably going to have to share more information for anyone to be
able to help you - is the libsdl_mixer recipe somewhere we can take a
look?

Where are you 'pulling' these things from?

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


