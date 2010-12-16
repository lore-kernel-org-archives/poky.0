Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFAB54C80048
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 03:11:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 01:11:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,354,1288594800"; d="scan'208";a="868830709"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 01:11:10 -0800
Date: Thu, 16 Dec 2010 17:16:09 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20101216091609.GA20780@kyu3-hedt>
References: <cover.1292320885.git.ke.yu@intel.com>
	<b17a9056f9de3313cb6d212aa7a689883358862a.1292320885.git.ke.yu@intel.com>
	<1292404345.26558.1586.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1292404345.26558.1586.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] FetchData: add SRC_URI checksum
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
X-List-Received-Date: Thu, 16 Dec 2010 09:11:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Dec 15, 09:12, Richard Purdie wrote:
> Hi Ke,
> 
> This patch looks good in general, just a couple of minor things:
> 
> On Tue, 2010-12-14 at 15:55 +0800, Yu Ke wrote:
> >  
> > +def verify_checksum(d, ud):
> > +    """
> > +    verify the MD5 and SHA256 checksum for downloaded src
> > +    return True if matched, False if not
> > +    """
> 
> This should be more explicit about the missing checksums case.

thanks for the review. and yes, will do that.

> 
> > +    md5data = bb.utils.md5_file(ud.localpath)
> > +    sha256data = bb.utils.sha256_file(ud.localpath)
> > +
> > +    if (ud.md5_expected == None or ud.sha256_expected == None):
> > +        bb.warn("Missing SRC_URI checksum for %s, consider to add\n" \
> > +                "SRC_URI[%s] = \"%s\"\nSRC_URI[%s] = \"%s\"" \
> > +                % (ud.localpath, ud.md5_name, md5data, ud.sha256_name, sha256data))
> > +        # TODO: change to "return False" once all recpies has checksum entry
> > +        return True
> 
> We can't just redefine "policy" like this in bitbake. I think missing
> checksums will always be warnings and we might just make warnings
> optionally fatal for bitbake.

for the "make warnings optionally fatal in bitbake", do you mean add a variable like "BB_STRICT_CHECKSUM" in config file, and if for example "BB_STRICT_CHECKSUMS" = "1", then fatal, otherwise, just warning?

> 
> What does this do for file:// urls or SCM urls?

Good catch. It should only verify for "http/https/ftp/ftps" protocol, other protocol like local file and SCM url should just return.

Regards
Ke

> 
> Otherwise I'm good with the patch and if you tweak these things I'll
> merge it.
> 
> Cheers,
> 
> Richard
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

