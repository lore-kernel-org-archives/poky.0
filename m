Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2C52E0080C; Thu, 23 Oct 2014 04:04:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AACBBE00799
	for <poky@yoctoproject.org>; Thu, 23 Oct 2014 04:04:15 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 23 Oct 2014 04:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="404753166"
Received: from ryanpete-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.99])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Oct 2014 03:56:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bogdan Purcareata <bogdan.purcareata@freescale.com>
Date: Thu, 23 Oct 2014 12:04:12 +0100
Message-ID: <7860875.0C67ZVcTkJ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <1414082196-15045-1-git-send-email-bogdan.purcareata@freescale.com>
References: <1414082196-15045-1-git-send-email-bogdan.purcareata@freescale.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] shadow: enable support for subordinate IDs
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
X-List-Received-Date: Thu, 23 Oct 2014 11:04:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Bogdan,

On Thursday 23 October 2014 12:36:36 Bogdan Purcareata wrote:
> Subordinate IDs support is required in order to enable creation of
> unprivileged containers. Pull a required change from upstream in order to
> make shadow cross-compile with subordinate IDs support. Enable flag in
> recipe.
> 
> Signed-off-by: Bogdan Purcareata <bogdan.purcareata@freescale.com>
> ---
>  ..._of_uid_t_and_gid_t_using_AC_CHECK_SIZEOF.patch |   41
> ++++++++++++++++++++ meta/recipes-extended/shadow/shadow.inc            |  

This patch modifies files that are part of OE-Core and thus should be sent to 
the OE-Core list. Could you please re-send it there?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

