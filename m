Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5A664C810E8
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 01:09:38 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2011 23:09:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="878046713"
Received: from unknown (HELO [10.255.14.85]) ([10.255.14.85])
	by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2011 23:09:37 -0800
Message-ID: <4D33EB31.6060502@linux.intel.com>
Date: Sun, 16 Jan 2011 23:09:37 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4D2FFAB8.4000506@linux.intel.com>
In-Reply-To: <4D2FFAB8.4000506@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Stability of Master (not looking good)
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
X-List-Received-Date: Mon, 17 Jan 2011 07:09:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/13/2011 11:26 PM, Saul Wold wrote:
>
> Folks,
>
> Based on what I am seeing on both local builds and on the autobuilder, I
> have to recommend that we stop making changes to master until we can
> stabilize it.
>
> We need to start getting the builds green so that we can know where we
> are going into the final days of M3 and have a build that works.
>
> We are getting closer, but there are definitely still some problem
> areas, as example, the distro-testing which has very little change
> failed to build eglibc.
>
> So, I recommend that we only make changes that directly address the
> failures we currently have until we can resolve the failures and then
> work to ensure that any new items pulled into master are well tested!
>
> I know this will slow things down, but we need to get stability happening.
>
> Thoughts?
>
Thanks everyone, things are now looking much better, we almost have 
green nightlies, basically 1 sanity test failure which maybe the time 
out issue.

I am working on testing the current set of changes that are queue, 
including the kernel/systemtap change, the X Update and a few others 
that have been requested in the last couple of days.  Once that testing 
is completed, RP or I will pull them into master.

Thanks to everyone for their help and understanding.

Sau!

