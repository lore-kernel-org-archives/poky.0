Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37B40E0175C
	for <poky@yoctoproject.org>; Wed, 23 Oct 2013 16:20:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9NNJxif008217
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 23 Oct 2013 16:19:59 -0700 (PDT)
Received: from [128.224.20.199] (128.224.20.199) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Wed, 23 Oct 2013 16:19:59 -0700
Message-ID: <5268599D.4090801@windriver.com>
Date: Wed, 23 Oct 2013 19:19:57 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Colin Walters <walters@verbum.org>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
References: <1382568000.6691.84.camel@localhost>	<CADkTA4NEoi90rFy7mDTdzaJx2twGVD5=Q=o8mc=tSH4nmATNtA@mail.gmail.com>
	<1382570275.6691.87.camel@localhost>
In-Reply-To: <1382570275.6691.87.camel@localhost>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Using linux-yocto_3.10 with dylan
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Oct 2013 23:20:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-23 07:17 PM, Colin Walters wrote:
> On Wed, 2013-10-23 at 19:06 -0400, Bruce Ashfield wrote:
>
>> It's the kernel tools. You need to bring back the matched tools -> the new 3.10
>> kernel tree, since they no longer use guilt to manage patches on branches, but
>> instead use pure git. The guilt tools can't detect that the patches are in fact
>> already applied to the tree, and try to push changes again, which lead to your
>> error.
>
> Ah hah!  Yep, after a quick copy of kern-tools.bb from oe-core master
> and a "bitbake kern-tools-native", looks like "bitbake linux-yocto" is
> past do_patch and onto do_compile now.  I should have posted a few hours
> earlier before I was knee deep in debugging prints and generated shell
> scripts...

:( sorry about that. The tools are always backwards compatible, but the 
newest
kernel always needs the newest tools.

I have a solution to this, and can finally bring it into play in yocto
1.6, where the copy of the tools in the kernel tree is actively used,
which means a tree always carries the tools that it needs .. and no more
issues like you ran into.

Bruce

>
> Thank you!
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


