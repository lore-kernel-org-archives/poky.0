Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C01EA4C800A4
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 18:07:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2011 16:07:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,423,1291622400"; d="scan'208";a="703864655"
Received: from miles.jf.intel.com (HELO [10.7.199.51]) ([10.7.199.51])
	by orsmga001.jf.intel.com with ESMTP; 03 Feb 2011 16:07:14 -0800
Message-ID: <4D4B4333.4080005@intel.com>
Date: Thu, 03 Feb 2011 16:07:15 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Cc: Yocto Project Discussions <yocto@linux.intel.com>
Subject: Bugs with new documentation recipes.
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
X-List-Received-Date: Fri, 04 Feb 2011 00:07:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Saul is currently reverting a few of my recent commits to master which 
enabled a number of documentation infrastructure-related recipes 
(docbook-utils in particular).

This will help to un-break the builds of a few packages - prelink, 
iputils, and gtk+. However, if you've built the broken version of these 
recipes you will need to delete the following from your native sysroot:

rm -rf etc/sgml
rm -rf usr/share/sgml

And then to clean up your package cache be sure to bitbake -c cleanall on:

docbook-utils-native
openjade-native
opensp-native
docbook-dsssl-stylesheets-native
docbook-sgml-dtd-3.1-native
sgml-common-native

I apologize for the trouble; I did not test these recipe additions in 
the right environment (it was on a host system that had many of these 
utilities installed already, which gave me false positives).

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project
Intel Open Source Technology Center

