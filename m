Return-Path: <raj.khem@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B4554C80050
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 21:14:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so2183957pxi.28
	for <poky@yoctoproject.org>; Mon, 04 Apr 2011 19:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=9ehYyP1M1YQEFPWHe2OxZENE3rmHjoHfOm9dMM3FRW8=;
	b=uRRz0rZI5Udw4lVAuZZLw1Pvu7E9/k16McvCe0q80nOuH4Tdmd7OSJxCiTAe8WJ2rD
	apUeQb3ANXfWN2T3nTtjk+QnuQ/DyM5qS1i/pJaRP57HQzDmIWfDHkvcPiAvQY7f4oyK
	LKCmQ3Z2sCTVsaq3NX9HHot+S2AwfcCHLFAOQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=lK/Zf933Nyiw3koI9o8EzD8+NM/7HE6flxcyr5W6xCJQzJ5E1xI0Iv3SqMSaR2bY1x
	8KjJl9+GGMEfqRaJVRjxuNvoYsQGShLWoxB1fuNqXuIY6SktDkOAae0CgD0ytbV3AyP2
	gM/MwMLuDW+qmBM3cvlgAPLMYKgZW/V+Npkds=
Received: by 10.143.47.6 with SMTP id z6mr1893088wfj.227.1301969649489;
	Mon, 04 Apr 2011 19:14:09 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id y2sm8332592wfd.8.2011.04.04.19.14.06
	(version=SSLv3 cipher=OTHER); Mon, 04 Apr 2011 19:14:08 -0700 (PDT)
Message-ID: <4D9A7AEC.9020206@gmail.com>
Date: Mon, 04 Apr 2011 19:14:04 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1301496447.24596.100.camel@rex>
In-Reply-To: <1301496447.24596.100.camel@rex>
Subject: Re: lconfig-native is not endian safe
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
X-List-Received-Date: Tue, 05 Apr 2011 02:14:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 3/30/2011 7:47 AM, Richard Purdie wrote:
> Hi,
>
> Poky has had a ldconfig-native recipe in for a while. Back in the times
> our RPATHS were totally broken adding in an ld.so.cache was useful. In
> modern times I'm having trouble working out when this would be useful on
> a standard system as libraries are pretty much always in one of the two
> default search locations.
>
> ldconfig-native is 32/64 bit safe. I've just been looking at PPC and it
> is certainly not endian safe though. The endianess of the target system
> need to match that of the build system for it to work. It wouldn't be
> much work to make it endian safe though although the codebase will
> diverge further from that in (e)glibc though.
>

FWIW it does not work with uclibc as well. So it should be disabled for 
uclibc for all arches

> Short term we need to disable it at least for ppc, longer term what
> should we do?
>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


