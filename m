Return-Path: <avinash.reddy.palleti@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C423E00E54; Tue,  6 Feb 2018 20:49:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7901CE0083E
	for <poky@yoctoproject.org>; Tue,  6 Feb 2018 20:49:35 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Feb 2018 20:49:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,471,1511856000"; d="scan'208";a="17843971"
Received: from arpallet-desk.iind.intel.com ([10.66.247.158])
	by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2018 20:49:33 -0800
From: avinash.reddy.palleti@intel.com
To: poky@yoctoproject.org
Date: Wed,  7 Feb 2018 10:19:07 +0530
Message-Id: <1517978948-29740-1-git-send-email-avinash.reddy.palleti@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: saul.wold@intel.com
Subject: [pyro][pull] Add reference to iwlwifi-8000c firmware
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
X-List-Received-Date: Wed, 07 Feb 2018 04:49:36 -0000


Hi,

Reference to iwlwifi-8000c firmware is removed erroneously in below commit in pyro branch,
http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=pyro&id=3e4b382c0
with this yocto build is failing in platforms where this firmware is used (intel-aero), So I am adding these lines back into recipe file.
Please review the patch and merge the same into pyro branch.

Thanks,
Avinash

