Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6184DE004DD
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 12:23:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Sep 2011 12:23:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,450,1312182000"; d="scan'208";a="56284919"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by azsmga001.ch.intel.com with ESMTP; 27 Sep 2011 12:22:55 -0700
Message-ID: <4E82228E.9010007@linux.intel.com>
Date: Tue, 27 Sep 2011 12:22:54 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686 (x86_64); en-US;
	rv:1.9.2.22) Gecko/20110902 Thunderbird/3.1.14
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110927175221.65201140799C@gemini.denx.de>
In-Reply-To: <20110927175221.65201140799C@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Supported host systems?
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
X-List-Received-Date: Tue, 27 Sep 2011 19:23:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/27/2011 10:52 AM, Wolfgang Denk wrote:
> Which Linux distributions are actually supported (and known to work)
> as host systems for building Yocto / Poky?
>
> The "Poky Handbook" says:
>
> 	We recommend Debian-based distributions, in particular a
> 	recent Ubuntu release (7.04 or newer), as the host system for
> 	Poky.
>
> But Ubuntu 7.04 does not work, and even 8.04 does not (Python too old,
> intltool too old, ...).
>
> I want to use a maximally old known-to-be-working distribution to make
> sure the resulting tools will work on a wide range of distributions as
> is, i. e. without need to rebuild from the sources everywhere.
>
> Which is the oldest known-to-be-working version of Ubuntu? Or Debian,
> or Fedora, or CentOS, or ... ?
>
Your timing is pretty good, we are updating the docs for 1.1 and we 
should ensure that this information is up todate.  Was you may have seen 
in other emails Paul is working on collecting some of this information, 
please check:

https://wiki.yoctoproject.org/wiki/Distribution_Support

Sau!
> Thanks in advance.
>
> Wolfgang Denk
>

