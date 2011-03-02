Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F11764C800A4
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 07:03:52 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2011 05:03:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,253,1297065600"; d="scan'208";a="663022949"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2011 05:03:52 -0800
Message-ID: <4D6E403A.2080107@intel.com>
Date: Wed, 02 Mar 2011 21:03:54 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: gtk icon theme issue
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
X-List-Received-Date: Wed, 02 Mar 2011 13:03:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

All,

We have a bug about gtk icon theme that some icons in matchbox-desktop 
are missing after several 
reboots.(http://bugzilla.pokylinux.org/show_bug.cgi?id=456)

The issue is gtk sometimes failed to use "Sato" theme, and fall back to 
default "hicolor". This should not happen as other dirs in 
/usr/share/icons has high priority than "hicolor" according to the spec 
from freedesktop.org.

Does anybody know if we have system level gtk icon theme config file in 
matchbox environment? If not, I'd like to add user level config file 
"/home/root/.gtkrc-2.0" making "Sato" as default to fix it.

Thanks,
edwin


