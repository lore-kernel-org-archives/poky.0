Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D2D04C800B8
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 02:00:54 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyj12 with SMTP id 12so3704482iyj.35
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 00:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=zLOmTdiaR/Z1eHQ9J8+FIQ8xJ7Gx83r0/bHrxRF/vwg=;
	b=vP+cyN1qfwE3Ksz6LDYqy7PUkx6v+fdclkIxo5YQeTN0NHX7jfXduYHymnNgVKnEY4
	N1MAk3Yy2yHoyzS5UP/6FbvYYlU0WtBs2KdD1jWjVx8LOSeWpfzNG9S2hylLZ/6zKEHW
	fQhNdkujY4f4MF4hzxWpQRd6Li1StAQhXXR3E=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=ZFFGhoLxBgqdJJ+66SF+eW2/lHJv/VxTKADUT2PFwCzilQMY0wzfAYz87gPkpmMKCG
	YSZ3nxYKnEcauYlkqvwMgNP6sAiLhvXmjOv+PKU3g0UjlJKq16BmBNDL1MPaI844s7WZ
	L78UH6CXRnwD+MS8gfiFm/z06he5RIFQEoLn4=
Received: by 10.42.171.5 with SMTP id h5mr884956icz.283.1299830453440;
	Fri, 11 Mar 2011 00:00:53 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id d21sm3249012ibg.15.2011.03.11.00.00.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Mar 2011 00:00:52 -0800 (PST)
Date: Fri, 11 Mar 2011 00:01:12 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Lianhao Lu <lianhao.lu@intel.com>
Message-ID: <20110311080112.GA2478@sakrah.homelinux.org>
Mail-Followup-To: Lianhao Lu <lianhao.lu@intel.com>, poky@yoctoproject.org
References: <cover.1299737813.git.lianhao.lu@intel.com>
	<6a1fe90d5a43e3260098dc90b8d467a1ba7d6335.1299737813.git.lianhao.lu@intel.com>
MIME-Version: 1.0
In-Reply-To: <6a1fe90d5a43e3260098dc90b8d467a1ba7d6335.1299737813.git.lianhao.lu@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] gcc/collect2: Added --sysroot support into collect2 in gcc.
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
X-List-Received-Date: Fri, 11 Mar 2011 08:00:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (10/03/11 14:21), Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> [YOCTO #815] Added --sysroot into COLLECT_GCC_OPTIONS to allow the
> collect2 support user specifed sysroot.

interesting. What happens if you remove -frepo option while compiling
your test program ?

