Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 253EA4C80BEF
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:43:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 09:43:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="878549957"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2011 09:43:47 -0800
Message-Id: <cover.1295371995.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 19 Jan 2011 01:33:15 +0800
Date: Wed, 19 Jan 2011  1:48:09 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/11] [RFC] fetch overhaul - API reorg and git optimization
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
X-List-Received-Date: Tue, 18 Jan 2011 17:43:48 -0000

Hi Richard,

This patch series is for the fetcher overhaul phase 2 - new API reorg, and part of phase 3 - git optimization. the details are:

- Split go() methods into the following steps:
  i) download() - do whatever transfer is necessary to get the sources locally
  ii) build_mirror_data() - generate any data that would be needed to construct a source mirror
  iii) unpack() - takes a directory as an argument of where to place extracted sources
- Change Poky's fetch task to call a "download" method in the fetcher instead of go().
- Change Poky's unpack to call an unpack method in the fetchers.
- Optimise git fetcher for the new layout so for a git checkout, we clone the repository in download(), then unpack just does a clone with references to the original repo.

The remaining item for phase 3 are:
- Add a new "BB_NO_NETWORK" option to only perform local fetch
- Add multiple branch/srcrev support for git fetcher

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/fetcher-api
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/fetcher-api

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (11):
  bitbake/fetch2/git: Add backwards compatibility code for branch name
    handling
  bb.fetch2: add unpack method in fetcher
  bb.fetch2: revise the Fetch.unpack API
  bb.fetch: add fetch version to distinguish bb.fetch and bb.fetch2
  base.bbclass: use bb.fetch2 unpack API
  bb.fetch2: rename "go" with "download" to better reflect its
    functionality
  bbclasee: rename "go" with "download"
  bb.fetch2.git: split download to download() + build_mirror_data()
  bb.fetch2: remove the obsolate Fetch.try_mirrors referrence
  bb.fetch2: add git unpack
  git.py: remove the source tree tar ball

 bitbake/lib/bb/fetch/__init__.py  |    2 +
 bitbake/lib/bb/fetch2/__init__.py |   95 +++++++++++++++++++++-
 bitbake/lib/bb/fetch2/bzr.py      |    2 +-
 bitbake/lib/bb/fetch2/cvs.py      |    2 +-
 bitbake/lib/bb/fetch2/git.py      |  158 ++++++++++++++++++++++--------------
 bitbake/lib/bb/fetch2/hg.py       |    2 +-
 bitbake/lib/bb/fetch2/local.py    |    2 +-
 bitbake/lib/bb/fetch2/osc.py      |    2 +-
 bitbake/lib/bb/fetch2/perforce.py |    2 +-
 bitbake/lib/bb/fetch2/repo.py     |    2 +-
 bitbake/lib/bb/fetch2/ssh.py      |    2 +-
 bitbake/lib/bb/fetch2/svk.py      |    2 +-
 bitbake/lib/bb/fetch2/svn.py      |    2 +-
 bitbake/lib/bb/fetch2/wget.py     |    4 +-
 meta/classes/base.bbclass         |   13 +++-
 meta/classes/sstate.bbclass       |    5 +-
 16 files changed, 216 insertions(+), 81 deletions(-)


