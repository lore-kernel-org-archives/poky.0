Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D8B1B4C806F9
	for <poky@yoctoproject.org>; Tue, 31 May 2011 10:06:43 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 May 2011 08:06:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,297,1304319600"; 
   d="scan'208";a="7272393"
Received: from unknown (HELO [10.255.12.168]) ([10.255.12.168])
	by orsmga001.jf.intel.com with ESMTP; 31 May 2011 08:06:43 -0700
Message-ID: <4DE50402.4080801@linux.intel.com>
Date: Tue, 31 May 2011 08:06:42 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: chinmaya hoshing <cahoshing@gmail.com>
References: <BANLkTimsZuqZKWtuKzBLnskzAv1unWKdNg@mail.gmail.com>
In-Reply-To: <BANLkTimsZuqZKWtuKzBLnskzAv1unWKdNg@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Error in pulling dbus for beagleboard poky build
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
X-List-Received-Date: Tue, 31 May 2011 15:06:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/31/2011 06:59 AM, chinmaya hoshing wrote:
> Hi,
> 
>  I am building poky for beagleboard on ubuntu 10.10 64 bit host.I have
> included dbus and dbus-glib in the recipes but when it starts building
> the rootfs 
>  it gives the error as follows:-
> 
>  Unknown package 'dbus'.
>  Unknown package 'dbus-glib'.


Hi Chinmaya,

Can you provide the details of the changes you made so we can review and
provide feedback? Which recipes did you add? How did you add them the
the poky-image-minimal image?

Thanks,

Darren

> :
> :
> :
> Collected errors:
> |  * opkg_install_cmd: Cannot install package dbus.
> |  * opkg_install_cmd: Cannot install package dbus-glib.
> | ERROR: Function 'do_rootfs' failed (see
> /home/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-minimal-1.0-r0/temp/log.do_rootfs.25765
> for further information)
> NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed
> ERROR: Task 9 (/home/poky/meta/recipes-core/images/poky-image-minimal.bb
> <http://poky-image-minimal.bb>, do_rootfs) failed with exit code '1'
> 
> Can anyone help me to find the solution !!!!!!
> 
> 
> 
> Chinmaya
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

