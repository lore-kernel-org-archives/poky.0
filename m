Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCD894C803E4
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 14:58:52 -0500 (CDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1QmAFo-0004T6-6R from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Wed, 27 Jul 2011 12:58:52 -0700
Received: from SVR-ORW-FEM-02.mgc.mentorg.com ([147.34.96.206]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 27 Jul 2011 12:58:51 -0700
Received: from [172.30.80.87] (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.1.289.1;
	Wed, 27 Jul 2011 12:58:51 -0700
Message-ID: <4E306DF5.40908@mentor.com>
Date: Wed, 27 Jul 2011 12:58:45 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4E304A04.5090104@mlbassoc.com>
In-Reply-To: <4E304A04.5090104@mlbassoc.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 27 Jul 2011 19:58:51.0982 (UTC)
	FILETIME=[9B8466E0:01CC4C97]
Subject: Re: Customizing kernels
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
X-List-Received-Date: Wed, 27 Jul 2011 19:58:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 07/27/2011 10:25 AM, Gary Thomas wrote:
> To run a customized kernel configuration, I've been doing this:
>   % bitbake virtual/kernel
>   % bitbake virtual/kernel -c menuconfig
>   % bitbake virtual/kernel -c compile -f
>   % bitbake virtual/kernel
> 
> Is there some way that the kernel recipes (probably kernel.bbclass)
> could mark the compile state as invalid so that the '-c compile -f'
> step is no longer needed (implied)?

What's the reason around the first bitbake?  I know with pstage you
needed to do that for an empty TMPDIR to populate out everything else,
but sstate shouldn't have that weakness.  It should just be:
$ bitbake virtual/kernel -c menuconfig
$ bitbake virtual/kernel

And get populating from sstate correct.

-- 
Tom Rini
Mentor Graphics Corporation

