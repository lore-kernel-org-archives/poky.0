Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 274C0E00306
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:36:14 -0800 (PST)
Received: by lagw12 with SMTP id w12so768314lag.35
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tpIh2gpshjDwfmg4QkXQsx/cGbf5KCO7Rmngo8d2YVo=;
	b=VqmMpKZ6f2CiZJRQt5B4cHPyVw/kUgDpSalZWiV0u5ktuOAf7ctQxmWJC0FwZeAbLV
	Oy2VSpY4oTvjWARUUFeHC3JWKklArLXojyJ5DZjyh+A4G2pMdjAQUHKJ6oExSk/HLCyd
	+CgK57wNZXUpvqR86nJuDRUHNM7SuTM9dFzKI=
Received: by 10.152.122.38 with SMTP id lp6mr9747171lab.13.1327955773954; Mon,
	30 Jan 2012 12:36:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Mon, 30 Jan 2012 12:35:43 -0800 (PST)
In-Reply-To: <ca65eb5fc6d8574c68a61d5d1b07c00d2fb3b530.1327954069.git.bruce.ashfield@windriver.com>
References: <cover.1327954069.git.bruce.ashfield@windriver.com>
	<ca65eb5fc6d8574c68a61d5d1b07c00d2fb3b530.1327954069.git.bruce.ashfield@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Jan 2012 12:35:43 -0800
Message-ID: <CAMKF1sonGk5BHA0uW+u=SZ+bDzUU6HrfYxwmjs43phgSHw+-bg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 2/2] meta-yocto/poky.conf: set qemu* preferred linux-yocto version to 3.2
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
X-List-Received-Date: Mon, 30 Jan 2012 20:36:15 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jan 30, 2012 at 12:16 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> +PREFERRED_VERSION_linux-yocto_qemumips ?= "3.02"

why is mips still using 3.0 ?

