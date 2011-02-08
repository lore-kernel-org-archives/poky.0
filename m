Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F54E4C800B7
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 09:51:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2011 07:51:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,442,1291622400"; d="scan'208";a="705366432"
Received: from unknown (HELO [10.255.14.216]) ([10.255.14.216])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2011 07:51:53 -0800
Message-ID: <4D516698.1060703@intel.com>
Date: Tue, 08 Feb 2011 07:51:52 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D514B12.2080301@mlbassoc.com>
In-Reply-To: <4D514B12.2080301@mlbassoc.com>
Subject: Re: License warnings
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
X-List-Received-Date: Tue, 08 Feb 2011 15:51:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/08/2011 05:54 AM, Gary Thomas wrote:
> I just noticed some warnings since I updated to master
> from 2011-02-03 (0fdcc509c534d4e561674be02d26efedf638f7c6)
> 
> ---------------- WARNINGS ---------------------------------
> WARNING: bind: Something went wrong with copying: ISC to /home/local/poky-amltd/meta/files/common-licenses
> WARNING: This could be either because we do not have a generic for this license or the LICENSE field is incorrect
> 
> WARNING: sqlite3: Something went wrong with copying: PD to /home/local/poky-amltd/meta/files/common-licenses
> WARNING: This could be either because we do not have a generic for this license or the LICENSE field is incorrect
> 
> WARNING: db: Something went wrong with copying: Sleepycat to /home/local/poky-amltd/meta/files/common-licenses
> WARNING: This could be either because we do not have a generic for this license or the LICENSE field is incorrect
> ---------------- WARNINGS ---------------------------------
> 
> Should I be concerned?  Is there something to fix here?
> 

Not really. This is just a warning that the license listed in the recipe
does not have a generic that it could find to copy over to the license
wrangling directory. ISC, PD and Sleepycat all wouldn't have generics
yet, so nothing to worry about.

-b

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

