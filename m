Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.865.1579037452504215813
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 13:30:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Jan 2020 13:30:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; 
   d="scan'208";a="256469741"
Received: from jmmarti7-mobl1.amr.corp.intel.com (HELO rburton-mac01.local) ([10.252.51.74])
  by fmsmga002.fm.intel.com with ESMTP; 14 Jan 2020 13:30:50 -0800
Subject: Re: [poky] [PATCH] Allow original $GPG_AGENT_INFO into do_fetch
To: poky@lists.yoctoproject.org
References: <20200114190707.4260-1-stevenrwalter@gmail.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <964b1d58-74b9-b874-f8eb-9241931c255f@intel.com>
Date: Tue, 14 Jan 2020 21:30:49 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200114190707.4260-1-stevenrwalter@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 14/01/2020 19:07, Steven Walter wrote:
> subversion 1.9 uses gpg to encrypt authentication details that are
> stored in ~/.subversion.  This means that GPG_AGENT_INFO needs to be
> available when svn is run by do_fetch, or else svn will not be able to
> authenticate to the remote server.  Treat GPG_AGENT_INFO like
> SSH_AUTH_SOCK, including it in the fetch environment and BB_ENV_EXTRAWHITE
> ---
>   bitbake/lib/bb/fetch2/__init__.py | 1 +
>   meta/conf/bitbake.conf            | 2 +-
>   scripts/oe-buildenv-internal      | 3 ++-

Poky is a constructed repository, the bitbake change needs to go the the 
bitbake list and the meta/ and scripts/ changes the openembedded-core list.

Ross

