Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3725FE008CC; Thu, 27 Nov 2014 17:10:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7889E006EF
	for <poky@yoctoproject.org>; Thu, 27 Nov 2014 17:10:50 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Nov 2014 17:10:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,473,1413270000"; d="scan'208";a="639316225"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.4.148])
	by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2014 17:10:49 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 27 Nov 2014 19:10:46 -0600
Message-Id: <cover.1417134564.git.anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH 00/12] Usage bitbake fetcher latest_versionstring in distrodata_class
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
X-List-Received-Date: Fri, 28 Nov 2014 01:10:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Since Bitbake fetcher has latest_versionstring method that support search last version
of package in upstream sites, distrodata class should use it instead of do itself,

Summary of changes,

distrodata_class: Re-implement upstream version detection using Bitbake fetcher methods.
package_regex.inc: Update regex because Bitbake fetcher already provides support for search
in HTML href's tags instead of RAW lines.
bitbake: Improvements in fetcher wget latest_versionstring method based on [1] and clean code.

Compatibility testing was made running distrodata class and the result files can be found at [1].

The code has DEPENDENCIES the Bitbake changes should be MERGE first then package_regex.inc
and finally distrodata_class.

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=1813

The following changes since commit 0bc03af7ee6112fa0af0608b02f715ec8495e4ff:

  maintainers.inc: update maintainers (2014-11-26 17:06:10 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib alimon/fetcher-distrodata
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=alimon/fetcher-distrodata

Aníbal Limón (12):
  distrodata_class: checkpkg make usage of latest_versionstring methods
    in bitbake fetcher
  package_regex.inc: Update REGEX'es in order to find upstream versions
    correctly
  fetch2/wget.py: latest_versionstring create _init_regex method for
    have one place when regex'es are defined
  fetch2/wget.py: _init_regexes rename variables to be more consistent
    and move dirver_regex into it
  fetch/wget.php: latest version string only try to find latest
    directory when REGEX_URI isn't specified to avoid unnecessary
    processing and makes code easier
  fetch2/wget.py: latest_versionstring add package_custom_regex_comp
  fetch2/wget.py: latest_versionstring improvments in searching
  fetch/wget.py: latest_versionstring remove unnecessary usage for name
    in version comparision
  fetch2/wget: latest_versionstring add support for search in RAW html
    lines
  fetch/wget.py: latest_versionstring remove newuri set because is
    previous set
  tests/fetch.py: Update wget latest_versionstring cups case
  fetch2/wget.py: latest_versionstring clean improvments minor

 bitbake/lib/bb/fetch2/wget.py                    | 146 ++++---
 bitbake/lib/bb/tests/fetch.py                    |   2 +-
 meta-yocto/conf/distro/include/package_regex.inc | 400 +++++++++---------
 meta/classes/distrodata.bbclass                  | 492 ++---------------------
 4 files changed, 337 insertions(+), 703 deletions(-)

-- 
1.9.1


