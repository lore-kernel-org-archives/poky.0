Return-Path: <raj.khem@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87EF94C806DA
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 02:35:49 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so3456406iwr.35
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 00:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=mQNOzGF3TUSRwn1lBnyAiidl7aPluJvwwLNUtvdBOUs=;
	b=SEWy+28/rMBd3OvTQkTjzA+A5N5Zv2jHSusT0WG3U/fhJ3Pmh35S7jRy28gsSAZUyR
	I0Qs72jyfnhk9NFHfKc6if4nyMLpekFYYX+J9Q3lYdEXk9+Zp8MRy1wYngO8ui7fr2mo
	gb1uC+YmNKinOOIwD9gfaFLB2xs4N/9dcO5QU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=symzXTjrQcV4YfzPKJg6OIA+dHqXWqOrT949ctJO+7+2fT5YZ+SXx9bwBB1exaQlqo
	4ucquzaFLJEwZNzoGiDtr2AIN6u9WxAEXB72jZBnPcBz4Y/3wdTOyCTOFYTvtfelAtlH
	IgRaDdpJB3HOud1tGF9riLp7lBMuqCP/ulRkE=
Received: by 10.42.196.193 with SMTP id eh1mr1406799icb.385.1300347348978;
	Thu, 17 Mar 2011 00:35:48 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id e7sm258048ibb.57.2011.03.17.00.35.46
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 17 Mar 2011 00:35:47 -0700 (PDT)
Date: Thu, 17 Mar 2011 00:36:35 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20110317073635.GA27644@sakrah.homelinux.org>
Mail-Followup-To: Mark Hatle <mark.hatle@windriver.com>,
	Gary Thomas <gary@mlbassoc.com>, poky@yoctoproject.org
References: <4D81355C.5060700@mlbassoc.com> <4D813850.1000700@windriver.com>
	<4D813966.30309@mlbassoc.com> <4D813BEA.4050905@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4D813BEA.4050905@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: Shared library packaging
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
X-List-Received-Date: Thu, 17 Mar 2011 07:35:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (16/03/11 17:38), Mark Hatle wrote:
> On 3/16/11 5:27 PM, Gary Thomas wrote:
> > On 03/16/2011 04:23 PM, Mark Hatle wrote:
> >> On 3/16/11 5:10 PM, Gary Thomas wrote:
> >>> I'm working on a recipe which has a number of shared libraries (actually
> >>> this is just an import from OE (mozilla/nss) which has the same problem as listed below)
> >>> The package creates a number of libraries (from the work tree):
> >>>       image/usr/lib/libsmime3.so ->  libsmime3.so.1oe
> >>>       image/usr/lib/libsmime3.so.1oe
> >>>       image/usr/lib/libsoftokn3.so
> >>>       image/usr/lib/libfreebl3.so
> >>>       image/usr/lib/libnssutil3.so ->  libnssutil3.so.1oe
> >>>       image/usr/lib/libnssutil3.so.1oe
> >>>       image/usr/lib/libnss3.so ->  libnss3.so.1oe
> >>>       image/usr/lib/libnss3.so.1oe
> >>>       image/usr/lib/libssl3.so ->  libssl3.so.1oe
> >>>       image/usr/lib/libssl3.so.1oe
> >>>
> >>> The .so.1oe files are packaged in nss_XXX.ipk and the .so files are
> >>> put into nss-dev_XXX.ipk.  The problem is that there is code out there
> >>> that only wants to look for the .so files (no -dev packages installed)
> >>> and fail to find libsoftokn3.so and libfreebl3.so
> >>
> >> This sounds like an error in the SONAME embedded in the files.  For example if
> >> the soname of libnss2.so.1oe, is libnss3.so, both it and the link will be
> >> captured in the base package -- leaving the -dev empty.
> >>
> >> (If the SONAME is correct and it's not working this way that is likely a bug in
> >> the routines breaking up base and dev packages!)
> > 
> > How can I check this (not my comfort zone)?
> 
> I usually run "readelf -a <library>"  and then grep for SONAME.
> 
> It's likely better to run the target version of readelf if the target is not IA32.
> 
> >>
> >>> Is there a way to [easily?] force these two libraries to be packaged
> >>> into nss-XXX.ipk?
> >>
> >> Assuming fixing the sonames is not an option, the alternative is to specify the
> >> packages and FILES_... list of files for each chunk instead of letting the
> >> system determine things automatically.  It's a bit messier, but you have
> >> ultimate control of what is and is not included...
> >>
> >>> My current workaround is to use a post-install script to create the .so
> >>> files from the .so.1oe files for these two libraries.  It gets my code
> >>> (chromium-11 browser!) to work, but it's not very satisfying.
> >>
> >> If possible, fix the soname item... otherwise there can be loader problems if
> >> the device doesn't end up with an ld.so.cache...  (which is why the link is
> >> working I suspect...)
> > 
> > I think the problem is in some very messy Mozilla code that uses dl_load() directly
> > and only looks for the .so file name.
> > 
> > I'll probably go with the FILES solution.
> > 
> 
> Ya, dl_loaded files don't follow the normal conventions, the files approach is
> likely your only solution then.

if you enable QA/insane.bbclass then you will get QA errors  for ".so"
library symlinks in non-dev packages

So you might have to disable QA for this case.

> 
> --Mark
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
-Khem

