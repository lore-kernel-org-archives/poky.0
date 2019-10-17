Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A71BE00DD3; Thu, 17 Oct 2019 04:54:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F48E00DA4
	for <poky@yoctoproject.org>; Thu, 17 Oct 2019 04:54:47 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Oct 2019 04:54:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="371111875"
Received: from dirkbeck-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.252.40.171])
	by orsmga005.jf.intel.com with ESMTP; 17 Oct 2019 04:54:45 -0700
To: poky@yoctoproject.org
References: <BYAPR15MB309446174D6C5DB16A8BBB66D16D0@BYAPR15MB3094.namprd15.prod.outlook.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <3c9687f7-3359-eb72-42d3-252676bb354d@intel.com>
Date: Thu, 17 Oct 2019 12:54:45 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR15MB309446174D6C5DB16A8BBB66D16D0@BYAPR15MB3094.namprd15.prod.outlook.com>
Subject: Re: [meta][PATCH] Update dbus-1.init to reflect new PID file
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
X-List-Received-Date: Thu, 17 Oct 2019 11:54:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 17/10/2019 11:20, Tom Benn wrote:
> The PID file referenced in dbus-1.init script was out of date and no longer existed. This meant that dbus could not be restarted via init.d without force removing the old PID file.

This is a file in oe-core so should be sent to 
openembedded-core@lists.openembedded.org.

Ross


