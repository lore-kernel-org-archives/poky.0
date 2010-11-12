Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E9544C80044
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 16:13:59 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 14:13:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,189,1288594800"; d="scan'208";a="626255387"
Received: from doubt.jf.intel.com (HELO [10.24.1.112]) ([10.24.1.112])
	by fmsmga002.fm.intel.com with ESMTP; 12 Nov 2010 14:13:59 -0800
Message-ID: <4CDDBC2A.5070009@linux.intel.com>
Date: Fri, 12 Nov 2010 14:14:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <1289597497.27930.33.camel@scimitar>
In-Reply-To: <1289597497.27930.33.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] Enable swabber integration for host-contamination detection
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
X-List-Received-Date: Fri, 12 Nov 2010 22:14:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Josh,

Did you send this with send-pull-request? If so, what are you using for 
sendmail. The patches didn't come through as replies to the cover letter 
- I need to understand why and see if I can address it.

Thanks,

--
Darren

On 11/12/2010 01:31 PM, Joshua Lock wrote:
>
> This set of patches adds a user class to do host-contamination detection
> whilst
> building a Poky image.
>
> The class uses a bitbake-runtask wrapper script which wraps calls to
> bitbake-runtask in strace and logs the strace output for later
> processing.
> Similar to rm_work the class adds an extra task at the end of the build
> to run
> the swabber tool over the strace logs and generate a contamination
> report.
>
> The classes disables PARALLEL_MAKE on several packages which refused to
> run
> under strace with parallelism enabled.
>
> I have succesfully built all packages in poky-image-minimal under strace
> with
> this patchset.
>
> The final two patches in the series update the version of swabber to the
> latest
> git HEAD and updates the command in the class to work with this
> revision.
> The hard coded paths are undesirable and don't work reliably across
> distributions, for example Fedora 14 ships Python 2.7. They will be
> removed
> when a future swabber update includes provisioning for handling such
> things
> through configuration files.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: josh/swabber
>    Browse:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/swabber
>
> Thanks,
>      Joshua Lock<josh@linux.intel.com>
> ---
>
>
> Joshua Lock (5):
>    bitbake-runtask-strace: simple shell script to wrap tasks in a strace
>      call
>    image-swab: introduce a class for generating swabber reports
>    gitignore: ignore the default downloads directory
>    poky-default-revisions: bump swabber version
>    image-swab: update swabber command for latest version
>
>   .gitignore                                         |    1 +
>   bitbake/bin/bitbake-runtask-strace                 |    8 ++
>   meta/classes/image-swab.bbclass                    |   83
> ++++++++++++++++++++
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   meta/conf/local.conf.sample                        |    1 +
>   5 files changed, 94 insertions(+), 1 deletions(-)
>   create mode 100755 bitbake/bin/bitbake-runtask-strace
>   create mode 100644 meta/classes/image-swab.bbclass
>


-- 
Darren Hart
Embedded Linux Kernel

