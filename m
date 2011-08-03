Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5EC844C8009A
	for <poky@yoctoproject.org>; Tue,  2 Aug 2011 19:00:30 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Aug 2011 17:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,307,1309762800"; d="scan'208";a="33603903"
Received: from unknown (HELO [10.255.14.76]) ([10.255.14.76])
	by orsmga002.jf.intel.com with ESMTP; 02 Aug 2011 17:00:24 -0700
Message-ID: <4E388F98.1060704@linux.intel.com>
Date: Tue, 02 Aug 2011 17:00:24 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13
	Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
	<88E6BB4D-BCC0-4CEE-B6BB-74A2E940D94B@kernel.crashing.org>
In-Reply-To: <88E6BB4D-BCC0-4CEE-B6BB-74A2E940D94B@kernel.crashing.org>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] atom-pc.conf: Add live image type
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
X-List-Received-Date: Wed, 03 Aug 2011 00:00:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2011 03:34 PM, Kumar Gala wrote:
>
> On Aug 2, 2011, at 3:50 PM, Saul Wold wrote:
>
>> This change will cause the live image to be built by default
>> No longer is it necessary to build a -live image type.
>>
>> Signed-off-by: Saul Wold<sgw@linux.intel.com>
>> ---
>> meta-yocto/conf/machine/atom-pc.conf |    2 +-
>> 1 files changed, 1 insertions(+), 1 deletions(-)
>
> What's a live image?
>
This is a replacement for the core-image-minimal-live type of image, so 
instead of having to have two targets to build you can specify "live" in 
IMAGE_FSTYPES

This will generate a bootable image (currently uses syslinux) for x86 
based targets.  Currently not really valid for other arches because live 
means different things for those machines.

Sau!

> - k
>

