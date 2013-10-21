Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DF69E01724
	for <poky@yoctoproject.org>; Mon, 21 Oct 2013 04:03:13 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id e12so4050346vbg.1
	for <poky@yoctoproject.org>; Mon, 21 Oct 2013 04:03:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mO3nHt9YLIhSnq1clR/mklr5tiKMgbYCAO4d5D7A9nw=;
	b=Yjg2Jv1fmrAoF1RaVGqDl76Ih5Yv296oF42HRV4Ckfi85y2TcVOOU8cmNyi3e5hga8
	X9ohY/Rxgig140Ya9kh5DmLB61gkQJ+SzARoklCliOciZrZLtNcB1Xvqfg9sTiTfkI55
	g0gohY8DH6mbsHbkN7567HFr8CCCBz4G8lzMAqyp3Eb5acoeo+75Ul97YEftKKjn6RK6
	ooEEY/+ev4tbD4CjMyo97Jr9eF9UIu0eD/4EohlBJwMBKwUu5L8qqmMhDNYjJHzS+Pt4
	u54TpJevIIcHKEQQNq33O7k76RaPu+vIbBWd6tbn7NRfB2h5cy7EAUfUQC6wYLUNtb1u
	0IbA==
X-Gm-Message-State: ALoCoQnsejKfV8LtDN9mizSjV9z7Vm4SIye5Qly9x7svzvvzuNvB+uBS6UlQym2ErO4mHYETzvKb
X-Received: by 10.221.51.206 with SMTP id vj14mr605462vcb.17.1382353392716;
	Mon, 21 Oct 2013 04:03:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 21 Oct 2013 04:02:52 -0700 (PDT)
In-Reply-To: <CAJTo0LbGJ6m5q8uot4iLuFe_osVDXSpj7Y4o5X4MtbpoiaPMDw@mail.gmail.com>
References: <1382308347.6266.21.camel@dvhart-mobl4.amr.corp.intel.com>
	<CAJTo0LbGJ6m5q8uot4iLuFe_osVDXSpj7Y4o5X4MtbpoiaPMDw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Oct 2013 12:02:52 +0100
Message-ID: <CAJTo0LYfJx8+nGRSJAPd_yrDFV8dFT4h5xuANHHsNE2G+HvT4g@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: libcheck data file clashes for core-image-sato-sdk on minnow dev
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
X-List-Received-Date: Mon, 21 Oct 2013 11:03:14 -0000
Content-Type: text/plain; charset=UTF-8

On 21 October 2013 09:28, Burton, Ross <ross.burton@intel.com> wrote:
> On 20 October 2013 23:32, Darren Hart <dvhart@linux.intel.com> wrote:
>>  * check_data_file_clashes: Package check wants to install
>> file /build/yocto/master/minnow_20131019205134/build/tmp/work/minnow-poky-linux/core-image-sato-sdk/1.0-r0/rootfs/usr/bin/checkmk
>> |       But that file is already provided by package  * libcheck
>
> oe-core has a libcheck that doesn't produce a check package. Where is
> your "check" package coming from?  It should be deleted and oe-core's
> libcheck used.

And then I rebased and discovered "check" was just added.  The
description is bad but it's a clone of the libcheck recipe we already
have.

Ross

