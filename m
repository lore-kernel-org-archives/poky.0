Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 824F14C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 10:39:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 08:39:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="689353588"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 08:39:53 -0800
Received: from [10.255.14.33] (10.255.14.33) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Tue, 21 Dec 2010 09:39:52 -0700
Message-ID: <4D10D857.8080906@intel.com>
Date: Tue, 21 Dec 2010 08:39:51 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4D10CB88.4040308@mlbassoc.com>
In-Reply-To: <4D10CB88.4040308@mlbassoc.com>
Subject: Re: Write-protect $DL_DIR
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
X-List-Received-Date: Tue, 21 Dec 2010 16:39:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 07:45 AM, Gary Thomas wrote:
> In my quest for a well-packaged Poky that I can distribute
> to my customers, I'd like to give them a pre-populated $DL_DIR
> tree (also in response to those customers that have little or
> no net access).  This would likely be in /opt/XYZ and practice
> would dictate that it be read-only.
>
> Sadly, this doesn't work.  When I try to build Poky with a
> read-only $DL_DIR, it simply hangs on every 'fetch' step.
>
> Note: I could avoid this problem (although I think it's a
> bug even if it should never be experienced) by being able
> to easily provide source mirrors for the packages.  So far,
> I've not figured out how to do this; I'd like to add my
> own mirror lists, similar to those in meta/classes/poky.bbclass
> Would this be a way forward?  If so, how?
>
> Thanks for any ideas

Hi Gary,

Being able to do this is an important priority. Please file a bug to 
track it if there isn't a current workaround.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

