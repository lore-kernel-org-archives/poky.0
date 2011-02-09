Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDBB14C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 17:02:21 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>)
	id 1PnJ3B-0007mI-Ge; Thu, 10 Feb 2011 02:02:17 +0300
Message-ID: <4D531CFA.4040202@emcraft.com>
Date: Thu, 10 Feb 2011 02:02:18 +0300
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; ru;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>	<1297196798-23779-2-git-send-email-yanok@emcraft.com>
	<4D52D11C.50904@linux.intel.com> <4D52D1F4.5060606@mlbassoc.com>
In-Reply-To: <4D52D1F4.5060606@mlbassoc.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 2/3] u-boot: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Wed, 09 Feb 2011 23:02:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Gary,

09.02.2011 20:42, Gary Thomas wrote:
>> It seems to me the LICENSE and LIC_FILES_CHKSUM should be defined in
>> the same recipe as the SRC_URI. In this case, u-boot_git.bb. Is there
>> a motivating reason to add it to .inc? If
>> so, we should also remove it from u-boot_git.bb to avoid unnecessary
>> duplication which leads to confusion down the road.
>>
>
> I agree - what if you have multiple .bb files sharing a single
> .inc and the license and/or license data are different? It
> seems to me that this data should live where the actual sources
> are being introduced, e.g. the .bb file.

I think that the main license files is going to be the same for all 
forks (well, at least for GPLed projects). And if the specific recipe 
adds some code with different license we can add LIC_FILES_CHKSUM 
entries in this specific recipe, can't we?

Regards, Ilya.

