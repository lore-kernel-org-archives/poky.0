Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1FEAE0127A
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 12:06:42 -0700 (PDT)
Received: from mail-ea0-f176.google.com ([209.85.215.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 18 Oct 2012 12:06:26 -0700
Received: by mail-ea0-f176.google.com with SMTP id n12so2676325eaa.35
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 12:06:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=Pc8Ui+kCNDd50//hNUpQ6IliXmBkDJ+DZXF6CYrE+Mw=;
	b=RASOCX2B+5rKQxxBTrOGxfuhObU14RMShghfPrSFxAQkEDthHTkUk4dGUqrToOAQHg
	NkGCKeDQbn8+3FdFX+hfUAKg+n/Ui0vP3mH9agAYJauueqVCVtzQCClK3XgnBDIgFu9D
	WkcrSrgMh+47IfcYNimI3bOX5NaIQf/JbUlUOqDc6QnQ0GVLBhdEMs2jneJvMyajZTwu
	oBE2AS0NyimSNroFKk8DwVbs+TEeKvSqnDMJLU66n/Ozq82yhWbrc5Xg+d0mKIgDhuSI
	Igu4m1rGb1wzfN92VRBlnyGwlToTcT7vNd2Pp8ZoooT1a2cZfxDuEWFPbfGczDVoPBpN
	19GQ==
Received: by 10.14.193.129 with SMTP id k1mr33209003een.13.1350587184409;
	Thu, 18 Oct 2012 12:06:24 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id b44sm37246816eep.12.2012.10.18.12.06.21
	(version=SSLv3 cipher=OTHER); Thu, 18 Oct 2012 12:06:23 -0700 (PDT)
Date: Thu, 18 Oct 2012 20:06:19 +0100
From: Ross Burton <ross.burton@intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Message-ID: <96D6ACEBF8C64289AACE61DBA5928D65@intel.com>
In-Reply-To: <20121018174301.GB3087@jama.jama.net>
References: <5080305D.2060001@mlbassoc.com>
	<CAJTo0Lb7e7-OJMC1yG3c9DVSDoAri0vjD79mBm7K8MmU9sbiJg@mail.gmail.com>
	<20121018174301.GB3087@jama.jama.net>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQlUqtzU2+rRJRULsdJ1jtoAnoyFO8nML2ws8aMqfq3cDpytgEH+M3L9l0fhDVm+jDeQz9EQ
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Issue with git fetcher
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Oct 2012 19:06:43 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Thursday, 18 October 2012 at 18:43, Martin Jansa wrote:
> It does make sense.
> 
> e.g. AUTOREV set in some .inc file.
Fair enough.  If anyone is actually doing that with libav then this can remain, but clearly bitbake's fetcher has a bug too then - it shouldn't hit the network to resolve a branch name if it has an explicit srcrev.

Ross 



