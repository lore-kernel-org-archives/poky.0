Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5DDCE012FE
	for <poky@yoctoproject.org>; Mon,  1 Oct 2012 10:00:13 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 01 Oct 2012 10:00:13 -0700
Received: by obhx4 with SMTP id x4so6861891obh.35
	for <poky@yoctoproject.org>; Mon, 01 Oct 2012 10:00:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=TtZ0qlp05B7YoJAlsnauNdyhBgyAmAuapQ1MMmEXaa8=;
	b=lkQEvDG1twieiIMQacwObn3Uaz338oX8anOGeDactvq4qEELzHQ4dfacieM0IhQXCU
	heHxdPnmDEzStK1ss3MiXN4dk9EWRf1+EtOg8U0aj8Ma5AoHiYgHRQCrBji7acsRQeEq
	3g1hU0esrLmKHabGPM4/lCdH8rUDhC4Whytj/jhKONf2+5xA+cHxUcJj1GCO3LVfR9tE
	hbBURbO5bcgGLTlTpzzDw9ZnPIcoTBLqLQdq3FtnImMhVTsnfyIa4SYFow7NHQEoMPRe
	rouvhxxlCNwyO09x3hsUyvYH4OQ7eUXhn2C68ayYiKvPxF6aZMgpg0NEMVRLaAYEppMp
	UoSw==
Received: by 10.60.31.12 with SMTP id w12mr4846575oeh.17.1349110812048; Mon,
	01 Oct 2012 10:00:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Mon, 1 Oct 2012 09:59:51 -0700 (PDT)
In-Reply-To: <4890658.Z4EHLe5yFh@helios>
References: <1349109710-7478-1-git-send-email-paul.eggleton@linux.intel.com>
	<CAJTo0LYVJTzEQT6uhUL8ASKORJL_1coJAa-rLXG25C4o3Khq0g@mail.gmail.com>
	<4890658.Z4EHLe5yFh@helios>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Oct 2012 17:59:51 +0100
Message-ID: <CAJTo0LZFGaKu0qatKDWeeLd19MdVivJy+8Gz3ycM=1+NLErWJQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQn1YY4oDa2TYvTtwqAb7S9A6bmX3/dhI62z6JeROhYCHtIRxdFZ2LT1IAnFQelH1aK3K1oB
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
X-List-Received-Date: Mon, 01 Oct 2012 17:00:13 -0000
Content-Type: text/plain; charset=UTF-8

On 1 October 2012 17:58, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
>> 6.0.6 was literally just released. :)
>
> Well knock me down with a feather. ;)

I know, people wait years for a Debian release... ;)

Ross

