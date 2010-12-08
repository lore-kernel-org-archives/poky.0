Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D6CB4C81231;
	Wed,  8 Dec 2010 11:43:44 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 09:43:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="865977495"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 09:43:41 -0800
Message-ID: <4CFFC3C3.4090003@linux.intel.com>
Date: Wed, 08 Dec 2010 09:43:31 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <1291812548.1554.475.camel@rex>
In-Reply-To: <1291812548.1554.475.camel@rex>
Cc: yocto <yocto@yoctoproject.org>, poky <poky@yoctoproject.org>
Subject: Re: Adding extra metadata to Yocto/Poky
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
X-List-Received-Date: Wed, 08 Dec 2010 17:43:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2010 04:49 AM, Richard Purdie wrote:
> Hi,
>
> We're in a position where we have people wanting to extend Poky but
> wondering exactly how to add their own layer and make Poky useful for
> their specific use cases.
>
> This is a topic I want to work with the OE community on and have
> discussion about but equally, people are interested at the moment and we
> need something people can experiment with now so we can see what works
> and what doesn't.
>
> With this in mind I'm proposing we create a "poky-extras" repository
> which contains multiple user contributed layers.
>
> My proposed ground rules are:
>
> * it has the OE style open contributions model
> * consists of a set of layers, each clearly identified at the top level
> * each layer has a clearly named maintainer or maintainers
> * people respect the layer maintainers
> * layers are split into logical "topics" where at all possible
>
> Ultimately, the repo structure and some of the details could change but
> I'd like to experiment and see what we can come up with which is
> probably the only way we're going to move forward.
>
> Any comments, objections or better ideas? :)

Sounds like a good approach to me. What would the expectation of 
"lifecycle" be? Will these layers move to the poky git repository after 
some proven time to join things like meta-linaro and meta-demo (which 
should be renamed meta-dlna) or should we move these layers to 
poky-extras too?

-- 
Darren Hart
Yocto Linux Kernel

