Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id D65524C800A3
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 23:48:07 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so190358pwi.35
	for <poky@yoctoproject.org>; Wed, 02 Mar 2011 21:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=e/sJOcbghNXog3WYx3Ry/ItzK0fIUkQN1gJ5+2x+R6U=;
	b=JaManklV4uDnPs2l+lnITqBoW8tpnunY/whz3KHUd5pqBAjYrwcHYFJFRfBZAOOGp7
	AqiotnOKhUItVjVCdiheWGb/cKtSihlxBfm9OEkVrtBPPePife+kxZnRMIinyYh8Atsl
	0U7bxAgYhqvR4M6QtH0/v+mriDizKSqy9nRjQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=pdUDPxlHakndNMB6UFohhLE8NCQoyrSou+HBqjvyhfAlFn5DXujKgYs/E4eIWXswGD
	s7jXgWR1Xpwviim1jFvdC4wPzZ+hP2vn6FfE4Jnp+imD8UrZ3nr2l9uFGJe/ftP5pCr5
	R87EF05SIPoyiVOepKAvI5LBCqz50Av2tVRL4=
Received: by 10.142.238.19 with SMTP id l19mr533636wfh.316.1299131278187;
	Wed, 02 Mar 2011 21:47:58 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id p40sm951318wfc.17.2011.03.02.21.47.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 Mar 2011 21:47:56 -0800 (PST)
Date: Wed, 2 Mar 2011 21:47:49 -0800
From: Khem Raj <raj.khem@gmail.com>
To: kubera samrat <kubera.samrat@gmail.com>
Message-ID: <20110303054749.GA3081@sakrah.homelinux.org>
Mail-Followup-To: kubera samrat <kubera.samrat@gmail.com>,
	"Cui, Dexuan" <dexuan.cui@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB6866D365FBA@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=YH3OH89E8viucBekQcSxvM0ZAyNcCnfFottwB@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <AANLkTi=YH3OH89E8viucBekQcSxvM0ZAyNcCnfFottwB@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Reg:problem while Adding libgcc_s
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
X-List-Received-Date: Thu, 03 Mar 2011 05:48:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (03/03/11 11:05), kubera samrat wrote:
> Hi Dexuan,
>                   I have pulled in gcc into poky(using
> meta/recipes-devtools/gcc/libgcc_4.5.1.bb). But I couldn't find
> libgcc_s.so in target image. Do I have to change any configure options
> to get gcc_s ?
> or else suggest me approproate solution

by pulling into poky what exactly do you mean ?
target is populated with packages that appear in depends of
image you are building. So if you build a package that may
not appear in your image by default unless its pulled in
through some indirect/direct dependency on image.

-- 
-Khem

