Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DB544C800A4;
	Mon,  7 Feb 2011 12:07:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 10:07:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,438,1291622400"; d="scan'208";a="704955854"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.91]) ([10.7.201.91])
	by orsmga001.jf.intel.com with ESMTP; 07 Feb 2011 10:07:11 -0800
Message-ID: <4D503519.8010706@intel.com>
Date: Mon, 07 Feb 2011 10:08:25 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Lightning/1.0b1
	Thunderbird/3.0.11 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <4D4C9919.6060708@intel.com>
	<20110205140712.181EF152161@gemini.denx.de>
In-Reply-To: <20110205140712.181EF152161@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Announcement] Laverne 4.0.1 Release
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
X-List-Received-Date: Mon, 07 Feb 2011 18:07:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Wolfgang,

It is indeed 4.0.1, the commits for 7fa2b1c and d1fd60f were incorrect
(there was some confusion on my part as to the numbering scheme). These
issues were corrected @ 45526f5. Sorry for any confusion.

Regards,

------------------
Elizabeth Flanagan
Yocto Project
Release Engineer


On 02/05/2011 06:07 AM, Wolfgang Denk wrote:
> Dear Elizabeth Flanagan,
> 
> In message <4D4C9919.6060708@intel.com> you wrote:
>>
>> We are pleased to announce the first bug-fix release of Poky Laverne,
>> 4.0.1. This release is available at:
>>
>> http://mirrors.kernel.org/yocto/poky/poky-laverne-4.0.1.tar.bz2
> 
> Is this Laverne 4.0.1 or 4.1 ? The git tag is laverne-4.0.1, but the
> 7fa2b1c commit message says:
> 
>     Laverne 4.1 release: NOTES and CHANGELOG
>     
>     Name: Laverne
>     Version: 4.0.1
>     Built from Revision: fd7a07b3a2153826bedda2ef76b9a33ab2791680
>     Build Date: Jan 26 2011
>     Builder: autobuilder.pokylinux.org
>     
>     Commit of final release notes and changelog for Laverne 4.1
> 
> And in d1fd60f I see this:
> 
>     Setting Yocto rev number to 4.1: poky.conf
> ...
> -DISTRO_NAME = "Yocto Linux (Built by Poky 4.0)"
> +DISTRO_NAME = "Yocto Linux (Built by Poky 4.1)"
> 
> 
> So I'm a bit confused?
> 
> Best regards,
> 
> Wolfgang Denk
> 


