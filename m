Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EB11E00D91; Tue,  2 Jan 2018 05:12:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95EAE00CBE
	for <poky@yoctoproject.org>; Tue,  2 Jan 2018 05:12:13 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jan 2018 05:12:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,497,1508828400"; 
   d="scan'208";a="6848344"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jan 2018 05:12:12 -0800
To: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
	<0d223fc9-7b17-4be9-9a60-8cb23375a877@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B3FF67@dor-sms-xch01.digi.com>
	<8bb5a376-ec5b-36ed-5b7a-12d7102879ef@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B40158@dor-sms-xch01.digi.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <e33e41cc-fe8d-36e7-4204-0e690b9aa16c@linux.intel.com>
Date: Tue, 2 Jan 2018 15:06:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <0B2EBCD48D33654381E736352034C70C01B40158@dor-sms-xch01.digi.com>
Subject: Re: Trying to use python3-pygobject-native to compile NetworkManager
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
X-List-Received-Date: Tue, 02 Jan 2018 13:12:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/02/2018 02:55 PM, Diaz de Grenu, Jose wrote:
> -----Original Message-----
> From: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]
> 
>> Also, where is the networkmanager recipe from? meta-oe has its own recipe for it, and it does not match what you posted to pastebin.
> 
> It is a custom recipe, as I need to use a newer version of NetworkManager. This recipe was working fine on Yocto 2.2, and I suspect that the problem may be in the python3 package, not in the recipe itself.

I think that's correct - the older version from meta-oe does not have a 
hard failure if pygobject isn't working. I can't help you with the error 
itself that python is printing; you need to dig into the point in the 
code where it happens and take it from there.

Generally, calling host python to establish (via module import) if 
pygobject is available for the target is incorrect, you can simply patch 
configure.ac to remove the check. That wouldn't however fix the 
underlying problem (that of host pygobject being broken).

Alex

