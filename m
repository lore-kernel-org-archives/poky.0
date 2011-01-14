Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BB514C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 13:38:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Jan 2011 11:38:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="374793516"
Received: from unknown (HELO [10.255.14.72]) ([10.255.14.72])
	by azsmga001.ch.intel.com with ESMTP; 14 Jan 2011 11:38:32 -0800
Message-ID: <4D30A632.707@intel.com>
Date: Fri, 14 Jan 2011 11:38:26 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D2FD707.4080509@windriver.com>
In-Reply-To: <4D2FD707.4080509@windriver.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] pseudo: Update to the latest upstream version
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
X-List-Received-Date: Fri, 14 Jan 2011 19:38:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/13/2011 08:54 PM, Mark Hatle wrote:
> Update pseudo to the latest version to resolve a number of optimization defects.
>
> The problems were present on both 64-bit and 32-bit systems, but generally only
> caused issues on 32-bit hosts.
>
> Note: once you upgrade you need to be sure to clean out pseudo.  In order to do
> this ../bitbake/bin/bitbake -c cleanall pseudo-native
>
> Followed by ../bitbake/bin/bitbake pseudo-native
>
> Otherwise you can end up in a wierd situation where the old pseudo is being
> used to build the new one.
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: mhatle/pseudo
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/pseudo
>
> Thanks,
>      Mark Hatle<mark.hatle@windriver.com>
> ---
>
>
> Mark Hatle (1):
>    pseudo: Update to the latest upstream version
>
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235 --------------------
>   meta/recipes-devtools/pseudo/pseudo_git.bb         |    2 +-
>   3 files changed, 2 insertions(+), 237 deletions(-)
>   delete mode 100644
> meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e45f.patch
>
Mark,

I did not pull this because of a failure seen on the autobuilder, the 
failure was in eglibc-initial trying to compile.

The error was:

arm-poky-linux-gnueabi-gcc: error trying to exec 'cc1': execvp: No such 
file or directory

I know that this seems strange for pseudo to cause, but I removed the 
psuedo change and this problem went away.  It could be a build timing 
issue or an install location issue.

Check the autobuilder log at:
http://autobuilder.pokylinux.org:8010/builders/distro-testing/builds/44/steps/shell_1/logs/stdio

Unfortunately because I rebuild distro-testing the individual logs are 
gone.  Let me know if we need to rebuild with the error for further 
diagnoses.

Thanks
    Sau!

