Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D93534C80A5B
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 16:27:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2011 14:27:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,235,1301900400"; d="scan'208";a="735229227"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2011 14:27:27 -0700
Message-ID: <4DACACBE.1060903@intel.com>
Date: Mon, 18 Apr 2011 14:27:26 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Colin Walters <walters@verbum.org>
References: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
In-Reply-To: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Override do_compile to specify V=1 if	project uses AM_V_GEN
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
X-List-Received-Date: Mon, 18 Apr 2011 21:27:28 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/23/2011 03:30 PM, Colin Walters wrote:
>      Non-verbose logs are really annoying when trying to debug a build
>      failure.  A lot of projects are copying in the flag to use
>      AM_SILENT_RULES which automake gained recently.  We need to undo
>      this.
>
>      Implement this by overriding do_compile in autotools to look for
>      its signature, and specify V=1 to make if we find it.
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Updated version is now merged into oe-core and master

Thanks
	Sau!


