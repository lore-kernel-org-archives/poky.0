Return-Path: <lpapp@archlinux.us>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15E48E007BA
	for <poky@yoctoproject.org>; Thu, 30 Jan 2014 03:32:18 -0800 (PST)
Received: by mail-pd0-f177.google.com with SMTP id x10so2896549pdj.36
	for <poky@yoctoproject.org>; Thu, 30 Jan 2014 03:32:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=fN5ZxTYKb9cdEPpvXfVzuR/FDyDlRNysC8n8g76Ivg8=;
	b=bahS5gpOVJgt88DBuYm7BE8tFYkyHkEAN+5ePgp3aFLGAwl8idU61eysh7Wt5m73DT
	Hfi6Clt3m/nr4NnIO2Qj0CfJ06yDwKXhspTJThyFNlLX6AnwsJLNVK9Mvzk7OyBd0ffq
	t4L9HM1RBEvJM+9psHe31CNazHDN9TTZRqtk2Ee4wZabJPrZYVapKIfhavy5xZBX7U2U
	UJ0wG/8/iQBuOEHee7RZD3GlAwlcFgDPugvv6+5vWZyHhUXH21F2f4yuo/WvDhShOuRu
	H9xDULVejSa3vFwS8VfscLnpBGyWk7VmVOyu2rPyNTzrYeWQfTZV0sJ8SK5cgKmWq0xu
	0eHw==
X-Gm-Message-State: ALoCoQljdOG9GJsUEoVZSP18j/PUjMonWvvXGnL8Fb/bIX4g+c1S+pJXkhfdJfhPLvrbo2/EtZ1z
MIME-Version: 1.0
X-Received: by 10.66.16.162 with SMTP id h2mr13666503pad.129.1391081538289;
	Thu, 30 Jan 2014 03:32:18 -0800 (PST)
Sender: lpapp@archlinux.us
Received: by 10.70.21.228 with HTTP; Thu, 30 Jan 2014 03:32:18 -0800 (PST)
In-Reply-To: <CAOMwXhN08V=6GU7Nfb6mdYhAnWmfBT-YxDV64YQQ6cYk8=bJVA@mail.gmail.com>
References: <CAOMwXhN08V=6GU7Nfb6mdYhAnWmfBT-YxDV64YQQ6cYk8=bJVA@mail.gmail.com>
Date: Thu, 30 Jan 2014 11:32:18 +0000
X-Google-Sender-Auth: fMBwKP9VQzFIAk1PJ7yPYN_Uj4c
Message-ID: <CAOMwXhNYZNdzuwGLXNHTFb-8_bqh3EZ9pZ0rGMMYf7ZB3V-=vQ@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: DISTRO specification within distro files?
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
X-List-Received-Date: Thu, 30 Jan 2014 11:32:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

After a quick discussion with Richard on IRC, it seems to be
historical for me, probably kept for compatibility.

That I can understand as a reason. Thanks Richard, again, for explaining it.

On Thu, Jan 30, 2014 at 10:44 AM, Laszlo Papp <lpapp@kde.org> wrote:
> Hi,
>
> The poky and poky-tiny distribution configuration files are having the
> DISTRO variable specified. I would have thought it is only supposed to
> be used by the distro users, not for distro definition.
>
> This was changed in 2005 by Richard ("CC"'d).
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/build?h=clyde&id=f8f6ddf146ae0b63089d9dfd7aa4e1426935ac02
>
> Having asked it on IRC, it seems that no one has any idea so far why
> it is there.
>
> Can someone please comment on it with the required knowledge?
>
> Cheers, L.

