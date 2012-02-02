Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02326E00595
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 21:05:21 -0800 (PST)
Received: by lagw12 with SMTP id w12so1517598lag.35
	for <poky@yoctoproject.org>; Wed, 01 Feb 2012 21:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DsulqVJ2F5op0F6vBwgipeQa9fFmzovjEp7XsAEmV+4=;
	b=BR4+FfTl/ICXIvTjoJEAaKhO/esl736UYBx8fFaAVMEoMUdR9fj0d8AyF92ABcHLTj
	9kCdvDT/gV3Xn9gVf8ARvehPdF1IKsSTl+x2MCO+roF1H4zs6mFl/92bLy9WIxyVdo1G
	VG/r0O3Qnwf8kQemTHhft0DO53kZ7zaijB6fQ=
Received: by 10.152.122.38 with SMTP id lp6mr699792lab.13.1328159120479; Wed,
	01 Feb 2012 21:05:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Wed, 1 Feb 2012 21:04:50 -0800 (PST)
In-Reply-To: <4F29F010.5030406@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
	<CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
	<4F29F010.5030406@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 1 Feb 2012 21:04:50 -0800
Message-ID: <CAMKF1soPhW=-A9z5i7z3Msi4jjE9jB5m3yXKVrn1tRgn_=fwxw@mail.gmail.com>
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2 v2] binutils: Always enable plugins
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
X-List-Received-Date: Thu, 02 Feb 2012 05:05:22 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 1, 2012 at 6:08 PM, Derek Buitenhuis
<derek.buitenhuis@gmail.com> wrote:
> On 22/01/2012 1:57 PM, Khem Raj wrote:
>>
>> while this patch is ok. It occurs to me that we might have to find an
>> easier way to specify common options once for all binutils recipes
>
>
> So uh, I am not clear if this patch will be pushed or if you're
> waiting for a refactor of binutils...

this is ok to go in. cleanup can happen at later times

>
> - Derek

