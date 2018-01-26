Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 703ACE00E4B; Fri, 26 Jan 2018 08:44:03 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5644E00E43
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 08:44:02 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jan 2018 08:44:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,417,1511856000"; d="scan'208";a="13221638"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 26 Jan 2018 08:44:01 -0800
To: "Mardegan, Alberto" <AMardegan@luxoft.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
	<8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
	<1516880080.24502.181.camel@linuxfoundation.org>
	<32335577-b643-1b0f-49d0-870b7bb2bf8a@luxoft.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <fb333d5e-0c43-5aab-39ed-f77da37a1dec@linux.intel.com>
Date: Fri, 26 Jan 2018 18:38:13 +0200
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
X-List-Received-Date: Fri, 26 Jan 2018 16:44:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/26/2018 12:59 PM, Mardegan, Alberto wrote:
> Hi!
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

Note that at the moment we explicitly disable g-i for nativesdk in g-i 
class:

EXTRA_OECONF_prepend_class-nativesdk = "--disable-introspection "

So you're effectively working on a new feature, and it's not surprising 
there are weird errors :) Gobject-introspection is a notoriously tricky, 
delicate thing that was never designed for cross-compilation or 
sysroots, and you only need to look at the g-i recipe to see how much 
effort went into making it work right when building for the target.

I did reproduce the

"| ./g-ir-compiler: line 117: 
/home/mardy/pelux/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-gobject-introspection/1.50.0-r0/build/.libs/lt-g-ir-compiler: 
No such file or directory"

stuff, so no need to publish anything :). I can't promise I'll find time 
to look into it very soon though - this is a new feature development, 
not a bug.


Alex

