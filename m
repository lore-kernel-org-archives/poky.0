Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A882F4C800A4
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 00:56:50 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2011 22:56:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,251,1297065600"; d="scan'208";a="396183610"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 22:56:49 -0800
Message-ID: <4D6DEA31.1050008@intel.com>
Date: Tue, 01 Mar 2011 22:56:49 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Yu, Ke" <ke.yu@intel.com>
References: <cover.1299014665.git.scott.a.garman@intel.com>
	<cc834823c4140b0873d7d891188f6e4dfc119e0d.1299014665.git.scott.a.garman@intel.com>
	<20110302011709.GE23315@kyu3-hedt>
In-Reply-To: <20110302011709.GE23315@kyu3-hedt>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] screenshot: change the order of LDADD arguments
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
X-List-Received-Date: Wed, 02 Mar 2011 06:56:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 05:17 PM, Yu, Ke wrote:
> Interesting fix. Could you elaborate a bit more why changing the
> order of *.la and libs has the effect? it should be a good learning
> to me.

Hi Ke,

The order of linker arguments does matter when dependencies exist. In 
this case, libshot.la depends on GTK_LIBS, so it needs to be listed first.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

