Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C93E4C801BF
	for <poky@pokylinux.org>; Fri, 22 Oct 2010 04:11:26 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Oct 2010 02:11:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,222,1286175600"; d="scan'208";a="849953896"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga001.fm.intel.com with ESMTP; 22 Oct 2010 02:11:25 -0700
Message-ID: <4CC1553C.4000305@intel.com>
Date: Fri, 22 Oct 2010 17:11:24 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: [PULL] fix adding new contact failure when starting contacts for the 1st time
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 09:11:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Bug 455 got fixed by this.

Thanks,
edwin


================================================================================

Note: <commit_id> parameter assumed as 'HEAD'

 meta/recipes-sato/eds/eds-dbus/new-contact-fix.patch |   21 
+++++++++++++++++++
 meta/recipes-sato/eds/eds-dbus_git.bb                |    3 +-
 2 files changed, 23 insertions(+), 1 deletion(-)

Zhai Edwin (1):
      Fix adding new contact failure when starting contacts for the 1st time

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2


