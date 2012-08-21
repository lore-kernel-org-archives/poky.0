Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92B3FE0027F
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 08:22:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by fmsmga101.fm.intel.com with ESMTP; 21 Aug 2012 08:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; d="scan'208";a="136538423"
Received: from unknown (HELO envy.home) ([10.255.13.36])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Aug 2012 08:18:37 -0700
Message-ID: <5033A655.4040802@linux.intel.com>
Date: Tue, 21 Aug 2012 08:16:37 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <ef9f8fc7a6283b51a67b343c40a1826a659875a6.1345498314.git.dvhart@linux.intel.com>
	<CAMKF1sprfQp57Z95x4y7zqDvndA5n8xPYPik__HuPAatQqFpWg@mail.gmail.com>
In-Reply-To: <CAMKF1sprfQp57Z95x4y7zqDvndA5n8xPYPik__HuPAatQqFpWg@mail.gmail.com>
X-Enigmail-Version: 1.4.3
Cc: Richard Purdie <richard.purdie@intel.com>, Poky <poky@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [PATCH V2] README: Clarify where to send patches
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 15:22:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 08/20/2012 04:53 PM, Khem Raj wrote:
> On Mon, Aug 20, 2012 at 2:32 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>>
>> +
>> +Most everything else should be sent to the OpenEmbedded Core mailing list.
>> +If in doubt, check the oe-core git repository for the content you intend to
>> +modify. If it exists there, send the patches to:
>> +    openembedded-core@lists.openembedded.org
>> +
>> +Note: The scripts directory should be treated with extra care as it is a mix
>> +      of oe-core and poky-specific files.
> 
> can you also a phrase saying that rebase your patches for OE-Core on
> oe-core repo
> before sending ?

Will do so now.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

