Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B2984C800B9
	for <poky@yoctoproject.org>; Mon, 27 Jun 2011 15:01:29 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jun 2011 13:01:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,434,1304319600"; d="scan'208";a="18939344"
Received: from unknown (HELO [10.255.13.234]) ([10.255.13.234])
	by orsmga002.jf.intel.com with ESMTP; 27 Jun 2011 13:01:28 -0700
Message-ID: <4E08E198.8010101@intel.com>
Date: Mon, 27 Jun 2011 13:01:28 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1308101091.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1308101091.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 0/1] bitbake wrapper: exit if python v3 is detected
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
X-List-Received-Date: Mon, 27 Jun 2011 20:01:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/14/2011 06:42 PM, Scott Garman wrote:
> Make sure we're not using python v3.x. This check can't go into
> sanity.bbclass because bitbake's source code doesn't even pass
> parsing stage when used with python v3, so we catch it here so we
> can offer a meaningful error message.
>
> This fixes bug [YOCTO #1128]
>
> I did attempt to make changes to bitbake to get the source code to
> parse under python v3, but there are issues which make it too
> difficult to get the code to work with python v2 and v3. For example,
> importing modules within a package has changed significantly in v3
> in such a way that breaks compatability with v2.

Ping?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

