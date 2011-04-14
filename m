Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DE414C800A2
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:12:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Apr 2011 17:12:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="628241743"
Received: from unknown (HELO [10.255.12.253]) ([10.255.12.253])
	by orsmga002.jf.intel.com with ESMTP; 13 Apr 2011 17:12:05 -0700
Message-ID: <4DA63BD5.4050607@linux.intel.com>
Date: Wed, 13 Apr 2011 17:12:05 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Slang & Newt Failure
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
X-List-Received-Date: Thu, 14 Apr 2011 00:12:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Kang,

I was looking further into this issue and now realize that instead of 
adding additional dependencies, we could disable slang's PNG module by
setting the --without-png configuration.

Is PNG usage needed in Slang by the LSB test (which I believe is for 
chkconfig).  I think since slang is needed for limited usage we don't 
need a full featured slang.

Can you verify this conclusion?

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System



