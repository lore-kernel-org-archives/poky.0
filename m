Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E82DE006E9
	for <poky@yoctoproject.org>; Mon,  9 Jan 2012 13:55:29 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jan 2012 13:55:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="105229454"
Received: from unknown (HELO [10.255.13.28]) ([10.255.13.28])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jan 2012 13:55:28 -0800
Message-ID: <4F0B6250.8030105@linux.intel.com>
Date: Mon, 09 Jan 2012 13:55:28 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Colin Walters <walters@verbum.org>
References: <1326144238.18105.22.camel@lenny>
In-Reply-To: <1326144238.18105.22.camel@lenny>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH] util-linux: .pc files should go in the -dev packages for subpackages
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
X-List-Received-Date: Mon, 09 Jan 2012 21:55:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2012 01:23 PM, Colin Walters wrote:
>      The .pc files were ending up in util-linux-dev, not the correct
>      subpackage like libuuid1-dev.
>
Colin,

We appreciate these patches against oe-core, can you please send them to 
openembedded-core@lists.openembedded.org, as these are patches to OE-Core.

Also, I am not sure what format and mailer you are sending, but each 
patch I have received does not apply cleanly, please consider using the 
create-pull-request / send-pull-request scripts included in oe-core or
using git send-email directly.

Thanks
	Sau!

>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

