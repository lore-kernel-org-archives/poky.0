Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A92AE00B05; Wed, 26 Apr 2017 06:18:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3AACE00B01
	for <poky@yoctoproject.org>; Wed, 26 Apr 2017 06:18:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Apr 2017 06:18:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,254,1488873600"; d="scan'208";a="1140399321"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 26 Apr 2017 06:18:38 -0700
To: Arno Steffens <star@gmx.li>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
Date: Wed, 26 Apr 2017 16:18:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
Cc: poky@yoctoproject.org
Subject: Re: gnupg strip down
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
X-List-Received-Date: Wed, 26 Apr 2017 13:18:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/26/2017 03:52 PM, Arno Steffens wrote:
> You know more than me ;)
> I just checked the list of already existing packages.
> I found 27 locale, one doc, one debug, one dev, one just gnugp.
>
> Even in the latter one, there are a lot of help files and binaries, and not a single lib.
> Looking at the bb file doesn't give me a clue how to go on. Seems I am a greenhorn.

I just looked. There is a bunch of binaries (in /usr/bin and sbin), a 
few helper binaries (in /usr/libexec) and the help files in 
/usr/share/gnupg. I don't think you can further split up the binaries 
(unless you *really* know what you are doing), and the help files aren't 
taking much space at all, about 320 kilobytes.

If you insist, add a .bbappend file to your custom layer, where the 
unnecessary binaries are removed in do_install_append() (again, plenty 
of recipes in oe-core where this happens).


Alex


