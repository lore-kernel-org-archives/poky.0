Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28E944C810A8;
	Mon, 27 Dec 2010 01:29:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Dec 2010 23:29:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,234,1291622400"; d="scan'208";a="640677472"
Received: from unknown (HELO [10.255.13.220]) ([10.255.13.220])
	by fmsmga002.fm.intel.com with ESMTP; 26 Dec 2010 23:28:57 -0800
Message-ID: <4D184024.5060305@intel.com>
Date: Sun, 26 Dec 2010 23:28:36 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Nightly Killed in preference to Nightly milestone
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
X-List-Received-Date: Mon, 27 Dec 2010 07:29:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

It seems the night is still auto running, I killed it to allow for the 
milestone version of nightly to run (split across 2 machines instead).

This Incremental build is looking good, we have had some minor tweaks 
due the the LIC_FILES_CHKSUM code being enabled as ERROR level, so watch 
those commit requests for making sure that data is correct.

Sau!

