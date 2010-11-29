Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91A2F4C810AC
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 16:40:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2010 14:40:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="682133341"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2010 14:40:02 -0800
Message-ID: <4CF42BBD.6040006@intel.com>
Date: Mon, 29 Nov 2010 14:39:57 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1290345671.git.ke.yu@intel.com>
In-Reply-To: <cover.1290345671.git.ke.yu@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/3] upgrade cairo, pango, imake
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
X-List-Received-Date: Mon, 29 Nov 2010 22:40:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/2010 05:21 AM, Yu Ke wrote:
> Cairo upgradtion patch has been hold in last patch push due to build failure mentioned in bug 540. This issue has been root caused as package rename, and has been fixed this time. so push it for review again.
>
> Note: cairo 1.10.0 depends on pixman 0.20.0, which is already in contrib/distro/master branch, but not in poky/master yet. so please build this commit upon contrib/distro/master, not poky/master.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/upgrade-11-21
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-11-21
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (3):
>    cairo: upgrade from 1.8.10 to 1.10.0
>    pango: upgrade from 1.28.0 to 1.28.3
>    imake: upgrade from 1.0.2 to 1.0.4
>
>   .../distro/include/preferred-xorg-versions.inc     |    2 +-
>   .../cairo/cairo-1.8.10/hardcoded_libtool.patch     |   17 ---------
>   meta/recipes-graphics/cairo/cairo_1.10.0.bb        |   36 ++++++++++++++++++++
>   meta/recipes-graphics/cairo/cairo_1.8.10.bb        |    8 ----
>   .../{pango-1.28.0 =>  pango-1.28.3}/no-tests.patch  |    0
>   meta/recipes-graphics/pango/pango.inc              |    1 +
>   .../pango/{pango_1.28.0.bb =>  pango_1.28.3.bb}     |    0
>   .../xorg-util/{imake_1.0.2.bb =>  imake_1.0.4.bb}   |    4 ++-
>   8 files changed, 41 insertions(+), 27 deletions(-)
>   delete mode 100644 meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
>   create mode 100644 meta/recipes-graphics/cairo/cairo_1.10.0.bb
>   delete mode 100644 meta/recipes-graphics/cairo/cairo_1.8.10.bb
>   rename meta/recipes-graphics/pango/{pango-1.28.0 =>  pango-1.28.3}/no-tests.patch (100%)
>   rename meta/recipes-graphics/pango/{pango_1.28.0.bb =>  pango_1.28.3.bb} (100%)
>   rename meta/recipes-graphics/xorg-util/{imake_1.0.2.bb =>  imake_1.0.4.bb} (64%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into Master

Thanks
    Sau!

