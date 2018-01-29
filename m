Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC5CDE00E15; Sun, 28 Jan 2018 23:42:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EAC4E00971
	for <poky@yoctoproject.org>; Sun, 28 Jan 2018 23:42:52 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Jan 2018 23:42:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,429,1511856000"; d="scan'208";a="13719373"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 28 Jan 2018 23:42:51 -0800
To: "Mardegan, Alberto" <AMardegan@luxoft.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
	<8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
	<1516880080.24502.181.camel@linuxfoundation.org>
	<32335577-b643-1b0f-49d0-870b7bb2bf8a@luxoft.com>
	<fb333d5e-0c43-5aab-39ed-f77da37a1dec@linux.intel.com>
	<8fa2aaf1-8287-0d59-641a-4f14852fb921@luxoft.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <c2a667a4-c171-c586-38f1-bf0d2893c004@linux.intel.com>
Date: Mon, 29 Jan 2018 09:37:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <8fa2aaf1-8287-0d59-641a-4f14852fb921@luxoft.com>
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
X-List-Received-Date: Mon, 29 Jan 2018 07:42:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/29/2018 08:44 AM, Mardegan, Alberto wrote:
>> I did reproduce the
>>
>> "| ./g-ir-compiler: line 117:
>> /home/mardy/pelux/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-gobject-introspection/1.50.0-r0/build/.libs/lt-g-ir-compiler:
>> No such file or directory"
>>
>> stuff, so no need to publish anything :). I can't promise I'll find time
>> to look into it very soon though - this is a new feature development,
>> not a bug.
> 
> Thanks Alex! Indeed this looks tricky... Anyway, according to the
> documentation it would looks like the GI typelib files should be
> architecture independent:
>    https://developer.gnome.org/gi/unstable/gi-GITypelib.html
> So I guess the problem here is that g-ir-compiler is being built for the
> target architecture, while it's something that can be built natively?

Typelib files are essentially a memory dump of internal g-i C structures 
to disk. They might be the same on every architecture, or they might not 
(endiannness, alignment). I'm not trusting that they are. So to produce 
them for target we build a target g-ir-compiler and run it under qemu.

In this case, the produced typelib files are not intended for the 
target, they are intended for the nativesdk package. The error is 
probably some simple mismatch between the binary name and what the build 
configuration expects to run. I have a hunch that's not the only issue 
to sort though :)

Alex

