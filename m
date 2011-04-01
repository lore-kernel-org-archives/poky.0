Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D5714C80ABF
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 19:23:39 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Mar 2011 17:23:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,279,1299484800"; d="scan'208";a="621922995"
Received: from miles.jf.intel.com (HELO [10.7.199.151]) ([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 31 Mar 2011 17:23:38 -0700
Message-ID: <4D951B0B.3010503@intel.com>
Date: Thu, 31 Mar 2011 17:23:39 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Broken dependency behavior in master?
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
X-List-Received-Date: Fri, 01 Apr 2011 00:23:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

Beth pointed me to a failure occurring on the autobuilder when building 
docbook-sgml-dtd-3.1-native using the latest master:

http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/88/steps/shell_3/logs/stdio

I am able to reproduce it on my development system. The problem occurs 
because sgml-common-native is not being fully built before 
docbook-sgml-dtd-3.1-native, even though it is listed in DEPENDS. I see 
log files only up to the do_configure step for sgml-common-native.

This makes me think something could be seriously broken in master when 
it comes to handling build dependencies.

I've verified that sgml-common-native is showing up as a build 
dependency properly in the dependency explorer.

...ok, looking at the recent commits in master, this one raised my 
suspicion:

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=b4268c08c350a7928a0b1a041b04ffe5a44e77b4

I just tried reverting that and doing a new build, and the build 
completed successfully. Could you take a closer look at it?

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

