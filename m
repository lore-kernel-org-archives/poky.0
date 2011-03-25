Return-Path: <cgwalters@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB3F14C800A0
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 07:50:35 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so1391343wyb.35
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 05:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=yWrTgjDJpANqxg2USHiMZtLxVuEiHci1Vqis1+kAgYg=;
	b=H40VFi2D/0v8zOgJVa1AIE0U+ng97tXTUVnDY8rSbBMJSI43M0ybAjf5+4PQwcPHk9
	YZIhXw10w3vAxFbHvELDvDoe3edG3RsQqT8LJtAhlQ2LomdmhsziMz+Bp/K5fGe3Ef7T
	+fHSruDBOZ0Xa8e08LKyBkRvz02uDxD+qzGUw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=of3BtZ3iR7JcGFuUIEizSEfPeJSOtQCKwZkWBWtQLpDnTVRIcDcVJJFs0F1a387nmu
	Fsw6dQRxwbQIa1j5rpY3bGA9207Och2eS3Xeqzq494otF3Ij8ulNtQyQ/eqGwc/yVPV9
	5vUWkk0LsMpbyP0IEnGpyYZm0tDgap01aR+iE=
MIME-Version: 1.0
Received: by 10.216.143.228 with SMTP id l78mr699729wej.21.1301057435040; Fri,
	25 Mar 2011 05:50:35 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.49.20 with HTTP; Fri, 25 Mar 2011 05:50:35 -0700 (PDT)
In-Reply-To: <cover.1301035479.git.kai.kang@windriver.com>
References: <cover.1301035479.git.kai.kang@windriver.com>
Date: Fri, 25 Mar 2011 08:50:35 -0400
X-Google-Sender-Auth: gA5KuWQc2qQu565tr2XYVgO-fOI
Message-ID: <AANLkTinrzPtDWUoGfVJZBmtSiSHBkM8WuJECkuJf2Q0B@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: Kang Kai <kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] LSB: add nspr and nss to pass LSB library check
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
X-List-Received-Date: Fri, 25 Mar 2011 12:50:36 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 25, 2011 at 2:52 AM, Kang Kai <kai.kang@windriver.com> wrote:
> From: Kang Kai <kai.kang@windriver.com>
>
> add nss and nspr to provide libnss3.so, libssl3.so and libnspr4.so
> to pass LSB library check.
> Both are imported from oe, rev 6fe7cef27069415f2eba36bc640cf59013d4979b

I'm new to Yocto but have been around in the general purpose distro
land for a while, and there is one thing that has always driven me
nuts: patches without any comment.
This may not be your fault, but:

Take for example b/meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff

*why*?  Who wrote the patch?  What was broken?  Has the patch ever
been sent upstream?

Personally I tend to hand-write something similar to "git
format-patch" if I'm not actually creating a patch against upstream
git (which I try hard to do).

meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch

is one that clearly should be upstream, it's just way saner.

Planning to use nspr in my tree, so thought I'd take a look =)
Otherwise looks pretty clean to me.

