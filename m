Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A8CCE00303
	for <poky@yoctoproject.org>; Mon, 28 Nov 2011 12:53:43 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2011 12:53:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="80812497"
Received: from rakasten-mobl1.amr.corp.intel.com (HELO [10.7.199.160])
	([10.7.199.160])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2011 12:53:42 -0800
Message-ID: <4ED3F4D5.3060106@linux.intel.com>
Date: Mon, 28 Nov 2011 12:53:41 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4ED3F3BF.6030305@mlbassoc.com>
In-Reply-To: <4ED3F3BF.6030305@mlbassoc.com>
Subject: Re: Fixed /etc/resolv.conf
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
X-List-Received-Date: Mon, 28 Nov 2011 20:53:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 28/11/11 12:49, Gary Thomas wrote:
> I'd like to have my network hard-wired - fixed IP, fixed /etc/resolv.conf
> 
> I can see how to adjust my network settings by providing my own version of
> /etc/network/interfaces.  However, I don't see how to have a fixed
> (immutable)
> version of /etc/resolv.conf
> 
> Any ideas?

Do you have connman in your image? If so, do you need it if you're
providing static versions of those files?

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

