Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 808364C800B7
	for <poky@yoctoproject.org>; Sun, 27 Mar 2011 21:43:38 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2S2haDV014933
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 27 Mar 2011 19:43:36 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 27 Mar 2011 19:43:36 -0700
Message-ID: <4D8FF5E4.70202@windriver.com>
Date: Mon, 28 Mar 2011 10:43:48 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Colin Walters <walters@verbum.org>
References: <cover.1301035479.git.kai.kang@windriver.com>
	<AANLkTinrzPtDWUoGfVJZBmtSiSHBkM8WuJECkuJf2Q0B@mail.gmail.com>
In-Reply-To: <AANLkTinrzPtDWUoGfVJZBmtSiSHBkM8WuJECkuJf2Q0B@mail.gmail.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] LSB: add nspr and nss to pass LSB library check
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
X-List-Received-Date: Mon, 28 Mar 2011 02:43:39 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年03月25日 20:50, Colin Walters wrote:
> On Fri, Mar 25, 2011 at 2:52 AM, Kang Kai<kai.kang@windriver.com>  wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> add nss and nspr to provide libnss3.so, libssl3.so and libnspr4.so
>> to pass LSB library check.
>> Both are imported from oe, rev 6fe7cef27069415f2eba36bc640cf59013d4979b
Hi Colin,

Thanks for your check.

> I'm new to Yocto but have been around in the general purpose distro
> land for a while, and there is one thing that has always driven me
> nuts: patches without any comment.
> This may not be your fault, but:
>
> Take for example b/meta/recipes-extended/mozilla/nspr-4.8.7/unbreak-build.diff
>
> *why*?  Who wrote the patch?  What was broken?  Has the patch ever
> been sent upstream?
All the bb files and patches are from OpenEmbedded git repository:
git://git.openembedded.net/openembedded

I did not quit understand what the unbreak-build.diff to fix what was 
broken, but when I checked the new version of nspr, found the patch is 
not applied, so I keeped it.

> Personally I tend to hand-write something similar to "git
> format-patch" if I'm not actually creating a patch against upstream
> git (which I try hard to do).
>
> meta/recipes-extended/mozilla/nspr-4.8.7/30_config_64bits.dpatch
>
> is one that clearly should be upstream, it's just way saner.
> Planning to use nspr in my tree, so thought I'd take a look =)
> Otherwise looks pretty clean to me.


