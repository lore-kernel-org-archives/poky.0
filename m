Return-Path: <raj.khem@gmail.com>
Received: from mail-px0-f182.google.com (mail-px0-f182.google.com
	[209.85.212.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27E364C80A46
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:12:58 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi20 with SMTP id 20so394860pxi.13
	for <poky@yoctoproject.org>; Tue, 03 May 2011 16:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=X3UbiYP5LBy/yz7KdyqMWAKeuhqAiKrfkNL++oKltHU=;
	b=C9MBhfzqU8jQ2TfKarR2RD05Cf/fq5qlhYVdCmK9GHAG3Tr6I6NrQbaiXUJ0myNQpd
	OQ/VUBBmz+Sztt2d0jFsdmrb8OZPFcihnhxpT1NYX8HQZUANLt36UktCP9MlyTke8q8M
	HIDZd5X2vKmH2ZqQwWRpJUlEBIPye+Gm0dhJ8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=Hlc7mvZ5z2kmIJoDTubXAkEC3gEAWzZFuxQrudV9DLWvctfQwWbVTZuT0PZv8WHBHE
	Qk5Wi6EPb5VdGsVCv64TQ+tCP8kzt/IHQcUwoxRvjRVKUzCS2msdqQ5vCvHOEEzFkdHU
	2jDpDBRCaykeflCoxqt5fxdfRltt0WV4xp8UU=
Received: by 10.142.150.32 with SMTP id x32mr218974wfd.287.1304464377999;
	Tue, 03 May 2011 16:12:57 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id w14sm639814wfh.8.2011.05.03.16.12.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 May 2011 16:12:56 -0700 (PDT)
Date: Tue, 3 May 2011 16:12:24 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20110503231224.GA5966@sakrah.homelinux.org>
Mail-Followup-To: Gary Thomas <gary@mlbassoc.com>,
	Poky Project <poky@yoctoproject.org>
References: <4DC07C9A.8080202@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4DC07C9A.8080202@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Incorrect startup warning on ARM targets
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
X-List-Received-Date: Tue, 03 May 2011 23:12:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (03/05/11 16:07), Gary Thomas wrote:
> When building for an ARM target, you may see this error:
>   /proc/sys/vm/mmap_min_addr is not <= 65536. This will cause problems with qemu so please fix the value (as root)
> 
> This is a show-stopper; bitbake refuses to run until it's fixed.
> However, I don't believe it is useful or required any longer.  From
> my understanding, it was there in the past because QEMU for ARM didn't
> work correctly unless this system parameter was set as indicated.  That
> was when QEMU was being used during the build to create localization
> data.  This is no longer being done and QEMU is not used during the
> build process.
> 
> Perhaps we could eliminate this warning or make it conditional
> somehow?  As is, asking the user to make a system-wide setting
> as root for something that's not necessary seems wrong.

This warning is taken care of in qemu-native we build. But I think its
already fixed in upstream oe-core

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

