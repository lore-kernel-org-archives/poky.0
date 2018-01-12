Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F340E01089; Fri, 12 Jan 2018 04:49:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60FEEE00E34
	for <poky@yoctoproject.org>; Fri, 12 Jan 2018 04:49:13 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jan 2018 04:49:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,348,1511856000"; 
   d="scan'208";a="9231911"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 12 Jan 2018 04:49:11 -0800
To: Robert Yang <liezhi.yang@windriver.com>,
	"Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B45F94@dor-sms-xch01.digi.com>
	<74fdcc9f-d8dd-5758-a900-ccfffeea0399@windriver.com>
	<ed781a27-9452-e6c6-89ee-d08b9b75d050@linux.intel.com>
	<6f1b6255-3105-cff4-2ccb-9d2faf6e1749@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9230ba72-f2b7-75e9-eba7-04088483594b@linux.intel.com>
Date: Fri, 12 Jan 2018 14:49:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <6f1b6255-3105-cff4-2ccb-9d2faf6e1749@windriver.com>
Subject: Re: Postinstallation script for target throw warnings
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
X-List-Received-Date: Fri, 12 Jan 2018 12:49:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/12/2018 03:45 AM, Robert Yang wrote:
>>> But it would be better if you can make it work during do_rootfs rather
>>> than firstboot.
>>
>> This is not correct. If you do this, then the postinst will be 
>> executed once, during image creation, and Actions will never be taken.
> 
> Sorry, I think that the 'Action' will be executed when first boot ?

Before that happens, the script needs to be deferred to first boot by 
issuing 'exit 1'. There's special magic to extract it from rpm and place 
in a separate execute-on-first-boot location in the target filesystem 
that gets triggered by 'exit 1'.

Alex

