Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 124D04C81067
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 07:11:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Dec 2010 05:11:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="870424542"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2010 05:11:38 -0800
Date: Tue, 21 Dec 2010 21:17:12 +0800
From: Yu Ke <ke.yu@intel.com>
To: Joshua Lock <josh@openedhand.com>
Message-ID: <20101221131712.GC20780@kyu3-hedt>
References: <cover.1292567626.git.ke.yu@intel.com>
	<1292861428.25087.4661.camel@rex>
	<20101221053230.GB20780@kyu3-hedt>
	<1292928863.2701.2.camel@scimitar>
MIME-Version: 1.0
In-Reply-To: <1292928863.2701.2.camel@scimitar>
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
X-List-Received-Date: Tue, 21 Dec 2010 13:11:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Dec 21, 10:54, Joshua Lock wrote:
> On Tue, 2010-12-21 at 13:32 +0800, Yu Ke wrote:
> > On Dec 20, 16:10, Richard Purdie wrote:
> > > On Fri, 2010-12-17 at 14:33 +0800, Yu Ke wrote:
> > > > This patch add SRC_URI checksum support. With this patch,fetcher
> > > > can verify the MD5 and SHA256 checksum of download src with the
> > > > value defined in recipes SRC_URI.
> > > > 
> > > > This is the v3 patch with following changes compared with v2:
> > > > - add configurable variable BB_STRICT_CHECKSUM to handle checksum missing case
> > > >   if checksum is missing and BB_STRICT_CHECKSUM = "1", bitbake will fatal
> > > > - add check to only verify checksum for protocol http/https/ftp/ftps, not
> > > >   verify checksum for local file and other SCM
> > > > 
> > > > Pull URL: git://git.pokylinux.org/poky-contrib.git
> > > >   Branch: kyu3/srcuri-v3
> > > >   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcuri-v3
> > > 
> > > I merged this, then realised there was a problem with subsequent builds
> > > proceeding with corrupt files. I've pushed a fix for at least part of
> > > that.
> > 
> > Thanks, it is indeed necessary fix.
> > 
> > BTW, I am also thinking if we could merge Fetch.write_md5sum and
> > Fetch.verify_md5sum into verify_checksum, since they are all checksum
> > related, puting them together would be more clean logically.
> 
> That makes the assumption that you only want to verify a checksum when
> fetching one, which I don't think is correct?

Do you mean other place may also need verify a checksum? If that is the case, it still can call the verify_checksum() to perform verifcation, right?

Regards
Ke

> 
> Cheers,
> Joshua
> -- 
> Joshua Lock
>         Intel Open Source Technology Centre
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

