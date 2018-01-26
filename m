Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01037E00E02; Fri, 26 Jan 2018 08:19:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD7F2E00D1C
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 08:19:22 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jan 2018 08:19:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,417,1511856000"; d="scan'208";a="13216952"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 26 Jan 2018 08:19:13 -0800
To: "Mardegan, Alberto" <AMardegan@luxoft.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
	<8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
	<1516880080.24502.181.camel@linuxfoundation.org>
	<32335577-b643-1b0f-49d0-870b7bb2bf8a@luxoft.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <d4779b2f-a161-16b0-66f5-91ead9407702@linux.intel.com>
Date: Fri, 26 Jan 2018 18:13:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <32335577-b643-1b0f-49d0-870b7bb2bf8a@luxoft.com>
Subject: Re: Error building python-gobject for nativeSDK
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
X-List-Received-Date: Fri, 26 Jan 2018 16:19:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/26/2018 12:59 PM, Mardegan, Alberto wrote:
>    I made a little progress, but now I'm stuck with this error while
> building python-gobject for nativesdk:
> 
>    https://paste.ubuntu.com/26463423/
> 
> In short, the gobject-introspection-1.0 pkg-config file is not found. I
> see that python-gobjecty inherits from the gobject-introspection class,
> which has these two lines:
> 
>   DEPENDS_append_class-native = " gobject-introspection-native"
>   DEPENDS_append_class-nativesdk = " gobject-introspection-native"
> 
> Assuming that the second one was a typo, I changed the dependency to
> point at "nativesdk-gobject-introspection", and added "nativesdk" to
> BBCLASS_EXTENDS in the gobject-introspection recipe.
> This helped to get a bit further, and now I get this:
> 
>    https://paste.ubuntu.com/26463458/
> 
> ( /usr/bin/env:
> ‘/home/mardy/pelux/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-gobject-introspection/1.50.0-r0/recipe’:
> No such file or directory )
> 
> which looks a bit weird... Any hints on what could be causing this?

To reproduce this I'd have to enable nativesdk in a whole bunch of 
recipes and maybe do other fixes. It's better if you share the point 
where you're stuck.

Can you please:
1) set up plain poky (no pelux layers :) with all the modifications you 
made to oe-core, preferably *not* squashed together into a single commit;
2) publish your changes so I can pull them in?


Alex

