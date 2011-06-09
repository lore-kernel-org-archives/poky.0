Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C6E6D4C800A4
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 17:55:03 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so1344716pzk.35
	for <poky@yoctoproject.org>; Thu, 09 Jun 2011 15:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=b7HqU5N7e9eLrafGaYNv24gxbs29SBq+Ja2tFfsJjF0=;
	b=g2lhDPh9SlttZGWwPMMzWMpkifpyLQg8UBTndhADuMXdy9ww45iMAm1E0D09Spfg3w
	tAze71dt27I5wMpnA5yq+2jZoOJkpAtH3F+smJlP/1Fw/805EPjjEX8xfQGpKYZKQaAs
	CZpv7ErFquHWv+a88a6uU1+bRt7Mr2xhR4cGw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=HcRiHK2+ZCBVOpvB+EZJanMxtfbSXKh2ILZN/em8Y100DNjsq1KtBMN9tLeeBTI1ZN
	AqXkLI09X0KKw5idFm1iU1dH9z08Z7dOktqHrrRSDBD8UOgcpWyEIbaRkymwWU+Pvg6A
	qWqI+PjoKlgUeh9xY2fFr/NmEWR148ZCWOA0E=
Received: by 10.143.92.21 with SMTP id u21mr280769wfl.399.1307660103174;
	Thu, 09 Jun 2011 15:55:03 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id z32sm162855wfl.23.2011.06.09.15.55.01
	(version=SSLv3 cipher=OTHER); Thu, 09 Jun 2011 15:55:02 -0700 (PDT)
Message-ID: <4DF14F43.4020904@gmail.com>
Date: Thu, 09 Jun 2011 15:54:59 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4DF0F9E7.6020806@mlbassoc.com>
In-Reply-To: <4DF0F9E7.6020806@mlbassoc.com>
Subject: Re: GCC-4.6.0 not ready for prime time?
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
X-List-Received-Date: Thu, 09 Jun 2011 22:55:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/09/2011 09:50 AM, Gary Thomas wrote:
> I'm not convinced switching to GCC-4.6.0 is a good choice at this time.

at some point we have to and we have time to harden it until next 
release. Compiler upgrades are a bit of work

> Not only did I have problems getting a working kernel, there are a
> lot of applications that don't build with this new compiler. Some
> of those that do, don't work :-(
>
> I have a local recipe to build Mozilla FireFox which has been working
> fine, but with GCC-4.6.0, it no longer runs correctly. Given the magnitude
> of FireFox, it may take me a while to figure out why.

yes there are always some issues that need resolving. If you are able to 
narrow down the problem a bit it would be easier to pin point the problem.

>
> Even some core programs no longer build, e.g. web-webkit (I was looking
> for an alternate web browser). This was probably not obvious as it is
> no longer being built by your test images (it used to be included in
> core-image-sato but was dropped by
> 9d7aa1090c407ac0da6154c481f1c787fd7efbfc)
>
> I guess I'll be sticking with GCC-4.5.x for now
>

For something that you would like to release soon it may be a sane choice

-Khem

