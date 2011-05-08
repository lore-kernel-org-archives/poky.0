Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id B42774C8024E
	for <poky@yoctoproject.org>; Sat,  7 May 2011 19:46:43 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so2782966pzk.35
	for <poky@yoctoproject.org>; Sat, 07 May 2011 17:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=jPmh3WjgqEe2qmvRHV5JHSfs1e5xpjz7u+0732s8oTU=;
	b=wBgnV5C0MCNq5Jt7FRfxDhfyIDKM940e/jfFg2HGobJt/SWCMEPMPbRxzsmm3IOsfV
	D75fxYPiGgnbcL1cnMqLzYsla23S9YCybc8BXxP8PiHTNsDHK/jv+I2g9/0bA92oezRM
	8VbTd/jb5VzG4/xwj01LMt+QvUcMFIGrgCNpU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=dCo0jYhR0HbYjxXxEaL22qiO/Oe7mPRdtUA6MDMvQkSpljsBPpl6ZPt3v+JJB359pn
	1DJMeScIh7ZzwssLH8vLaHvQ5yhb/tqJfVlEQDS0mc7y3HtQAFd14sE+Dpeve1Zl7xtr
	VGxUu8XQW/vRXgBy4NRMfXoN4m0pGLDaDu4Og=
Received: by 10.68.50.138 with SMTP id c10mr7102660pbo.448.1304815602041;
	Sat, 07 May 2011 17:46:42 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id 10sm2672781pbo.48.2011.05.07.17.46.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 07 May 2011 17:46:40 -0700 (PDT)
Date: Sat, 7 May 2011 17:46:00 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20110508004600.GB20352@sakrah.homelinux.org>
Mail-Followup-To: Gary Thomas <gary@mlbassoc.com>,
	Poky Project <poky@yoctoproject.org>
References: <4DB99E56.80209@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4DB99E56.80209@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] Fix matchbox-panel-2 compile error
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
X-List-Received-Date: Sun, 08 May 2011 00:46:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (28/04/11 11:05), Gary Thomas wrote:
> This patch is needed when building with GCC-4.6.0

It would be good if you signoff the patch and add information about the
patch like if it needs to be pushed upstream etc.

> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------


> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
-Khem

