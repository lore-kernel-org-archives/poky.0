Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20B72E00782; Fri, 16 Jan 2015 06:03:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC0AEE006AF
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 06:02:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jan 2015 06:02:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,411,1418112000"; d="scan'208";a="638337356"
Received: from ogiles1-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.17.108])
	by orsmga001.jf.intel.com with ESMTP; 16 Jan 2015 06:02:43 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: matti kaasinen <matti.kaasinen@gmail.com>
Date: Fri, 16 Jan 2015 14:02:41 +0000
Message-ID: <1681923.muHbWNAgYf@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CADnUhn0qnExJ7NsUtD6+M7p14u3prcVU8UL5g_BthaBcfwFbNg@mail.gmail.com>
References: <CADnUhn0qnExJ7NsUtD6+M7p14u3prcVU8UL5g_BthaBcfwFbNg@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: apache2-native_2.4.6.bb build crash
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
X-List-Received-Date: Fri, 16 Jan 2015 14:03:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Matti,

On Friday 16 January 2015 11:09:45 matti kaasinen wrote:
> I try to build core-image-minimal for poky/dizzy. Run crashes when excuting
> 
> apache2-native_2.4.6.bb. Error message tells that:
> | checking for pcre-config...
> 
> /TMPDIR/sysroots/x86_64-linux/usr/bin/pcre-config
> 
> | configure: error: Did not find pcre-config script at
> 
> /TMPDIR/sysroots/x86_64-linux/usr/bin/pcre-config
> 
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> 
> /TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_configure.1698
> 5)

I presume you mean you're building core-image-minimal with packages added to 
it, because core-image-minimal by itself would never trigger a build of 
apache2-native.

Regarding the failure itself, I suspect that there is a missing dependency on 
libpcre-native in the apache2-native recipe.

> I copied:
> /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/libpcre/8.35-r0/build/pcre-c
> onfig
> 
> to
> /TMPDIR/sysroots/x86_64-linux/usr/bin/pcre-config
> Then core-image-minimal with apache2 went through.
> However, I suppose, this is not quite how it should work.

No, the better workaround would be to run

  bitbake libpcre-native

(or add libpcre-native to DEPENDS in the apache2-native recipe, which I will 
add to my todo list.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

