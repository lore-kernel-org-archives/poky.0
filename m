Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FC0DE00D05; Tue, 16 Aug 2016 20:06:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E124EE00B52
	for <poky@yoctoproject.org>; Tue, 16 Aug 2016 20:05:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u7H35tTR009594
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 16 Aug 2016 20:05:55 -0700
Received: from [128.224.162.240] (128.224.162.240) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 16 Aug 2016 20:05:54 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <cover.1470983575.git.liezhi.yang@windriver.com>
	<6d7b5811de3bebb2b165ebe6f86fd34ebce35a8b.1470983575.git.liezhi.yang@windriver.com>
	<CAJTo0LaW1XAvZSk36v-LWyqbNmqTACkB5q4tHZDQJY0o-DKQaw@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <f6e21bb1-dce3-0ef1-16c1-26fd3c19f229@windriver.com>
Date: Wed, 17 Aug 2016 11:05:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaW1XAvZSk36v-LWyqbNmqTACkB5q4tHZDQJY0o-DKQaw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] maintainers.inc: update maintainers for Dengke
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
X-List-Received-Date: Wed, 17 Aug 2016 03:06:03 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

Thanks, these comments make sense, V2 is coming.

// Robert

On 08/12/2016 06:00 PM, Burton, Ross wrote:
> On 12 August 2016 at 07:33, Robert Yang <liezhi.yang@windriver.com
> <mailto:liezhi.yang@windriver.com>> wrote:
>
>     -RECIPE_MAINTAINER_pn-encodings = "Jussi Kukkonen <jussi.kukkonen@intel.com
>     <mailto:jussi.kukkonen@intel.com>>"
>     +RECIPE_MAINTAINER_pn-encodings =  "Dengke Du <dengke.du@windriver.com
>     <mailto:dengke.du@windriver.com>>"
>
>
> This is part of the X font subsystem, so I think we should keep this with Jussi
> so that X is under one owner.
>
>
>     -RECIPE_MAINTAINER_pn-gettext = "Wenzong Fan <wenzong.fan@windriver.com
>     <mailto:wenzong.fan@windriver.com>>"
>     +RECIPE_MAINTAINER_pn-gettext = "Robert Yang <liezhi.yang@windriver.com
>     <mailto:liezhi.yang@windriver.com>>"
>      RECIPE_MAINTAINER_pn-gettext-minimal-native = "Hongxu Jia
>     <hongxu.jia@windriver.com <mailto:hongxu.jia@windriver.com>>"
>
>
> Can the same owner have gettext and gettext-minimal-native?
>
>
>     -RECIPE_MAINTAINER_pn-gpgme = "Jussi Kukkonen <jussi.kukkonen@intel.com
>     <mailto:jussi.kukkonen@intel.com>>"
>     +RECIPE_MAINTAINER_pn-gpgme =  "Dengke Du <dengke.du@windriver.com
>     <mailto:dengke.du@windriver.com>>"
>
>     -RECIPE_MAINTAINER_pn-libgpg-error = "Jussi Kukkonen
>     <jussi.kukkonen@intel.com <mailto:jussi.kukkonen@intel.com>>"
>     +RECIPE_MAINTAINER_pn-libgpg-error =  "Dengke Du <dengke.du@windriver.com
>     <mailto:dengke.du@windriver.com>>"
>
>
> Probably makes sense to keep these with the same maintainer as gnupg (currently
> Hongxu).
>
>
>     -RECIPE_MAINTAINER_pn-grub = "Jussi Kukkonen <jussi.kukkonen@intel.com
>     <mailto:jussi.kukkonen@intel.com>>"
>     +RECIPE_MAINTAINER_pn-grub =  "Dengke Du <dengke.du@windriver.com
>     <mailto:dengke.du@windriver.com>>"
>      RECIPE_MAINTAINER_pn-grub-efi = "Alexander Kanavin
>     <alexander.kanavin@intel.com <mailto:alexander.kanavin@intel.com>>"
>
>
> Should keep these together.
>
>
>     -RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com
>     <mailto:kai.kang@windriver.com>>"
>     +RECIPE_MAINTAINER_pn-libx11-diet = "Robert Yang <liezhi.yang@windriver.com
>     <mailto:liezhi.yang@windriver.com>>"
>
>
> This should be Jussi's along with the rest of X.
>
> Ross

