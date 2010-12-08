Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD6634C811DF
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 12:06:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 10:06:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="685193473"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2010 10:06:44 -0800
Message-ID: <4CFFC929.50501@linux.intel.com>
Date: Wed, 08 Dec 2010 10:06:33 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <201011301505.42532.paul.eggleton@linux.intel.com>
In-Reply-To: <201011301505.42532.paul.eggleton@linux.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Warning - don't use eCryptFS
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
X-List-Received-Date: Wed, 08 Dec 2010 18:06:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/30/2010 07:05 AM, Paul Eggleton wrote:
> Hi all,
>
> FYI I recently had some fairly serious problems with poky and the
> "encrypted home directory" function in Ubuntu, which uses eCryptFS.
> Problems I experienced included:

I've also experienced git tree corruption when using eCryptFS for my
home directory. It's definitely on my "avoid like the plague" list. I
had no such issues while using the /etc/crypttab mechanism (I forget
what the right name is for that). But Ubuntu broke that with Upstart (at
least for me).

-- 
Darren Hart
Yocto Linux Kernel

