Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BE86E00D91; Tue,  2 Jan 2018 04:17:38 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFCF0E00CBE
	for <poky@yoctoproject.org>; Tue,  2 Jan 2018 04:17:37 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jan 2018 04:17:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,496,1508828400"; 
   d="scan'208";a="6839764"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jan 2018 04:17:35 -0800
To: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <0d223fc9-7b17-4be9-9a60-8cb23375a877@linux.intel.com>
Date: Tue, 2 Jan 2018 14:12:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <0B2EBCD48D33654381E736352034C70C01B37B75@dor-sms-xch01.digi.com>
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
X-List-Received-Date: Tue, 02 Jan 2018 12:17:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/29/2017 01:59 PM, Diaz de Grenu, Jose wrote:

> # If g-i is installed we know we have python, but we might not have 
> pygobject
> 
>      if ! "$PYTHON" -c 'from gi.repository import GObject' >& /dev/null; 
> then
> 
>          as_fn_error $? "\"--enable-introspection aims to build the 
> settings documentation. This requires GObject introspection for python 
> (pygobject)" "$LINENO" 5
> 
>      fi
> 
> I am able to reproduce the problem in the devshell:
> 
> # bitbake -c devshell NetworkManager
> 
> (....)
> 
> root:~/workspaces-yocto/2.4/tmp/work/cortexa9hf-neon-dey-linux-gnueabi/networkmanager/1.8.2-r0/NetworkManager-1.8.2# 
> "$PYTHON" -c 'from gi.repository import GObject'

What is $PYTHON set to?

Alex

