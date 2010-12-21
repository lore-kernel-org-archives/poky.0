Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DD494C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 04:54:32 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 27CC212EC1C5
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 05:33:26 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <20101221053230.GB20780@kyu3-hedt>
References: <cover.1292567626.git.ke.yu@intel.com>
	<1292861428.25087.4661.camel@rex>  <20101221053230.GB20780@kyu3-hedt>
Date: Tue, 21 Dec 2010 10:54:23 +0000
Message-ID: <1292928863.2701.2.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
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
X-List-Received-Date: Tue, 21 Dec 2010 10:54:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 13:32 +0800, Yu Ke wrote:
> On Dec 20, 16:10, Richard Purdie wrote:
> > On Fri, 2010-12-17 at 14:33 +0800, Yu Ke wrote:
> > > This patch add SRC_URI checksum support. With this patch,fetcher
> > > can verify the MD5 and SHA256 checksum of download src with the
> > > value defined in recipes SRC_URI.
> > > 
> > > This is the v3 patch with following changes compared with v2:
> > > - add configurable variable BB_STRICT_CHECKSUM to handle checksum missing case
> > >   if checksum is missing and BB_STRICT_CHECKSUM = "1", bitbake will fatal
> > > - add check to only verify checksum for protocol http/https/ftp/ftps, not
> > >   verify checksum for local file and other SCM
> > > 
> > > Pull URL: git://git.pokylinux.org/poky-contrib.git
> > >   Branch: kyu3/srcuri-v3
> > >   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcuri-v3
> > 
> > I merged this, then realised there was a problem with subsequent builds
> > proceeding with corrupt files. I've pushed a fix for at least part of
> > that.
> 
> Thanks, it is indeed necessary fix.
> 
> BTW, I am also thinking if we could merge Fetch.write_md5sum and
> Fetch.verify_md5sum into verify_checksum, since they are all checksum
> related, puting them together would be more clean logically.

That makes the assumption that you only want to verify a checksum when
fetching one, which I don't think is correct?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


