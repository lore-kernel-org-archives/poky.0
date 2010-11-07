Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EAF94C80044
	for <poky@yoctoproject.org>; Sun,  7 Nov 2010 09:18:50 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Nov 2010 07:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,310,1286175600"; d="scan'208";a="571113870"
Received: from unknown (HELO [10.255.12.208]) ([10.255.12.208])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2010 07:18:50 -0800
Message-ID: <4CD6C358.8010907@linux.intel.com>
Date: Sun, 07 Nov 2010 10:18:48 -0500
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
References: <cover.1289057313.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1289057313.git.dvhart@linux.intel.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] git-pull: new pull request generation and sending scripts
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
X-List-Received-Date: Sun, 07 Nov 2010 15:18:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/06/2010 11:28 AM, Darren Hart wrote:
> The following patches replace the existing create-pull-request script and create
> a new send-pull-request. See 2/3 for details on the motivation and functionality
> of the new create-pull-request script.

Thinking about this, I realized that the script would be usefull for 
just sending patches as well (for developers without a contrib branch).
Perhaps the scripts should not contain "pull" in their name and the 
remote git branch as well as the hosting site should be both optional 
and configurable. These are relatively trivial changes which we could 
address in a subsequent series if people agree that this initial set is 
the right approach for our project.

-- 
Darren Hart
Embedded Linux Kernel

