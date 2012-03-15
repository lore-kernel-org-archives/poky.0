Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87C18E0132F
	for <poky@yoctoproject.org>; Thu, 15 Mar 2012 08:24:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Mar 2012 08:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129364931"
Received: from unknown (HELO helios.localnet) ([10.252.123.170])
	by fmsmga001.fm.intel.com with ESMTP; 15 Mar 2012 08:24:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 15 Mar 2012 15:24:34 +0000
Message-ID: <1856275.4JdY7aZveN@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F5B73E6.9040908@mlbassoc.com>
References: <4F5B73E6.9040908@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Poky doesn't play nice with meta-oe
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
X-List-Received-Date: Thu, 15 Mar 2012 15:24:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 10 March 2012 08:31:50 Gary Thomas wrote:
> I wanted to do some experimenting with midori (a webkit based
> browser that is [arguably] better than web2) in my familiar Poky
> environment.
>...
> * Rebuild core-image-sato
>    Lots of packages get rebuilt, down to GCC which has been updated
>    to r27 from r22.  I thought the poky meta "core" was tracking meta-oe
>    and openembedded-core more closely than this.

I agree, this is not particularly desirable. We've discussed this in the OE 
TSC and the agreement was that the toolchain bits currently in the meta-oe 
layer itself will be moved out to a separate layer.

> Image will boot, but most things are broken, no X, no network, ...

That's not good :(

> It looks like the evil systemd has pervaded meta-oe (which IMO should
> be at least a DISTRO decision).

I agree, but there are others who think it should be switchable on a per-image 
basis. I don't think it's going to be long before that's impossible however.

> I guess the only way I'll be able to test this in Poky, if at all,
> will be to only import the midori recipes and its dependencies, which
> there seem to be many.

That's not an unreasonable approach for now. However we do really want to tidy 
up meta-oe such that it doesn't do surprising things when you enable it. 
Hopefully we will get a chance to make progress on this over the next few 
months.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

