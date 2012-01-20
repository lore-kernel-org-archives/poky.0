Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D5DBE00B08
	for <poky@yoctoproject.org>; Thu, 19 Jan 2012 17:57:42 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2012 17:57:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="98531439"
Received: from unknown (HELO [10.255.14.77]) ([10.255.14.77])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2012 17:57:41 -0800
Message-ID: <4F18CA15.1060007@linux.intel.com>
Date: Thu, 19 Jan 2012 17:57:41 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Kang Kai <Kai.Kang@windriver.com>
References: <4F17C7D9.10506@windriver.com> <4F17E37B.7030506@windriver.com>
In-Reply-To: <4F17E37B.7030506@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Please help to review the Yocto 1656: Recipe creation/import script
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
X-List-Received-Date: Fri, 20 Jan 2012 01:57:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 19/01/12 01:33, Kang Kai wrote:
> Hi Josh,
>
> The attachment is the the design document V2 and implement.
>
> The V2 document changes are:
> 1 remove patch_set from argument list
> 2 deb is not support right now
>
> Any comment is welcome.
> And I will on vacation until Jan 30, so my reply may not in time.

This looks like a good start, Paul has offered some great feedback. In 
addition I'd add that we need a license header on the script, we should 
probably attribute autospectacle in the header too (Inspired by? Based on?).

I haven't had chance to do a thorough code review but will try and do so 
whilst you're on your break.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

