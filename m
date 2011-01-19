Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 075314C8106A
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 12:27:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jan 2011 10:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="698481271"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2011 10:27:20 -0800
Received: from [10.255.14.119] (10.255.14.119) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 19 Jan 2011 11:27:20 -0700
Message-ID: <4D372D06.3090703@intel.com>
Date: Wed, 19 Jan 2011 10:27:18 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1295410231.git.scott.a.garman@intel.com>
	<d57e678ab0ed9d20ebb08a5935e3d8d7bdbcfed5.1295410231.git.scott.a.garman@intel.com>
	<21D8C9BF-2F1A-479C-AF91-D7BE4ED87D44@dominion.thruhere.net>
In-Reply-To: <21D8C9BF-2F1A-479C-AF91-D7BE4ED87D44@dominion.thruhere.net>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 5/9] insane.bbclass: skip checks on .la installed status
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Jan 2011 18:27:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 11:19 PM, Koen Kooi wrote:
> Op 19 jan 2011, om 05:19 heeft Scott Garman het volgende geschreven:
>
>> Enabling libtool sysroot support triggers these errors but they
>> are a valid change in behavior.
>
> Based on the RPATH discussion off-list, should we add a check for RPATH pointing to staging as well? I know RPs patches fix it, but it would be nice to catch if it starts happening again.

By staging I assume you're referring to the sysroot dir? If so, we do 
have that QA check in insane.bbclass already (see 
package_qa_check_rpath), and I have been relying on it to detect the 
problems I was reporting. This patch doesn't alter or remove that.

If I'm misunderstanding, feel free to correct me.

Scott

>>
>> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
>> ---
>> meta/classes/insane.bbclass |    5 -----
>> 1 files changed, 0 insertions(+), 5 deletions(-)
>>
>> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
>> index 3ab4c2c..6f06d85 100644
>> --- a/meta/classes/insane.bbclass
>> +++ b/meta/classes/insane.bbclass
>> @@ -427,11 +427,6 @@ def package_qa_check_staged(path,d):
>>              path = os.path.join(root,file)
>>              if file.endswith(".la"):
>>                  file_content = open(path).read()
>> -                # Don't check installed status for native/cross packages
>> -                if not bb.data.inherits_class("native", d) and not bb.data.inherits_class("cross", d):
>> -                    if installed in file_content:
>> -                        error_msg = "%s failed sanity test (installed) in path %s" % (file,root)
>> -                        sane = package_qa_handle_error(5, error_msg, "staging", path, d)
>>                  if workdir in file_content:
>>                      error_msg = "%s failed sanity test (workdir) in path %s" % (file,root)
>>                      sane = package_qa_handle_error(8, error_msg, "staging", path, d)
>> --
>> 1.7.1
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>


-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

