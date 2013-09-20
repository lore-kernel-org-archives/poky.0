Return-Path: <laurentiu.palcu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EB3CE015F3;
	Fri, 20 Sep 2013 04:00:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Sep 2013 04:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,943,1371106800"; d="scan'208";a="404603011"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.165])
	by fmsmga002.fm.intel.com with ESMTP; 20 Sep 2013 04:00:22 -0700
Date: Fri, 20 Sep 2013 14:00:22 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Li Zhijian <lizhijian@cn.fujitsu.com>
Message-ID: <20130920110021.GD14107@lpalcu-linux>
References: <523BEF04.5070308@cn.fujitsu.com>
	<20130920084330.GA14107@lpalcu-linux>
	<20130920085039.GB14107@lpalcu-linux>
	<523C1BC9.5070303@cn.fujitsu.com>
	<20130920100227.GC14107@lpalcu-linux>
	<523C228F.7060700@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <523C228F.7060700@cn.fujitsu.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto list discussion <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: [yocto] Is this a bug of binutils
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
X-List-Received-Date: Fri, 20 Sep 2013 11:00:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Fri, Sep 20, 2013 at 06:25:19PM +0800, Li Zhijian wrote:
> >>>>>
> >>>>>III） compile a simple C program
> >>>>># cat test.c
> >>>>>int main ()
> >>>>>{
> >>>>>printf("hello world\n");
> >>>>>return 0;
> >>>>>}
> >>>>># source toolchain-1.3-tcmode-default/environment-setup-x86_64-poky-linux
> >>>>># $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
OK, it looks like something strange happens in your setup.

To debug it, let's add '-Wl,--verbose' at the end of your command and you
should be able to see where the linker is looking for libraries. Also,
the linker script will be printed.

You should see it try your directory first
tmp/sysroots/qemux86-64/usr/lib/, and then fall through the default ones
with the sysroot prefix added and, at the end, the system ones:
/lib:/usr/lib.

Thanks,
Laurentiu

