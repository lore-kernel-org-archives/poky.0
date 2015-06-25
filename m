Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6551E00A31; Thu, 25 Jun 2015 13:00:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E5B1E00A03;
	Thu, 25 Jun 2015 13:00:23 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 25 Jun 2015 13:00:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,679,1427785200"; d="scan'208";a="594835775"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.55])
	([10.219.4.55])
	by orsmga003.jf.intel.com with ESMTP; 25 Jun 2015 13:00:14 -0700
Message-ID: <558C5E43.6010709@linux.intel.com>
Date: Thu, 25 Jun 2015 15:02:11 -0500
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: openembedded-core@lists.openembedded.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Automatic Upgrade Helper Announcement
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
X-List-Received-Date: Thu, 25 Jun 2015 20:00:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm glad to announce the enabling of Automatic Upgrade Helper (a.k.a. 
AUH), the AUH is a service
that provides recipe upgrades and will be run on weekly basis.

If you are a maintainer (listed in [1]) you will receive AUH emails with 
Recipe upgrades when AUH
detects that upgrade is needed.

The development of AUH continues with adding capabilities like 
buildhistory support and image
testing for upgraded recipes planned for Yocto 1.9 release [2], 
contributions are welcome the code
can be found at [3].

Any comment or concern please contact me.

Cheers,
     alimon

[1] 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto/conf/distro/include/maintainers.inc
[2] 
https://bugzilla.yoctoproject.org/buglist.cgi?product=Maintenance%20Tools&component=Automated%20Update%20Handler
[3] http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/

