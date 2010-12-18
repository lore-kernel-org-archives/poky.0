Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEB2A4C80B71;
	Sat, 18 Dec 2010 05:29:36 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1803616iwn.35
	for <multiple recipients>; Sat, 18 Dec 2010 03:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=BOXnNleQR9jPl3Xq+XTDtDI4qdAYgDJA95JzuQiprEo=;
	b=HYPWdtxb6t3U3mjL5SeRFiFustyCymu3XG2TJ2wD799AxOMbc54qPDX7qzXlN1Pm6j
	c13sC3jwt3wCgvBqMwxRWs1zH0GeccNSao9GK9XBQ7AJPhrh5UEGkXHl9A0eZTNn6rYX
	RAT55TTXuMJYz09oBvG/fMXqD44auA4d0L5F8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=sYdW0KE7U45iNkBZwSpeYvxglz2YwRhqLVu2ofGUMRz4PAwlNqbzHqCsHJuboPW9OU
	flL4xAQVeF+ZuCBwwf23XI8GiOq9wk9DYvtQDF6DGPWhgOhTmxZNfVs6ry6Smhr6g5Ee
	NUuHGnLNaIxAMJ75U6RQGGnzw5bqRSfDogpRw=
MIME-Version: 1.0
Received: by 10.231.149.194 with SMTP id u2mr1893674ibv.32.1292671776524; Sat,
	18 Dec 2010 03:29:36 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Sat, 18 Dec 2010 03:29:36 -0800 (PST)
In-Reply-To: <4D0A8CEC.5030709@linux.intel.com>
References: <4D0A8CEC.5030709@linux.intel.com>
Date: Sat, 18 Dec 2010 12:29:36 +0100
Message-ID: <AANLkTi=YJR+3a=9MGpAq-+6DUmG3j+am-+otcSYwQSgp@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [yocto] Announcing poky-extras repository available
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
X-List-Received-Date: Sat, 18 Dec 2010 11:29:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/12/16 Saul Wold <sgw@linux.intel.com>:
>
> Hello All,
>
> Recently Richard sent around an email proposing that a new repository be
> created for hosting layers that are not part of the core Yocto Metadata.
>
> This new repository "poky-extras" can host different contributed layers and
> will be open to any one.
>
> From Richard's proposed ground rules:
>
>> * it has the OE style open contributions model
>> * consists of a set of layers, each clearly identified at the top level
>> * each layer has a clearly named maintainer or maintainers
>> * people respect the layer maintainers
>> * layers are split into logical "topics" where at all possible
>
> The first layer contained in this new repository is the meta-linaro layer,
> the top level repository will be removed short since it will now be
> maintained in poky-extras.
>
> If you require write access to this repository, please send your request to
> git-requests@yoctoproject.org


Saul, all,

I've peeked at poky-extras. The meta-linaor layer does not have an
identifiable maintainer (grep -ir maint . in that dir did not result
in any hits).
Do we have a policy on when/how to create a layer.
My intention is to bring over some of my OE recipes (as I would love
to be able to build my james image under poky too).

Best regards, Frans

