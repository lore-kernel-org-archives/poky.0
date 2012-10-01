Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 819DAE011C0
	for <poky@yoctoproject.org>; Mon,  1 Oct 2012 09:54:39 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 01 Oct 2012 09:54:39 -0700
Received: by obhx4 with SMTP id x4so6852887obh.35
	for <poky@yoctoproject.org>; Mon, 01 Oct 2012 09:54:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=FcKEywE9o3CW0gGbDbsngQ8fuwFbjNJH22WvN8mv/2s=;
	b=a5fA+bV95fNY3AL7D3Eqkm6I43FdPPwyR7BwB7BcWJLGhS64LmHK0hJMqk6mNF3RY3
	wIYexTG96nDcLHzp7DxR5TYpDoQ20DxPR+kuxFz0Gw3ClpH1+ctrbstC0bEEKcp17Tk2
	FNkb3ibdd5dx/XeU9Jjd8pQVORFYfnx+c0K/cRMHGF1pGXiXsWmuw3DRuwbey0BG+/2L
	XdyEqRgRWtRIwwjC4+cZ0DIQPpdPzPpMmqAnkU+AGWvnwx7sjs+4Ds5VaS3F+tFdXOlf
	8MSlT4fRbLPFEaY3Du8/dmUS726uoUFrrDOoyFhcifR4iahhur53/NnLdzwisXU9vXs4
	YYnA==
Received: by 10.60.31.12 with SMTP id w12mr4834821oeh.17.1349110478081; Mon,
	01 Oct 2012 09:54:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Mon, 1 Oct 2012 09:54:16 -0700 (PDT)
In-Reply-To: <1349109710-7478-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1349109710-7478-1-git-send-email-paul.eggleton@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Oct 2012 17:54:16 +0100
Message-ID: <CAJTo0LYVJTzEQT6uhUL8ASKORJL_1coJAa-rLXG25C4o3Khq0g@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQn6dwk2cXMfJxqApovufcmt/MeFRpkrB6tFhy+VtmTcakrdiULiJ+NtUGaleYLNwtl9BZ3X
Cc: poky@yoctoproject.org
Subject: Re: [meta-yocto][PATCH] poky.conf: supported distro warning update
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
X-List-Received-Date: Mon, 01 Oct 2012 16:54:39 -0000
Content-Type: text/plain; charset=UTF-8

On 1 October 2012 17:41, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> * Remove Fedora 15 (no longer supported by Fedora project)
> * Add upcoming Fedora 18
> * Add upcoming Ubuntu 12.10
> * Add CentOS 5.8 & 6.3
> * Add new Poky distro name format (self-hosted / build appliance) for
>   Yocto Project 1.2 / 1.3
> * Update Debian squeeze to 6.0.5 (automatic update from earlier 6.0.x)

6.0.6 was literally just released. :)

Ross

