Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9712C4C80AAA
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 12:53:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2011 10:53:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,248,1297065600"; d="scan'208";a="395879193"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 10:52:59 -0800
Message-ID: <4D6D408B.90600@intel.com>
Date: Tue, 01 Mar 2011 10:52:59 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1298950650.git.ke.yu@intel.com>
In-Reply-To: <cover.1298950650.git.ke.yu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] upgrade shadow for security vulnerability
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
X-List-Received-Date: Tue, 01 Mar 2011 18:53:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/28/2011 07:39 PM, Yu Ke wrote:
> per Scott's suggest, upgrade the shadow to fix security vulnerability
>
> CC: Scott Garman<scott.a.garman@intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kyu3/shadow
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/shadow
>
> Thanks,
>      Yu Ke<ke.yu@intel.com>
> ---
>
>
> Yu Ke (1):
>    shadow: upgrade to 4.1.4.3 to fix security vulnerability
>
>   .../{shadow-4.1.4.2 =>  files}/login_defs_pam.sed   |    0
>   .../shadow/{shadow-4.1.4.2 =>  files}/pam.d/chfn    |    0
>   .../{shadow-4.1.4.2 =>  files}/pam.d/chpasswd       |    0
>   .../shadow/{shadow-4.1.4.2 =>  files}/pam.d/chsh    |    0
>   .../shadow/{shadow-4.1.4.2 =>  files}/pam.d/login   |    0
>   .../{shadow-4.1.4.2 =>  files}/pam.d/newusers       |    0
>   .../shadow/{shadow-4.1.4.2 =>  files}/pam.d/passwd  |    0
>   .../shadow/{shadow-4.1.4.2 =>  files}/pam.d/su      |    0
>   .../shadow/{shadow-4.1.4.2 =>  files}/securetty     |    0
>   .../shadow-4.1.3-dots-in-usernames.patch           |    0
>   .../shadow-4.1.4.2-env-reset-keep-locale.patch     |    0
>   .../shadow-4.1.4.2-groupmod-pam-check.patch        |    0
>   .../shadow-4.1.4.2-su_no_sanitize_env.patch        |    0
>   .../shadow.automake-1.11.patch                     |    0
>   .../{shadow_4.1.4.2.bb =>  shadow_4.1.4.3.bb}       |    4 ++--
>   15 files changed, 2 insertions(+), 2 deletions(-)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/login_defs_pam.sed (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/pam.d/chfn (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/pam.d/chpasswd (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/pam.d/chsh (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/pam.d/login (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/pam.d/newusers (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/pam.d/passwd (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/pam.d/su (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/securetty (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/shadow-4.1.3-dots-in-usernames.patch (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/shadow-4.1.4.2-env-reset-keep-locale.patch (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/shadow-4.1.4.2-groupmod-pam-check.patch (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/shadow-4.1.4.2-su_no_sanitize_env.patch (100%)
>   rename meta/recipes-extended/shadow/{shadow-4.1.4.2 =>  files}/shadow.automake-1.11.patch (100%)
>   rename meta/recipes-extended/shadow/{shadow_4.1.4.2.bb =>  shadow_4.1.4.3.bb} (70%)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into master and Bernard

Thanks
	Sau!


