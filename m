Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 940F64C80815
	for <poky@yoctoproject.org>; Tue, 30 Nov 2010 12:12:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Nov 2010 10:12:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,281,1288594800"; d="scan'208";a="682446500"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga001.jf.intel.com with ESMTP; 30 Nov 2010 10:12:25 -0800
Message-ID: <4CF53E28.6020708@intel.com>
Date: Tue, 30 Nov 2010 10:10:48 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Current Autobuilder nightly failures for build #133
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
X-List-Received-Date: Tue, 30 Nov 2010 18:12:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

All,

Here are the failures for the currently running nightly. The build is
not complete yet, so more issues will be coming. This list is only for
issues logged as ERRORs.

Package Name:
blktrace-1.0.1+git0+1e09f6e9012826fca69fa07222b7bc53c3e629ee-r0

Targets Failing:
poky-image-sdk	x86
poky-image-sdk	qemumips

Note:
Fails at do_compile

-------------------
Package Name:
xrandr-1_1.3.4-r0

Targets Failing:
All

Note:
do_qa_configure fails because MD5 for the license file has changed.

-------------------
Package Name:
dhcp-4.2.0

Targets Failing:
poky-image-lsb qemuarm
poky-image-lsb qemumips

Note:
fails at do_compile. patch submitted.
-------------------



