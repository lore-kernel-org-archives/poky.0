Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36271E00547; Tue, 22 Jul 2014 06:25:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E601E00547
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 06:24:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6MDOuiW000087
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Jul 2014 06:24:56 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 22 Jul 2014 06:24:55 -0700
Message-ID: <53CE6626.70304@windriver.com>
Date: Tue, 22 Jul 2014 21:24:54 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
	<8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
	<CAJTo0La57nB9xrTNyo1vhQxea-CuC8di0pifYPVfy_rHc23MEw@mail.gmail.com>
In-Reply-To: <CAJTo0La57nB9xrTNyo1vhQxea-CuC8di0pifYPVfy_rHc23MEw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] local.conf.sample: qemu-native DEPENDS libxext-naive
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
X-List-Received-Date: Tue, 22 Jul 2014 13:25:02 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/22/2014 09:02 PM, Burton, Ross wrote:
> On 22 July 2014 11:31, Robert Yang <liezhi.yang@windriver.com> wrote:
>> sysroots/x86_64-linux/usr/lib/libXext.so.6: undefined reference to `_XEatDataWords'
>
> Context: that function was added to libX11 1.6, and numerous other
> client libraries started using it to avoid security problems.  Older
> hosts won't have it, but they also won't have libraries that are using
> it.  So as far as I can tell the only way of replicating this is to
> have a sysroot which contains libxext but not libx11.  Considering
> libxext depends on libx11 that's not very likely.

We have also seen this on Yocto's AB.

>
> What's your actual replication method?

On Ubuntu 12.04 x86_64:

The link route is:

qemu-native's do_configure sdl checking:
/usr/lib/x86_64-linux-gnu/libSDL.so --> 
<sysroots>/x86_64-linux/usr/lib/libXext.so.6 --> /usr/lib/x86_64-linux-gnu/libX11.so

So it is:
host sdl -> sysroot libXext.so.6 -> host X11.so

qemu-native doesn't depend on libxext-native, so the error would happen
if the libx11-native is being rebuilding and the host's libX11.so doesn't
have _XEatDataWords.

Manually reproduce on Ubuntu 12.04 x86_64:

$ bitbake qemu-native libx11-native libxext-native
$ bitbake qemu-native libx11-native -ccleansstate && bitbake qemu-native

Then errors:

| ERROR: User requested feature sdl
|        configure was not able to find it.
|        Install SDL devel


// Robert

>
> Ross
>
>

