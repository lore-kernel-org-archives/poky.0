Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2F3AE0154F
	for <poky@yoctoproject.org>; Thu,  5 Sep 2013 04:41:04 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jy13so393524veb.5
	for <poky@yoctoproject.org>; Thu, 05 Sep 2013 04:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TghqoEJwJeCNd8WBOqL6dh+Q+UZF0ntE2ZBZ1f7n0wM=;
	b=RA8mgV1JfoeSzyAjdABhVxvR/wC7QOeTOpgXce6Akp9An5yueDPzMJCINY3auDdRKT
	7vOstHD4Ay3LXEP2dVkGLfHfo1tmKE2n3PkxnmWQE9XpUnn5nxulube5kCNNbLBTzR7a
	JBqbWv8fTb4+neCq4sOAotH0G+xejowAkJJ2X5rX3lbS8lXTYoZ14S9XAMH+y0e1glfm
	5ULeJ04BzOQmskI0k7L+Ale+6NZR27slE3kJ2QwPr9bnr/uIol5LgiXyDgpGzJOVXT0D
	bfUu/XnwysZxRn26dMR1E/JdTIg9xD6VRKyHkNSLozKfj2kaiSy8B5D7/dATshxjxdOz
	eCxg==
X-Gm-Message-State: ALoCoQlU1MaBo2nGOCMbLr26fouUbeMjPPSHbnRJemKe/jWaM9nAKuHlslGNXXwcwbyqjrTGiqsg
X-Received: by 10.220.11.7 with SMTP id r7mr5531584vcr.12.1378381264159; Thu,
	05 Sep 2013 04:41:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 5 Sep 2013 04:40:44 -0700 (PDT)
In-Reply-To: <CAP9ODKqVU+ka+VzjPj6p0iVsirrOSqLtDFWNzfBcKutwj1Fo3Q@mail.gmail.com>
References: <cover.1378339881.git.dvhart@linux.intel.com>
	<7e9270b1c56aeeb6ed22210cab98d2675b092d5d.1378339881.git.dvhart@linux.intel.com>
	<CAJTo0La0W7PXkuBsvqD2XqPMMbbLtmJef5T97sikSJogZ1XCiQ@mail.gmail.com>
	<CAP9ODKqVU+ka+VzjPj6p0iVsirrOSqLtDFWNzfBcKutwj1Fo3Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 5 Sep 2013 12:40:44 +0100
Message-ID: <CAJTo0Labk000SpLOiM8gtuSu2pwK0jsgU9osO60GEFntThxSeA@mail.gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Cc: Darren Hart <dvhart@linux.intel.com>, Poky <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH 2/4] xorg-driver-common: Add configure and install appends from meta-intel
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
X-List-Received-Date: Thu, 05 Sep 2013 11:41:06 -0000
Content-Type: text/plain; charset=UTF-8

On 5 September 2013 12:37, Otavio Salvador <otavio@ossystems.com.br> wrote:
>> Sadly when using libtool you can't "opt-out" of installing .la files
>> unless you delete the files that just got installed.  In my opinion
>> this is something that needs to be done globally instead of
>> per-recipe.
>
> So autotools.bbclass?

Exactly.  Phil sent patches to do this previously, and I've a
branch... somewhere that has another unfinished version.

Ross

