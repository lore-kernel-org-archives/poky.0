Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01EABE013E8
	for <poky@yoctoproject.org>; Thu,  1 Mar 2012 02:01:15 -0800 (PST)
Received: by dadv6 with SMTP id v6so132291dad.28
	for <poky@yoctoproject.org>; Thu, 01 Mar 2012 02:01:15 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.68.232.137 as permitted sender) client-ip=10.68.232.137; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.68.232.137 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.68.232.137])
	by 10.68.232.137 with SMTP id to9mr436487pbc.81.1330596075867 (num_hops
	= 1); Thu, 01 Mar 2012 02:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=PYm6UZiLc98sXvog09mFQ7l82jPwG+fTApArsZQJ2Ns=;
	b=rHj2Chrt5co+iHaQQkcFtp0DAVRYRMmjYWGtqa05rMfUaofZ+g6aSFA14Gf4tWDajg
	3lXccb4/1s9iB3C++WYEdFKgjxk5MVmtEVrnW4RcM2h/3bGgicM8vPRcrpEYsCnUaNut
	Ls+FXqqnCuNphRsc+dLWXbM9g7An9TivQvAnM=
Received: by 10.68.232.137 with SMTP id to9mr367601pbc.81.1330596075683;
	Thu, 01 Mar 2012 02:01:15 -0800 (PST)
Received: from [192.168.1.78] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id f8sm1687079pbe.42.2012.03.01.02.01.13
	(version=SSLv3 cipher=OTHER); Thu, 01 Mar 2012 02:01:14 -0800 (PST)
Message-ID: <4F4F48E7.1080603@gmail.com>
Date: Thu, 01 Mar 2012 02:01:11 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120224 Thunderbird/11.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CABRtByOiXr_f0HYhM15NG6OWDuSMES73UvFfnuLeW11-uQOfQw@mail.gmail.com>
In-Reply-To: <CABRtByOiXr_f0HYhM15NG6OWDuSMES73UvFfnuLeW11-uQOfQw@mail.gmail.com>
Subject: Re: : undefined reference to `sys_errlist@GLIBC_2.12
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
X-List-Received-Date: Thu, 01 Mar 2012 10:01:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/27/2012 10:30 PM, sonu vishwakarma wrote:
> |
> /home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/libldap.so:
> undefined reference to `sys_errlist@GLIBC_2.12'
> |
> /home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/libldap.so:
> undefined reference to `sys_nerr@GLIBC_2.12'
> | collect2: ld returned 1 exit status

one way is using strerror instead in the sources. so figure out where
they are used in libldap.so sources and fix them

secondly what does readelf -s
/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/lib/libc.so.6
| grep sys_errlist  say

another option is that you use eglibc 2.12+

