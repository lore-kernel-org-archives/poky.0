Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99A40E0080C; Tue,  4 Nov 2014 11:40:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 724EAE00777;
	Tue,  4 Nov 2014 11:40:39 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 04 Nov 2014 11:34:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,314,1413270000"; d="scan'208";a="617065156"
Received: from unknown (HELO [10.255.13.89]) ([10.255.13.89])
	by fmsmga001.fm.intel.com with ESMTP; 04 Nov 2014 11:40:13 -0800
Message-ID: <54592B9D.2070308@linux.intel.com>
Date: Tue, 04 Nov 2014 11:40:13 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: 'Patches and discussions about the oe-core layer'
	<openembedded-core@lists.openembedded.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: 1.7 Stable Maintainer - Dizzy open for patch suggestions
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
X-List-Received-Date: Tue, 04 Nov 2014 19:40:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Hi Everyone!

Armin Kuster of Monta Vista  will be the stable maintainer for the Dizzy 
branch, and it is now open for suggestions of backport patches.

The following wiki page has the Policies and process for requesting a 
fix in a stable branch, please review that before sending a patch.

https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

Please remember to include [dizzy] in any request (backport or commit).

We do not have a hard date for this yet, but likely be early in the New 
Year time frame for the 1.7.1 release.

Thanks to all for your efforts.

     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


