Return-Path: <lpapp@archlinux.us>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E56CE007C7
	for <poky@yoctoproject.org>; Thu, 30 Jan 2014 02:44:59 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id rd3so2966133pab.30
	for <poky@yoctoproject.org>; Thu, 30 Jan 2014 02:44:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:cc:content-type;
	bh=xxiQkj+aIlAa1zB3xxu6pwcxTdGE4XycN643ro/xt8k=;
	b=We1NCkyegDWeDsuaLmAK4rqF6ElojKSr30Aro2814Igx84iiOOp0nHwZF3q9QV5jRV
	BUlQwkknDTUQbXuJTfkCP7nR/tCPzSh6kWCdZAGzNiG7aVX/LPw5/WrqHz4h7S8pGvis
	pbHpYD2I160+Ful8iyS9o1LN2fHLx5tSkrn38IyryWqHWsaBDVJQ3m1jl779plgJQrVL
	9bjDq7vMQ8FCnsJ04MWU9vbvXCzbxWhCR5W9NFJ0KFg8ROCsIYOeEKji0JunFpZesWhg
	TM+ofxkGsWSSyWJ0Bmh9p+a9CVcKM01BFQq3UlKrq7YbVrkqzwjyIxiF9n3sFJR0zmyt
	sX3g==
X-Gm-Message-State: ALoCoQn9uqyFJxwjXvxaxejAo6izbQn8TapFSeaSZxFKiyxImP3utnXDpu6re3ZoJb9sLYlb558M
MIME-Version: 1.0
X-Received: by 10.66.66.202 with SMTP id h10mr13668373pat.70.1391078699478;
	Thu, 30 Jan 2014 02:44:59 -0800 (PST)
Sender: lpapp@archlinux.us
Received: by 10.70.21.228 with HTTP; Thu, 30 Jan 2014 02:44:59 -0800 (PST)
Date: Thu, 30 Jan 2014 10:44:59 +0000
X-Google-Sender-Auth: Rooo5OYUpC5fyOkSVIhaA5x3hN8
Message-ID: <CAOMwXhN08V=6GU7Nfb6mdYhAnWmfBT-YxDV64YQQ6cYk8=bJVA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Poky Project <poky@yoctoproject.org>
Subject: DISTRO specification within distro files?
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
X-List-Received-Date: Thu, 30 Jan 2014 10:45:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

The poky and poky-tiny distribution configuration files are having the
DISTRO variable specified. I would have thought it is only supposed to
be used by the distro users, not for distro definition.

This was changed in 2005 by Richard ("CC"'d).

http://git.yoctoproject.org/cgit.cgi/poky/commit/build?h=clyde&id=f8f6ddf146ae0b63089d9dfd7aa4e1426935ac02

Having asked it on IRC, it seems that no one has any idea so far why
it is there.

Can someone please comment on it with the required knowledge?

Cheers, L.

