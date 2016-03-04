Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32D8AE00C1C; Fri,  4 Mar 2016 12:06:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110D8E00B37
	for <poky@yoctoproject.org>; Fri,  4 Mar 2016 12:06:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 04 Mar 2016 12:06:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,537,1449561600"; d="scan'208";a="901577655"
Received: from klchow1-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.161.208])
	by orsmga001.jf.intel.com with ESMTP; 04 Mar 2016 12:06:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Date: Sat, 05 Mar 2016 09:05:13 +1300
Message-ID: <1716336.DPRTt7QRIG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.3-300.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <89742a7bb9484573a083036535818460@XBOX02.axis.com>
References: <89742a7bb9484573a083036535818460@XBOX02.axis.com>
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] bblayers.conf.sample: remove BBLAYERS_NON_REMOVABLE
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
X-List-Received-Date: Fri, 04 Mar 2016 20:06:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Peter,

On Fri, 04 Mar 2016 17:12:56 Peter Kjellerstedt wrote:
> You probably want to remove the references to BBLAYERS_NON_REMOVABLE
> in meta/conf/documentation.conf, documentation/ and
> meta-poky/conf/bblayers.conf.sample as well...

Yep, I sent a separate patchset for the others. The documentation I will get 
Scott to update.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

