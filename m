Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CB1C4C80AAE
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 04:02:55 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Apr 2011 02:02:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,250,1301900400"; d="scan'208";a="736425953"
Received: from unknown (HELO [10.255.13.58]) ([10.255.13.58])
	by orsmga001.jf.intel.com with ESMTP; 21 Apr 2011 02:02:54 -0700
Message-ID: <4DAFF2BE.2050201@intel.com>
Date: Thu, 21 Apr 2011 02:02:54 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Pasi.Reponen@elektrobit.com
References: <EF6A1C6B49AA1E42BAAD011E6EED2800024D3FAC@fioues07.ebgroup.elektrobit.com>
In-Reply-To: <EF6A1C6B49AA1E42BAAD011E6EED2800024D3FAC@fioues07.ebgroup.elektrobit.com>
Cc: poky@yoctoproject.org
Subject: Re: Problem with local build (using Poky Bernard 5.0)
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
X-List-Received-Date: Thu, 21 Apr 2011 09:02:55 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 04/19/2011 11:53 PM, Pasi.Reponen@elektrobit.com wrote:
> Hi,
>
> I'm trying to build locally with Poky Bernard 5.0 (using PREMIRRORS to
> local source package directory and BB_FETCH_PREMIRRORONLY = "1"
> configurations). The problem occurs when recipes got environment
> variables in SRC_URI (for example $GNU_MIRROR and $PV). In these cases
> Fetcher is unable to fetch source packages locally and raises “network
> access disabled but required” –exception.
>

Do you also have BB_NO_NETWORK = "1"?

Do you have all the SCM types setup in PREMIRRORS_prepend, such as svn, 
cvs to your local package directory?

Check the original PREMIRRORS in poky.conf to ensure you have all the 
SCM types set correctly, also make sure you are using PREMIRRORS_prepend.

If you continue to have problems, please send your local.conf file that 
sets these variable for us to inspect.

Hope this helps you.

Sau!

> Any ideas, is this a bug or have I missed some configuration?
>
> Thanks,
>
> Pasi
>
> ----------------------------------------------------------------
> Please note: This e-mail may contain confidential information
> intended solely for the addressee. If you have received this
> e-mail in error, please do not disclose it to anyone, notify
> the sender promptly, and delete the message from your system.
> Thank you.
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


