Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76634E00A38; Mon, 26 Mar 2018 20:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0446BE009AC
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 20:13:06 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Mar 2018 20:13:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,366,1517904000"; d="scan'208";a="31572316"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga002.fm.intel.com with ESMTP; 26 Mar 2018 20:13:05 -0700
Received: from mingeeon-mobl7.amr.corp.intel.com (unknown [10.254.35.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 6E3395803D6;
	Mon, 26 Mar 2018 20:13:05 -0700 (PDT)
To: Ruica Cristina <ruica.cristina@yahoo.com>
References: <913813716.1318110.1522099057513.ref@mail.yahoo.com>
	<913813716.1318110.1522099057513@mail.yahoo.com>
	<1522102230.11431.71.camel@linuxfoundation.org>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <0269050c-25ba-322f-e50f-d3920c444b24@linux.intel.com>
Date: Mon, 26 Mar 2018 20:13:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <1522102230.11431.71.camel@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Tue, 27 Mar 2018 03:13:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 3/26/18 3:10 PM, Richard Purdie wrote:
> On Mon, 2018-03-26 at 21:17 +0000, Ruica Cristina wrote:
>> rocko..
>> i tried to edit local.conf file and add 
>>
>> package_Classes ?="package ipk"
>> and it won't let me bitbake..i m kind of new in this and i don t know
>> how to manage it..
> 
> It would be useful to know the exact error. You do need to use the
> right capitalisation though, like:
> 
> PACKAGE_CLASSES = "package_ipk"
> 
> Cheers,
> 
> Richard
> 

Also, here are some resources for you to look at while getting starting
with Yocto:

https://wiki.yoctoproject.org/wiki/Newcomers

Hope that helps!

Cheers,
Stephano

