Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4F644C800A4
	for <poky@pokylinux.org>; Thu,  7 Apr 2011 21:07:52 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Apr 2011 19:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,321,1299484800"; d="scan'208";a="907009656"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by fmsmga001.fm.intel.com with ESMTP; 07 Apr 2011 19:07:49 -0700
Message-ID: <4D9E6DF5.9080304@intel.com>
Date: Fri, 08 Apr 2011 10:07:49 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <inieho$3ht$1@dough.gmane.org>
In-Reply-To: <inieho$3ht$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: webkit with poky(yocto) on top of directfb and not X11
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
X-List-Received-Date: Fri, 08 Apr 2011 02:07:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-4-7 3:22, Robert Berger wrote:
> Hi,
>
> I'm trying to figure out how to get a webkit with yocto/poky built
> without X11, but directfb instead.
>
> Grepping through the poky tree that's what I see:
>
> sato contains a webkit, which depends on gtk+, which runs on x11/clutter.
>
> ... but there is also a qt4-embedded package, which seems to run on top
> of directfb and has a dependency with webkit.
>
> Does this mean, that if I build/install qt4-embedded and kill the
> X-server on a sato image that I'll have a webkit on top of directfb?
>
> Is this supposed to be the right way to achieve webkit over directfb?
>
> Please advise.
>
> Regards,
>
> Robert..."The IQ of the group is the lowest IQ of a member of the group
> divided by the number of people in the group." - unknown
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1

I am also new to the DirectFB, some here is just preliminary thought for 
your referrence.

 From the dependency point of view, you want a webkit-fb which is 
depending on gtk+-fb which in turn is depending on DirectFB. so probably 
you need:
- a gtk-fb recipes. it can reuse current gtk+ recipe, but add directfb 
target, like EXTRA_OECONF += " --with-gdktarget=directfb "
- a webkit-fb recipe: it can reuse the current webkit-gtk recipe, but 
add directfb target: EXTRA_OECONF += " --with-target=directfb "

it is not related to qt4-embedded, so you don't need to add qt4-embedded.

Regards
Ke

