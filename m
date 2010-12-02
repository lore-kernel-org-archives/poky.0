Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E18014C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 14:36:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 12:36:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="683333171"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 12:36:36 -0800
Message-ID: <4CF802EB.1010005@intel.com>
Date: Thu, 02 Dec 2010 12:34:51 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <4CF53E28.6020708@intel.com>
In-Reply-To: <4CF53E28.6020708@intel.com>
Subject: Current Autobuilder nightly failures for build #136
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
X-List-Received-Date: Thu, 02 Dec 2010 20:36:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

All,

The currently building nightly #136 is having issues already:

-------------------

Package Name:
libnl_2.0

Targets Failing:
qemux86 poky-image-sdk

Note:
Fails at do_compile

-------------------

Also, our incremental #12 is having issues with a recently updated
package. I'll monitor this on the nightly to see if it has carried over.

-------------------

Package Name:
qemugl_git

Targets Failing:
All qemux86-64

Note:
Fails at do_compile

-------------------


-b

