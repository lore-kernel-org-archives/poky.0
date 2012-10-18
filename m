Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27377E013D2
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 09:41:40 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 18 Oct 2012 09:41:39 -0700
Received: by mail-oa0-f48.google.com with SMTP id h2so10842866oag.35
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 09:41:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=BFwoGGuC5AQKkhxCWgBjgoKrFITLnRtKHIFQKM03glE=;
	b=XUP6L/SiVXGzfvj/2wSGynAgulan8VvDAjLALruJ/7CFfbTZFTw5UVPpHP13ol8uwB
	FqCBWiy5MKgbCO+Pq8uDIerOTyFkcw0eOhbGSgO59eD1vVyQ5iKeW+dPuQeo2UuaXXiq
	rus/tfeHI/GigT9xBxXm/bgarw3zPs8yqpZj7XO0eirL9NaS6zBvz/kN0iOfTEgGAfJ0
	LBk3uvOhnBwxPuWjLIw6tiRlGCCKBcPrLuVcy58RsHe9BmQgafSLVbNI+fuUoKyNKx29
	aZfvxADCGWr5JJDLt5h2WwM3qEoUjANuPSK19eLf1m4t77EeIaVcvj5n+tamKMkfxr/c
	AFBA==
Received: by 10.60.30.100 with SMTP id r4mr11128140oeh.121.1350578493879; Thu,
	18 Oct 2012 09:41:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.46.70 with HTTP; Thu, 18 Oct 2012 09:41:13 -0700 (PDT)
In-Reply-To: <5080305D.2060001@mlbassoc.com>
References: <5080305D.2060001@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 Oct 2012 17:41:13 +0100
Message-ID: <CAJTo0Lb7e7-OJMC1yG3c9DVSDoAri0vjD79mBm7K8MmU9sbiJg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkuGTK45u3bX4LZVcZosfayp4hosLU45TOsLauwalIJQe72RYtWe+Se1+oT685eXHUkgKGe
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
X-List-Received-Date: Thu, 18 Oct 2012 16:41:40 -0000
Content-Type: text/plain; charset=UTF-8

On 18 October 2012 17:37, Gary Thomas <gary@mlbassoc.com> wrote:
> I ran across an issue with this with a recipe I imported from
> meta-openembedded/meta-oe.  It contained these lines:
>   SRCREV = "2fb4be9a99a2c2a9435339830e3d940171cc0d9b"
>   SRC_URI = "git://git.libav.org/libav.git;protocol=git;branch=release/0.8"

Specifying a revision *and* specifying a branch doesn't make sense
with git.  Presumably the SRCREV is the correct reference and the
branch parameter is just causing network traffic for no reason.

Removing the branch parameter sounds like exactly the right thing to do.

Ross

