Return-Path: <msm-fsl@mcclintock.net>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4F24E0044A
	for <poky@yoctoproject.org>; Fri,  6 Apr 2012 15:48:38 -0700 (PDT)
Received: by qam2 with SMTP id 2so661030qam.14
	for <poky@yoctoproject.org>; Fri, 06 Apr 2012 15:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XvG8MispSalqwMwTS2I/z+WA4GMkJgLQvy2qMYSgzRI=;
	b=eXjIbI041LEExwzxAylrHVrQ99tQmZKfuix40CaP3O4G9KAS4HYOsQ/RxW1XPruF/4
	lA1LcbY8MTiZP2nHtEreLqf2LJ3dFNxrLzcMBssyaJLBfk8IJDXwuJ28UPw+S+nAlEf6
	7+/ejxSAM7ZwkQKPgHA27Gqvq4js+gosK+9JE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=XvG8MispSalqwMwTS2I/z+WA4GMkJgLQvy2qMYSgzRI=;
	b=kfhkqH9xp9rkkZCZMXYtq6/HTlYFcsCRUFMo9o4B4ydwktqaX4U84oxJxm9AsqjtJJ
	aTwvff1s3kXmjENwQXQrbZMASqOhwQSpXNt1H6QgVidB0oucgBlcAAtK9yZE50A8uwWC
	sbLePVM3AtehWYxK+cs97Fvu41z0uquoaogw4SFhR4FHDJmeZMauwLm5ux1hCwSVtaDt
	PLHUjAJT/7DeN4VqqsjNxLV4wkWv2GQgXZxBaKMGMQ78oUEQWHrYOVyYrTMfui5p+yQt
	d4r/Us4t1iXVvLHzM/wBX/E23PujoTz52DmuHSKoCXSTqL5ASizaY5jgfPZe93k82QTY
	maQA==
Received: by 10.224.189.16 with SMTP id dc16mr10634380qab.40.1333752518092;
	Fri, 06 Apr 2012 15:48:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.11.234 with HTTP; Fri, 6 Apr 2012 15:48:17 -0700 (PDT)
In-Reply-To: <4F7F2AA5.2010400@linux.intel.com>
References: <4F7F2AA5.2010400@linux.intel.com>
From: Matthew McClintock <msm-fsl@mcclintock.net>
Date: Fri, 6 Apr 2012 15:48:17 -0700
Message-ID: <CAEsOVNdtz78KBckaLmqHZP_dE7gjLxNNdOL696+OuNoxFuuA8A@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
X-Gm-Message-State: ALoCoQnPbUJa40uauy++iAomX58x1kAYtQnH7snyyTiZUOc5z0ySMdLRqUg3yBu6H3MUloPicBwQ
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Edison Next
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
X-List-Received-Date: Fri, 06 Apr 2012 22:48:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Apr 6, 2012 at 10:40 AM, Joshua Lock <josh@linux.intel.com> wrote:
> Hi,
>
> There are plenty of folks still using Edison and bugs being filed against
> that release series so I've started pulling together a branch of fixes for
> another Edison point release.
>
> So far I have:
> * Several fixes for useradd
> * A fix for building syslinux on hosts with 3.3 or newer kernels [YOCTO
> #2236]
> * Fixes so that live images greater than 1GB in size can boot [YOCTO #2138]
>
> If there are other fixes you would like to see in the Edison series please
> point me at bug numbers or, even better, patches.
>
> My current branch can be seen here:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=josh/edison

I, of course, have more fixes I can suggest. I'll try to look next
week when I'm back in the office.

-M

