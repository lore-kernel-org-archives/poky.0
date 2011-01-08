Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C59514C80039
	for <poky@yoctoproject.org>; Sat,  8 Jan 2011 01:05:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2011 23:05:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,293,1291622400"; d="scan'208";a="591043763"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 07 Jan 2011 23:05:42 -0800
Message-Id: <cover.1294469496.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sat, 8 Jan 2011 14:51:36 +0800
Date: Sat, 08 Jan 2011 15:14:21 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/7] add initial bb.fetch2 code
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
X-List-Received-Date: Sat, 08 Jan 2011 07:05:44 -0000

this patchset add bb.fetch2 as initiaial code base for fetcher overhaul,
and bb.fetcher.instance is introduced to swtich between bb.fetch and bb.fetch2.

The purpose of this patchset is to provide a place holder for fetcher overhaul.
currently the bb.fetch2 code is mostly the same as bb.fetch. In the future,
fetcher overhaul change will come to bb.fetch2, and this allow us to conduct
fetcher change without impacting the existing fetcher bb.fetch.

there is no functional change with this patchset, the bb.fetcher.instance is
set to bb.fetch by default.

Thanks Richard for the suggestion.

this patchset has been teseted by
- qemux86 poky-image-sato with empty $DL_DIR

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/fetch2-initial
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/fetch2-initial

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (7):
  fetch2: copy bb.fetch to bb.fetch2 as initial code base
  bb.fetch2: replace bb.fetch with bb.fetch2 in the bb.fetch2
  bb: add bb.fetcher as dynamic fetch module instance for fetch/fetch2
  BBHandler: remove bb.fetch referrence
  bb.cooker: remove bb.fetch.persistent_database_connection referrence
  bb: replace bb.fetch referrence with bb.fetcher instance
  bbclass: replace the bb.fetch referrence with bb.fetcher instance

 bitbake/lib/bb/command.py                  |    3 +-
 bitbake/lib/bb/cooker.py                   |   10 +-
 bitbake/lib/bb/fetch2/__init__.py          |  833 ++++++++++++++++++++++++++++
 bitbake/lib/bb/fetch2/bzr.py               |  148 +++++
 bitbake/lib/bb/fetch2/cvs.py               |  172 ++++++
 bitbake/lib/bb/fetch2/git.py               |  261 +++++++++
 bitbake/lib/bb/fetch2/hg.py                |  180 ++++++
 bitbake/lib/bb/fetch2/local.py             |   73 +++
 bitbake/lib/bb/fetch2/osc.py               |  143 +++++
 bitbake/lib/bb/fetch2/perforce.py          |  206 +++++++
 bitbake/lib/bb/fetch2/repo.py              |   98 ++++
 bitbake/lib/bb/fetch2/ssh.py               |  118 ++++
 bitbake/lib/bb/fetch2/svk.py               |  104 ++++
 bitbake/lib/bb/fetch2/svn.py               |  204 +++++++
 bitbake/lib/bb/fetch2/wget.py              |   93 +++
 bitbake/lib/bb/fetcher.py                  |   26 +
 bitbake/lib/bb/parse/parse_py/BBHandler.py |    2 +-
 meta/classes/base.bbclass                  |   20 +-
 meta/classes/distrodata.bbclass            |   18 +-
 meta/classes/patch.bbclass                 |    4 +-
 meta/classes/sstate.bbclass                |   10 +-
 meta/classes/utility-tasks.bbclass         |   12 +-
 meta/classes/utils.bbclass                 |    2 +-
 23 files changed, 2697 insertions(+), 43 deletions(-)
 create mode 100644 bitbake/lib/bb/fetch2/__init__.py
 create mode 100644 bitbake/lib/bb/fetch2/bzr.py
 create mode 100644 bitbake/lib/bb/fetch2/cvs.py
 create mode 100644 bitbake/lib/bb/fetch2/git.py
 create mode 100644 bitbake/lib/bb/fetch2/hg.py
 create mode 100644 bitbake/lib/bb/fetch2/local.py
 create mode 100644 bitbake/lib/bb/fetch2/osc.py
 create mode 100644 bitbake/lib/bb/fetch2/perforce.py
 create mode 100644 bitbake/lib/bb/fetch2/repo.py
 create mode 100644 bitbake/lib/bb/fetch2/ssh.py
 create mode 100644 bitbake/lib/bb/fetch2/svk.py
 create mode 100644 bitbake/lib/bb/fetch2/svn.py
 create mode 100644 bitbake/lib/bb/fetch2/wget.py
 create mode 100644 bitbake/lib/bb/fetcher.py


