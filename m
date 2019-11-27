Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web09.6387.1574863752736885541
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 06:09:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Nov 2019 06:09:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; 
   d="scan'208";a="410352785"
Received: from xsanroma-mobl1.ger.corp.intel.com (HELO blackadder.local) ([10.249.34.24])
  by fmsmga006.fm.intel.com with ESMTP; 27 Nov 2019 06:09:10 -0800
Subject: Re: [poky] [PULL] [PATCH 0/1] gattlib: add the recipe
To: poky@lists.yoctoproject.org
References: <cover.1574858887.git.du@axentia.se>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <521339a7-8eb7-2868-33f9-f12246b7103a@intel.com>
Date: Wed, 27 Nov 2019 14:09:09 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <cover.1574858887.git.du@axentia.se>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 27/11/2019 13:06, Daniels Umanovskis wrote:
> gattlib is a C library for talking to Bluetooth, including BLE, devices.
> It's the only compact, embedded-appropriate library for easily scanning
> BLE devices and subscribing to notifications

poky@ is only for patches that are specific to the poky repository, the 
meta/ layer in Poky is actually oe-core so 
openembedded-core@lists.openembedded.org.

However the bar for adding recipes to oe-core is deliberately high.  I 
suggest you add this layer to meta-oe or meta-networking instead.

Ross
