Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED3DB4C8024E
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 16:05:28 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Apr 2011 14:05:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,290,1301900400"; d="scan'208";a="916296491"
Received: from unknown (HELO [10.255.13.78]) ([10.255.13.78])
	by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2011 14:05:25 -0700
Message-ID: <4DBB2814.402@intel.com>
Date: Fri, 29 Apr 2011 14:05:24 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4DBA5E83.4050704@windriver.com> <1304087099.2023.1.camel@scimitar>
	<4DBAD1E5.7050001@windriver.com>
In-Reply-To: <4DBAD1E5.7050001@windriver.com>
Subject: Re: bitbake gs failed
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
X-List-Received-Date: Fri, 29 Apr 2011 21:05:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2011 07:57 AM, Mark Hatle wrote:
> On 4/29/11 9:24 AM, Joshua Lock wrote:
>> On Fri, 2011-04-29 at 14:45 +0800, Kang Kai wrote:
>>> Hi Saul,
>>>
>>> When I import gs (ghostscript) from oe, I copy the whole directory of gs
>>> from oe and put it at meta/recipes-extend/gs.  When run 'bitbake gs',
>>> the bitbake comlains:
>
> This is an example of an error condition that needs to be improved.  The error
> nothing provides 'gs' is misleading.  We have something that provides "gs", what
> we don't have are the dependencies of gs.  It would be really nice to correct
> the error message to indicate that, and then skip the traceback.

This is definitely a use case I'm planning to fix for Yocto 1.1.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

