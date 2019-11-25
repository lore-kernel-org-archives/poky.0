Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web10.2540.1574679339422464164
 for <poky@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 02:55:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Nov 2019 02:55:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; 
   d="scan'208";a="409579314"
Received: from xsanroma-mobl1.ger.corp.intel.com (HELO blackadder.local) ([10.249.34.24])
  by fmsmga006.fm.intel.com with ESMTP; 25 Nov 2019 02:55:38 -0800
Subject: Re: [poky] Python2 maintenance will expired
To: poky@lists.yoctoproject.org
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
 <1c708581fdcbcc81e3fab40ef6d88175860eba0d.camel@linuxfoundation.org>
 <CAMKF1spJ1YhhKLxBE3ZvJXOQRVzNHJ_9SgwEyKfW2FktKx4S8A@mail.gmail.com>
 <dcc537c3-0723-8cda-adf8-36144b280b4e@kernel.crashing.org>
 <4253d01e54d64e018693cd878f7ea730@XBOX03.axis.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <68a61329-19b0-ead6-c3a4-2d5dfd702d88@intel.com>
Date: Mon, 25 Nov 2019 10:55:37 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <4253d01e54d64e018693cd878f7ea730@XBOX03.axis.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 24/11/2019 10:29, Peter Kjellerstedt wrote:
> It should be trivial to poison python, at least for scripts that use 
> #!/usr/bin/env python. Just add a python wrapper in the scripts 
> directory. (We have done this for pkg-config to find recipes that lack 
> inherit pkg-config.) What to do about scripts that use 
> #!/usr/bin/python, I do not know...

Last week I built oe-core core-image-sato in a container with no Python2 
installed at all.  u-boot was the only failure.

Ross
