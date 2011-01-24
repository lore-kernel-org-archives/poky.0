Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB7014C811AA
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 08:28:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2011 06:28:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; d="scan'208";a="595906460"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2011 06:28:50 -0800
Message-Id: <cover.1295879038.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Mon, 24 Jan 2011 22:23:58 +0800
Date: Mon, 24 Jan 2011 22:32:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC PATCH 00/21] fetcher overhaul - api reorg and git optimization V2
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
X-List-Received-Date: Mon, 24 Jan 2011 14:28:57 -0000

Hi Richard,

This is the V2 patch series for the fetcher overhaul phase 2 - new API reorg, and phase 3 - git optimization.

the changes compared with V1 are:
- fix some typo in api reorg patches, now api reorg patch has pass the test of x86 & arm poky-image-sato with empty DL_DIR
- add "BB_NO_NETWORK" option support

The overall changes are:
- Split go() methods into the following steps:
  i) download() - do whatever transfer is necessary to get the sources locally
  ii) build_mirror_data() - generate any data that would be needed to construct a source mirror
  iii) unpack() - takes a directory as an argument of where to place extracted sources
- Change Poky's fetch task to call a "download" method in the fetcher instead of go().
- Change Poky's unpack to call an unpack method in the fetchers.
- Optimise git fetcher for the new layout so for a git checkout, we clone the repository in download(), then unpack just does a clone with references to the original repo.
- Add a new "BB_NO_NETWORK" option to only perform local fetch

The remaining item for phase 3 are:
- Add multiple branch/srcrev support for git fetcher

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/fetcher-api-v2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/fetcher-api-v2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (21):
  bitbake/fetch2/git: Add backwards compatibility code for branch name
    handling
  bb.fetch2: add unpack method in fetcher
  bb.fetch2: revise the Fetch.unpack API
  bb.fetch: add fetch version to distinguish bb.fetch and bb.fetch2
  base.bbclass: use bb.fetch2 unpack API
  bb.fetch2: rename "go" with "download" to better reflect its
    functionality
  bbclasee: rename "go" with "download"
  git.py: split download to download() and build_mirror_data()
  bb.fetch2: remove the obsolate Fetch.try_mirrors referrence
  bb.fetch2: add git unpack
  git.py: remove the source tree tar ball
  bb.fetch2: add "BB_NO_NETWORK" option
  git.py: add no network access check
  wget.py: add no network check
  svn.py: add no network access check
  cvs.py: add no network access check
  hg.py: add no network access check
  bzr.py: add no network access check
  repo.py: add no network access check
  osc.py: add no network access check
  ssh.py: add no network access check

 bitbake/lib/bb/fetch/__init__.py  |    2 +
 bitbake/lib/bb/fetch2/__init__.py |  105 ++++++++++++++++++++++-
 bitbake/lib/bb/fetch2/bzr.py      |    6 +-
 bitbake/lib/bb/fetch2/cvs.py      |    4 +-
 bitbake/lib/bb/fetch2/git.py      |  165 ++++++++++++++++++++++--------------
 bitbake/lib/bb/fetch2/hg.py       |    5 +-
 bitbake/lib/bb/fetch2/local.py    |    2 +-
 bitbake/lib/bb/fetch2/osc.py      |    4 +-
 bitbake/lib/bb/fetch2/perforce.py |    2 +-
 bitbake/lib/bb/fetch2/repo.py     |    4 +-
 bitbake/lib/bb/fetch2/ssh.py      |    4 +-
 bitbake/lib/bb/fetch2/svk.py      |    2 +-
 bitbake/lib/bb/fetch2/svn.py      |    6 +-
 bitbake/lib/bb/fetch2/wget.py     |    5 +-
 meta/classes/base.bbclass         |   13 +++-
 meta/classes/sstate.bbclass       |    5 +-
 16 files changed, 250 insertions(+), 84 deletions(-)


