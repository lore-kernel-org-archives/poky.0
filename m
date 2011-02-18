Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D9774C800A8
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 09:34:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Feb 2011 07:34:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,187,1297065600"; d="scan'208";a="709562346"
Received: from unknown (HELO [10.255.12.30]) ([10.255.12.30])
	by orsmga001.jf.intel.com with ESMTP; 18 Feb 2011 07:34:42 -0800
Message-ID: <4D5E9192.20005@intel.com>
Date: Fri, 18 Feb 2011 07:34:42 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <cover.1297985951.git.scott.a.garman@intel.com>
	<c70a4c517b599e6d90b28e6e36dd448f6d8b68df.1297985951.git.scott.a.garman@intel.com>
	<789F9655DD1B8F43B48D77C5D306597332CC3082@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D306597332CC3082@shsmsx501.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 3/4] docbook-utils-native: set SGML_EXTRA_CATALOGS in	jw
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
X-List-Received-Date: Fri, 18 Feb 2011 15:34:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/17/2011 09:35 PM, Ke, Liping wrote:
> Hi, Scott
>
> I continuously meet below compile errors when I bitbake
> doc-utils-native today. I paste the log in the attachment, could you
> help to have a look. Thanks a lot for your help!

Hi Criping,

This looks like a problem I had fixed with the docbook-dsssl-stylesheets 
package. I am going to guess that this was an incremental build as well?

These commands should clean out most of the suspect docbook-related 
utilities:

bitbake docbook-utils-native -c cleanall
bitbake openjade-native -c cleanall
bitbake opensp-native -c cleanall
bitbake docbook-dsssl-stylesheets-native -c cleanall

Then do a bitbake docbook-utils-native and see if it builds this time.

Let me know how it goes.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

