Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B7CFE00303
	for <poky@yoctoproject.org>; Fri, 16 Dec 2011 09:39:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2011 09:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103033921"
Received: from unknown (HELO [10.255.12.77]) ([10.255.12.77])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2011 09:39:51 -0800
Message-ID: <4EEB8267.6040500@linux.intel.com>
Date: Fri, 16 Dec 2011 09:39:51 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <4EEB1EF8.7060204@gherzan.ro>
In-Reply-To: <4EEB1EF8.7060204@gherzan.ro>
Cc: poky@yoctoproject.org
Subject: Re: License | "or" problem?
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
X-List-Received-Date: Fri, 16 Dec 2011 17:39:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/2011 02:35 AM, Andrei Gherzan wrote:
> As i know qt4 has double license. This means that everybody can choose
> from GPLv3 and LGPLv2.1. This fact is reflected in bb file as:
>
> LICENSE = "LGPLv2.1 | GPLv3"
>
> Well, this "or" operand doesn't work as i end up with this error in a
> GPLv3 incompatible build:
>
You need to explicitly white list qt4-embedded in the 
LGPLv2_WHITELIST_GPLv3, currently the parsing for exclusion just looks 
at the incompatible license.

Also, looking at the current LICENSE in qt, it will need to be further 
defined on a package level as to how each package is licensed, so that 
when the manifest and audit occurs only the LGPLv2.1 bits are included.

We are open to patches such as this.

BTW, we have not tested building a graphical non-GPLv3 image, so you are 
treading on new ground, please let me know how it goes and we might 
include a qt image that is non-GPLv3.

Sau!


> ERROR: Nothing PROVIDES 'qt4-embedded'
> ERROR: qt4-embedded was skipped: incompatible with license LGPLv2.1 | GPLv3
> ERROR: Command execution failed: Traceback (most recent call last):
> File
> "/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/command.py",
> line 87, in runAsyncCommand
> commandmethod(self.cmds_async, self, options)
> File
> "/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/command.py",
> line 192, in buildTargets
> command.cooker.buildTargets(pkgs_to_build, task)
> File
> "/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/cooker.py",

> line 1111, in buildTargets
> taskdata.add_provider(localdata, self.status, k)
> File
> "/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/taskdata.py",
> line 371, in add_provider
> self.add_provider_internal(cfgData, dataCache, item)
> File
> "/home/agherzan/work/wrs/yocto-adige/poky/bitbake/lib/bb/taskdata.py",
> line 391, in add_provider_internal
> raise bb.providers.NoProvider(item)
> NoProvider: qt4-embedded
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

