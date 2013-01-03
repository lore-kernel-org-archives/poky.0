Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75817E006D2
	for <poky@yoctoproject.org>; Thu,  3 Jan 2013 04:41:35 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r03CfWhC012742;
	Thu, 3 Jan 2013 12:41:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32489-03; Thu,  3 Jan 2013 12:41:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r03CfNiY012736
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 3 Jan 2013 12:41:24 GMT
Message-ID: <1357216885.28649.89.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
Date: Thu, 03 Jan 2013 12:41:25 +0000
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/23] denzil pull request 5
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
X-List-Received-Date: Thu, 03 Jan 2013 12:41:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-12-28 at 13:44 -0800, Scott Garman wrote:
> This is a pull request for denzil, it includes a number of security
> fixes and a few important bugfixes. The poky-based tree has been run
> through the autobuilder as follows:
[...]
> The following changes since commit ef745cb34fe9ff01456b76c3ff361f3a751cbcb7:
> 
>   poky.conf: Add Ubuntu 12.04.1 LTS to SANITY_TESTED_DISTROS (2012-12-07 16:02:04 +0000)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-pull5
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull5
> 
> Khem Raj (5):
>   coreutils: Fix build with eglibc 2.16
>   diffutils: Fix build with eglibc 2.16
>   gettext,m4,augeas,gnutls: Account for removal of gets in eglibc 2.16
>   bison: Fix for gets being removed from eglibc 2.16
>   grub,guile,cpio,tar,wget: Fix gnulib for absense of gets in eglibc
> 
> Li Wang (1):
>   librsvg: CVE-2011-3146
> 
> Mihai Lindner (1):
>   sysklogd: removed tabs from syslog.conf
> 
> Richard Purdie (1):
>   boot-directdisk: Fix kernel location after STAGING_KERNEL_DIR change
> 
> Scott Garman (6):
>   psplash: new patch to fix segfault
>   build-appliance-image: Allow SRCREV to be overriden
>   gitignore: add generated doc files to ignore list
>   libxml2: patch for CVE-2012-2871
>   freetype: patches for CVE-2012-5668, 5669, and 5670
>   cups: patch for CVE-2011-2896
> 
> Scott Rifenbark (7):
>   documentation: poky-ref-manual - Fixed grammar typo.
>   Documentation: ref-manual - Updated LIC_FILES_CHKSUM example.
>   documentation: Updated Manual History table for 1.2.2 release
>   poky.ent: Updated to remove "current" and replace with 1.2.2
>   documentation: Added February 2013 as release date for 1.3.1
>   documentation: Updated manual history tables for Feb 2013
>   documentation: Formats. Also, the January 2013 date summary
> 
> Tom Zanussi (1):
>   yocto-bsp: set branches_base for list_property_values()
> 
> yanjun.zhu (1):
>   squashfs: fix CVE-2012-4025

Merged into denzil, thanks.

Richard


