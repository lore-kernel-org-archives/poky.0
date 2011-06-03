Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75E554C800A1
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 19:54:32 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so921867pzk.35
	for <poky@yoctoproject.org>; Thu, 02 Jun 2011 17:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:from:organization:to:subject:date:user-agent
	:references:in-reply-to:mime-version:content-type
	:content-transfer-encoding:message-id;
	bh=PSvwHGZ+RWj4ezVDX9O6KhszTzFkh7v4fACsMKVAOLQ=;
	b=bctSna1wB8FO2apDU8zwrKsxLW52b/fyE9VHgdzC9utQdpsrdwWvcplNVga3HR4bfA
	0D10+TqGtsZsXfC9M7yi86wKlJF4EwgT48WtVTRMpFKEemhaEdJkQiXjNIKjJBnklMRz
	H1Oe+va8q7d/89wJKXU/RZbrXax60n9Zuld20=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:organization:to:subject:date:user-agent:references:in-reply-to
	:mime-version:content-type:content-transfer-encoding:message-id;
	b=CBDqGYN1j0V7TeNtT7MdqmUdVCfEwQKfLCfYOnJwPXKnceQAE4F/aDKppe04IRZg8h
	hYsnDhL+T2QD+KAn1IZm7lKnvhuqSYcagLHwz4XyYLstbxhbh1j6fbb8/bw+J8pAO50A
	eZc/iBw31LkuhgRDV+kLgxtHkCCJ008seDSNc=
Received: by 10.68.30.137 with SMTP id s9mr539322pbh.146.1307062471664;
	Thu, 02 Jun 2011 17:54:31 -0700 (PDT)
Received: from perseus.localnet (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id y2sm978384pbg.88.2011.06.02.17.54.29
	(version=SSLv3 cipher=OTHER); Thu, 02 Jun 2011 17:54:30 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Organization: Sakrah Inc.
To: poky@yoctoproject.org
Date: Thu, 2 Jun 2011 17:54:28 -0700
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic; KDE/4.6.3; i686; ; )
References: <4DE79F0A.5080104@mlbassoc.com> <1307035303.27470.584.camel@rex>
In-Reply-To: <1307035303.27470.584.camel@rex>
MIME-Version: 1.0
Message-Id: <201106021754.28254.raj.khem@gmail.com>
Subject: Re: Problem with gettext-native
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
X-List-Received-Date: Fri, 03 Jun 2011 00:54:32 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Thursday, June 02, 2011 10:21:43 AM Richard Purdie 
wrote:
> On Thu, 2011-06-02 at 08:32 -0600, Gary Thomas wrote:
> > I had a working build based on
> > 
> >    commit 52295fa3deef3b0374b99829626d524cefae6001
> >    Author: Richard Purdie 
<richard.purdie@linuxfoundation.org>
> >    Date:   Wed May 18 00:03:02 2011 +0100
> >    
> >      Improve handling of 'all' architecture recipes 
and their interaction
> >      with sstate
> > 
> > Today, I updated to
> > 
> >    commit 484c4e73245c93a08413cd204513bf5c5698b994
> >    Author: Saul Wold <sgw@linux.intel.com>
> >    Date:   Tue May 31 22:42:49 2011 -0700
> >    
> >      clutter-1.6: Add patch to update gettext macro 
version
> > 
> > Now, it tries to build gettext-native and fails 
with the log at
> > 
> >    http://www.mlbassoc.com/poky/gettext-native-
log.do_compile
> > 
> > I don't see what's happening here.  If I try an 
identical
> > build (same local.conf, etc) in a new tree, it 
succeeds.
> > 
> > I notice that my old build has git-native built and 
installed (which
> > based on the log is being used?), but the build 
from scratch does not.
> > 
> > Any ideas?
> 
> It looks like gettext now has a dependency on git 
being present. We need
> to add git-native to its DEPENDS, crazy as that may 
be :/
> 

yes gettext tries to support older versions of itself.
if we use autopoint then git is used since it generates
smaller archives but its not must just use --without-
git configure option. We can disable it and install the 
infra archive directly.

That said since we might be anyway building git-native 
for other purposes enabling it may not be that bad of
an option either.

> For a while I thought cvs was required too but it 
turns out its not,
> thankfully.

cvs is dropped started 0.18.1
> 
> I'm testing a patch which I'll push shortly.
> 
> Cheers,
> 
> Richard
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

