Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6E8F4C80BCF
	for <poky@yoctoproject.org>; Wed, 10 Nov 2010 22:47:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Nov 2010 20:47:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,181,1288594800"; d="scan'208";a="572401824"
Received: from unknown (HELO [10.255.13.21]) ([10.255.13.21])
	by orsmga002.jf.intel.com with ESMTP; 10 Nov 2010 20:47:49 -0800
Message-ID: <4CDB7574.9090808@linux.intel.com>
Date: Wed, 10 Nov 2010 20:47:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A301B22C1@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A301B22C1@shsmsx501.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Joshua Lock <josh@linux.intel.com>
Subject: Re: [PULL] Add sanity test cases for scp/shutdown
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
X-List-Received-Date: Thu, 11 Nov 2010 04:47:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2010 07:58 PM, Xu, Jiajun wrote:

Hi Jiajun,

The *** BLURB HERE *** token is meant to be replaced with a description 
of what the following patches address. Without the blurb (and without 
the patch itself) there is very little information in this email about 
what is being changed.

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jxu49/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master
>
> Thanks,
>      Jiajun Xu<jiajun.xu@intel.com>
> ---
>
> Jiajun Xu (1):
>    imagetest-qemu: Add sanity test cases for scp/shutdown in target

This patch should have followed as a response to this cover letter, but 
I haven't seen it arrive in my inbox. Did you send the request using the 
send-pull-request.sh script? If not, please do in the future, as having 
the patches hit the list makes it much easier for others to review - and 
more reviews means better code.

Looking at the diffstat below, my first thought is that this should 
probably be at least 2 patches, possibly more. At least one patch per test.

And thanks for being the first to use the new create-pull-request.sh 
besides me! ;-)

--
Darren

>
>   meta/classes/imagetest-qemu.bbclass                |    2 +-
>   scripts/qemuimage-testlib                          |    4 +-
>   scripts/qemuimage-tests/sanity/boot                |    2 +-
>   scripts/qemuimage-tests/sanity/dmesg               |    2 +-
>   scripts/qemuimage-tests/sanity/scp                 |   71 ++++++++++++++++++++
>   scripts/qemuimage-tests/sanity/shutdown            |   70 +++++++++++++++++++
>   scripts/qemuimage-tests/sanity/ssh                 |    2 +-
>   .../scenario/qemuarm/poky-image-sato               |    2 +
>   .../scenario/qemuarm/poky-image-sdk                |    2 +
>   .../scenario/qemumips/poky-image-sato              |    2 +
>   .../scenario/qemumips/poky-image-sdk               |    2 +
>   .../scenario/qemuppc/poky-image-sato               |    2 +
>   .../scenario/qemuppc/poky-image-sdk                |    2 +
>   .../scenario/qemux86-64/poky-image-minimal         |    1 +
>   .../scenario/qemux86-64/poky-image-sato            |    5 ++
>   .../scenario/qemux86-64/poky-image-sdk             |    5 ++
>   .../scenario/qemux86/poky-image-sato               |    2 +
>   .../scenario/qemux86/poky-image-sdk                |    2 +
>   18 files changed, 175 insertions(+), 5 deletions(-)
>   create mode 100755 scripts/qemuimage-tests/sanity/scp
>   create mode 100755 scripts/qemuimage-tests/sanity/shutdown
>   create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-minimal
>   create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sato
>   create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-sdk
>
> Best Regards,
> Jiajun
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Darren Hart
Embedded Linux Kernel

