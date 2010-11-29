Return-Path: <kergoth@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F4AB4C80B6A
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 23:53:51 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyf28 with SMTP id 28so4396009wyf.35
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 21:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type;
	bh=cbwxPA4/HxAKvQYSy6wLlUEF2dOvd3hfvSs+i1WGiSo=;
	b=yAsz1UxDEBLBgCyla7JfBj/6Iw8rTr0t/rkaHeykN3J86ukxhBnn23TZbRGg6ZLoBQ
	mCV72c2/rJEruC4fb8xE+gnTj9XN5C77TOEHhwMSzPtyzNgDh+gVD5RNwdDWMia1j1Z/
	TpfxEUSXebqiTItz/H1aMAokqE+ToHzm5MYT4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	b=UyZqKtVN6y085R9PoNOUP5HKWvHNjWuQu8IGazcN89rW6ZjIgwociTYxD2ZH2Mht3H
	cJarU/6WpNR8wTT1CIhQ+4aOgtX2JIshf7TUHqjMJcSQYXpmH/MjkcHKVxUaPq/HFJR6
	RMBCK39OwGRtCeTdqGfPzJjsCpyrVykEAsQZk=
Received: by 10.216.22.70 with SMTP id s48mr2692102wes.27.1291010030580; Sun,
	28 Nov 2010 21:53:50 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Sun, 28 Nov 2010 21:53:30 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 28 Nov 2010 22:53:30 -0700
X-Google-Sender-Auth: C8atlqNdehrD0iWmRZEe8rDUEuY
Message-ID: <AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Mon, 29 Nov 2010 05:53:51 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 28, 2010 at 10:26 PM, Tian, Kevin <kevin.tian@intel.com> wrote:
> This also confuses me a bit. When virtclass-native is expanded, EXTRA_OECONF_append
> is simply a variable. In that case the expanded value should override the 1st assignment
> of EXTRA_OECONF_append, and then we should get:
>
> EXTRA_OECONF_append = " --without-gnutls "
>
> and then that's what we expect.
>
> I guess I may still overlook something here, and really appreciate your explanation
> on the whole flow which is helpful. :-)

No, EXTRA_OECONF_append is never a variable.  _append/_prepend are
operations, not part of the name.  The value gets set aside in a list
of appends for that variable.  One _append cannot override/replace
another on the same variable, its always cumulative.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

