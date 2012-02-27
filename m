Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21A04E0059B
	for <poky@yoctoproject.org>; Mon, 27 Feb 2012 15:40:15 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2012 15:40:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="112417731"
Received: from unknown (HELO [10.7.198.148]) ([10.7.198.148])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2012 15:40:09 -0800
Message-ID: <4F4C1458.9040800@linux.intel.com>
Date: Mon, 27 Feb 2012 15:40:08 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1329470296.git.kai.kang@windriver.com>
	<05007499a51a6cdeb40dfe66b0d8ea60df08c048.1329470296.git.kai.kang@windriver.com>
In-Reply-To: <05007499a51a6cdeb40dfe66b0d8ea60df08c048.1329470296.git.kai.kang@windriver.com>
Subject: Re: [PATCH 1/1] create-recipe: create a recipe from source URI
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
X-List-Received-Date: Mon, 27 Feb 2012 23:40:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 17/02/12 01:28, Kang Kai wrote:
> This feature is from Yocto 1.2 Bug 1656. create-recipe allows you
> to give an upstream URL then generate a recipe file. It trys to check
> source URI, license files, configure files, rpm spec file .etc to
> get package name, version, description, summary, license and license
> file, build dependecy and so on.

This works pretty well based on a few tests here but as this is a 
heavily derived work of a GPLv2 script (IANAL) I'm pretty sure we need 
to respect the author of the original works copyright and license.

In concrete terms I expect we need to:
* use the original license header WITH the original Intel 2010 copyright
* add Wind River's copyright to the new code
* mention and link to the original work in a comment in the script

With those changes I expect we can merge this and iterate on it as 
people use it.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

