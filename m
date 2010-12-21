Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19AA74C808B0
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 23:26:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2010 21:26:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,206,1291622400"; d="scan'208";a="585684868"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 21:26:40 -0800
Date: Tue, 21 Dec 2010 13:32:30 +0800
From: Yu Ke <ke.yu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20101221053230.GB20780@kyu3-hedt>
References: <cover.1292567626.git.ke.yu@intel.com>
	<1292861428.25087.4661.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1292861428.25087.4661.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] SRC_URI checksum support v3
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
X-List-Received-Date: Tue, 21 Dec 2010 05:26:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Dec 20, 16:10, Richard Purdie wrote:
> On Fri, 2010-12-17 at 14:33 +0800, Yu Ke wrote:
> > This patch add SRC_URI checksum support. With this patch,fetcher
> > can verify the MD5 and SHA256 checksum of download src with the
> > value defined in recipes SRC_URI.
> > 
> > This is the v3 patch with following changes compared with v2:
> > - add configurable variable BB_STRICT_CHECKSUM to handle checksum missing case
> >   if checksum is missing and BB_STRICT_CHECKSUM = "1", bitbake will fatal
> > - add check to only verify checksum for protocol http/https/ftp/ftps, not
> >   verify checksum for local file and other SCM
> > 
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >   Branch: kyu3/srcuri-v3
> >   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcuri-v3
> 
> I merged this, then realised there was a problem with subsequent builds
> proceeding with corrupt files. I've pushed a fix for at least part of
> that.

Thanks, it is indeed necessary fix.

BTW, I am also thinking if we could merge Fetch.write_md5sum and Fetch.verify_md5sum into verify_checksum, since they are all checksum related, puting them together would be more clean logically.

> 
> I'm wondering if we should rename the file to something like the
> original name + ".corrupt" to make sure we don't use a known broken
> file?

Yes, I prefer to do that. It is more robust, and when meet corrupt file, if bitbake did not clean the downloaded file, user also need to do that. so it is better for bitbake to do that automatically for user.

so combined with the above points, the verify_checksum can be:
"
if ud.md5 file exist
	touch ud.md5 and return

check the checksum, if mismatch, rename download file to *.corrupt and raise exception

write the ud.md5 file
"

Comment?

Regards
Ke

> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

