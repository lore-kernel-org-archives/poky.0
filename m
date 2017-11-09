Return-Path: <malik@boussejra.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF399E00AD7; Thu,  9 Nov 2017 14:38:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [135.84.80.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 903 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Nov 2017 14:38:56 PST
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com [135.84.80.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7BD9E009CB
	for <poky@yoctoproject.org>; Thu,  9 Nov 2017 14:38:56 -0800 (PST)
Received: from [192.168.43.7] (111.65.60.12 [111.65.60.12]) by mx.zohomail.com
	with SMTPS id 1510266230420242.89155935665224;
	Thu, 9 Nov 2017 14:23:50 -0800 (PST)
References: <cover.1509108775.git.malik@boussejra.com>
To: poky@yoctoproject.org
From: Malik Olivier Boussejra <malik@boussejra.com>
X-Forwarded-Message-Id: <cover.1509108775.git.malik@boussejra.com>
Message-ID: <c638a493-c9a1-2ad7-ce0b-b5b6dcf2747c@boussejra.com>
Date: Fri, 10 Nov 2017 07:23:40 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <cover.1509108775.git.malik@boussejra.com>
X-ZohoMailClient: External
Subject: [PATCH 0/1] python-ctypes: Add dependency to python-subprocess
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
X-List-Received-Date: Thu, 09 Nov 2017 22:38:57 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

This is a bugfix.
Add missing runtime dependency in the python-ctypes package. 
python-ctypes is
indeed dependent on python-subprocess.

No confidential information there.

The following changes since commit 65d23bd7986615fdfb0f1717b615534a2a14ab80:

   README.qemu: qemuppc64 is not supported (2017-10-16 23:54:31 +0100)

are available in the git repository at:

   git://push.yoctoproject.org/poky-contrib 
malik/fix-python-ctypes-runtime-dependency

Malik Olivier Boussejra (1):
   python-ctypes: Add dependency to python-subprocess

  meta/recipes-devtools/python/python-2.7-manifest.inc | 2 +-
  scripts/contrib/python/generate-manifest-2.7.py      | 2 +-
  2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.11.0



