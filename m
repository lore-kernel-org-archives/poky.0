Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 169B8E00718
	for <poky@yoctoproject.org>; Sat, 21 Jan 2012 19:29:21 -0800 (PST)
Received: by iagj37 with SMTP id j37so4192968iag.35
	for <poky@yoctoproject.org>; Sat, 21 Jan 2012 19:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=Qz8I9CUDpeHWnj6RxyEKydMvjrENT4/ZPZOT+mzSwXs=;
	b=k1QYZ7HrujMsocv60dgqpDzPO02t8vLaglFhHgQGXaCqpKer14/4qcfAV57D9ftsM6
	UDxhUXXOXL4hs7okPxnG8dpRRVY5rL6T3cl961p7lYnuLDRkRJrW5sMmYAmgtofBUAZV
	Bvac7wZ50lcEDO9BIHmsgwLmthmFXZorY8FME=
Received: by 10.50.180.233 with SMTP id dr9mr4998728igc.11.1327202960555;
	Sat, 21 Jan 2012 19:29:20 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id or1sm14725249igc.3.2012.01.21.19.29.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jan 2012 19:29:19 -0800 (PST)
Date: Sat, 21 Jan 2012 19:30:14 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120122033014.GH27997@sakrah.homelinux.org>
Mail-Followup-To: Gary Thomas <gary@mlbassoc.com>,
	Poky Project <poky@yoctoproject.org>
References: <4F16F304.9030907@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4F16F304.9030907@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: eglibc schizophrenia?
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
X-List-Received-Date: Sun, 22 Jan 2012 03:29:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (18/01/12 09:27), Gary Thomas wrote:
> Using master 5724ee9c3a99519fea96446638910b727b89898d (2012-01-18)
> with MACHINE=beagleboard
> 
> I just noticed that a build from scratch is using two different
> versions of eglibc:
>   eglibc-2_12_www.eglibc.org_.svn.branches._11982_.tar.gz
>   eglibc-2_13_www.eglibc.org_.svn.branches._15508_.tar.gz
> 
> Is there some reason for this?  Why not just use version 2.13
> full stop?

Check your eglibc recipes do any one of them need 2.12 ?
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

