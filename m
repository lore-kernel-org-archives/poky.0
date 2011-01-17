Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F246C4C8109B
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 19:31:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Jan 2011 17:31:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,331,1291622400"; d="scan'208";a="593562811"
Received: from unknown (HELO [10.255.14.85]) ([10.255.14.85])
	by orsmga002.jf.intel.com with ESMTP; 16 Jan 2011 17:31:30 -0800
Message-ID: <4D339BF0.5080607@intel.com>
Date: Sun, 16 Jan 2011 17:31:28 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: libxml-parser-perl failure
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
X-List-Received-Date: Mon, 17 Jan 2011 01:31:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Nitin, Richard:

I was looking into the libxml failure today, and found a couple of 
different items that have changed in the newer version.  First is the 
addition of an arch_check function in the Extuils/MM_Any.pm and used
MakeMaker.pm. This check seems to use the archlib, which is set to 
${STAGING_LIBDIR}/perl/${PV} by poky, but expects the final directory to 
be the ARCH, which is why we get 5.12.2 for the Arch!

Why do we set archlib to the ${PV} instead of ${PV}/${target}


The next issue that I saw had to do with Errno.pm and another 
architecture check, this time the errors:

  ERROR from evaluation of 
/vol/1/sgw/builds/ppc/tmp/work/ppc603e-poky-linux/libxml-parser-perl-2.36-r0/XML-Parser-2.36/Expat/Makefile.PL: 
Errno architecture (x86_64-linux-thread-multi-2.6.34.7-56.fc13.x86_64) 
does not match executable architecture 
(powerpc-linux-2.6.37-rc5-yocto-standard+) at 
/vol/1/sgw/builds/ppc/tmp/sysroots/x86_64-linux/usr/lib/perl/5.12.2/Errno.pm 
line 11.

This looks like another check that will need some work

Sau!

