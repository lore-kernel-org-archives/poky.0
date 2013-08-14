Return-Path: <lpapp@archlinux.us>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43BC7E00747
	for <poky@yoctoproject.org>; Wed, 14 Aug 2013 02:37:20 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj1so9950363pad.14
	for <poky@yoctoproject.org>; Wed, 14 Aug 2013 02:37:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=tYchofDN4BghBy+gkg0TmU5Dcb86cWtaQqduYMg8BIc=;
	b=UbfulRULF627+Dm1UW7GlotVRhMZyVN/pMAWP6prXiVZKO0ARtNNP1EkFBYdlCTIHy
	pmVGreEHz+qCfLFsFDkM+8Fz3Phqi+JoVhqEseXInNMFXKCasxhwa+lN8XG+0dtbaQnM
	t6O+SadxbLmaDU4dsAjyDqCy57HOBbWHaCja5cyPKVeuDnmddZTGRux+0hNmBIi59aEr
	RTA3sL3kQhIB3jSjQv7BNZfZkDMVRJ0h0P5KHk5KCJzIs3XXD+NZlvd6a7e8Y/O97MGj
	Q1npQXABeBxuetOcq9GC2AowTvZcmIDplXr5ZcGwxkYDTrVxlTf0cR/VFqqtpnIEpyNF
	UNRw==
X-Gm-Message-State: ALoCoQnlQayg4U1WIJeNhpqcIk+GgWJO/SQE75p6zMKPq9toski4YTmksZkqzdMpTqFxaL6jcdqx
MIME-Version: 1.0
X-Received: by 10.66.154.1 with SMTP id vk1mr8951132pab.85.1376473040437; Wed,
	14 Aug 2013 02:37:20 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 14 Aug 2013 02:37:20 -0700 (PDT)
In-Reply-To: <CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
References: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
	<CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
Date: Wed, 14 Aug 2013 10:37:20 +0100
X-Google-Sender-Auth: E0k_zqQ-uBDSKWju3sKRsTxu6SI
Message-ID: <CAOMwXhMLBa+qefh1HgDB57EhqU_HJ4Ju9Y-V881PRGU0UYgS4g@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Stunnel recipe
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
X-List-Received-Date: Wed, 14 Aug 2013 09:37:21 -0000
Content-Type: multipart/alternative; boundary=047d7b6d908a9e55a004e3e51a98

--047d7b6d908a9e55a004e3e51a98
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 14, 2013 at 9:34 AM, Burton, Ross <ross.burton@intel.com> wrote:

> There's a meta-networking layer in the meta-oe repository which is
> probably a good place to start.
>

recipes-support?

--047d7b6d908a9e55a004e3e51a98
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">On Wed, Aug 14, 2013 at 9:34 AM, Burton, Ross <span dir="ltr">&lt;<a href="mailto:ross.burton@intel.com" target="_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><div class="gmail_extra"><div class="gmail_quote">
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im"><span style="color:rgb(34,34,34)">There&#39;s a meta-networking layer in the meta-oe repository which is</span><br>
</div>
probably a good place to start.<br></blockquote><div><br></div><div>recipes-support?</div></div></div></div>

--047d7b6d908a9e55a004e3e51a98--
