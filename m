Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C83E24C80050
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 04:05:10 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Apr 2011 02:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,287,1299484800"; d="scan'208";a="412744644"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2011 02:05:09 -0700
Message-ID: <4D96E6C5.5010800@intel.com>
Date: Sat, 02 Apr 2011 17:05:09 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <AANLkTi=KYP7eC05UOX3as0A6xFZE31VQXPZL3ehrwzuh@mail.gmail.com>	<4D96996C.7010601@intel.com>
	<20110402074649.GA27265@jama.jama.net>
In-Reply-To: <20110402074649.GA27265@jama.jama.net>
Subject: Re: Error while trying to pull xcb with X11
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
X-List-Received-Date: Sat, 02 Apr 2011 09:05:11 -0000
Content-Type: text/plain; charset=gb18030; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-4-2 15:46, Martin Jansa wrote:
> On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:
>> on 2011-4-1 17:43, chinmaya hoshing wrote:
>>> Hi,
>>>
>>> I am trying to get X11 with libxcb file so accordingly I changed in the
>>> bb file of libx11,also I have included libxcb and xcb-utils as runtime
>>> dependencies
>>>
>>> Initially it was in libx11 bb file :--
>>> EXTRA_OECONF += "--without-xcb"
>>> I changed it to
>>> EXTRA_OECONF += "--with-xcb"
>>>
>>> Following is the error I get :-
>>> checking for unistd.h... (cached) yes
>>> | checking for sys/param.h... yes
>>> | checking for getpagesize... yes
>>> | checking for working mmap... yes
>>> | checking for nl_langinfo... yes
>>> | checking for X11... no
>>> | configure: error: Package requirements (xproto>= 7.0.13 xextproto
>>> xtrans xcb>= 1.1.92 kbproto inputproto) were not met:
>>> |
>>> | No package 'xcb' found
>>> |
>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>> | installed software in a non-standard prefix.
>>> |
>>> | Alternatively, you may set the environment variables X11_CFLAGS
>>> | and X11_LIBS to avoid the need to call pkg-config.
>>> | See the pkg-config man page for more details.
>>> | FATAL: oe_runconf failed
>>> | ERROR: Task failed: ('function do_configure failed',
>>> '/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.13755')
>>> NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
>>> ERROR: Task 3573
>>> (virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb
>>> <http://libx11_1.3.4.bb>, do_configure) failed with 1
>>> ERROR:
>>> 'virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb
>>> <http://libx11_1.3.4.bb>' failed
>>>
>>> I have libxcb_1.6 version ,also xproto is libxproto_7.0.17
>>>
>>> Please can  you help me to find the solution for it.
>>>
>>> Chinmaya
>>>
>>>
>>
>> I see it is libx11-native do_configure failure, and the xcb-native is
>> missing. that make sense because xcb recipes does not have BBCLASSEXTEND
>> = "native nativesdk", thus xcb is not built for native.
>>
>> I have tried to add BBCLASSEXTEND = "native" in xcb recipe, it turn out
>> requiring more dependent recipes to be built for native, which is a bit
>> way too far and undesirable.
>>
>> so let's try another way, since you only care about the runtime libx11
>> with xcb support, how about the following patches, with which only
>> native disable xcb, and the runtime libx11 will have xcb support.
>
> Hi,
>
> for libx11-1.4.0 and newer --without-xcb is not an option anymore, so
> better to fix it with native xcb sooner than later, for details see
>
> d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/master
> and the rest of xorg/xcb recipes in openembedded :)
>
> Cheers,
>

In this case. your are right, native xcb should also be added. Will 
upgrade it soon. Thanks for the info.

Regards
Ke

