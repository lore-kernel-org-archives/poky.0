Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB076E00AE4; Tue, 15 May 2018 06:39:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2763E00831
	for <poky@yoctoproject.org>; Tue, 15 May 2018 06:39:33 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 May 2018 06:39:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,403,1520924400"; d="scan'208";a="58794313"
Received: from mohamaad-mobl.gar.corp.intel.com (HELO [10.255.139.14])
	([10.255.139.14])
	by orsmga002.jf.intel.com with ESMTP; 15 May 2018 06:39:31 -0700
To: Aditya Tayade <Aditya.Tayade@kpit.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <MAXPR01MB0348DD3E703FEBFB4FF3DA89919C0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <e5849b69-8468-333a-137c-de5fd2f4256f@intel.com>
Date: Tue, 15 May 2018 21:39:30 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB0348DD3E703FEBFB4FF3DA89919C0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: Error:python3-jsonschema dependency issue
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
X-List-Received-Date: Tue, 15 May 2018 13:39:35 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/15/2018 01:31 AM, Aditya Tayade wrote:
> 
> ERROR: Nothing RPROVIDES 'python3-strict-rfc3339' (but
> /home/builder/src/base/meta-openembedded/meta-python/recipes-devtools/python/python3-jsonschema_2.6.0.bb
> RDEPENDS on or otherwise requires it)
> python3-strict-rfc3339 was skipped: it has an incompatible license: GPLv3

As the error says, it was skipped because license of the package that
python3-jsonschema depends on is GPLv3. You probably have
INCOMPATIBLE_LICENSE set to GPLv3 in your local.conf.

https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-INCOMPATIBLE_LICENSE

