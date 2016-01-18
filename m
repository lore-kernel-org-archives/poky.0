Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30E89E00A7D; Mon, 18 Jan 2016 07:50:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C587AE008A5
	for <poky@yoctoproject.org>; Mon, 18 Jan 2016 07:50:45 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 18 Jan 2016 07:50:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,312,1449561600"; d="scan'208";a="729560699"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.154])
	([10.219.5.154])
	by orsmga003.jf.intel.com with ESMTP; 18 Jan 2016 07:50:44 -0800
To: poky@yoctoproject.org
References: <cover.1452808370.git.anibal.limon@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <569D0A3D.2030102@linux.intel.com>
Date: Mon, 18 Jan 2016 09:52:29 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <cover.1452808370.git.anibal.limon@linux.intel.com>
Cc: tudor.florea@enea.com, paul.eggleton@linux.intel.com,
	benjamin.esquivel@intel.com, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/3] ptest-runner2 C implementation
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
X-List-Received-Date: Mon, 18 Jan 2016 15:50:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit


ping...

On 01/14/2016 04:27 PM, Aníbal Limón wrote:
> This is the changes that adds new ptest-runner2 C implementation a detail
> description exists in the recipe adding.
> 
> You can review the ptest-runner2 code on [1], i wrote unit tests for all
> the code using check framework also i used mtrace for found possible memory leaks.
> 
> Finally i tested the new runner on qemux86, qemuarm, qemumips, qemuppc using
> core-image-minimal and qemux86/poky-tiny/core-image-minimal.
> 
> [YOCTO #8021]
> 
> [1] https://github.com/alimon/ptest-runner2
> 
> The following changes since commit 92cc02fe517bad0af4e493fda3331738cbcc9a26:
> 
>   linux-yocto: Update Genericx86* BSPs to 4.1.15 (2016-01-14 15:18:46 +0000)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib alimon/ptest-runner2
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=alimon/ptest-runner2
> 
> Aníbal Limón (3):
>   ptest-runner2: Add new ptest-runner2 recipe.
>   ptests: Update references to new ptest-runner2.
>   Update dev-manual to point to the new ptest-runner2.
> 
>  .../dev-manual/dev-manual-common-tasks.xml         |  4 ++--
>  meta/classes/ptest.bbclass                         |  2 +-
>  meta/lib/oeqa/runtime/_ptest.py                    |  4 ++--
>  .../ptest-runner2/ptest-runner2_0.1.bb             | 24 ++++++++++++++++++++++
>  4 files changed, 29 insertions(+), 5 deletions(-)
>  create mode 100644 meta/recipes-support/ptest-runner2/ptest-runner2_0.1.bb
> 

