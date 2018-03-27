Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D90B7E009DF; Mon, 26 Mar 2018 20:18:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCFE0E009AC
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 20:18:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Mar 2018 20:18:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,366,1517904000"; d="scan'208";a="29100213"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga006.jf.intel.com with ESMTP; 26 Mar 2018 20:18:34 -0700
Received: from mingeeon-mobl7.amr.corp.intel.com (unknown [10.254.35.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id A0E315803D6;
	Mon, 26 Mar 2018 20:18:34 -0700 (PDT)
To: Ruica Cristina <ruica.cristina@yahoo.com>
References: <94727539.1223925.1522095960460.ref@mail.yahoo.com>
	<94727539.1223925.1522095960460@mail.yahoo.com>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <58083bb9-2293-5809-c5c2-0e166b87d77f@linux.intel.com>
Date: Mon, 26 Mar 2018 20:18:33 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <94727539.1223925.1522095960460@mail.yahoo.com>
Cc: poky@yoctoproject.org
Subject: Re: problem opkg
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
X-List-Received-Date: Tue, 27 Mar 2018 03:18:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 3/26/18 1:26 PM, Ruica Cristina wrote:
> I followed the instructions from here
> Yocto · Intel® Galileo
> <https://theiotlearninginitiative.gitbooks.io/intelgalileo/content/documentation/Yocto.html>
> 
>     Yocto · Intel® Galileo
> 
> The IoT Learning Initiative
> 
> <https://theiotlearninginitiative.gitbooks.io/intelgalileo/content/documentation/Yocto.html>
> 
> 
> and after i got the .direct file, i wrote it to an sd card, and plugged
> in to galileo gen 2. 
> Output of uname-a is
> Linux intel-quark 4.9.81-intel-pk-standard #1 Mon Mar 26 20:41:48 EEST
> 2018 i586 GNU/Linux
> 
> My problem is that i need to install nodejs, and i can t do this because
> opkg isnt installed..
> Any help???
> 
> 

You want to add a different package class:

https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-PACKAGE_CLASSES

perhaps:      PACKAGE_CLASSES = "package_rpm"

But I can tell you from experience that working with Galileo will be
difficult since it is no longer supported by Intel.

Is there a reason you need Galileo?

--S

