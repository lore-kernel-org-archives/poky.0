Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81F974C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 21:34:27 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 19:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,245,1297065600"; d="scan'208";a="662399647"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2011 19:34:26 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Tue,  1 Mar 2011 11:39:40 +0800
Message-Id: <cover.1298950650.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/1] upgrade shadow for security vulnerability
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
X-List-Received-Date: Tue, 01 Mar 2011 03:34:27 -0000

per Scott's suggest, upgrade the shadow to fix security vulnerability

CC: Scott Garman <scott.a.garman@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/shadow
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/shadow

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  shadow: upgrade to 4.1.4.3 to fix security vulnerability

 .../{shadow-4.1.4.2 => files}/login_defs_pam.sed   |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/chfn    |    0
 .../{shadow-4.1.4.2 => files}/pam.d/chpasswd       |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/chsh    |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/login   |    0
 .../{shadow-4.1.4.2 => files}/pam.d/newusers       |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/passwd  |    0
 .../shadow/{shadow-4.1.4.2 => files}/pam.d/su      |    0
 .../shadow/{shadow-4.1.4.2 => files}/securetty     |    0
 .../shadow-4.1.3-dots-in-usernames.patch           |    0
 .../shadow-4.1.4.2-env-reset-keep-locale.patch     |    0
 .../shadow-4.1.4.2-groupmod-pam-check.patch        |    0
 .../shadow-4.1.4.2-su_no_sanitize_env.patch        |    0
 .../shadow.automake-1.11.patch                     |    0
 .../{shadow_4.1.4.2.bb => shadow_4.1.4.3.bb}       |    4 ++--
 15 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/login_defs_pam.sed (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/chfn (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/chpasswd (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/chsh (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/login (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/newusers (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/passwd (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/pam.d/su (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/securetty (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.3-dots-in-usernames.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.4.2-env-reset-keep-locale.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.4.2-groupmod-pam-check.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow-4.1.4.2-su_no_sanitize_env.patch (100%)
 rename meta/recipes-extended/shadow/{shadow-4.1.4.2 => files}/shadow.automake-1.11.patch (100%)
 rename meta/recipes-extended/shadow/{shadow_4.1.4.2.bb => shadow_4.1.4.3.bb} (70%)


