Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DFC74C800B3
	for <poky@yoctoproject.org>; Mon,  6 Jun 2011 10:24:22 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jun 2011 08:24:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,326,1304319600"; d="scan'208";a="14364569"
Received: from unknown (HELO [10.255.13.99]) ([10.255.13.99])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2011 08:24:21 -0700
Message-ID: <4DECF124.3040004@linux.intel.com>
Date: Mon, 06 Jun 2011 08:24:20 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DECE9B8.9020107@mlbassoc.com>
In-Reply-To: <4DECE9B8.9020107@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: opkg problem
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
X-List-Received-Date: Mon, 06 Jun 2011 15:24:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2011 07:52 AM, Gary Thomas wrote:
> Something has changed recently in my images:
> # opkg update
> Collected errors:
> * opkg_conf_load: Could not create lock file /var/lib/opkg/lock: No such
> file or directory.
> Actually, it seems that the whole of /var/lib/opkg (databases, etc) have
> gone missing. Shouldn't this get populated as the rootfs image is created?
>
> In any case, any ideas where /var/lib/opkg might have vanished to?
>
Gary,

Depending on what image you are building, you may need to add 
"package-managment" into your IMAGE_FEATURES list.  This is due the to 
the change from Phil B. (87780fc09b066525e47d0f50ee5497db54d304cd).

Sau!

> Thanks
>

