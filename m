Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 084F54C810AC;
	Sat, 11 Dec 2010 13:44:03 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Dec 2010 11:44:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="582777573"
Received: from unknown (HELO [10.255.13.46]) ([10.255.13.46])
	by orsmga002.jf.intel.com with ESMTP; 11 Dec 2010 11:44:02 -0800
Message-ID: <4D03D481.4050104@linux.intel.com>
Date: Sat, 11 Dec 2010 11:44:01 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Milestone 2 Stabilization Branch Created (Resend)
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
X-List-Received-Date: Sat, 11 Dec 2010 19:44:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

[Resend with correct mailing lists]


Yocto / Poky Folks:

Thanks to everyone's hard work, we are currently on working getting the 
first build of M2 started and available for QA testing on Monday.

I have pushed out the lastest commit that was pending in the 
distro/master area to both master and create a builds/milestone branch 
which is where bug fixes for M2 will go.

There is currently an issue with the PPC Kernel build on this branch and 
that is being worked, this may impact getting a PPC build available by 
Monday.

For the next week as we stabilize M2, please ensure that any patch or 
pull requests indicate that this is for M2 or not.  By default all 
commits will go to master regardless.

Thanks
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


