Return-Path: <valentin.popa@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5162E007F0
	for <poky@yoctoproject.org>; Wed, 19 Feb 2014 08:26:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Feb 2014 08:22:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,506,1389772800"; d="scan'208";a="458175579"
Received: from vpopa-desktop.rb.intel.com (HELO [10.237.105.47])
	([10.237.105.47])
	by orsmga001.jf.intel.com with ESMTP; 19 Feb 2014 08:26:28 -0800
Message-ID: <5304DB35.4030904@intel.com>
Date: Wed, 19 Feb 2014 18:26:29 +0200
From: Valentin Popa <valentin.popa@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <1392742825-6589-1-git-send-email-valentin.popa@intel.com>
	<CAJTo0LZfPemAGtX7r79dV7L5dvsbLaqJqw7S_YRNEpBbhwLtjA@mail.gmail.com>
In-Reply-To: <CAJTo0LZfPemAGtX7r79dV7L5dvsbLaqJqw7S_YRNEpBbhwLtjA@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] gtk+3: update RECIPE_NO_UPDATE_REASON
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
X-List-Received-Date: Wed, 19 Feb 2014 16:26:37 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/18/2014 07:04 PM, Burton, Ross wrote:
> On 18 February 2014 17:00, Valentin Popa <valentin.popa@intel.com> wrote:
>> gtk+3 3.11.5 needs glib-2.0 >= 2.39.0 (which is unstable)
>> Let's wait for glib 2.40.
> GTK+ 3.11 is a development release, can you instead update the regexes
> to ignore odd numbers?
>
> Ross
Found that it's not working using just regex, because the package 
reporting system looks also for the latest dir first  (which might be a 
development version) and then applies the regex for the packages/files 
inside.

