Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 669D64C80BD4
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 17:38:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2011 15:38:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,285,1291622400"; d="scan'208";a="590634150"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2011 15:38:01 -0800
Received: from [10.7.199.157] (10.7.199.157) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 6 Jan 2011 16:38:01 -0700
Message-ID: <4D265300.2000906@intel.com>
Date: Thu, 6 Jan 2011 15:40:48 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc14
	Lightning/1.0b3pre Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4D25DE22.4000004@mlbassoc.com>
In-Reply-To: <4D25DE22.4000004@mlbassoc.com>
Subject: Re: ^C during build broken?
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
X-List-Received-Date: Thu, 06 Jan 2011 23:38:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/06/2011 07:22 AM, Gary Thomas wrote:
> As of today's master (9b5c770cbda8cfc4c108d94bd0ff5c0af3d0b64b),
> if I type ^C during the build, it just keeps merrily going on...
>
>     --NOTE: package readline-native-6.1-r0: task do_configure: Started
>     ^C
>     Keyboard Interrupt, closing down...
>
>     Waiting for 1 active tasks to finish:
>     0: readline-native-6.1-r0 do_configure (pid 25173)
>     NOTE: package perl-native-5.8.8-r14: task do_compile: Succeeded
>     NOTE: Running task 444 of 468 (ID: 110, /tmp/poky-amltd/meta/recipes-devtools/perl/perl-native_5.8.8.bb, do_install)
>     NOTE: Running task 444 of 468 (ID: 110, /tmp/poky-amltd/meta/recipes-devtools/perl/perl-native_5.8.8.bb, do_install)
>     Waiting for 2 active tasks to finish:
>     0: readline-native-6.1-r0 do_configure (pid 25173)
>     1: perl-native-5.8.8-r14 do_install (pid 27401)
>     NOTE: package perl-native-5.8.8-r14: task do_install: Started
>
> Huh?  It _was_ waiting for 1 task to finish, but then it fired
> off more!  I let it run for a while and it just kept going and going...

I am also seeing this.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

