Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9771E002A5
	for <poky@yoctoproject.org>; Mon, 20 Aug 2012 16:54:13 -0700 (PDT)
Received: by eekd41 with SMTP id d41so2104835eek.35
	for <poky@yoctoproject.org>; Mon, 20 Aug 2012 16:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=F52PQfz7V2wtOduhO1wmbpNmZm7E5GY4NfGICXgN/88=;
	b=BFPnyMdx/BGi6CUi0MRTw5LFNY5RV0r83JI5CgAoYpirPJP+Ogn3t7wnV5h9R3JSTZ
	AZrfQHEpM0fk1SkLYeAh3SwoGXg5ELHWiIxpSrEnrQ8d6mrx/PAat/8bfNLuNkQrbUcn
	BMHiLlKDV5XjcijaA2r5EPdwev+ll6nyf0xTho/OOv9pLFb7fxFQnrOZyPYNfiQQJ0Rm
	6pwypzpNpmMjhjRlqCMFwIpaZ0l0qZLYJAn3NmzUa0JxnnJp9v8jWEAJfF7ctEFDC3yU
	/6/ysmSexcuYHVpv2MRMJa5sVYJFBkWvr8ZKr8JTGisYDI8xKpUh+En+q+SahQq3UNxR
	Yv3A==
Received: by 10.14.202.131 with SMTP id d3mr10983636eeo.32.1345506852523; Mon,
	20 Aug 2012 16:54:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Mon, 20 Aug 2012 16:53:42 -0700 (PDT)
In-Reply-To: <ef9f8fc7a6283b51a67b343c40a1826a659875a6.1345498314.git.dvhart@linux.intel.com>
References: <ef9f8fc7a6283b51a67b343c40a1826a659875a6.1345498314.git.dvhart@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Aug 2012 16:53:42 -0700
Message-ID: <CAMKF1sprfQp57Z95x4y7zqDvndA5n8xPYPik__HuPAatQqFpWg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@intel.com>, Poky <poky@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [PATCH V2] README: Clarify where to send patches
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
X-List-Received-Date: Mon, 20 Aug 2012 23:54:14 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 20, 2012 at 2:32 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>
> +
> +Most everything else should be sent to the OpenEmbedded Core mailing list.
> +If in doubt, check the oe-core git repository for the content you intend to
> +modify. If it exists there, send the patches to:
> +    openembedded-core@lists.openembedded.org
> +
> +Note: The scripts directory should be treated with extra care as it is a mix
> +      of oe-core and poky-specific files.

can you also a phrase saying that rebase your patches for OE-Core on
oe-core repo
before sending ?

