Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01C844C8026D
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 14:59:36 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3RJxY0H012300
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Apr 2011 12:59:35 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 27 Apr 2011 12:59:34 -0700
Message-ID: <4DB875A5.30501@windriver.com>
Date: Wed, 27 Apr 2011 15:59:33 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <1303933921-10310-1-git-send-email-dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] n450: add 2.6.37 kernel recipe and SMP support
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
X-List-Received-Date: Wed, 27 Apr 2011 19:59:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-04-27 03:51 PM, Darren Hart wrote:
> The atom-pc BSP which the n450 is based on was originally intended for single
> CPU. The n450 is a single-core hyperthreaded CPU, so CONFIG_SMP and
> CONFIG_SCHED_SMT are required to access the second hardware thread. These
> patches add the newly created cfg/smp.scc config fragment to the recipe.
>
> The current n450 BSP uses linux-yocto-stable (2.6.34), which was an oversight.
> These patches add support for the linux-yocto (2.6.37) recipe and separately
> enable that as the default. I have tested the linux-yocto kernel and confirmed
> it boots, has functional networking, and can suspend and resume.
>
> After some discussion with Tom, it seems that there is adequate testing planned
> for the point release to allow for moving to the linux-yocto recipe. Note that
> fixing bug 1010 makes significant changes to whichever kernel we choose

Was this supposed to read "does not make significant changes" ? Looks
pretty minor to me (outside of jumping kernels :).

> to use. Before I commit to meta-intel however, I would like the input of the QA
> team.
>
> How much testing was planned for the n450 originally? How much additional
> testing would be required if we make the new kernel the default?

For what its worth our other x86 testing should have largely covered
this. If we can't count on the transitive value of our testing using
the common fragments/drivers/arch, then we don't have much to count on.

I see little risk in this myself, and would support the default changing
to linux-yocto in 1.0.1.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

>
> Thanks,
>
> Darren Hart
>


