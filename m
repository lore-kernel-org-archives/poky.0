Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EDCE24C80AA8
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 18:26:52 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 16:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,319,1297065600"; d="scan'208";a="612927344"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.154])
	([10.7.198.154])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 16:26:52 -0700
Message-ID: <4D7EA43E.2000202@intel.com>
Date: Mon, 14 Mar 2011 16:26:54 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH 0/1] Cairo: Fixing glib-2.0 dependency
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
X-List-Received-Date: Mon, 14 Mar 2011 23:26:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: eflanagan/cairo
   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/cairo

Thanks,
     Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
   cairo_1.10.2: Fix RDEPENDS to include glib-2.0

  meta/recipes-graphics/cairo/cairo_1.10.2.bb |    4 ++--
  1 files changed, 2 insertions(+), 2 deletions(-)

