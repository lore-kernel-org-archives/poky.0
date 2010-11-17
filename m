Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85BB54C80A74
	for <poky@pokylinux.org>; Wed, 17 Nov 2010 17:45:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 15:45:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,213,1288594800"; d="scan'208";a="627848686"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 15:45:30 -0800
Message-ID: <4CE4693D.9040303@intel.com>
Date: Thu, 18 Nov 2010 07:46:05 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "Wold, Saul" <saul.wold@intel.com>, 
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: [PULL] X apps and UX update
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
X-List-Received-Date: Wed, 17 Nov 2010 23:45:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Saul,
These are simple updates for some X apps and UX. Pls. review and pull.


================================================================================

Note: <commit_id> parameter assumed as 'HEAD'

 meta/conf/distro/include/poky-default-revisions.inc                  
|    2
 meta/recipes-connectivity/avahi/avahi_0.6.27.bb                      
|   16 ---
 meta/recipes-connectivity/avahi/avahi_0.6.28.bb                      
|   16 +++
 meta/recipes-extended/ed/ed-1.4/ed-1.2-build.patch                   
|   43 --------
 meta/recipes-extended/ed/ed-1.5/ed-1.2-build.patch                   
|   43 ++++++++
 meta/recipes-extended/ed/ed_1.4.bb                                   
|   22 ----
 meta/recipes-extended/ed/ed_1.5.bb                                   
|   22 ++++
 meta/recipes-extended/libuser/libuser-0.56.16/disable-sgml-doc.patch 
|   18 ---
 meta/recipes-extended/libuser/libuser-0.56.18/disable-sgml-doc.patch 
|   18 +++
 meta/recipes-extended/libuser/libuser_0.56.16.bb                     
|   20 ---
 meta/recipes-extended/libuser/libuser_0.56.18.bb                     
|   20 +++
 meta/recipes-extended/xz/xz_4.999.9beta.bb                           
|   20 ---
 meta/recipes-extended/xz/xz_5.0.0.bb                                 
|   20 +++
 meta/recipes-sato/pimlico/tasks_0.16.bb                              
|   14 --
 meta/recipes-sato/pimlico/tasks_0.18.bb                              
|   14 ++
 meta/recipes-support/atk/atk_1.30.0.bb                               
|   10 -
 meta/recipes-support/atk/atk_1.32.0.bb                               
|   10 +
 meta/recipes-support/libassuan/libassuan_2.0.0.bb                    
|   15 --
 meta/recipes-support/libassuan/libassuan_2.0.1.bb                    
|   15 ++
 meta/recipes-support/libgpg-error/libgpg-error-1.8/pkgconfig.patch   
|   53 ----------
 meta/recipes-support/libgpg-error/libgpg-error-1.9/pkgconfig.patch   
|   53 ++++++++++
 meta/recipes-support/libgpg-error/libgpg-error_1.8.bb                
|   24 ----
 meta/recipes-support/libgpg-error/libgpg-error_1.9.bb                
|   24 ++++
 meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb                   
|   17 ---
 meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb                   
|   17 +++
 25 files changed, 273 insertions(+), 273 deletions(-)

Zhai Edwin (10):
      libgpg-error: Update to 1.9
      libassuan: Update to 2.0.1
      libuser: Update to 0.56.18
      xz: Update to 5.0.0
      ed: Update to 1.5
      avahi: Update to 0.6.28
      libowl-av: Update to svn r416
      tasks: Update to 0.18
      atk: Update to 1.32.0
      libsoup-2.4: Update to 2.32.1

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro

Thanks,
edwin


