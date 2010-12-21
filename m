Return-Path: <raj.khem@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61CF44C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 16:23:04 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxm8 with SMTP id 8so2338174yxm.35
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 14:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type;
	bh=hEfqS6irnCmsxErmkRdwOka/nf+uNvoTCcGY3nqIp/4=;
	b=qanj7K1oNHTqAoObcDIMeQK8N7kYGtYjzC7cpfQ2KySfBphsBdtkyax6u3Dw+k1W/L
	HR7mpDQwphk8rpPzNpxX7bHPjDLmOO0dpduCcClwmRXyNzx6rMbI82nJ+xPAZi4fye4n
	H6BnQ5Du3LAzIjQp4KwgaMKy6fCLuWeJZUzXk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=cnAlY9z2uvVvb3RL9ITb8SdUNXsmdVBXTqS6X2ND6bmxi6JD+uKTdW/twsrovNIlT6
	kg6q3Fu5nxGvpv1kQAjqMbu6BLegbp6BqKby+VYMgUMJVJjT2T8pPbWwqdjPhvf6TgjG
	OWbl3o4DbNlj7zcQOQhqFowe21/V2GzaQ7jm8=
Received: by 10.90.72.2 with SMTP id u2mr7731969aga.4.1292970183901; Tue, 21
	Dec 2010 14:23:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Tue, 21 Dec 2010 14:22:40 -0800 (PST)
In-Reply-To: <AANLkTi=Ypr+KkdnumWb9uwAC7trR5RYgAbbFjf9nbfpi@mail.gmail.com>
References: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
	<4D1119EA.9010806@linux.intel.com>
	<AANLkTim9J_92mWgmrRW4_sSXm=AW1wfFwdZcArEbC20a@mail.gmail.com>
	<AANLkTi=Ypr+KkdnumWb9uwAC7trR5RYgAbbFjf9nbfpi@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Dec 2010 14:22:40 -0800
Message-ID: <AANLkTiken51h6GtYZm1HY7kEStV=P1Bes9AkJDx82SDa@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] scripts/send-pull-request: Use git send-mail instead of sendmail
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
X-List-Received-Date: Tue, 21 Dec 2010 22:23:04 -0000
Content-Type: text/plain; charset=UTF-8

> I don't see this as a one vs the other sort of thing. I've been sending
> patches to the lists using Darren's front end, but then using git send-email
> to actually transmit the patches (since I don't have sendmail on all
> my boxes).
>
> So I'd suggest simply making the sending configurable, since clobbering
> one with the other doesn't meet everyone's needs.

yes that would be preferable.

-Khem

