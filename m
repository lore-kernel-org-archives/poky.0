Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 801FAE0136C
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 16:54:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2012 16:54:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="92668717"
Received: from unknown (HELO [10.255.13.127]) ([10.255.13.127])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2012 16:54:58 -0800
Message-ID: <4F03A361.3000408@linux.intel.com>
Date: Tue, 03 Jan 2012 16:54:57 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Colin Walters <walters@verbum.org>
References: <1325616533.23339.10.camel@lenny>
In-Reply-To: <1325616533.23339.10.camel@lenny>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH] rpm: Move postinsts to /var
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
X-List-Received-Date: Wed, 04 Jan 2012 00:54:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2012 10:48 AM, Colin Walters wrote:
> My OS has read-only bind mounts over most directories (including
> /etc), with the exception of /var.  Since these scripts need to
> be run once and then deleted, it's better for me if these are in
> /var, and won't hurt anyone else for them to be there.
>
>You fixed this for RPM, does it exist for deb and ipkg also?

Sau!


>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

