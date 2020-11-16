Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.39915.1605555047654991691
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 11:30:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=EzjK+K1q;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D1ACA2225B;
	Mon, 16 Nov 2020 19:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605555047;
	bh=X9nScrGRVL4ZaZuLhAPyFIvGaP6X+8AXyUaNirmvgwg=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=EzjK+K1qX1NtDmS9qXJ8WFbBwpULQZElZVCjJEycX1TQURXjoi70iGnTQDZ4iVAAN
	 vebAlBZIqWWxgetlZXAq//wKzWoJb6MqgrF1CHeT8/NRBz2tGhLHBHe890q7tM2igL
	 5HEwHOMjXHPi96osgmAAkCowkH+R6rKLBXYB+ssA=
Subject: Re: [poky] [PATCH v7] poky-tiny: enable section removal
To: poky@lists.yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1647D622A62A0183.6873@lists.yoctoproject.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
Date: Mon, 16 Nov 2020 14:30:45 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <1647D622A62A0183.6873@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Richard,

On 11/15/2020 7:40 PM, Sinan Kaya wrote:
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/include/gcsections.inc | 22 ++++++++++++++++++++
>  meta-poky/conf/distro/poky-tiny.conf         |  2 ++
>  2 files changed, 24 insertions(+)
>  create mode 100644 meta-poky/conf/distro/include/gcsections.inc

How is v7 looking?

It built for me yesterday.

Sinan
