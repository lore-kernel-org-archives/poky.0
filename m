Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BCAFE013A8
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 06:06:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Mar 2012 06:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="146234905"
Received: from unknown (HELO helios.localnet) ([10.252.123.228])
	by fmsmga002.fm.intel.com with ESMTP; 27 Mar 2012 06:06:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: abel@uni-bielefeld.de
Date: Tue, 27 Mar 2012 14:05:59 +0100
Message-ID: <1447035.Hxb8yfX2az@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F71B96F.5020409@uni-bielefeld.de>
References: <4F71B57F.30103@uni-bielefeld.de> <17090847.kqXxAj3sEM@helios>
	<4F71B96F.5020409@uni-bielefeld.de>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Patch.bbclass URL Reasoning
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
X-List-Received-Date: Tue, 27 Mar 2012 13:06:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 27 March 2012 14:58:23 Robert Abel wrote:
> On 27.03.2012 14:55, Paul Eggleton wrote:
> > However if I needed to do what you want to do I would do it differently -
> > instead of modifying the patches, why not just modify the file(s) in the
> > source code directly? I would suggest using sed in a
> > do_configure_prepend() to change the values in the source to the desired
> > value from a variable. Depending on the complexity you could have the
> > patches change the values to some easily replaceable string beforehand.
> 
> That's exactly what I'm doing right now. However, since I'm patching the
> kernel and users could theoretically add patches containing my magic
> strings, I wanted to avoid a sed on git\* and instead only edit *.patch
> in ${WORKDIR}, which is why I'm asking why the copied patches go unused.

Well, I can't answer that, but I don't think it's too difficult to come up with 
a string that's unlikely to ever occur in the kernel sources.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

